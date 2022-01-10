function showLoginForm(){

    let str =`<div class="main-wrapper login-body">
    <div class="login-wrapper">
        <div class="container">
            <div class="loginbox">
                <div class="login-left">
                    <img class="img-fluid" src="https://png.pngtree.com/png-clipart/20201208/ourlarge/pngtree-school-building-cartoon-school-school-building-png-image_2472278.jpg" alt="Logo">
                </div>
                <div class="login-right">
                    <div class="login-right-wrap">
                        <h1>Login</h1>
                        <p class="account-subtitle">Access to our dashboard</p>

                        <form enctype="multipart/form-data" id="form">
                            <div class="form-group">
                                <input class="form-control" type="text" placeholder="Username" id="username" name="username">
                            </div>
                            <div class="form-group">
                                <input class="form-control" type="password" placeholder="Password" id="password" name="password">
                            </div>
                            <div class="form-group">
                                <button class="btn btn-primary btn-block" type="button" onclick="verifyLogin()">Login</button>
                            </div>
                        </form>

                        <div class="text-center forgotpass"><a href="#">Forgot Password?</a></div>
                        <div class="login-or">
                            <span class="or-line"></span>
                            <span class="span-or">or</span>
                        </div>

                        <div class="social-login">
                            <span>Login with</span>
                            <a href="#" class="facebook"><i class="fab fa-facebook-f"></i></a><a onclick="showGoogleLogin()" class="google"><i class="fab fa-google"></i></a>
                        </div>

                        <div class="text-center dont-have">Don’t have an account? <a onclick="showRegisterForm()">Register</a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>`
    document.getElementById("window").innerHTML = str;
}

function verifyLogin(){

    let form = document.getElementById("form")
    let data = new FormData(form)
    console.log(data);
    $.ajax({
        type: 'POST',
        enctype: 'multipart/form-data',
        url: 'http://localhost:8080/api/auth/login',
        data: data,

        processData: false,
        contentType: false,
        cache: false,
        timeout: 1000000,
        success: function (user) {

            console.log(user)
            localStorage.setItem("user",JSON.stringify(user))
            let currentUser = JSON.parse( localStorage.getItem("user"))
            let token = currentUser.accessToken
            localStorage.setItem("token",token)
            showUserHomePage()
        },

        error: function (error) {
            showLoginForm()
        }
    })
}
function logOut() {

    // $.ajax({
    //     type: 'POST',
    //     url: 'http://localhost:8080/logout',
    //     headers: { "Authorization": 'Bearer ' + token },
    //     success: function (){
    //         localStorage.clear("user");
    //         showHomePage();
    //
    //     }
    // })
    localStorage.clear("user");
    localStorage.clear("token");
    showHomePage();
}

function showGoogleLogin(){
    $.ajax({
            type: 'POST',
            url: 'http://localhost:8080/oauth2/authorization/google',
            success: function (user){
                showUserHomePage()
                console.log(user)
                localStorage.setItem("user",JSON.stringify(user))
                let currentUser = JSON.parse( localStorage.getItem("user"))
                let token = user.accessToken
                localStorage.setItem("token",token)
            }

    })
}