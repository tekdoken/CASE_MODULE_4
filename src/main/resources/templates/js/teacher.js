function showTeachers(teachers){

    let str = `<div class="page-header">
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
                        <tbody>`;

}
