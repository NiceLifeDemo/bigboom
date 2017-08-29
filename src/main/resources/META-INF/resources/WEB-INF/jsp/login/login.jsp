<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>OA</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/htmleaf-demo.css">
    <style type="text/css">
        .form-bg{
            height: 800px
        }
        .form-horizontal{
            background: #fff;
            padding-bottom: 40px;
            border-radius: 15px;
            text-align: center;
        }
        .form-horizontal .heading{
            display: block;
            font-size: 35px;
            font-weight: 700;
            padding: 35px 0;
            border-bottom: 1px solid #f0f0f0;
            margin-bottom: 30px;
        }
        .form-horizontal .form-group{
            padding: 0 40px;
            margin: 0 0 25px 0;
            position: relative;
        }
        .form-horizontal .form-control{
            background: #f0f0f0;
            border: none;
            border-radius: 20px;
            box-shadow: none;
            padding: 0 20px 0 45px;
            height: 40px;
            transition: all 0.3s ease 0s;
        }
        .form-horizontal .form-control:focus{
            background: #e0e0e0;
            box-shadow: none;
            outline: 0 none;
        }
        .form-horizontal .form-group i{
            position: absolute;
            top: 12px;
            left: 60px;
            font-size: 17px;
            color: #c8c8c8;
            transition : all 0.5s ease 0s;
        }
        .form-horizontal .form-control:focus + i{
            color: #00b4ef;
        }
        .form-horizontal .fa-question-circle{
            display: inline-block;
            position: absolute;
            top: 12px;
            right: 60px;
            font-size: 20px;
            color: #808080;
            transition: all 0.5s ease 0s;
        }
        .form-horizontal .fa-question-circle:hover{
            color: #000;
        }
        .form-horizontal .main-checkbox{
            float: left;
            width: 20px;
            height: 20px;
            background: #11a3fc;
            border-radius: 50%;
            position: relative;
            margin: 5px 0 0 5px;
            border: 1px solid #11a3fc;
        }
        .form-horizontal .main-checkbox label{
            width: 20px;
            height: 20px;
            position: absolute;
            top: 0;
            left: 0;
            cursor: pointer;
        }
        .form-horizontal .main-checkbox label:after{
            content: "";
            width: 10px;
            height: 5px;
            position: absolute;
            top: 5px;
            left: 4px;
            border: 3px solid #fff;
            border-top: none;
            border-right: none;
            background: transparent;
            opacity: 0;
            -webkit-transform: rotate(-45deg);
            transform: rotate(-45deg);
        }
        .form-horizontal .main-checkbox input[type=checkbox]{
            visibility: hidden;
        }
        .form-horizontal .main-checkbox input[type=checkbox]:checked + label:after{
            opacity: 1;
        }
        .form-horizontal .text{
            float: left;
            margin-left: 7px;
            line-height: 20px;
            padding-top: 5px;
            text-transform: capitalize;
        }
        .form-horizontal .btn{
            float: right;
            font-size: 14px;
            color: #fff;
            background: #00b4ef;
            border-radius: 30px;
            padding: 10px 25px;
            border: none;
            text-transform: capitalize;
            transition: all 0.5s ease 0s;

        }

        .alert{

            width: 410px;
            height: 300px;
            background:rgba(49, 112, 143, 0.73);
            position: absolute;
            top: -40%;
            left: 50%;
            margin: -101px 0 0 -200px;


        }

        .alert h2 {
            height: 40px;
            padding-left: 8px;
            font-size: 14px;
            background: rgba(252, 248, 227, 0.27);
            text-align: left;
            line-height: 40px;
        }


        .alert .alert_con {
            background: rgba(217, 237, 247, 0.97);
            height: 160px;
            border-radius: 4px;
        }

        .alert .alert_con p {
            color: #000;
            line-height: 90px;
            text-align: center;
        }


        .alert .alert_con .btn {
            padding: 3px 10px;
            color: #fff;
            cursor: pointer;
            background: #72D1FF;
            border: 1px solid #72D1FF;
            border-radius: 4px;
            position: absolute;
            left: 42%;
        }



        @media only screen and (max-width: 479px){
            .form-horizontal .form-group{
                padding: 0 25px;
            }
            .form-horizontal .form-group i{
                left: 45px;
            }
            .form-horizontal .btn{
                padding: 10px 20px;
            }
        }












    </style>
    <!--[if IE]>
    <script src="http://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <![endif]-->
