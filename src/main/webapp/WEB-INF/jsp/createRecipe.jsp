<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
		<style type="text/css">
			@import url("resources/bootstrap.css");
			@import url("resources/bootstrap.min.css");
			@import url("resources/bootstrap-responsive.min.css");
			@import url("resources/bootstrap-responsive.css");
		</style>
			 <script src="resources/bootstrap.min.js"></script>
			 <script src="http://code.jquery.com/jquery.js"></script>
			 
			 <title>Criação Receitas</title>
</head>	 
			 
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



<form method="POST" action="/recipes">
	Titulo: <input type="text" name="title" /><br />
	Problema: <input type="text" name="problem" /><br />
	Solução: <input type="text" name="solution" /><br />
	Utilizador: <input type="text" name="author" /><br />
	<input type="submit" value="Criar Nova Receita" />
</form>

