<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
<head>
		<meta charset="ISO-8859-1">
		<title>Lista de membros</title>
		<spring:url var="css" value="/static/bootstrap.css" />
		<link type="text/css" rel="stylesheet" href="${css}" />
		<style>
			.container {
			background-color: #f8f9fa;
	        width: 1200px;
	        border-radius: 10px;
	        padding: 15px;
	        margin: 150px auto 0;
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
			  		<span style="color: white; margin-left: 10px;">Membros do Clube de Leitura</span>
			    </a>
			  </div>
			</nav>
		</header>
	<div class="container">
	    <table class="table table-striped table-bordered">
	        <thead class="table-danger">
	            <th>Nome</th>
	            <th>Data de nascimento</th>
	            <th>Sexo</th>
	            <th>Endereço</th>
	            <th>Gênero literário favorito</th>
	            <th>Contato</th>
	            <th>Email</th>
	            <th>Ações</th>
	        </thead>
	        <tbody>
	            <c:forEach var="membro" items="${membros}">
	            <tr>
	                <td>${membro.nome}</td>
	                <td>${membro.dataNascimento}</td>
	                <td>${membro.sexo}</td>
	                <td>${membro.endereco}</td>
	                <td>${membro.generoFavorito}</td>
	                <td>${membro.contato}</td>
	                <td>${membro.email}</td>
	                <td><a href="editar/${membro.id}">Editar</a> | <a href="excluir/${membro.id}">Excluir</a></td>
	            </tr>
	            </c:forEach>
	        </tbody>
	    </table>
	</div>
</body>
</html>
