<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>

<!--Definição de imports CSS-->

<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />

  <link rel="stylesheet" type="text/css" href="/static/bootstrap.css">

       <script src="js/bootstrap.min.js"></script>
       <script src="http://code.jquery.com/jquery.js"></script>

<title>Create Recipe</title>

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
          <form method="POST" action="/recipes/searchRecipe">
            <input name="pesquisa">
            <input type="submit" value="pesquisa">
          </form>
        </li>
      </ul>
   </div>
  </div>
</div>

<!--Corpo da mensagem-->

<body background="img_bck/cloth_alike.png">

<form method="POST" action="/recipes/${recipe.externalId}" class="well span8">
  <div class="row">
    <div class="span3">
      <label>Titulo</label>
      <input type="text" name="titulo" value="${recipe.title}" class="span3">
      <label>Problema</label>
      <input type="text" name="problema" value="${recipe.problem}" class="span3">
      <label>Autor</label>
      <input type="text" name="utilizador" value="${recipe.author}" class="span3">
      <label>Tags</label>
      <input type="text" name="tags" value="${recipe.tags}" class="span3">
    </div>
    <div class="span">
      <label>Solução</label>
      <textarea name="solucao" " id="message" class="input-small span5" rows="5"></textarea>
    </div>
  
    <button type="submit" class="btn btn-primary pull-right">Editar</button>
  </div>
</form>


  </body>
</html>

