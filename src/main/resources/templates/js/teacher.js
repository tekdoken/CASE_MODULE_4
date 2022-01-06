function showTeachers(teachers) {
    let table = document.getElementById("contentArea")
    table.innerHTML = ''
    table.innerHTML += `<div class="page-header">
                        <div class="row align-items-center">
                            <div class="col">
            <h3 class="page-title">Teachers</h3>
            <ul class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                <li class="breadcrumb-item active">Teachers</li>
            </ul>
        </div>
        <div class="col-auto text-end float-end ms-auto">
            
            <a onclick="showFormAddTeacher()" class="btn btn-primary"><i class="fas fa-plus"></i></a>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-sm-12">
        <div class="card card-table">
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-hover table-center mb-0 datatable">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Class</th>
                            <th>Status</th>
                            <th>Username</th>
                            <th>Phone Number</th>
                            <th class="text-end">Action</th>
                        </tr>
                        </thead>
                        <tbody id="tbody"></tbody>
                            </table>
                            </div>
                            </div>
                            </div>
                            </div>`
    let content = document.getElementById("tbody");


    for (let i = 0; i < teachers.length; i++) {
        let tc = teachers[i]
        let tcUser = tc.user
        let id = tc.id
        let avatar = tcUser.avatar
        let name = tcUser.fullName
        let phone = tcUser.username
        let status
        if (tc.active) {
            status = "active";
        } else {
            status = "inactive";
        }
        let str = ` <tr>
                            <td>${id}</td>
                            <td>
                                <h2 class="table-avatar">
                                    <a onclick="showTeacherDetails(${id})" class="avatar avatar-sm me-2"><img class="avatar-img rounded-circle" src="${avatar}" alt="User Image"></a>
                                    <a onclick="showTeacherDetails(${id})">${name}</a>
                                </h2>
                            </td><td>`
        $.ajax({
            type: "GET",
            url: "http://localhost:8080/api/classes/teachers/" + id,
            success: function (classes) {
                console.log(classes)
                for (let i = 0; i < classes.length; i++) {
                    str += `<a onclick="showClassDetails(${classes[i].id})"> ${classes[i].name}</a><br>`
                }
                str += `</td>
                            <td>${status}</td>
                            <td>${phone}</td>
                            <td>${phone}</td>
                            <td class="text-end">
                                <div class="actions">
                                   
                                    <a onclick="showFormEditTeacher(${id})" class="btn btn-sm bg-danger-light">
                                       Edit
                                    </a> 
                                   
                                    <a onclick="showTeacherDetails(${id})" class="btn btn-sm bg-danger-light">
                                        Details
                                    </a>
                                    </div>
                            </td>
</tr>`
                content.innerHTML += str;
            }
        })
    }


}

function showTeacherList() {
    $.ajax({
        type: "GET",
        url: "http://localhost:8080/api/teachers",
        success: function (teachers) {
            showTeachers(teachers)
        }
    })

}

function showFormAddTeacher() {
    document.getElementById("contentArea").innerHTML = `<div class="page-header">
    <div class="row align-items-center">
        <div class="col">
            <h3 class="page-title">Add Teacher</h3>
            <ul class="breadcrumb">
                <li class="breadcrumb-item"><a
                        onclick="showTeacherList()">Teachers</a>
                </li>
                <li class="breadcrumb-item active">Add Teacher</li>
            </ul>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-sm-12">
        <div class="card">
            <div class="card-body">
                <form enctype="multipart/form-data" id="form">
                    <div class="row">
                        <div class="col-12">
                            <h5 class="form-title"><span>Teacher Information</span></h5>
                        </div>
                        <div class="col-12 col-sm-6">
                            <div class="form-group">
                                <label>Name</label>
                                <input type="text" name="name" class="form-control">
                            </div>
                        </div>
                        <div class="col-12 col-sm-6">
                            <div class="form-group">
                                <label>Phone Number</label>
                                <div>
                                    <input type="text" name="phone" class="form-control">
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-12">
                            <button type="button" onclick="addNewTeacher()" class="btn btn-primary">Submit</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>`

}

function addNewTeacher() {
    let form = document.getElementById("form")
    let data = new FormData(form)
    console.log(data);
    $.ajax({
        type: 'POST',
        enctype: 'multipart/form-data',
        url: 'http://localhost:8080/api/auth/generateTeacherUser',
        data: data,

        processData: false,
        contentType: false,
        cache: false,
        timeout: 1000000,
        success: function (newTeacher) {
            console.log(newTeacher)
            showTeachers(newTeacher);
        },

        error: function (error) {
            console.log(error)
        }
    })

}

function showTeacherDetails(id) {
    $.ajax({
        type: "GET",
        url: "http://localhost:8080/api/teachers/" + id,
        success: function (teacher) {
            showTeacher(teacher)
        }
    })

}

function showTeacher(teacher) {
    let tcUser = teacher.user;
    let tcName = tcUser.fullName;
    let tcUsername = tcUser.username;
    let tcAvatar = tcUser.avatar;
    let tcEnabled
    if (tcUser.enabled) {
        tcEnabled = "enabled";
    } else {
        tcEnabled = "disabled";
    }
    let tcActive;
    if (teacher.active) {
        tcActive = "active";
    } else {
        tcActive = "inactive";
    }
    let str = `
        <div class="page-header">
            <div class="row">
                <div class="col-sm-12">
                    <h3 class="page-title">Teacher Details</h3>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a onclick="showTeacherList()">Teachers</a>
                        </li>
                        <li class="breadcrumb-item active">Teachers Details</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-12">
                        <div class="about-info">
                            <h4>Teacher's Information</h4>
                            <div class="media mt-3 d-flex">
                                <img src="${tcAvatar}" class="me-3 flex-shrink-0" alt="...">
                                <div class="media-body flex-grow-1">
                                    <ul>
                                        <li>
                                            <span class="title-span">Id : </span>
                                            <span class="info-span">${teacher.id}</span>
                                        </li>
                                        <li>
                                            <span class="title-span">Full Name : </span>
                                            <span class="info-span">${tcName}</span>
                                        </li>
                                        <li><span class="title-span">Class : </span>
                                            <span class="info-span">
`
    $.ajax({
        type: "GET",
        url: "http://localhost:8080/api/classes/teachers/" + teacher.id,
        success: function (classes) {
            console.log(classes)
            for (let i = 0; i < classes.length; i++) {
                str += `<a onclick="showClassDetails(${classes[i].id})"> ${classes[i].name}</a><br>`
            }
            str += ` 
                                        </li>
                                        <li>
                                            <span class="title-span">Status : </span>
                                            <span class="info-span">${tcActive}</span>
                                        </li>
                                        <li>
                                            <span class="title-span">Account's Username : </span>
                                            <span class="info-span">${tcUsername}</span>
                                        </li>
                                        <li>
                                            <span class="title-span">Phone No : </span>
                                            <span class="info-span">${tcUsername}</span>
                                        </li>
                                        <li>
                                            <span class="title-span">Account's Status : </span>
                                            <span class="info-span">${tcEnabled}</span>
                                        </li>
                                        
                                    </ul>
                                </div>
                            </div>
                            <div class="row mt-3">
                               
                            </div>
                             
                    </div>
                </div>
            </div>
        </div>
  `
            document.getElementById("contentArea").innerHTML = str;
        }
    })


}
