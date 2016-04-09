
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="Smart Login">
        <meta name="keywords" content="Smart Login">
        <meta name="author" content="Madhan">

        <!-- Jquery plugin for form validation -->
        <link rel="stylesheet" href="resources/jQuery-Form-Validator-master/form-validator/theme-default.min.css">
        <!-- iCheck -->
        <link rel="stylesheet" href="resources/iCheck/square/blue.css">

    </head>
    <body>

        <div class='row'>
            <div class='col-xs-12 col-sm-12 col-md-12 col-lg-12 text-center'>
                <a class="btn btn-success" href="#" data-toggle="modal" data-target="#loginModal"> Launch Login Modal Popup</a>
            </div>
        </div>

        <!-- -Login Modal -->
        <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="loginModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content login-modal">
                    <div class="modal-header login-modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title text-center" id="loginModalLabel">USER AUTHENTICATION</h4>
                    </div>
                    <div class="modal-body">
                        <div class="text-center">
                            <div role="tabpanel" class="login-tab">
                                <!-- Nav tabs -->
                                <ul class="nav nav-tabs" role="tablist">
                                    <li role="presentation" class="active"><a id="signinli" href="#home" aria-controls="home" role="tab" data-toggle="tab">Sign In</a></li>
                                    <li role="presentation"><a id="signupli" href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Sign Up</a></li>
                                    <li role="presentation"><a id="forgetpwdli" href="#forget_password" aria-controls="forget_password" role="tab" data-toggle="tab">Forget Password</a></li>
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
                                                    <input type="password" class="form-control" id="password" placeholder="Password" required="true">
                                                </div>

                                            </div>
                                            <button type="button" id="login_btn" class="btn btn-block bt-login" data-loading-text="Signing In....">Login</button>
                                            <div class="login-modal-footer">
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
                                                    <input type="text" class="form-control" id="username" placeholder="Name" required="true">
                                                </div>

                                            </div>
                                            <div class="form-group has-feedback">
                                                <div class="input-group">
                                                    <div class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></div>
                                                    <input type="text" class="form-control" id="remail" placeholder="Email" required="true">
                                                </div>

                                            </div>
                                            <div class="form-group has-feedback">
                                                <div class="input-group">
                                                    <div class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></div>
                                                    <input type="tel" name="contact_no" class="form-control" placeholder="Mobile Number" 
                                                           data-validation="contact" maxlength="10" required="required"
                                                           pattern="^\d{10}$"
                                                           data-validation-error-msg="Incorrect Mobile number" required="true">
                                                </div>
                                            </div>
                                            <div class="form-group has-feedback">
                                                <div class="input-group">
                                                    <div class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></div>
                                                    <input type="text" id="dob_dt" name="dob_dt" class="form-control" placeholder="Date of Birth - dd-mm-yyyy"
                                                           data-validation="birthdate" data-validation-format="dd-mm-yyyy" 
                                                           data-validation-error-msg="Date should be in format dd-mm-yyyy and should not be future date" data-validation-optional="true"
                                                           date="date" 
                                                           >
                                                </div>

                                            </div>
                                            <div class="form-group has-feedback">
                                                <select class="form-control" name = "gender"  required="required"  >
                                                    <option value="">Select Gender</option>
                                                    <option value="Male">Male</option>
                                                    <option value="Male">Female</option>
                                                </select>                               
                                            </div>
                                            <div class="form-group has-feedback">
                                                <div class="input-group">
                                                    <div class="input-group-addon"><i class="glyphicon glyphicon-list"></i></div>
                                                    <input type="text" class="form-control" id="address" placeholder="Address" required="true">
                                                </div>
                                            </div>


                                            <button type="button" id="register_btn" class="btn btn-block bt-login" data-loading-text="Registering....">Register</button>
                                            <div class="clearfix"></div>
                                            <div class="login-modal-footer">
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
                                                    <input type="text" class="form-control" id="femail" placeholder="Email/Mobile Number"required="true">
                                                </div>

                                            </div>

                                            <button type="button" id="reset_btn" class="btn btn-block bt-login" data-loading-text="Please wait....">Forget Password</button>
                                            <div class="clearfix"></div>
                                            <div class="login-modal-footer">
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
        <script src="resources/jquery-2.2.2/jquery-2.2.2.min.js"></script>
        <script src="resources/bootstrap-3.3.6-dist/js/bootstrap.min.js"></script>
        <script src="resources/iCheck/icheck.min.js"></script>
        <script src="resources/jQuery-Form-Validator-master/form-validator/jquery.form-validator.min.js"></script>

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
            $(document).ready(function () {

                if($('tablist').attr('id').val() == 'signupli') {  // attach to all form elements on page

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
