function showFormAddScore(id) {
    let str = ` <div class="page-header">
    <div class="row align-items-center">
        <div class="col">
            <h3 class="page-title">Add Test Result</h3>
            <ul class="breadcrumb">
                <li class="breadcrumb-item"><a onclick="showClassList()">Class</a></li>
                <li class="breadcrumb-item active">Add Test Result</li>
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
                    <form enctype="multipart/form-data" id="form">
                    <div class="col-12 col-sm-6">
                                <div class="form-group">
                                    <label>TEST NAME</label>
                                <input type="text" class="form-control" id="testName" name="testName">
                            </div>
                          </div>
                        <div id="inputArea">
                        
                        </div>
                        
                        </form>
                    </div>

            </div>
        </div>
    </div>
</div>`
    document.getElementById("contentArea").innerHTML = str
    $.ajax({
        type: "GET",
        url: "http://localhost:8080/api/students/classes/" + id,
        success: function (students) {
            console.log(students)
            let input = ``
            for (let i = 0; i < students.length; i++) {
                let name = students[i].user.fullName
                let id = students[i].id
                let inputId = "score" + i
                input += `<div class="col-12 col-sm-6">
                                <div class="form-group">
                                    <label>${name}</label>
                                <input type="text" class="form-control" id="score${i}">
                                <input type="hidden" class="form-control" id="stId${i}" value="${id}">
                            </div>
                          </div>`
            }
            input += `<button type="button" onclick="addTestResult(${students.length},${id})">Submit</button>`
            document.getElementById("inputArea").innerHTML = input
        }
    })

}

function addTestResult(number,classId) {
    let testName = document.getElementById("testName").value
    let scores = []
    for (let i = 0; i < number ; i++) {
        let score = document.getElementById("score" + i).value
        let stId = document.getElementById("stId" + i).value
        let scoreObj = {
            name: testName,
            student: {
                id: stId
            },
            score: score
        }
        console.log(scoreObj)
        scores.push(scoreObj)

        // console.log(scoreObj)
        // $.ajax({
        //     headers: {
        //         'Accept': 'application/json',
        //         'Content-Type': 'application/json',
        //     },
        //     type: 'POST',
        //     url: 'http://localhost:8080/api/scores',
        //     data: JSON.stringify(scoreObj),
        //     success: function (score){
        //         console.log(score)
        //
        //     }
        // })
    }
    console.log(scores)
    $.ajax({
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json',
        },
        type: 'POST',
        url: 'http://localhost:8080/api/scores',
        data: JSON.stringify(scores),
        success: function (scores) {
            showStudentsByClass(classId)
        }
    })


}