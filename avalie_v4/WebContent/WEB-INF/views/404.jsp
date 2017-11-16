<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<script type="text/javascript" src="js/jquery.tabslet.min.js"></script>
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
					<form action="#" method="post">
						<input type="text" name="login" id="login"
							class="input-diferente no-margin" placeholder="LOGIN"> <input
							type="password" name="senha" id="senha" class="input-diferente"
							placeholder="SENHA">
						<button type="submit" value="EVIAR" name="enviar" id="enviar">
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

	<div class="topo-opcoes">
		<div class="container">
			<h1>//Ops</h1>
			<h2>Ocorreu um erro com a URL que você está tentando acessar</h2>
			<p>Por favor, verifique novamente o endereço digitado. Caso
				esteja correto, a página pode não mais existir ou ter sido movida.</p>
			<button>
				<a href="#">Voltar a home</a>
			</button>
		</div>

	</div>
	<div id="conteudo-interna" class="bgParallax" data-speed="15">
		<div class="container"></div>
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
	<script>
		$('.tabs').tabslet({
			mouseevent : 'click',
			attribute : 'href',
			animation : true,
			delay : 2000,
			active : 1,
			container : '.conteudo-tabs'
		});
	</script>
</body>
</html>
