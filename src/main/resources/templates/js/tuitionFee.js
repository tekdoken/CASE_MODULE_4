function showUnpaidFees() {

    let table = document.getElementById("contentArea")
    table.innerHTML = ''
    table.innerHTML += `<div class="page-header">
                        <div class="row align-items-center">
                            <div class="col">
            <h3 class="page-title">Tuition Fees</h3>
            <ul class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                <li class="breadcrumb-item active">Unpaid Tuition Fees</li>
            </ul>
        </div>
        <div class="col-auto text-end float-end ms-auto">
            
            <a onclick="showFormAddFee()" class="btn btn-primary"><i class="fas fa-plus"></i></a>
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
                            <th>Student ID</th>
                            <th>Student Name</th>
                            <th>Student Class</th>
                            <th>Tuition Fee Id </th>
                            <th>Tuition Fee</th>
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
    $.ajax({
        type: "GET",
        url: "http://localhost:8080/api/students/",
        success: function (students) {
            for (let i = 0; i < students.length; i++) {
                let student = students[i]
                let stId = student.id
                let stAvatar = student.user.avatar
                let stName = student.user.fullName


                $.ajax({


                    type: "GET",
                    url: "http://localhost:8080/api/tuitionFees/unpaid/" + student.id,
                    success: function (tuitionFees) {
                        for (let i = 0; i < tuitionFees.length; i++) {
                            let tuitionFee = tuitionFees[i]
                            let str = `<tr>
                            <td>${student.id}</td>
                            <td><h2 class="table-avatar">
                                    <a onclick="showStudentDetails(${stId})" class="avatar avatar-sm me-2"><img class="avatar-img rounded-circle" src="${stAvatar}" alt="User Image"></a>
                                    <a onclick="showStudentDetails(${stId})">${stName}</a>
                                </h2></td>
                            <td>${student.clazz.name}</td>
                            <td>${tuitionFee.name}</td>
                            <td>${tuitionFee.fee}</td>
                            <td class="text-end">
                                <a onclick="" class="btn btn-sm bg-success-light me-2">
                            <i class="fas fa-pen"></i> Edit
                            </a>
                        
                            </td></tr>
                           
`
                            content.innerHTML += str;

                        }
                        // document.getElementById("contentArea").innerHTML = str;
                    }
                })

            }
        }
    })
}