<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>

<!--Definição de imports CSS-->

<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />


<link rel="stylesheet" type="text/css" href="/static/bootstrap.css">


<title>Recipe List</title>

	</head>

<!--Barra topo da Página-->

<div class="navbar  navbar-inverse">
  <div class="navbar-inner">
    <div class="container">
      <a class="brand" href="#">
      	<i class="icon-eye-open icon-white"></i>
        Cookbook
      </a>
      <ul class="nav">
        <li>
          <a href="/">
            Home
          </a>
        </li>
        <li>
          <a href="/recipes">
            Receitas
          </a>
        </li>
        <li>
          <form method="POST" action="/recipes/search">
            <input name="pesquisa">
            <input type="submit" value="pesquisa">
          </form>
        </li>
        </ul>
 	 </div>
  </div>
</div>

<body background="img_bck/cloth_alike.png">
<div>
<c:forEach var="recipe" items='${recipes}'>
	<a href="/recipes/${recipe.externalId}">${recipe.title}</a><br />
</c:forEach>
</div>
</body>
</html>