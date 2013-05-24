<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
		<link rel="stylesheet" href="/static/bootstrap.css" type="text/css" />
		 <script src="resources/bootstrap.min.js"></script>
			 <script src="http://code.jquery.com/jquery.js"></script>
<title>Homepage</title>
</head>
<body>
<div class="navbar  navbar-inverse">
  <div class="navbar-inner">
    <div class="container">
      <a class="brand" href="#">
      	<i class="icon-eye-open icon-white"></i>
        Cookbook
      </a>
      <ul class="nav">
        <li>
          <a href="#">
            Home
          </a>
        </li>
        <li>
          <a href="about_boot.html">
            Sobre Nós
          </a>
        </li>
        <li>
          <a href="contact_boot.html" target="_blank">
            Contacto
          </a>
        </li>
      </ul>
 	 </div>
  </div>
</div>

			<!--Aproveitar os elementos para colocar nas listagens-->
			
	<!--It works! This page was rendered on ${currentTime} by ${name}<br/>-->

	<div>
		<ul>
		<a href="/recipes">listar receitas</a><br/>
		<a href="/recipes/create">criar receitas</a><br/>
		</ul>
	</div>
	<br />
</body>
</html>
