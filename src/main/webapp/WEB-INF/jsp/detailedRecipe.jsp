<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>

<!--Definição de imports CSS-->

<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />


<link rel="stylesheet" type="text/css" href="/static/bootstrap.css">


<title>Detailed Recipe</title>

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
      </ul>
 	 </div>
  </div>
</div>

<body background="img_bck/cloth_alike.png">
	<h1>${recipe.title}</h1>
	<b>Problema</b>
	<p>${recipe.problem}</p>
	<b>Solucao</b>
	<p>${recipe.solution}</p>
	<b>Autor</b>
	<p>${recipe.author}</p>
	<b>Data de Submissão</b>
		
</body>
</html>