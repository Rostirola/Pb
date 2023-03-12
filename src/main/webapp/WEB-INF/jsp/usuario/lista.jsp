<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
	<meta charset="UTF-8">
	<title>AppSorvete</title>
</head>
<body>

	<c: import url="/WEB-INF/jsp/menu.jsp" />

	<div class="container">
			<h3>Listagem de Usuarios</h3>

			<c:if test="${not empty mensagem}">
				<div class="alert alert-success">
					<strong>Atenção</strong> ${mensagem}
				</div>
			</c:if>

			<c:if test="${empty usuarios}">
				<h5>Não existem usuários cadastrados!</h5>
			</c:if>

			<c:if test="${not empty usuarios}">
				<h5>Quantidade de usuários cadastrados: ${usuarios.size()}!</h5>
			</c:if>
		
		<table class="table table-striped">
		  <thead>
		    <tr>
		      <th>Nome</th>
		      <th>Senha</th>
		      <th>E-mail</th>
		      <th>Caracteristicas</th>
		      <th>Tipo</th>
		      <th>Setor</th>
		      <th>Idade</th>
		      <th>Salario</th>
		    </tr>
		  </thead>
		  <tbody>
		    <tr>
		      <td>Juan Rostirola</td>
		      <td>10vinte30QUARENTA</td>
		      <td>juan.rostirola@al.infnet.edu.br</td>
		      <td>Maquinario</td>
		      <td>Funcionario</td>
		      <td>Produção</td>
		      <td>22</td>
		      <td>1640,00</td>
		    </tr>
		    <tr>
		      <td>Juan Rostirola</td>
		      <td>10vinte30QUARENTA</td>
		      <td>juan.rostirola@al.infnet.edu.br</td>
		      <td>Maquinario</td>
		      <td>Funcionario</td>
		      <td>Produção</td>
		      <td>22</td>
		      <td>1640,00</td>
		    </tr>
		    <tr>
		      <td>Juan Rostirola</td>
		      <td>10vinte30QUARENTA</td>
		      <td>juan.rostirola@al.infnet.edu.br</td>
		      <td>Maquinario</td>
		      <td>Funcionario</td>
		      <td>Produção</td>
		      <td>22</td>
		      <td>1640,00</td>
		    </tr>
		  </tbody>
		</table>		
	</div>

</body>
</html>