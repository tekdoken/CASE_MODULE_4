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

        '                                <div class="row">\n' +
        '                                    <div class="col-12">\n' +
        '                                        <h5 class="form-title"><span>Student Information</span></h5>\n' +
        '                                    </div>\n' +
        '                                    <div class="col-12 col-sm-6">\n' +
        '                                        <div class="form-group">\n' +
        '                                            <label>Student\'s Name</label>\n' +
        '                                            <input type="text" class="form-control" id="name">\n' +
        '                                        </div>\n' +
        '                                    </div>\n' +
        '                                    <div class="col-12 col-sm-6">\n' +
        '                                        <div class="form-group">\n' +
        '                                            <label>Date of Birth</label>\n' +
        '                                            <div>\n' +
        '                                                <input type="date" class="form-control" id="birthday">\n' +
        '                                            </div>\n' +
        '                                        </div>\n' +
        '                                    </div>\n' +
        '                                    <div class="col-12 col-sm-6">\n' +
        '                                        <div class="form-group">\n' +
        '                                            <label>Class</label>\n' +
        '                                            <select id="clazz">'
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
                '                                            <input type="text" class="form-control" id="prName">\n' +
                '                                        </div>\n' +
                '                                    </div>\n' +
                '                                    <div class="col-12 col-sm-6">\n' +
                '                                        <div class="form-group">\n' +
                '                                            <label>Parent\'s Mobile</label>\n' +
                '                                            <input type="text" class="form-control" id="prPhoneNo">\n' +
                '                                        </div>\n' +
                '                                    </div>\n' +
                '                                    <div class="col-12">\n' +
                '                                        <button class="btn btn-primary" onclick="addStAndPr()">Add student</button>\n' +
                '                                    </div>\n' +
                '                                </div>\n' +
                '                        </div>' +
                '                </div>\n' +
                '            </div>';
            document.getElementById("contentArea").innerHTML = str;
        }
    })

}

function addStAndPr() {
    console.log("vao ham add")
    let stName = $("#name").val();
    let stBirthdayArray = $("#birthday").val().split("/");
    let stBirthday = stBirthdayArray[2]+"-"+stBirthdayArray[1]+"-"+stBirthdayArray[0];

    let clazz = $("#clazz").val();
    let prName = $("#prName").val();
    let prPhoneNo = $("#prPhoneNo").val();

    let stUserName = '';
    for (let i = 0; i < stName.length; i++) {
        if (stName.toLowerCase().charAt(i) !== " ") {
            stUserName += stName.toLowerCase().charAt(i);
        }
    }
    console.log(stUserName)

    // while (checkExistingUser(stUserName)) {
        let random = Math.round(Math.random() * 1000);
console.log(random);
        stUserName += random.toString();
    // }
    let stUser = {
        fullName: stName,
        username: stUserName,
        password: 123,
        roles: [
            {
                id: 2,
                name: "ROLE_STUDENT"
            }
        ],
        provider: "LOCAL",
        enabled: true,
        avatar: " "
    }
    console.log(stUser);
    $.ajax({
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json',
        },
        type: 'POST',
        url: 'http://localhost:8080/api/auth/register',
        data: JSON.stringify(stUser),

        error: function (error) {
            console.log(error)
        }
    })
let checkUsername = checkExistingUser(prPhoneNo);
    if (!checkUsername) {
        let prUser = {
            fullName: prName,
            username: prPhoneNo,
            password: 123,
            roles: [
                {
                    id: 3,
                    name: "ROLE_PARENT"
                }
            ],
            provider: "LOCAL",
            enabled: true,
            avatar: ''
        }
        $.ajax({
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json',
            },
            type: 'POST',
            url: 'http://localhost:8080/api/auth/register',
            data: JSON.stringify(prUser),
            error: function (error) {
                console.log(error)
            }
        })
        console.log(prUser)
    }
    let prNewUser


    $.ajax({
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json',
        },
        type: 'GET',
        url: `http://localhost:8080/api/users/findByUsername/${prPhoneNo}`,
        success: function (user) {
            console.log("tim user ph")
            console.log(user)
            prNewUser = user;
        }
    })
    let parent = {
        user:  prNewUser,
    }
    $.ajax({
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json',
        },
        type: 'POST',
        url: 'http://localhost:8080/api/parents',
        data: JSON.stringify(parent),
        error: function (error) {
            console.log(error)
        }
    })
    console.log("pr moi")
    console.log(parent)

    $.ajax({
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json',
        },
        type: 'GET',
        url: `http://localhost:8080/api/users/findByUsername/${stUserName}`,
        success: function (user) {
            console.log("tim hs")
            console.log(user)
            stUser = user;
        }
    })
    let student = {
        birthday: stBirthday,
        clazz: {
            id :clazz,
        },
        user: stUser,
        parent: parent,
    }
    console.log("hsinh moi")
    console.log(student)


    $.ajax({
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json',
        },
        type: 'POST',
        url: 'http://localhost:8080/api/students',
        data: JSON.stringify(student),
        error: function (error) {
            console.log(error)
        }
    })
}

function checkExistingUser(username) {
    console.log("vao ham check")
    $.ajax({
        type: "GET",
        url: "http://localhost:8080/api/users",
        success: function (users) {
            for (let i = 0; i < users.length; i++) {
                if (users[i].username == username) {
                    return true;
                }
            }

        }
    })
    return false;
}