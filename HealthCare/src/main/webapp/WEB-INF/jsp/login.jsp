<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="Smart Login">
        <meta name="keywords" content="Smart Login">
        <meta name="author" content="Madhan">

        <!-- Bootstrap core CSS -->
        <link href="resources/bootstrap-3.3.6-dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="resources/font-awesome-4.4.0/css/font-awesome.min.css" rel="stylesheet">
        <link type="text/css" rel="stylesheet" href="http://fonts.googleapis.com/css?family=Droid+Sans:400,700|Noto+Serif:400,700"> 
        <!-- Jquery plugin for form validation -->
        <link rel="stylesheet" href="resources/jQuery-Form-Validator-master/form-validator/theme-default.min.css">
        <!-- iCheck -->
        <link rel="stylesheet" href="resources/iCheck/square/blue.css">
        <link rel="stylesheet" href="resources/custom/form-elements.css">
        <link rel="stylesheet" href="resources/custom/style.css">
    </head>
    <body>

        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#" data-toggle="modal" data-target="#loginModal"><span class="glyphicon glyphicon-user"></span> Login/Register</a></li>
                </ul>
            </div>
        </nav>


        <!-- -Login Modal -->
        <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" >
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header" >
                        <button type="button" class="close" data-dismiss="modal" ><span >&times;</span></button>
                        <h4 class="modal-title text-center" id="loginModalLabel">USER AUTHENTICATION</h4>
                    </div>
                    <div class="modal-body">
                        <div class="text-center">
                            <div role="tabpanel" >
                                <!-- Nav tabs -->
                                <ul class="nav nav-tabs" role="tablist">
                                    <li  class="active"><a id="signinli" href="#home" data-toggle="tab">Sign In</a></li>
                                    <li ><a id="signupli" href="#profile"  data-toggle="tab">Sign Up</a></li>
                                    <li ><a id="forgetpwdli" href="#forget_password" data-toggle="tab">Forget Password</a></li>
                                </ul>

                                <!-- Tab panes -->
                                <div class="tab-content">
                                    <div role="tabpanel" class="tab-pane active text-center" id="home">
                                        &nbsp;&nbsp;

                                        <form action="" id="frmlogin" role="form">
                                            <div class="form-group has-feedback">
                                                <div class="input-group">
                                                    <div class="input-group-addon"><i class="glyphicon glyphicon-user"></i></div>
                                                    <input type="text" class="form-control" id="login_username" placeholder="Email/Mobile Number" required="true">
                                                </div>

                                            </div>
                                            <div class="form-group has-feedback">
                                                <div class="input-group">
                                                    <div class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></div>
                                                    <input type="password" class="form-control" id="login_password" placeholder="Password" required="true">
                                                </div>

                                            </div>
                                            <button type="button" id="login_btn" class="btn btn-block bt-login" data-loading-text="Signing In....">Login</button>
                                            <div >
                                                <br/>
                                                <div class="row">
                                                    <div class="col-xs-8 col-sm-8 col-md-8">
                                                        <i class="glyphicon glyphicon-lock"></i>
                                                        <a href="#" class="forgetpwd"> Forgot password? </a>

                                                    </div>

                                                    <div class="col-xs-4 col-sm-4 col-md-4">
                                                        <i class="glyphicon glyphicon-check"></i>
                                                        <a href="#" class="signup"> Sign Up </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div role="tabpanel" class="tab-pane" id="profile">
                                        &nbsp;&nbsp;


                                        <form action="" id="frmregister" role="form">
                                            <div class="form-group has-feedback">
                                                <div class="input-group">
                                                    <div class="input-group-addon"><i class="glyphicon glyphicon-user"></i></div>
                                                    <input type="text" class="form-control" id="reg_username" placeholder="Name" required="true">
                                                </div>

                                            </div>
                                            <div class="form-group has-feedback">
                                                <div class="input-group">
                                                    <div class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></div>
                                                    <input type="text" class="form-control" id="reg_email" placeholder="Email" required="true">
                                                </div>

                                            </div>
                                            <div class="form-group has-feedback">
                                                <div class="input-group">
                                                    <div class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></div>
                                                    <input type="text" name="reg_contact_no" class="form-control" placeholder="Mobile Number" 
                                                           data-validation="contact" maxlength="10" required="required"
                                                           pattern="^\d{10}$"
                                                           data-validation-error-msg="Incorrect Mobile number" required="true">
                                                </div>
                                            </div>



                                            <div class="form-group has-feedback">
                                                <div class="input-group">
                                                <div class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></div>
                                                <input type="password" name="reg_password_v" class="form-control"
                                                       pattern="^(?=.*?[A-Z])(?=(.*[a-z]){1,})(?=(.*[\d]){1,})(?=(.*[\W]){1,})(?!.*\s).{8,}$"
                                                       placeholder="Password" required="required" data-validation-optional="true"
                                                       data-validation-error-msg="Password should contain 8 characters which includes Capital Letters,Letters,Numbers and Special Characters"  >
                                                </div>
                                            </div>



                                            <div class="form-group has-feedback">
                                                <div class="input-group">
                                                <div class="input-group-addon"><i class="glyphicon glyphicon-log-in"></i></div>
                                                <input type="password" id="reg_re_password" name="reg_re_password" class="form-control" placeholder="Confirm password"
                                                       data-validation="confirmation" data-validation-confirm="password_v"  required="required" data-validation-optional="true"
                                                       > 
                                                </div>
                                            </div>



                                            <button type="button" id="register_btn" class="btn btn-block bt-login" data-loading-text="Registering....">Register</button>
                                            <div class="clearfix"></div>
                                            <div>
                                                <br/>
                                                <div class="row">
                                                    <div class="col-xs-8 col-sm-8 col-md-8">
                                                        <i class="glyphicon glyphicon-lock"></i>
                                                        <a href="#" class="forgetpwd"> Forgot password? </a>

                                                    </div>

                                                    <div class="col-xs-4 col-sm-4 col-md-4">
                                                        <i class="glyphicon glyphicon-check"></i>
                                                        <a href="#" class="signin"> Sign In </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div role="tabpanel" class="tab-pane text-center" id="forget_password">
                                        &nbsp;&nbsp;
                                        <span id="reset_fail" class="response_error" style="display: none;"></span>
                                        <div class="clearfix"></div>
                                        <form action="" id="frmreset" role="form">
                                            <div class="form-group has-feedback">
                                                <div class="input-group">
                                                    <div class="input-group-addon"><i class="glyphicon glyphicon-user"></i></div>
                                                    <input type="text" class="form-control" id="conf_email" placeholder="Email/Mobile Number"required="true">
                                                </div>

                                            </div>

                                            <button type="button" id="reset_btn" class="btn btn-block bt-login" data-loading-text="Please wait....">Forget Password</button>
                                            <div class="clearfix"></div>
                                            <div >
                                                <br/>
                                                <div class="row">
                                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                                        <i class="glyphicon glyphicon-lock"></i>
                                                        <a href="#" class="signin"> Sign In </a>

                                                    </div>

                                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                                        <i class="glyphicon glyphicon-check"></i>
                                                        <a href="#" class="signup"> Sign Up </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>
            </div>
        </div>

        <!-- - Login Model Ends Here -->
        <script src="${pageContext.request.contextPath}/resources/jquery-2.2.2/jquery-2.2.2.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/bootstrap-3.3.6-dist/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/iCheck/icheck.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/jQuery-Form-Validator-master/form-validator/jquery.form-validator.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/custom/js/medical.js"></script>
        <script>
            $(function () {
                $('input').iCheck({
                    checkboxClass: 'icheckbox_square-blue icheck',
                    radioClass: 'iradio_square-blue',
                    increaseArea: '20%' // optional
                });
            });
        </script>

        <script>
            $(document).ready(function () {
                var tabid = $('tablist').attr('id').val();
                if (tabid === 'signupli') {  // attach to all form elements on page
                    $.validate({
                        form: '#frmregister',
                        modules: 'security,date,file,html5',
                        onModulesLoaded: function () {
                            var optionalConfig = {
                                fontSize: '10pt',
                                padding: '4px',
                                bad: 'Very bad',
                                weak: 'Weak',
                                good: 'Good',
                                strong: 'Strong'
                            };
                        }
                    });
                }
            });
        </script>
        <script>
            $(document).ready(function () {
                $('form').each(function () {  // attach to all form elements on page
                    $.validate({
                        form: '#frmlogin',
                        modules: 'security,date,file,html5',
                        onModulesLoaded: function () {
                            var optionalConfig = {
                                fontSize: '10pt',
                                padding: '4px',
                                bad: 'Very bad',
                                weak: 'Weak',
                                good: 'Good',
                                strong: 'Strong'
                            };
                        }
                    });
                });
            });
        </script>

        <script>
            $.validate({
                modules: 'date'
            });
        </script>


        <script>
            $(document).ready(function () {
                $(document).on('click', '.signup', function (e) {
                    e.preventDefault();
                    $('#signupli').tab('show');
                });
                $(document).on('click', '.signin', function (e) {
                    e.preventDefault();
                    $('#signinli').tab('show');
                });
                $(document).on('click', '.forgetpwd', function (e) {
                    e.preventDefault();
                    $('#forgetpwdli').tab('show');
                });
            });
        </script>
    </body>
</html>