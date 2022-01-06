function showStudent() {
    $.ajax({
        type: "Get",
        url: "http://localhost:8080/api/students",
        success: function (student) {
            // console.log(student)
            $.ajax({
                type: "GET",
                url: "http://localhost:8080/api/users",
                success: function (user) {
                    $.ajax({
                        type: "Get",
                        url: "http://localhost:8080/api/parents",
                        success: function (parent) {
                            $.ajax({
                                type: "Get",
                                url: "http://localhost:8080/api/clazzs",
                                success: function (clazzs) {
                                    // console.log(clazzs)
                                    $.ajax({
                                        type: "Get",
                                        url: "http://localhost:8080/api/teachers",
                                        success: function (teacher) {
                                            console.log(teacher)
                                            displayStudent(student, user, parent, clazzs, teacher)

                                        }
                                    })

                                }
                            })

                        }
                    })
                }
            })
        }
    })
}

function displayStudent(student, user, parent, clazzs, teachers) {
    let res = ``
    for (let i = 0; i < student.length; i++) {
        for (let j = 0; j < user.length; j++) {
            if (user[j].id == student[i].user.id) {

                res += `<tr role="row" class="odd"> <td class="sorting_1">${student[i].id}</td>
<td>
               <h2 class="table-avatar">
                                                            <a href="https://preschool.dreamguystech.com/html-template/template/student-details.html"
                                                               class="avatar avatar-sm me-2"><img
                                                                    class="avatar-img rounded-circle"
                                                                    src="../templates/list%20stu_files/avatar-10.jpg"
                                                                    alt="User Image"></a>
                                                            <a href="https://preschool.dreamguystech.com/html-template/template/student-details.html">${user[j].fullName}</a>
                                                        </h2>
                                                    </td> <td>${student[i].birthday}</td>`
            }
            for (let p = 0; p < parent.length; p++) {
                if (parent[p].id == student[i].parent.id && parent[p].user.id == user[j].id) {
                    // console.log(student[i].parent.id)
                    res += ` <td>${user[j].fullName}</td>`
                }
            }
        }
        for (let c = 0; c < clazzs.length; c++) {
            if (clazzs[c].id == student[i].clazz.id) {
                res += `<td>${clazzs[c].name}</td>
                <td>${clazzs[c].grade}</td>`
                for (let t = 0; t < teachers.length; t++){
                    for  (let j1 = 0; j1 < user.length; j1++) {
                        if (clazzs[c].id == teachers[t].classes[0].id && teachers[t].user.id == user[j1].id) {
                            res += `<td>${user[j1].fullName}</td>`
                        }
                    }
                }
            }
        }
        res += ` <td class="text-end">
                  <div class="actions">
                  <a href="https://preschool.dreamguystech.com/html-template/template/edit-student.html"
                   class="btn btn-sm bg-success-light me-2">
                   <i class="fas fa-pen"></i>
                    </a>
                 <a href="https://preschool.dreamguystech.com/html-template/template/students.html#"
                     class="btn btn-sm bg-danger-light">
                      <i class="fas fa-trash"></i>
                            </a>
                       </div>
                          </td>
                         </tr>`
    }

    document.getElementById("card").innerHTML = res;
}