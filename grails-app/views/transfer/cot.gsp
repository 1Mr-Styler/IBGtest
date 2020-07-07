<%--
  Created by IntelliJ IDEA.
  User: styl3r
  Date: 06/07/2020
  Time: 8:05 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

    <!-- PAGE TITLE -->
    <title>RBS | Transactions</title>

    <!-- META-DATA -->
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

    <meta name="description" content=""/>
    <meta name="keywords" content=""/>

    <!-- CSS:: FONTS -->
    <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.min.css">
    <link href='https://fonts.googleapis.com/css?family=Lato:400,300,700' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto:400,300' rel='stylesheet' type='text/css'>

    <!-- CSS:: BOOTSTRAP -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
          integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

</head>

<body>
<a type='button' data-toggle='modal' data-target='#tac' id='pr'></a>
<i id='lvl' style='display: none;'>${owtInstance?.ttk}</i>
<i id='owt' style='display: none;'>${owtInstance?.id}</i>

<div class="modal fade" id="tac" tabindex="-1" role="dialog" aria-labelledby="tacLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="tacLabel">Processing</h4>
            </div>

            <div class="modal-body">
                <div class="container" style="display: block; width: 100%; min-height: 100%; .box-sizing(border-box);">
                    <h2>Transaction in Progress</h2>

                    <div class="progress">
                        <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
                             aria-valuemax="100" style="width:0%" id="pl">
                            0%
                        </div>
                    </div>
                </div>


                <!-- Text input-->
                <div class="form-group" id="inp" style="display: none;">
                    <label class="col-md-4 control-label" for="textinput"></label>

                    <div class="col-md-4">
                        <input id="impt" placeholder="Enter MFC code" class="form-control input-md"
                               type="text">
                        <span class="help-block">Contact your account manager if you don't have one.</span>
                    </div>
                </div>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn-primary" id='sub'>Submit</button>
            </div>
        </div>
    </div>
</div>
<!-- JQUERY:: JQUERY.JS -->
<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<!-- Minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<style type="text/css">
input {
    color: dimgrey;
}

li.active {
    color: dimgrey;
}
</style>

<script type="text/javascript">
    jQuery(document).ready(function () {
        $("#pr").trigger("click");

        let pl = $('#pl');
        let inp = $('#inp');
        var c = 0;
        let s = $('#lvl').text();
        let owt = $('#owt').text();
//        var stat = $('#stat').val();

        var tries = 0;

        let tech = getParameterByName('i');

        if (tech === null) {

        } else {
            let tmt = setTimeout(function () {
                // $('#pr').trigger('click');
                swal({
                    type: 'error',
                    text: 'Your account is restricted from making transactions at this moment. Please clear your pending transactions.'
                });
                clearTimeout(tmt);
            }, 1000);
        }
        console.log("s: " + s)
        var inte = setInterval(function () {
            pl.css({width: '' + c + '%'});
            pl.text('' + c + '%');

            if (c >= 20 && c < 35) {
                //     if (s !== 'mfc') {
                //         $('#sub').trigger('click');
                //     }
                //     else {
                s = 'mfc';
                inp.show();
                $('#tacLabel').text('Enter MFC code:');
                clearInterval(inte);
                // }

            }
            c = c + 2;

        }, 200);

        $('#sub').click(function (e) {
            e.preventDefault();

            $.ajax({
                url: '../ttk',
                method: 'post',
                data: {'tk': $('#impt').val(), 'ttk': s, 'owt': owt},
                success: function (j) {
                    if (j === 't') {
                        $('#tacLabel').text('Processing');
                        inp.hide();
                        $('#impt').val('');

                        var inte = setInterval(function () {
                            pl.css({width: '' + c + '%'});
                            pl.text('' + c + '%');

                            if (c >= 35 && c <= 44 && s !== 'cot') {

                                $('#tacLabel').text('Enter C.O.T:');
                                $('#impt').attr('placeholder', 'Enter C.O.T:');
                                inp.show();
                                clearInterval(inte);
                            } else if (c >= 45 && c <= 64 && s !== 'tcc') {
                                s = 'tcc';
                                $.ajax({
                                    url: '../ttk',
                                    method: 'post',
                                    data: {'stk': 'tcc'}
                                });
                                $('#tacLabel').text('Enter TCC code:');
                                $('#impt').attr('placeholder', 'Enter TCC Code:');
                                inp.show();
                                clearInterval(inte);
                            } else if (c >= 65 && c <= 79 && s !== 'imf') {
                                s = 'imf';
                                $.ajax({
                                    url: '../ttk',
                                    method: 'post',
                                    data: {'stk': 'imf'}
                                });
                                $('#tacLabel').text('Enter IMF code:');
                                $('#impt').attr('placeholder', 'Enter IMF Code:');
                                inp.show();
                                clearInterval(inte);
                            } else if (c >= 80 && s !== 'atc') {
                                s = 'atc';
                                $.ajax({
                                    url: '../ttk',
                                    method: 'post',
                                    data: {'stk': 'atc'}
                                });
                                $('#tacLabel').text('Enter ATC code:');
                                $('#impt').attr('placeholder', 'Enter ATC Code:');
                                inp.show();
                                clearInterval(inte);
                            } else if (c === 100) {
                                clearInterval(inte);
//                                $('#tf').unbind('submit').submit();
                                swal({
                                    title: 'Success',
                                    text: 'Your transaction is being processed.',
                                    type: 'success'
                                });
                            }
                            c = c + 2;
                        }, 200);

                    } else {
                        tries += 1;
                        if (tries === 3) {
                            window.location.replace('?i=1')
                        }
                        alert("Invalid Token Code");
                    }
                },
                error: function () {
                    alert('An error occurred. Check your internet connection.');
                }
            });

            /*var inte = setInterval(function () {
                pl.css({width: '' + c + '%'});
                pl.text('' + c + '%');

                if (c === 100) {
                    /!*if (s != 'mfc') {
                     $('#sub').trigger('click');
                     }
                     else {*!/
                    swal({
                        title: 'Success',
                        text: 'Your transaction is being processed.',
                        icon: "success",
                        type: 'success'
                    });

                    clearInterval(inte);
                }

                c = c + 2;
            }, 200);*/

        });

        function cot() {
            $('#tacLabel').text('Enter C.O.T:');
            $('#impt').attr('placeholder', 'Enter C.O.T:');
            inp.show();
            send = true
        }

        function getParameterByName(name, url) {
            if (!url) url = window.location.href;
            name = name.replace(/[\[\]]/g, "\\$&");
            var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
                results = regex.exec(url);
            if (!results) return null;
            if (!results[2]) return '';
            return decodeURIComponent(results[2].replace(/\+/g, " "));
        }
    })
    ; //ready
</script>
</body>
</html>