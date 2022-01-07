function showUserHomePage(){
    let str =`    <div class="header">

        <div class="header-left">
            <a class="logo">
                <img src="https://png.pngtree.com/png-clipart/20201208/ourlarge/pngtree-school-building-cartoon-school-school-building-png-image_2472278.jpg"
                     alt="Logo">
            </a>
            <a class="logo logo-small">
                <img src="https://png.pngtree.com/png-clipart/20201208/ourlarge/pngtree-school-building-cartoon-school-school-building-png-image_2472278.jpg"
                     alt="Logo" width="30" height="30">
            </a>
        </div>

        <a href="javascript:void(1);" id="toggle_btn">
            <i class="bi bi-list-task"></i>
        </a>

        <div class="top-nav-search">
            <form>
                <input type="text" class="form-control" placeholder="Search here">
                <button class="btn" type="submit"><i class="bi bi-search"></i></button>
            </form>
        </div>


        <a class="mobile_btn" id="mobile_btn">
            <i class="fas fa-bars"></i>
        </a>


        <ul class="nav user-menu">

            <li class="nav-item dropdown noti-dropdown">
                <a href="https://preschool.dreamguystech.com/html-template/template/add-student.html#"
                   class="dropdown-toggle nav-link" data-bs-toggle="dropdown">
                    <i class="far fa-bell"></i> <span class="badge badge-pill">3</span>
                </a>
                <div class="dropdown-menu notifications">
                    <div class="topnav-dropdown-header">
                        <span class="notification-title">Notifications</span>
                        <a href="javascript:void(0)" class="clear-noti"> Clear All </a>
                    </div>
                    <div class="noti-content">
                        <ul class="notification-list">
                            <li class="notification-message">
                                <a href="https://preschool.dreamguystech.com/html-template/template/add-student.html#">
                                    <div class="media d-flex">
<span class="avatar avatar-sm flex-shrink-0">
<img class="avatar-img rounded-circle" alt="User Image" src="#">
</span>
                                        <div class="media-body flex-grow-1">
                                            <p class="noti-details"><span class="noti-title">John Hendry</span> sent a
                                                cancellation request <span class="noti-title">Apple iPhone XR</span></p>
                                            <p class="noti-time"><span class="notification-time">8 mins ago</span></p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="topnav-dropdown-footer">
                        <a href="https://preschool.dreamguystech.com/html-template/template/add-student.html#">View all
                            Notifications</a>
                    </div>
                </div>
            </li>


            <li class="nav-item dropdown has-arrow">
                <a href="https://preschool.dreamguystech.com/html-template/template/add-student.html#"
                   class="dropdown-toggle nav-link" data-bs-toggle="dropdown">
                    <span class="user-img"><img class="rounded-circle" src="#" width="31"
                                                alt="Ryan Taylor"></span>
                </a>
                <div class="dropdown-menu">
                    <div class="user-header">
                        <div class="avatar avatar-sm">
                            <img src="#" alt="User Image" class="avatar-img rounded-circle">
                        </div>
                        <div class="user-text">
                            <h6>Ryan Taylor</h6>
                            <p class="text-muted mb-0">Administrator</p>
                        </div>
                    </div>
                    <a class="dropdown-item"
                       href="https://preschool.dreamguystech.com/html-template/template/profile.html">My Profile</a>
                    <a class="dropdown-item"
                       href="https://preschool.dreamguystech.com/html-template/template/inbox.html">Inbox</a>
                    <a class="dropdown-item"
                       href="https://preschool.dreamguystech.com/html-template/template/login.html">Logout</a>
                </div>
            </li>

        </ul>

    </div>


    <div class="sidebar" id="sidebar">
        <div>
            <div>
                <div id="sidebar-menu" class="sidebar-menu">
                    <ul>
                        <li class="menu-title">
                            <span>Admin Menu</span>
                        </li>
                        <li class="submenu">
                            <a><i class="fas fa-users"></i></i> <span> Dashboard</span><span class="menu-arrow"><i
                                    class="bi bi-chevron-right"></i></span> </a>
                            <ul>
                                <li><a>Admin
                                    Dashboard</a></li>
                                <li>
                                    <a>Teacher
                                        Dashboard</a></li>
                                <li>
                                    <a>Student
                                        Dashboard</a></li>
                            </ul>
                        </li>
                        <li class="submenu">
                            <a class="active subdrop"><i class="fas fa-user-graduate"></i> <span> Students</span>
                                <span class="menu-arrow"><i class="bi bi-chevron-right"></i></span></a>
                            <ul style="display: block;">
                                <li><a onclick="showStudentList()">Student
                                    List</a></li>
                                <li>
                                    <a onclick="showFormAddStudent()"
                                       class="active">Student Add</a></li>
                                <li>
                                    <a onclick="showInactiveStudentList()"
                                       class="active">Inactive Student List</a></li>
                            </ul>
                        </li>
                        <li class="submenu">
                            <a onclick="showTeacherList()"><i
                                    class="fas fa-chalkboard-teacher"></i> <span> Teachers</span><span
                                    class="menu-arrow"><i class="bi bi-chevron-right"></i></span></a>
                            <ul>
                                <li><a onclick="showTeacherList()">Teacher
                                    List</a></li>
                                <li>
                                    <a onclick="showFormAddTeacher()">Teacher
                                        Add</a></li>
                            </ul>
                        </li>
                        <li class="submenu">
                            <a onclick="showClassList()"><i
                                    class="fas fa-building"></i> <span> Classes</span> <span class="menu-arrow"><i
                                    class="bi bi-chevron-right"></i></span></a>
                            <ul>
                                <li>
                                    <a onclick="showClassList()">Class
                                        List</a></li>
                                <li>
                                    <a onclick="showFormAddClass()">Class
                                        Add</a></li>
                            </ul>
                        </li>
                        <li class="submenu">
                            <a><i
                                    class="fas fa-book-reader"></i> <span> Tuition Fees</span> <span class="menu-arrow"><i
                                    class="bi bi-chevron-right"></i></span></a>
                            <ul>
                                <li><a onclick="showUnpaidFees()">Unpaid Tuition Fees
                                </a></li>
                                <li>
                                    <a onclick="showFormAddFee() ">Add Tuition Fee </a></li>
                                <li>
                                    <a onclick="showFormUpdateFee()">Update Tuition Fee
                                    </a></li>
                            </ul>
                        </li>

                    </ul>
                </div>
            </div>
            <div class="slimScrollBar"></div>
            <div class="slimScrollRail"></div>
        </div>
    </div>

    <!--CONTENT-->
    <!--                        CONTENT TITLE-->
    <div class="page-wrapper" style="min-height: 468px;">
        <div class="content container-fluid">

            <!--            CONTENT -->


            <div class="row" id="contentArea"></div>

            <!--            END CONTENT -->
        </div>
    </div>`
    document.getElementById("window").innerHTML = str;
}

function showHomePage(){
    let user = localStorage.getItem("user")
    if(user == null){
        showLoginForm()
    }else{
        showUserHomePage()
    }
}