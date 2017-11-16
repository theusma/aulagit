<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastrar Estabelecimento</title>
</head>

<link rel="stylesheet" href="css/bootstrap.min.css">
<body>
<form action="criar_estabelecimento" class="form-horizontal" method="post">
<fieldset>

<!-- Form Name -->
<legend>Cadastro do Estabelecimento</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="idNome">Nome</label>  
  <div class="col-md-5">
  <input id="nomeEstabelecimento" name="nomeEstabelecimento" type="text" placeholder="Nome do estabelecimento" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="idDepto">Endereço</label>  
  <div class="col-md-5">
  <input id="endereco" name="endereco" type="text"  class="form-control input-md" />
    
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label" for="idDepto">Cnpj</label>  
  <div class="col-md-5">
  <input id="cnpj" name="cnpj" type="text"  class="form-control input-md" />
   </div>
</div>
<label class="col-md-4 control-label" for="txtgrupo">Fila de
				Categoria: </label>
			<div class="col-md-4">
				<select class="form-control" name="categoria.Id">
					<c:forEach items="${categoria}" var="categoria">
						<option value="${categoria.id}">${categoria.nome}</option>
					</c:forEach>
				</select>
			</div>
<button id="btnsalvar" name="btnsalvar" class="btn btn-primary">Cadastrar</button>
</fieldset>

</form>
 
</body>
</html>