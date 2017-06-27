<%-- 
    Document   : editar_usuario
    Created on : 27/06/2017, 15:58:00
    Author     : joselima
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
    <head>
        <title>IBebo - cadastro</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">


    </head>
    <body>
        <div id="wrapper" class="">
            <div id="logo" class="">
              <!--  <img id="imagem_titulo" alt="logo IBebo" src="imagens/LOGO1.png" > -->
                <h1 id="titulo_login">IBebo</h1>
                <p id="titulo_login">PPSOO</p>
            </div>
           
            <div class="container-fluid">
                <div class="row">
                    <div id="caixa_conteudo">
                        <h3>Editar Cadastro</h3>
                        <div id="mensagem" style="height: 50px;">
                        <c:if test="${mensagens.existeErros}">
                            <div id="erro" class="alert">
                                <ul  id="ul_erro">
                                    <c:forEach var="erro" items="${mensagens.erros}">
                                        <li> ${erro} </li>
                                        </c:forEach>
                                </ul>
                            </div>
                        </c:if>
                        </div>
                        <c:forEach var="consumidor" items="${consumidorDados}">
                        <form method="post" action="${pageContext.request.contextPath}/Cadastro_Usuario">
                        
                            <div class="form-group">
                                <label for="nome">Nome:</label>
                                <input type="text" class="form-control" name="nome" id="nome_usuario" value="${consumidor.nome}" placeholder="Digite o nome" required>
                            </div>
                            <div class="form-group">
                                <label for="data_nascimento">Data de nascimento:</label>
                                <input type="text" class="form-control" name="data_nascimento" id="data_nascimento_usuario" value="${consumidor.dataNascimento}" placeholder="Digite a data de nascimento" required>
                            </div>
                            <div class="form-group">
                                <label for="endereco">Endereço:</label>
                                <input type="text" class="form-control" name="endereco" id="endereco_usuario" value="${consumidor.endereco}" placeholder="Digite o endereço" required>
                            </div>
                            <div class="form-group">
                                <label for="cep">CEP:</label>
                                <input type="text" class="form-control" name="cep" id="cep_usuario" value="${consumidor.cep}" placeholder="Digite o cep" required>
                            </div>
                            <div class="form-group">
                                <label for="cidade">Cidade:</label>
                                <input type="text" class="form-control" name="cidade" id="cidade_usuario" value="${consumidor.cidade}" placeholder="Digite a cidade" required>
                            </div>
                            <div class="form-group">
                                <label for="numero">Número:</label>
                                <input type="text" class="form-control" name="numero" id="numero_usuario" value="${consumidor.numero}" placeholder="Digite o numero" required>
                            </div>
                            <div class="form-group">
                                <label for="UF">UF:</label>
                                <input type="text" class="form-control" name="UF" id="UF_usuario" value="${consumidor.UF}" placeholder="Digite a UF" required>
                            </div>
                            <div class="form-group">
                                <label for="telefone">Telefone:</label>
                                <input type="tel" class="form-control" name="telefone" id="telefone_usuario" value="${consumidor.telefone}" placeholder="Digite o telefone" required>
                            </div>
                            <div class="form-group">
                                <label for="email">Email:</label>
                                <input type="email" class="form-control" name="email" id="email_usuario" value="${consumidor.email}" placeholder="Digite o email" required>
                            </div>
                            <div class="form-group">
                                <label for="cpf">CPF:</label>
                                <input type="text" class="form-control" name="cpf" id="cpf_usuario" value="${consumidor.cpf}" placeholder="Digite o CPF" required>
                            </div>
                            <div class="form-group">
                                <label for="rg">RG:</label>
                                <input type="text" class="form-control" name="rg" id="rg_usuario" value="${consumidor.rg}" placeholder="Digite o RG" required>
                            </div>
                            <div class="form-group">
                                <label for="login">Login:</label>
                                <input type="text" class="form-control" name="login" id="login_usuario" value="${consumidor.login}" placeholder="Digite o Login" required>
                            </div>
                            <div class="form-group">
                                <label for="senha">Senha:</label>
                                <input type="password" class="form-control" name="senha" id="senha_usuario" value="${consumidor.senha}" placeholder="Digite a senha" required>
                            </div>
                            <div class="form-group">
                                <label for="confirma_senha">Confirmar senha:</label>
                                <input type="password" class="form-control" name="confirma_senha" id="confirma_senha_usuario" value="${consumidor.confirma_senha}" placeholder="Confirme a senha" required>
                            </div>
                            <div class="form-group">
                                <label for="select_sexo">Sexo:</label>
                                <select class="form-control" name="id_sexo">
                                    <option></option>
                                    <option value="1">Feminino</option>
                                    <option value="1">Masculino</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <input href="Cadastro_Usuario" type="submit" class="btn btn-default" name="btn_cadastro_usuario" value="Cadastrar"/>
                                <input href="#" type="reset" class="btn btn-default" name="btn_limpar_cadastro" value="Limpar"/>
                                <!-- btn btn-success btn-block -->
                            </div>
                        </form>
                        </c:forEach>
                    </div>
                </div>	

            </div>          
            <footer id="footer" class="">
                <div class="inner">
                    <p id=info><span ></span>&copy; IBebo. All rights reserved.</p>
                    <p id=info><span ></span>PPSOO</p>
                </div>
            </footer>
        </div>


        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

    </body>
</html>