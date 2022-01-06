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

function showFormAddTeacher(){
    document.getElementById("contentArea").innerHTML= `<div class="page-header">
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

function addNewTeacher(){
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
