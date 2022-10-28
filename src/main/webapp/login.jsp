<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/login.css">

    </head>
        <body>
            <h1 class="titulo">Faça seu cadastro</h1>
            <div class="principal">
                <form class="form" action="cadastro" method="post">
                	<div class="conteudo">
                    <label for="name" class="negrito">Nome:</label>
                    <br>
                    <input type="text" name="nome" placeholder="Informe seu nome" required>
                    <br>
                     <label for="Sobrenome" class="negrito">Sobrenome:</label>
                     <br> 
                     <input type="text" name="sobrenome" placeholder="Informe seu sobrenome" required> 
                     <br>
                     <label for="genero" class="tamanho" class="negrito"><b> Gênero:</b></label>
                     <br>
                     <input type="radio" name="genero" value="m">Masculino</input required>
                     <input type="radio" name="genero" value="f">Feminino</input required>
                     <br>
                     <label for="email" class="negrito">Email:</label>
                     <br>
                     <input type="email"name="email" placeholder="Informe seu email"required>
                     <br>
                     <label for="number" class="negrito">informe sua idade:</label>
                     <br>
                     <input type="number" name="numero" placeholder="Informe sua idade:"required>
                     <br>
                     <input type="submit" value="Salvar" class="botao">
						</div>
						
                </form>
				
            </div>

        </body>