</head>
<body>

<div class="htmleaf-container">
    <header class="htmleaf-header">
        <h1><!--WebSocket--><span></span></h1>

    </header>
    <div class="demo form-bg container-fluid"  style="padding: 20px 0; background-image:url(related/305383.jpg);background-repeat:no-repeat;background-size: cover">
        <div class="container">
            <div class="row">
                <div class="col-md-offset-3 col-md-6" style="    margin-top: 10%;">
                    <form class="form-horizontal" > <!-- action="doLogin.do" -->
                        <span class="heading">用户登录</span>
                        <div class="form-group">
                            <input type="text" class="form-control" name="name" id="name" placeholder="用户名">
                            <i class="fa fa-user"></i>
                        </div>
                        <div class="form-group help">
                            <input type="password" class="form-control" name="password" id="pwd" placeholder="密　码">
                            <i class="fa fa-lock"></i>
                            <a href="#" class="fa fa-question-circle"></a>
                        </div>
                        <div class="form-group">
                            <div class="main-checkbox">
                                <input type="checkbox"  name="rememberme" id="checkbox1" onclick="remember()"/>
                                <label for="checkbox1"></label>
                            </div>
                            <span class="text">记住密码</span>
                            <input id="submit" type="button" value="登录" class="btn btn-default"></input>
                        </div>
                    </form>



                </div>
            </div>
        </div>
    </div>
    <div class="related">
		    <span style="color:rgba(51, 122, 183, 0.48);font-size:15px">author：tangyu<span>
    </div>

    <div class="alert" style="">
        <h2>消息</h2>
        <div class="alert_con">
            <p id="ts"></p>
            <p style="line-height:70px"><a class="btn">确定</a></p>
        </div>
    </div>

</div>

</body>
<script src="./js/jquery-1.6.2.min.js" type="text/javascript"></script>
<script type="text/javascript">






    $(".btn").click(function(){
        is_hide();
    })
    var u = $("input[name=name]");
    var p = $("input[name=password]");





    $("#submit").live('click',function(){
        var name=u.val();
        var password=p.val();
        var check=$("#checkbox1").val();

        if(name == '' || password =='')
        {
            $("#ts").html("用户名或密码不能为空!");
            is_show();

        }
        else{
            /* var reg = /^[0-9A-Za-z]+$/;
             if(!reg.exec(u.val()))
             {
             $("#ts").html("用户名错误");
             is_show(); */
            $.ajax({
                url:"doLogin",
                data:{name:name,password:password,check:check},
                type:"get",
                dataType:"json",
                async:false,
                success:function(ret){
                    if(ret.msg=="success"){
                        location.href="welcome";
                    }else{
                        $("#ts").html(ret.msg);
                        is_show();
                    }


                }
            });


            return false;

        }

    });
    /* window.onload = function()
     {
     $(".connect p").eq(0).animate({"left":"0%"}, 600);
     $(".connect p").eq(1).animate({"left":"0%"}, 400);
     } */
    function is_hide(){


        $(".alert").animate({"top":"-40%"}, 300)

    }
    function is_show(){


        $(".alert").show().animate({"top":"40%"}, 300)


    }

    $(function(){
        //记住密码功能
        var str = getCookie("loginInfo");
        var username = str.split("#")[0];
        var password = str.split("#")[1];
        //自动填充用户名和密码
        $("#name").val(username);
        $("#pwd").val(password);


    });


    //获取cookie
    function getCookie(cname) {
        var name = cname + "=";
        var ca = document.cookie.split(';');
        for(var i=0; i<ca.length; i++) {
            var c = ca[i];
            while (c.charAt(0)==' ') c = c.substring(1);

            if (c.indexOf(name) != -1)
                return c.substring(name.length, c.length);

        }
        return "";
    }

    //记住密码功能
    function remember(){

        var remFlag = $("input[type='checkbox']").is(':checked');
        if(remFlag==true){ //如果选中设置remFlag为yes

            $("#checkbox1").val("yes");

        }else{ //如果没选中设置remFlag为""
            $("#checkbox1").val("no");

        }
    }




</script>


</html>