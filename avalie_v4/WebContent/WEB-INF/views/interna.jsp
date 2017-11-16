<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
			 <c:if test="${not empty usuario}">
				<li>BEM VINDO(A) ${usuario.nome}</li>
			</c:if>
			<li><a href="logout">SAIR</a></li>
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
			<h1>//OPÇÕES</h1>
		</div>

	</div>
	<div id="conteudo-interna" class="bgParallax" data-speed="15">
		<div class="container">

			<div class="tabs">




				<ul>
					<li class="active"><span></span><a href="#tab-1"><i
							class="fa fa-wpforms" aria-hidden="true"></i> CADASTRAR
							ESTABELECIMENTO</a></li>
					<li><span></span><a href="#tab-2"><i class="fa fa-star"
							aria-hidden="true"></i> AVALIAR ESTABELECIMENTO</a></li>
					<li><span></span><a href="#tab-3"><i
							class="fa fa-list-alt" aria-hidden="true"></i> LISTAR
							ESTABELECIMENTO </a></li>



					<div class="clear"></div>
				</ul>



			</div>



		</div>
	</div>



	<div class="conteudo-tabs bgParallax" data-speed="15">

		<div id='tab-1'>
			<div class="container">
				<h1>//CADASTRAR ESTABELECIMETOS</h1>
				<div class="formulario-cadastro-estabelecimeto">					
					<form action="criar_estabelecimento" method="post">
						<input type="text" name="nome" id="nome" placeholder="NOME"> 
						<input type="text" name="endereco" id="endereco" placeholder="ENDEREÇO"> 
						<input type="text" name="cnpj" id="cnpj" placeholder="CNPJ"> 
						<select class="form-control" name="categoria.Id">
						<c:forEach items="${categoria}" var="categoria">
							<option value="${categoria.id}">${categoria.nome}</option>
						</c:forEach>
						</select>
						<button type="submit" value="ENVIAR" name="enviar" id="enviar">CADASTRAR</button>
					</form>
				</div>
			</div>
		</div>
		<div id='tab-2'>
			<div class="container">
				<h1>//AVALIAR ESTABELECIMENTOS</h1>

			</div>
		</div>
		<div id='tab-3'>
			<div class="container">
				<h1>//LISTAGEM DE ESTABELECIMENTOS</h1>
				<div class="titulo-conteudo">
					<h2>ESTABELECIMENTOS</h2>

				</div>
				<div class="conteudo-opcoes">
					<ul>
						<c:forEach var="estabelecimento" items="${estabelecimentos}">
							<li><a href="listarAvaliacoes?id=${estabelecimento.id}">${estabelecimento.nome }</a></li>
						</c:forEach>
					</ul>
					 
				</div>
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
	</script>
</body>
</html>