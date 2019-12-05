<%-- 
    Document   : dashboard
    Created on : 30/11/2019, 22:11:02
    Author     : Jhonathan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.UsuarioDAO"%>
<%@page import="MODEL.Usuario"%>
<!DOCTYPE html>
    <%
        if((request.getSession(false).getAttribute("id")== null)) {
            response.sendRedirect("index.jsp");
        }
    %>
    <%UsuarioDAO usuDAO = new UsuarioDAO();
      Usuario usu = usuDAO.buscar(Integer.parseInt(session.getAttribute("id").toString()));
    %>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="style/style.css">
    <link rel="stylesheet" href="style/form.css">
    <script src="https://kit.fontawesome.com/03fd194952.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <title><%out.print(usu.getNome_usuario());%></title>
</head>

<body>
    <header>
        <article id="content">
            <nav>
                <ul>
                    <a href="#banner">
                        <li>Home</li>
                    </a>
                    <a href="#character">
                        <li>Personagens</li>
                    </a>
                    <a href="#perks">
                        <li>Habilidades</li>
                    </a>
                    <a href="#contact">
                        <li>Contatos</li>
                    </a>
                </ul>
            </nav>
            <img style="height: 80px; width: 100px;" src="img/logo.png" alt="logo">
        </article>
    </header>
    <section class="perfil">
        <article class="title Dashboard">
            <h1>Bem-Vindo</h1>
        </article>
    </section>
    <section class="form">
        <article class="information">
            <label>ID: <input type="text" name="id" value="<%out.print(usu.getId_usuario());%>"></label>
            <label>Nome: <input type="text" name="nome" value="<%out.print(usu.getNome_usuario());%>"></label>
            <label>Email: <input type="email" name="email" value="<%out.print(usu.getEmail_usuario());%>"></label>
        </article>
        <div class="button">
            <button id="change">Alterar</button>
            <button id="delete">Excluir</button>
            <button id="exit">Sair</button>
        </div>
    </section>
    <section class="section-perk">
        <article id="survivor">
            <h1 class="title">Sobreviventes</h1>
        </article>
        <article id="killer">
            <h1 class="title">Assassinos</h1>
        </article>
    </section>
    <script src="js/createElement.js"></script>
    <script src="js/eventDashboard.js"></script>
</body>

</html>
