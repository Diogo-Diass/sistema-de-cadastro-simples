<%@page import="model.Pessoa"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/sucesso.css">
</head>
<body>
	<div class="bloco">
		<div class="centro">
	<%
	Pessoa pessoa = (Pessoa)request.getAttribute("pessoa");
	%>
	<p>Olá ${mensagem } <%=pessoa.getNome()+" "+pessoa.getSobrenome()  %> ${horario}, sua idade é <%=pessoa.getIdade() %></p>
	</div>
	
	</div>
</body>
</html>