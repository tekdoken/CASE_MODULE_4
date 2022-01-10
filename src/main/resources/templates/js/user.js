function showMyAccount() {
    let currentUser = JSON.parse( localStorage.getItem("user"))
    let username = currentUser.username
    $.ajax({
        type: "GET",
        url: "http://localhost:8080/api/users/findByUsername/" + username,
        success: function (user) {
            console.log(user)
            let name = user.fullName
            let enabled
            let id = user.id
            let avatar = user.avatar
            if(user.enabled){
                enabled = "enabled"
            }else{
                enabled = "disable"
            }
            let role = user.roles[0]
            let roleName
            if(role == "ROLE_ADMIN"){
                roleName = "Admin Account"
            }else if(role == "ROLE_STUDENT"){
                roleName = "Student Account"
            }else if(role == "ROLE_PARENT"){
                roleName = "Parent Account"
            }else if(role == "ROLE_TEACHER"){
                roleName = "Teacher Account"
            }
            let str = `<div class="page-header">
            <div class="row">
                <div class="col-sm-12">
                    <h3 class="page-title">My Account</h3>
                   
                </div>
            </div>
        </div>
        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-12">
                        <div class="about-info">
                            <h4>My Information</h4>
                            <div class="media mt-3 d-flex">
                                <img src="${avatar}" class="me-3 flex-shrink-0" alt="...">
                                <div class="media-body flex-grow-1">
                                    <ul>
                                       
                                        <li>
                                            <span class="title-span">Id : </span>
                                            <span class="info-span">${id}</span>
                                        </li>
                                     
                                        <li>
                                            <span class="title-span">Full Name : </span>
                                            <span class="info-span">${name}</span>
                                        </li>
                                     
                                        <li>
                                            <span class="title-span">Username : </span>
                                            <span class="info-span">${username}</span>
                                        </li>
                                        <li>
                                            <span class="title-span">Account is : </span>
                                            <span class="info-span">${enabled}</span>
                                        </li>
                                        <li>
                                            <span class="title-span">Account Type : </span>
                                            <span class="info-span">${roleName}</span>
                                        </li>
                                        
                                    </ul>
                                    <a onclick="showChangePasswordForm(${id})" class="btn btn-sm bg-danger-light">
                             Update Password
                        </a>   <a onclick="showUpdateAvatarForm(${id})" class="btn btn-sm bg-danger-light">
                             Update Avatar
                        </a>
                                </div>
                            </div>
                            </div>
                            </div>
                            </div>
                            </div>
                            </div>
`
            document.getElementById("contentArea").innerHTML=str
        }

    })


}

function showChangePasswordForm(id){

}

function showUpdateAvatarForm(id){

}