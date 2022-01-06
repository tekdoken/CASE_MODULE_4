function showFormAddStudent() {
    let str = '      \n' +
        '            <div class="page-header">\n' +
        '                <div class="row align-items-center">\n' +
        '                    <div class="col">\n' +
        '                        <h3 class="page-title">Add Students</h3>\n' +
        '\n' +
        '                        <ul class="breadcrumb">\n' +
        '                            <li class="breadcrumb-item"><a\n' +
        '                                    href="#">Students</a>\n' +
        '                            </li>\n' +
        '                            <li class="breadcrumb-item active">Add Students</li>\n' +
        '                        </ul>\n' +
        '                    </div>\n' +
        '                </div>\n' +
        '            </div>' +
        ' <div class="row">\n' +
        '                <div class="col-sm-12">\n' +
        '                    <div class="card">\n' +
        '                        <div class="card-body">\n' +
        '<form enctype="multipart/form-data" id="form">'+
        '                                <div class="row">\n' +

        '                                    <div class="col-12">\n' +
        '                                        <h5 class="form-title"><span>Student Information</span></h5>\n' +
        '                                    </div>\n' +
        '                                    <div class="col-12 col-sm-6">\n' +
        '                                        <div class="form-group">\n' +
        '                                            <label>Student\'s Name</label>\n' +
        '                                            <input type="text" class="form-control" name="stName">\n' +
        '                                        </div>\n' +
        '                                    </div>\n' +
        '                                    <div class="col-12 col-sm-6">\n' +
        '                                        <div class="form-group">\n' +
        '                                            <label>Date of Birth</label>\n' +
        '                                            <div>\n' +
        '                                                <input type="date" class="form-control" name="stBirthday">\n' +
        '                                            </div>\n' +
        '                                        </div>\n' +
        '                                    </div>\n' +
        '                                    <div class="col-12 col-sm-6">\n' +
        '                                        <div class="form-group">\n' +
        '                                            <label>Class</label>\n' +
        '                                            <select name="clazzId">'
    $.ajax({
        type: "GET",
        url: "http://localhost:8080/api/classes/",
        success: function (classList) {
            console.log(classList)
            for (let i = 0; i < classList.length; i++) {
                str += `<option value="${classList[i].id}">${classList[i].name}</option>`
            }
            str += ' </select>\n' +
                '                                        </div>\n' +
                '                                    </div>\n' +
                '                                    <div class="col-12 col-sm-6">\n' +
                '                                        <div class="form-group">\n' +
                '                                            <label>Parent\'s Name</label>\n' +
                '                                            <input type="text" class="form-control" name="prName">\n' +
                '                                        </div>\n' +
                '                                    </div>\n' +
                '                                    <div class="col-12 col-sm-6">\n' +
                '                                        <div class="form-group">\n' +
                '                                            <label>Parent\'s Mobile</label>\n' +
                '                                            <input type="text" class="form-control" name="prPhoneNo">\n' +
                '                                        </div>\n' +
                '                                    </div>\n' +

                '                                    <div class="col-12">\n' +
                '                                        <button type="button"  class="btn btn-primary" onclick="addStAndPr()">Add student</button>\n' +
                '                                    </div>\n' +
                '                                </div>\n' +
                '</form >\n'+
                '                        </div>' +
                '                </div>\n' +
                '            </div>';
            document.getElementById("contentArea").innerHTML = str;
        }
    })

}
function addStAndPr(){
    let form = document.getElementById("form")
    let data = new FormData(form)
    console.log(data);
    $.ajax({
        type: 'POST',
        enctype: 'multipart/form-data',
        url: 'http://localhost:8080/api/auth/generateUsers',
        data: data,

        processData: false,
        contentType: false,
        cache: false,
        timeout: 1000000,
        success: function (newUser){
            console.log(newUser)
        },

        error: function (error) {
            console.log(error)
        }
    })


}
