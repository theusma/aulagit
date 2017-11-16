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
<link rel="stylesheet" href="css/jquery.rateyo.min.css" />
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.css">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.js"></script>
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

			<div class="area-usuario">
				<div class="foto-user">
					<img src="images/icon.jpg" alt="icon">
				</div>
				<p>
					<a href="#"><i class="fa fa-pencil" aria-hidden="true"> </i>
						EDITAR PERFIL</a>
				</p>
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
	<div id="banner-interna" class="bgParallax" data-speed="15">

		<div class="container">
			<h1>
				SISTEMA DE AVALIA��O<br>DE <strong>ACESSIBILIDADE</strong>
			</h1>
			<div class="estrelas">
				<img src="images/estrelas.png" alt="estrelas">
			</div>
		</div>


	</div>
	<div class="topo-opcoes">
		<div class="container">
			<h1>//AVALIAR ESTABELECIMENTO</h1>
		</div>

		<form>
			<fieldset>
				<legend>Avalia��o:</legend>

				<label>Nota: </label>
				<div id="rateYo"></div>
				<br> <label>Coment�rio: </label>
				<textarea placeholder="COMENT�RIO"></textarea>
				<br>
				<button type="submit">ENVIAR</button>
			</fieldset>
		</form>

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
	<script src="js/jquery.rateyo.js"></script>
	<script>
		/* Javascript */

		//Make sure that the dom is ready
		$(function() {

			$("#rateYo").rateYo({
				rating : 0
			});

			/* Javascript */

			/* javascript */

			$(function() {

				$("#rateYo").rateYo().on(
						"rateyo.set",
						function(e, data) {

							alert("Voc� atribuiu " + data.rating
									+ " estrelas a esse estabelecimento!");
						});
			});

			$(function() {

				$("#rateYo").rateYo().on("rateyo.change", function(e, data) {

					var rating = data.rating;
					$(this).next().text(rating);
				});
			});

		});
	</script>
</body>
</html>