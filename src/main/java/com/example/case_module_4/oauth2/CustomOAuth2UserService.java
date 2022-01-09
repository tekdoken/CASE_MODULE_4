package com.example.case_module_4.oauth2;


import com.example.case_module_4.model.Provider;
import com.example.case_module_4.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
public class CustomOAuth2UserService extends DefaultOAuth2UserService  {
	@Autowired
	IUserService userService;

	@Override
	public OAuth2User loadUser(OAuth2UserRequest userRequest) throws OAuth2AuthenticationException {
		OAuth2User user =  super.loadUser(userRequest);
		System.out.println("abc"+user);
		String provider = userRequest.getClientRegistration().getRegistrationId();
		if(provider.equals("google")){
			return new CustomOAuth2User(user, Provider.GOOGLE);
		}else if(provider.equals("github")){
			System.out.println("check vao github");
			CustomOAuth2User customOAuth2User =  new CustomOAuth2User(user, Provider.GITHUB);
			Map<String, Object> attributes = customOAuth2User.getAttributes();
			System.out.println("abc attribute"+attributes);
//			userService.handleGithubUser(customOAuth2User);
//			System.out.println("save xong");

			return customOAuth2User;////

		}else if(provider.equals("facebook")){
			return new CustomOAuth2User(user, Provider.FACEBOOK);
		}
		return new CustomOAuth2User(user, Provider.LOCAL);
	}



}
