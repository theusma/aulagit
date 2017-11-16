<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>AVALIE.COM</title>
<meta property="og:title" content="AVALIE.COM" />

<meta name="description" content="AVALIE.COM">
<meta property="og:description" content="AVALIE.COM" />
<meta name="author" content="AVALIE.COM">
<meta property="author" content="AVALIE.COM">

<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/slicknav/style.css">
<link rel="stylesheet" href="css/font-awesome.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="js/slicknav/jquery.slicknav.js"></script>
<script src="js/script.js"></script>
</head>

<body>

	<header class="cabecalho">
	<div class="container">
		<div class="area-logo">
			<div class="logo">
				<img src="images/logo.png" alt="logo">
			</div>
		</div>

		<div class="area-login">
			<div class="login-e-senha">
				<div class="formulario-login">
					<c:if test="${not empty lista}">
						<p class="invalido">Login ou senha inválidos</p>
					</c:if>
					<form action="fazer_login" method="post">
						<input type="text" name="login" id="login"
							class="input-diferente no-margin" placeholder="LOGIN" required="Por favor, insira o seu login"> 
							<input type="password" name="senha" id="senha" class="input-diferente"
							placeholder="SENHA" required="Por favor, ensira sua senha">
						<button type="submit" value="ENVIAR" name="enviar" id="enviar">
							ENVIAR <i class="fa fa-sign-in" aria-hidden="true"></i>
						</button>
					</form>
				</div>
			</div>
		</div>
		<div class="clear"></div>
	</div>
	</header>
	<nav class="menu">
	<ul>
		<li><a href="">HOME</a></li>
		<li><a href="#quem-somos">QUEM SOMOS</a></li>
		<li><a href="#conteudo">CADASTRE-SE</a></li>
		<li><a href="#">CONTATO</a></li>
	</ul>
	</nav>



	<div id="banner" class="bgParallax" data-speed="15">

		<div class="container">
			<h1>
				SISTEMA DE <br>ACESSIBILIDADE
			</h1>
			<button>CADASTRE-SE</button>
		</div>


	</div>
	<div id="quem-somos">
		<div class="container">
			<h1>//QUEM SOMOS</h1>
			<p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
				do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
				enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi
				ut aliquip ex ea commodo consequat. Duis aute irure dolor in
				reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
				pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
				culpa qui officia deserunt mollit anim id est laborum."</p>
		</div>
	</div>

	<div id="conteudo" class="bgParallax" data-speed="15">

		<div class="container">
			<h1>//CADASTRE-SE</h1>
			<h2>SEJA NOSSO PARCEIRO</h2>
			<h3>SE CADASTRE E NOS AJUDA A MELHORAR A ACESSIBILIDADE DE TODOS</h3>
			<div class="formulario">
				<form action="novo_usuario" method="post">
					<input type="text" name="nome" id="nome" placeholder="NOME">
					<div class="clear"></div>
					<input type="email" name="email" id="email" placeholder="EMAIL">
					<input type="text" name="login" id="login"
						class="input-diferente no-margin" placeholder="LOGIN"> <input
						type="password" name="senha" id="senha" class="input-diferente"
						placeholder="SENHA">

					<button type="submit" value="EVIAR" name="enviar" id="enviar">ENVIAR</button>
				</form>
			</div>


		</div>

	</div>


	<div class="topo-contato">
		<div class="container">
			<h1>CONTATO</h1>
		</div>
	</div>
	<div id="contato" class="bgParallax" data-speed="15">

		<div class="container">
			<h1>//FORMULÁRIO DE CONTATO</h1>
			<div class="formulario-contato">
				<form action="#" method="post">
					<input type="text" name="nome" id="nome" class="input-diferente"
						placeholder="NOME"> <input type="text" name="sobrenome"
						id="sobrenome" class="input-diferente" placeholder="SOBRENOME">
					<div class="clear"></div>
					<select>
						<option>Lorem ipsum dolor sit amet</option>
						<option>Lorem ipsum dolor sit amet</option>
						<option>Lorem ipsum dolor sit amet</option>
						<option>Lorem ipsum dolor sit amet</option>
					</select>
					<textarea placeholder="MENSAGEM">
                            
                        </textarea>
					<button type="submit" value="EVIAR" name="enviar" id="enviar">ENVIAR</button>
				</form>

				<ul class="icones">
					<li class="li-rodape">Copyright © 2017 Avalie.com - Todos os
						direitos reservados</li>
					<li><i class="fa fa-facebook" aria-hidden="true"></i></li>
					<li><i class="fa fa-twitter" aria-hidden="true"></i></li>
					<li><i class="fa fa-instagram" aria-hidden="true"></i></li>
				</ul>
				<p></p>

			</div>

		</div>
	</div>

	<script>
		$('div.bgParallax').each(function() {
			var $obj = $(this);

			$(window).scroll(function() {
				var yPos = -($(window).scrollTop() / $obj.data('speed'));

				var bgpos = '50% ' + yPos + 'px';

				$obj.css('background-position', bgpos);

			});
		});
	</script>

</body>
</html>