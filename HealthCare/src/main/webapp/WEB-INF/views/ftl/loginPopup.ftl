
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
