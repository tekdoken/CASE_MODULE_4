function showClasses(classes) {
    let table = document.getElementById("contentArea")
    table.innerHTML = ''
    table.innerHTML += `
<div class="page-header">
    <div class="row align-items-center">
        <div class="col">
            <h3 class="page-title">Classes</h3>
            <ul class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                <li class="breadcrumb-item active">Classes</li>
            </ul>
        </div>
        <div class="col-auto text-end float-end ms-auto">
            <a onclick ="showInactiveClassList()" class="btn btn-outline-primary me-2"> Show inactive classes</a>
            <a onclick="showFormAddClass()" class="btn btn-primary"><i class="fas fa-plus"></i></a>
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
                            <th>Grade</th>
                            <th>Teachers</th>
                            <th>No of Students</th>
                            <th>Status</th>
                            <th class="text-end">Action</th>
                        </tr>
                        </thead>
                        <tbody id="tbody"> </tbody>
    </table>
    </div>
    </div>
    </div>
    </div>
    </div>`
    let content = document.getElementById("tbody")
    for (let i = 0; i < classes.length; i++) {
        let clazz = classes[i]
        console.log(clazz)
        let id = clazz.id;
        let name = clazz.name
        let grade = clazz.grade
        let status
        if (clazz.active) {
            status = "Active"
        } else {
            status = "Inactive"
        }

        let str = `<tr>
                            <td>${id}</td>
                            <td>
                                <h2>
                                    <a>${name}</a>
                                </h2>
                            </td>
                            <td>${grade}</td><td>`
        let teachers = clazz.teachers
        for (let i = 0; i < teachers.length; i++) {
            let teacher = teachers[i]
            str += `<a onclick ="showTeacherDetails(${teacher.id})">${teacher.user.fullName}</a><br>`
        }
        $.ajax({
            type: "GET",
            url: "http://localhost:8080/api/students/classes/" + id,
            success: function (students) {
                let noOfStudents = students.length;
                console.log(noOfStudents)
                str += `</td><td>${noOfStudents}</td><td>${status}</td>
                            <td class="text-end">
                                <div class="actions">
                                    <a onclick="showFormEditClass(${id})" class="btn btn-sm bg-success-light me-2">
                                        <i class="fas fa-pen"></i>Edit
                                    </a>
                                    <a onclick="deactivateClass(${id})" class="btn btn-sm bg-danger-light">
                                        <i class="fas fa-trash"></i>Deactivate
                                    </a></div>
                            </td>
                        </tr>`
                content.innerHTML += str;
                // str+=`<td> hviiii </td>`
            }
        })
        // content.innerHTML += ``

    }
    // setTimeout(()=>{

    // },2000)


}

function showClass(clazz) {

}

function showClassDetails() {

}

function showClassList() {
    $.ajax({
        type: "GET",
        url: "http://localhost:8080/api/classes/",
        success: function (classes) {
            showClasses(classes)
        }
    })
}

function addClass(){
    let name = $('#name').val();
    let grade = $('#grade').val();
    let teachersId = $('#teachers').val();
    let clazz = {
        name: name,
        grade: grade,
        teachers: [
            {
                id:teachersId
            }
        ],
        active: true
    }
    console.log(clazz)

    // let form = document.getElementById("form")
    // let data = new FormData(form)
    // console.log(data);
    $.ajax({
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        },
        type: 'POST',
        // enctype: 'multipart/form-data',
        url: 'http://localhost:8080/api/classes',
        // data: data,
        data: JSON.stringify(clazz),

        // processData: false,
        // contentType: false,
        // cache: false,
        // timeout: 1000000,
        success: function (clazz) {
            // console.log(clazz)
        },

        error: function (error) {
            console.log(error)
        }
    })
}

function showFormAddClass(){
    let str=`<div class="page-header">
    <div class="row align-items-center">
        <div class="col">
            <h3 class="page-title">Add Class</h3>
            <ul class="breadcrumb">
                <li class="breadcrumb-item"><a onclick="showClassList()">Class</a></li>
                <li class="breadcrumb-item active">Add Class</li>
            </ul>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-sm-12">
        <div class="card">
            <div class="card-body">
<!--                <form enctype="multipart/form-data" id="form">-->
                    <div class="row">
                        <div class="col-12">
                            <h5 class="form-title"><span>Class Details</span></h5>
                        </div>
                        <div class="col-12 col-sm-6">
                            <div class="form-group">
                                <label>Class Name</label>
                                <input type="text" class="form-control" id="name" name="name">
                            </div>
                        </div>
                        <div class="col-12 col-sm-6">
                            <div class="form-group">
                                <label>Grade</label>
                                <input type="text" class="form-control" id="grade" name="grade">
                            </div>
                        </div>
                        <div class="col-12 col-sm-6">
                            <div class="form-group">
                                <label>Teachers</label>
                                <select  class="form-control" id="teachers" name="teachers">`
    $.ajax({
        type: "GET",
        url: "http://localhost:8080/api/teachers/",
        success: function (teacherList) {
            console.log(teacherList)
            for (let i = 0; i < teacherList.length; i++) {
                str += `<option value="${teacherList[i].id}">${teacherList[i].user.fullName}</option>`
            }
            str+=`</select>
                            </div>
                        </div>
                        <div class="col-12">
                            <button type="button" onclick="addClass()" class="btn btn-primary">Submit</button>
                        </div>
                    </div>
<!--                </form>-->
            </div>
        </div>
    </div>
</div>`
            document.getElementById("contentArea").innerHTML = str
        }
        })




}