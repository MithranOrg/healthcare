
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="Smart Login">
        <meta name="keywords" content="Smart Login">
        <meta name="author" content="Madhan">
<#include "layout/styleList.ftl" />
        <!-- Jquery plugin for form validation -->
        <link rel="stylesheet" href="resources/jQuery-Form-Validator-master/form-validator/theme-default.min.css">
        <!-- iCheck -->
        <link rel="stylesheet" href="resources/iCheck/square/blue.css">

        </head>
    <body>

<#include "loginPopup.ftl" /> 


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
