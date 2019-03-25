<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Hospital Admin Dashboard</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link href="<c:url value="/resources/css/dash.css" />" rel="stylesheet">
        <script src="<c:url value="/resources/js/main.js" />"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="wrapper">
    <div class="row row-offcanvas row-offcanvas-left">
        <!-- sidebar -->
        <div class="column col-sm-3 col-xs-1 sidebar-offcanvas" id="sidebar">
            <ul class="nav" id="menu">
                <li><a href="#"><i class="fa fa-list-alt"></i> <span class="collapse in hidden-xs">Link 1</span></a></li>
                <li><a href="#"><i class="fa fa-list"></i> <span class="collapse in hidden-xs">Stories</span></a></li>
                <li><a href="#"><i class="fa fa-paperclip"></i> <span class="collapse in hidden-xs">Saved</span></a></li>
                <li><a href="#"><i class="fa fa-refresh"></i> <span class="collapse in hidden-xs">Refresh</span></a></li>
                <li>
                    <a href="#" data-target="#item1" data-toggle="collapse"><i class="fa fa-list"></i> <span class="collapse in hidden-xs">Menu <span class="caret"></span></span></a>
                    <ul class="nav nav-stacked collapse left-submenu" id="item1">
                        <li><a href="google.com">View One</a></li>
                        <li><a href="gmail.com">View Two</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#" data-target="#item2" data-toggle="collapse"><i class="fa fa-list"></i> <span class="collapse in hidden-xs">Menu <span class="caret"></span></span></a>
                    <ul class="nav nav-stacked collapse" id="item2">
                        <li><a href="#">View One</a></li>
                        <li><a href="#">View Two</a></li>
                        <li><a href="#">View Three</a></li>
                    </ul>
                </li>
                <li><a href="#"><i class="glyphicon glyphicon-list-alt"></i> <span class="collapse in hidden-xs">Link</span></a></li>
            </ul>
        </div>
        <!-- /sidebar -->

        <!-- main right col -->
        <div class="column col-sm-9 col-xs-11" id="main">
            <p><a href="#" data-toggle="offcanvas"><i class="fa fa-navicon fa-2x"></i></a></p>
            <p>
                Main content...
            </p>
        </div>
        <!-- /main -->
    </div>
</div>

</body>
</html>