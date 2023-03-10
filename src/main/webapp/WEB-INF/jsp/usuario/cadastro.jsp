<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">	
	<meta charset="UTF-8">
	<title>Cadastro de Usuario</title>
</head>
<body>
	<div class="container">
		<form action="/usuario/incluir" method="post">
			<h3>Cadastro de Usuario</h3>
		
			<div class="form-group">
				<label>Nome:</label> 	
				<input type="text" name="nome" value="Juan Rostirola" class="form-control">
			</div>
			
			<div class="form-group">
				<label>Senha:</label>
				<input type="password" name="senha" value="10vinte30QUARENTA" class="form-control">
			</div>
			
			<div class="form-group">
				<label>E-mail:</label>
				<input type="email" name="email" value="juanrostirola@gmail.com" class="form-control">
			</div>
						
			<div class="form-group">
				<label>Idade:</label> 	
				<input type="text" name="idade" value="22" class="form-control">
			</div>

			<div class="form-group">
				<label>Salario:</label> 	
				<input type="text" name="salario" value="1640,00" class="form-control">
			</div>

			<div class="form-group">
				<label>Caracteristicas:</label>
			    <div class="form-check">
			      <label class="form-check-label">
			        <input type="checkbox" name="caracteristicas" value="Ma" class="form-check-input" > Maquinario
			      </label>
			    </div>
			    <div class="form-check">
			      <label class="form-check-label">
			        <input type="checkbox" name="caracteristicas" value="Li" checked class="form-check-input"> Limpeza
			      </label>
			    </div>
			    <div class="form-check">
			      <label class="form-check-label">
		        		<input type="checkbox" name="caracteristicas" value="Es" class="form-check-input"> Estoque
			      </label>
			    </div>
			</div>

			<div class="form-group">						
				<label>Tipo:</label>			
				<div class="form-check">
				  <label class="form-check-label">
				    <input type="radio" name="tipo" value="G" class="form-check-input" > Gestor
				  </label>
				</div>			
				<div class="form-check">
				  <label class="form-check-label">
					<input type="radio" name="tipo" value="A" class="form-check-input"> Analista
				  </label>
				</div>			
				<div class="form-check">
				  <label class="form-check-label">
				    <input type="radio" name="tipo" value="F" checked class="form-check-input"> Funcionario
				  </label>
				</div>			
			</div>
			
			<div class="form-group">
				<label>Setor:</label>
				<select name="setor" class="form-control">
					<option value="1">Gestão</option>
					<option value="2">Analise</option>
					<option value="3" selected>Produção</option>
				</select>
			</div>
			<button type="submit">Cadastrar</button>
		</form>
	</div>
</body>
</html>