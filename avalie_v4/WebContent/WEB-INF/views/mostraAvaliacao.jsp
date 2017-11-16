<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
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
				SISTEMA DE AVALIAÇÃO<br>DE <strong>ACESSIBILIDADE</strong>
			</h1>
			<div class="estrelas">
				<img src="images/estrelas.png" alt="estrelas">
			</div>
		</div>
	</div>

	<div class="topo-opcoes">
		<div class="container">
			<h1>//RESULTADO AVALIAÇÕES ${avaliacao.estabelecimento.nome}</h1>
		</div>
	</div>
	<div id="conteudo-interna" class="bgParallax" data-speed="15">
		<div class="container">
			<div class="tabs-av">
				<ul>
					<li class="active"><span></span><a href="#tab-1">Acesso
							para cadeirantes:</a></li>
					<li><span></span><a href="#tab-2">Sanitários para
							cadeirante:</a></li>
					<li><span></span><a href="#tab-3">Instruções para PCD
							visuais em braile:</a></li>
					<li><span></span><a href="#tab-4">Sinalização de piso para
							PCD visuais:</a></li>
					<div class="clear"></div>
				</ul>
			</div>
		</div>

	</div>

	<div class="conteudo bgParallax" data-speed="15">
		<div id='tab-1'>
			<div class="container">
				<c:forEach var="avaliacao" items="${lista}">
					<div class="item">
						<h1>${avaliacao.usuario.nome}</h1>
						<p>${avaliacao.comentarioCadeirante}</p>
						<div class="av" title="${avaliacao.notaCadeirante}"></div>
					</div>
				</c:forEach>
			</div>
		</div>

		<div id='tab-2'>
			<div class="container">
				<c:forEach var="avaliacao" items="${lista}">
					<div class="item">
						<h1>${avaliacao.usuario.nome}</h1>
						<p>${avaliacao.comentarioSanitario}</p>
						<div class="av" title="${avaliacao.notaSanitario}"></div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div id='tab-3'>
			<div class="container">
				<c:forEach var="avaliacao" items="${lista}">
					<div class="item">
						<h1>${avaliacao.usuario.nome}</h1>
						<p>${avaliacao.comentarioInstrucao}</p>
						<div class="av" title="${avaliacao.notaInstrucao}"></div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div id='tab-4'>
			<div class="container">
				<c:forEach var="avaliacao" items="${lista}">
					<div class="item">
						<h1>${avaliacao.usuario.nome}</h1>
						<p>${avaliacao.comentarioSinalizacao}</p>
						<div class="av" title="${avaliacao.notaSinalizacao}"></div>
					</div>
				</c:forEach>
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
	<script>
		$('.tabs').tabslet({
			mouseevent : 'click',
			attribute : 'href',
			animation : true,
			delay : 2000,
			active : 1,
			container : '.conteudo-tabs'
		});

		$('.tabs-av').tabslet({
			mouseevent : 'click',
			attribute : 'href',
			animation : true,
			delay : 2000,
			active : 1,
			container : '.conteudo'
		});
	</script>
	<script src="js/jquery.rateyo.js"></script>
	<script>
		$(document).ready(function() {
			$(".av").each(function() {
				avaliacao = $(this).attr("title");

				$(this).rateYo({
					starWidth : "28px",
					ratedFill : "#e6c50c",
					readOnly : true,
					halfStar : true,
					rating : avaliacao,
				});

			});

			$(".avForm").rateYo({
				starWidth : "28px",
				ratedFill : "#e6c50c",
				starWidth : "28px",
				halfStar : true,
			});

		});

		function EnviaForm() {
			ValorDaAvaliacao1 = $('#valorform1').rateYo("rating");
			ValorDaAvaliacao2 = $('#valorform2').rateYo("rating");
			ValorDaAvaliacao3 = $('#valorform3').rateYo("rating");
			ValorDaAvaliacao4 = $('#valorform4').rateYo("rating");

			$("#ValorAv").val(ValorDaAvaliacao1);
			$("#ValorAv1").val(ValorDaAvaliacao2);
			$("#ValorAv2").val(ValorDaAvaliacao3);
			$("#ValorAv3").val(ValorDaAvaliacao4);

			media = (ValorDaAvaliacao1 + ValorDaAvaliacao2 + ValorDaAvaliacao3 + ValorDaAvaliacao4) / 4;
			$("#media").val(media);

			alert($("#media").val());

		}
	</script>
</body>
</html>
