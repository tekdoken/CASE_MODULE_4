//package com.example.case_module_4.security;
//
//
//import com.example.case_module_4.security.jwt.CustomAccessDeniedHandler;
//import com.example.case_module_4.security.jwt.JwtAuthenticationFilter;
//import com.example.case_module_4.security.jwt.RestAuthenticationEntryPoint;
//import com.example.case_module_4.service.IRoleService;
//import com.example.case_module_4.service.IUserService;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.security.authentication.AuthenticationManager;
//import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
//import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
//import org.springframework.security.config.annotation.web.builders.HttpSecurity;
//import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
//import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
//import org.springframework.security.config.annotation.web.configurers.ExceptionHandlingConfigurer;
//import org.springframework.security.core.Authentication;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//import org.springframework.security.crypto.password.PasswordEncoder;
//import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
//
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//
//@Configuration
//@EnableWebSecurity
//@EnableGlobalMethodSecurity(prePostEnabled = true)
//public class SecurityConfig extends WebSecurityConfigurerAdapter {
//    @Autowired
//    IUserService userService;
//
//    @Autowired
//    IRoleService roleService;
//
//    @Override
//    public void configure(AuthenticationManagerBuilder authenticationManagerBuilder) throws Exception {
//        authenticationManagerBuilder.userDetailsService(userService)
//                .passwordEncoder(passwordEncoder());
//    }
//
//    @Bean
//    PasswordEncoder passwordEncoder() {
//        return new BCryptPasswordEncoder();
//    }
//
//    @Bean
//    @Override
//    public AuthenticationManager authenticationManager() throws Exception {
//        return super.authenticationManager();
//    }
//
//    @Bean
//    public RestAuthenticationEntryPoint restServicesEntryPoint() {
//        return new RestAuthenticationEntryPoint();
//    }
//
//    @Bean
//    public JwtAuthenticationFilter jwtAuthenticationFilter() {
//        return new JwtAuthenticationFilter();
//    }
//
//    @Bean
//    public CustomAccessDeniedHandler customAccessDeniedHandler() {
//        return new CustomAccessDeniedHandler();
//    }
////    @Override
////    protected void configure(HttpSecurity http) throws Exception {
////        http.csrf().ignoringAntMatchers("/**");
////        http.httpBasic().authenticationEntryPoint(restServicesEntryPoint());
////        http.authorizeRequests()
//////                .antMatchers("/login","login-google",
//////                        "/register","/error").permitAll()
//////                .antMatchers(HttpMethod.PUT,"/students/{id}").access(" hasRole('ROLE_ADMIN')")
//////                .antMatchers(HttpMethod.POST, "/students").access("hasRole('ROLE_ADMIN')")
//////                .antMatchers("/**").access("hasRole('ROLE_USER')")
////                .antMatchers("/**").permitAll()
////                .anyRequest().authenticated()
////                .and().csrf().disable()
////                .logout().logoutRequestMatcher(new AntPathRequestMatcher("/logout"));
////        http.addFilterBefore(jwtAuthenticationFilter(), UsernamePasswordAuthenticationFilter.class)
////                .exceptionHandling().accessDeniedHandler(customAccessDeniedHandler());
////        http.sessionManagement()
////                .sessionCreationPolicy(SessionCreationPolicy.STATELESS);
////        http.cors();
////    }
//
//
//    @Override
//    protected void configure(HttpSecurity http) throws Exception {
//        ExceptionHandlingConfigurer<HttpSecurity> httpSecurityExceptionHandlingConfigurer = http.authorizeRequests()
////                .antMatchers("/", "/login", "/oauth/**").permitAll()
//                .antMatchers("/**").permitAll()
//                .anyRequest().authenticated()
//                .and()
//                .formLogin().permitAll()
//                .loginPage("/login")
//                .usernameParameter("email")
//                .passwordParameter("pass")
//                .defaultSuccessUrl("/list")
//                .and()
////                .oauth2Login()
////                .loginPage("/login")
////                .userInfoEndpoint()
////                .userService(oauthUserService)
////                .and()
////                .successHandler(new AuthenticationSuccessHandler() {
////
////                    @Override
////                    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
////                                                        Authentication authentication) throws IOException, ServletException {
////                        System.out.println("abc goi ham");
////                        CustomOAuth2User oauthUser = (CustomOAuth2User) authentication.getPrincipal();
////                        System.out.println("abc oath" + oauthUser);
//////                        UserPrinciple userPrinciple =  (UserPrinciple) authentication.getPrincipal();
//////                        String name = userPrinciple.getUsername();
////
////                        System.out.println("abc vao toi day r");
////                        Provider provider = oauthUser.getProvider();
////                        if (provider.equals(Provider.GOOGLE)) {
////                            userService.handleGoogleUser(oauthUser);
////                        } else if (provider.equals(Provider.GITHUB)) {
////                            userService.handleGithubUser(oauthUser);
//////                            System.out.println("abc github roi day");
////                        } else if(provider.equals(Provider.FACEBOOK)){
////                            userService.handleFacebookUser(oauthUser);
////
////                        }
////                        response.sendRedirect("/hello");
////                    }
////                })
////                //.defaultSuccessUrl("/list")
////                .and()
//                .logout().logoutSuccessUrl("/").permitAll()
//                .and()
//                .exceptionHandling().accessDeniedPage("/403");
//    }
////
////    @Autowired
////    private CustomOAuth2UserService oauthUserService;
//
//
//
//}
