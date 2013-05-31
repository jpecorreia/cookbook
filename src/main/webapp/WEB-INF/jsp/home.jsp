<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>

<!--Definição de imports CSS-->

<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />


<link rel="stylesheet" type="text/css" href="/static/bootstrap.css">


<title>HomeP@age</title>

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

	<!--Caixa com botão-->

<div class="container">
	<div class="hero-unit">
		<p>
			O que é um cookbook? Para expores os teus problemas e soluções
			<p />
			Todas as respostas para as tuas dúvidas encontram-se aqui. Nos exemplos em baixo vês o tipo de questões e tags associados:
			<p></p>
			 <a class="btn" href="/recipes/create">
        		Criar Receita
  			</a>
  			<a class="btn" href="/recipes">
        		Listar Receita
  			</a>
  			
		</p>
		
			</div>
				<div class="row">
						<div class="span4"></div>
						<div class="span8"></div>
				</div>
				<hr>
		
							    <dl class="container-fluid">
						    		<dt>Como fazer uma clonagem?</dt>
						    			<pre>git clone http://</pre><span class="label">#Tech</span>

						    		<dt>Como gravar?</dt>
						    			<pre>git -add</pre>
						    			<span class="label">#Quest</span>

						    		<dt>Como mudar de fork?</dt>
						    			<pre>git checkout </pre>
							    			<span class="label">#OftheDay</span>
							    			<span class="label">#TechDay</span>
							    </dl>
						  
						    <span>
							   							    	</span>
						  		</div>
							</div>
						</div>
					<div>
				</div>
						
						<address class="text-center">
							<strong>Spinal Tap</strong><br>
							Rua Passeio Baltico<br>
							<small>1990 - 036 Lisboa</small><br>
							<abbr title="Telefone"><i class="icon-leaf"></i>Tlf:</abbr> (+351) 92 456 777
						</address>


	</body>
</html>
