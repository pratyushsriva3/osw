<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>        
        <title>User Login</title>
        
        <meta charset="ISO-8859-1">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <style>
        body {
            background-image: url("${pageContext.request.contextPath}/resources/images/fp2.jpg");
            }
        
        
        #si {
	        text-size:10px;
	        text-align:left;
            }
            
        #confirm_user {
                      
            margin-left: 34%;
            }    
        
        .btn-primary.custom-btn {
	        background-color: dark;
	        border-color: dark;
            }
        
        .jumbotron {
	        width:50%;
	        align:center;
	        margin-left: 25%;
	        margin-top: 8%;
	        min-height: 500px;
	        }
        </style>
    </head>
    <body>
    
    
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="#">
               <img src="img/osw2.jfif" width="30" height="30" class="d-inline-block align-top" alt="">One Stop Wellness </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                   <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
               <ul class="navbar-nav justify-content-end">
                 <li class="nav-item">
                    <a class="nav-link" href="about.html">About</a>
                 </li>
               </ul>
            </div>
         </nav>
            
            
         <div class="container">
            <div class="jumbotron">
                <h3 id="form_header" class="text-warning" align="center">Hospital Admin Login</h3>
                <div> </div>
     
                <!-- User input form to validate a user -->
                <c:url var="validateUrl" value="/user/validate" />
                <form id="user_form" action="${validateUrl}" method="POST">
                   <div class="form-group">
                      <label for="name">Username:</label>
                      <input type="text" class="form-control" id="name" placeholder="Enter username" name="username">
                   </div>
                   <div class="form-group">
                      <label for="pwd">Password:</label>
                      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="password">
                   </div>
                   <button id="confirm_user" type="submit" class="btn btn-primary">Confirm Indentity</button>
                </form>
             </div>
         </div>
            
        
    </body>
</html>