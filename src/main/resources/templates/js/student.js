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

function add() {
    let stName = $("#name").val();
    console.log("vao ham add")
    let stUserName = '';
    for (let i = 0; i < stName.length; i++) {
        if (stName.toLowerCase().charAt(i) !== " ") {
            stUserName += stName.toLowerCase().charAt(i);
        }
    }
    let prPhoneNo = $("#prPhoneNo").val();
    console.log(stUserName)
    saveStAndPrUser(stUserName,prPhoneNo)
    saveStAndPrObject(stUserName,prPhoneNo)
}
function saveStAndPrUser(stUserName, prPhoneNo){
    let stName = $("#name").val();

    let prName = $("#prName").val();



//check if stUsername already in use
//     while (checkExistingUser(stUserName)) {
//     let random = Math.round(Math.random() * 1000);
//     console.log(random);
//     stUserName += random.toString();
//     }

    //save stUser ok
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
        success: function (stNewUser){

        },

        error: function (error) {
            console.log(error)
        }
    })

    //save prUser ok
    let prUser
    let existingUser = checkExistingUser(prPhoneNo);
    if (!existingUser) {
        prUser = {
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
}

function saveStAndPrObject(stUserName, prPhoneNo){
    let stBirthdayArray = $("#birthday").val().split("/");
    let stBirthday = stBirthdayArray[2] + "-" + stBirthdayArray[1] + "-" + stBirthdayArray[0];

    let clazz = $("#clazz").val();
    let prUser
    $.ajax({
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json',
        },
        type: 'GET',
        url: `http://localhost:8080/api/users/findByUsername/`+prPhoneNo,
        success: function (user) {
            console.log("tim user ph")
            console.log(user)
            prUser = user;
        }
    })

    let parent = {
        user: prUser,
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

    let stGetUser;
    $.ajax({
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json',
        },
        type: 'GET',
        url: `http://localhost:8080/api/users/findByUsername/`+stUserName,
        // url: `http://localhost:8080/api/users/findByUsername/900007`,
        success: function (user) {
            console.log("tim hs")
            console.log(user)
            stGetUser = user;
        }
    })

    let student = {
        birthday: stBirthday,
        clazz: {
            id: clazz,
        },
        user: stGetUser,
        parent: parent,
    }

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
                    console.log("trung ten")
                    return true;
                }
            }

        }
    })
    console.log("khong trung ten")
    return false;
}