<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>AppSorvete</title>
</head>
<body>

	<div class="container">
		<h2>Autenticacao</h2>
		
		<form action="/login" method="login">
		  
		  <div class="form-group">
		    <label>E-mail:</label>
		    <input type="email" class="form-control" placeholder="Entre com o seu e-mail" name="email" value="juan.rostirola@al.infnet.edu.br">
		  </div>

		  <div class="form-group">
		    <label>Senha:</label>
		    <input type="password" class="form-control" placeholder="Entre com a sua senha" name="senha" value="juan.rostirola@al.infnet.edu.br">
		  </div>

		  <button type="submit" class="btn btn-default">Acessar</button>
		</form>
	</div>

</body>
</html>