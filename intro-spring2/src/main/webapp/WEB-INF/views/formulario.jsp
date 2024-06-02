<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Cadastro de Membro</title>
		<spring:url var="css" value="/static/bootstrap.css" />
		<link type="text/css" rel="stylesheet" href="${css}" />
		<style>
			.container {
			background-color: #f8f9fa;
	        width: 420px;
	        border-radius: 10px;
	        padding: 20px;
	        margin: 100px auto 0;
	       }
	
	      .mt-3 {
	        margin-top: 3rem;
	       }
	
	      body {
	        background-image: url('https://media.engenhariaradio.pt/2021/02/alfons-morales-ylswjsy7stw-unsplash.jpg');
	        background-size: cover;
	        background-position: center;
	        background-repeat: no-repeat;
	       }
		    .bg-pink {
		        background-color: #FFB6C1 !important;
		    }
		</style>
	</head>
	<body>
		<header>
			<nav class="navbar navbar-expand-sm navbar-dark bg-pink">
			  <div class="container-fluid">
			    <a class="navbar-brand" href="#">
			      <img src="https://img.freepik.com/fotos-premium/uma-imagem-encantada-de-um-livro-vintage-aberto-em-cima-de-uma-mesa-de-madeira-tem-brilhos_410516-16209.jpg" alt="Logo" style="width:60px;" class="rounded-pill">
			  		<span style="color: white; margin-left: 10px;">Clube de Leitura</span>
			    </a>
			  </div>
			</nav>
		</header>
			<div  class="container mt-3">
			    <form:form method="POST" modelAttribute="membro">
			        <p>Nome: <form:input class="form-control" path="nome" required="required"/>
			        <form:errors path="nome" cssClass="error"/></p>
			        
			        <p>Data de nascimento: <form:input type="date" class="form-control" path="dataNascimento" required="required"/>
			        <form:errors path="dataNascimento" cssClass="error"/></p>
			        
			        <p>Sexo: 
			            <form:select class="form-control" path="sexo" required="required">
			                <form:option value="" label="Selecione"/>
			                <form:option value="Masculino" label="Masculino" />
			                <form:option value="Feminino" label="Feminino" />
			                <form:option value="Não declarar" label="Não declarar" />
			            </form:select>
					    <form:errors path="sexo" cssClass="error"/>
					</p>
			        
			        <p>Endereço: <form:input class="form-control" path="endereco" required="required"/>
			        <form:errors path="endereco" cssClass="error"/></p>
			        
			        <p>Gênero literário favorito: 
			            <form:select class="form-control" path="generoFavorito" required="required">
			                <form:option value="" label="Selecione"/>
			                <form:option value="Romance" label="Romance" />
			                <form:option value="Fantasia" label="Fantasia" />
			                <form:option value="Terror" label="Terror" />
			                <form:option value="Suspense" label="Suspense" />
			                <form:option value="Poemas" label="Poemas" />
			            </form:select>
			            <form:errors path="generoFavorito" cssClass="error"/></p>
			        
			        <p>Telefone para contato: <form:input class="form-control" path="contato" required="required"/>
			        <form:errors path="contato" cssClass="error"/></p>
			        
			        <p>E-mail: <form:input class="form-control" path="email" required="required"/>
			        <form:errors path="email" cssClass="error"/></p>
			        
			        <p><form:button class="btn btn-outline-primary">Enviar</form:button></p>
			    </form:form>
			</div>
	</body>
</html>
