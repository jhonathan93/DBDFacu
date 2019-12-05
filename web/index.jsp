<%-- 
    Document   : index
    Created on : 23/11/2019, 01:01:57
    Author     : Jhonathan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt_BT">

    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="style/style.css">
        <link rel="stylesheet" href="style/banner.css">
        <link rel="stylesheet" href="style/form.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
        <script src="https://kit.fontawesome.com/03fd194952.js" crossorigin="anonymous"></script>
        <title>Wiki Dead By Daylight</title>
    </head>

    <body>
        <arcicle class="loading">
            <lottie-player
                src="https://assets3.lottiefiles.com/datafiles/DlRM2jtACyr4IX1u6l5rqtW1QWZKLCkNoBIXWeyH/loading.json"
                background="transparent" speed="1" style="width: 400px; height: 400px;" loop autoplay>
            </lottie-player>
        </arcicle>
    
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
                        <li class="account"><i class="far fa-user-circle"><span> Conta</span></i></li>
                    </ul>
                </nav>
                <img style="height: 80px; width: 100px;" src="img/logo.png" alt="logo">
            </article>
        </header>
    
        <section class="form-box">
            <div class="button-box">
                <div id="btn"></div>
                <button id="btn-log" type="button" class="toggle-btn">Log in</button>
                <button id="btn-register" type="button" class="toggle-btn">Register</button>
            </div>
            <form id="login" class="input-group" action="Logar" method="POST">
                <div class="inputBox">
                    <input type="text" class="input-field" name="email" required>
                    <label>Usuário</label>
                </div>
                <div class="inputBox">
                    <input type="password" class="input-field" name="password" required>
                    <label>Senha</label>
                </div>
                <button type="submit" class="submit-btn" id="btn-login">Log in</button>
            </form>
            <div id="register" class="input-r-group">
                <div class="inputBox">
                    <input type="text" class="input-field" id="field-name-register" required="">
                    <label>Nome</label>
                </div>
                <div class="inputBox">
                    <input type="email" class="input-field" id="field-email-register" required="">
                    <label>Email</label>
                </div>
                <div class="inputBox">
                    <input type="password" class="input-field" id="field-password-register" required="">
                    <label>Senha</label>
                </div>
                <div class="inputBox">
                    <input type="password" class="input-field" id="field-confirm-register" required="">
                    <label>Confirmar</label>
                </div>
                <button type="submit" class="submit-btn" id="btn-submit-register">Register</button>
            </div>
            <div id="check">
                <h1></h1>
                <img class="imgCheck" src="">
            </div>
        </section>
    
        <section id="banner">
            <div>
                <div id="jssor_1" style="position:relative;top:0px;left:0px;width:980px;height:380px;overflow:hidden;">
                    <div data-u="slides"
                        style="position:absolute;top:0px;left:0px;width:980px;height:380px;overflow:hidden;">
                        <div><img class="banner_img" data-u="image" src="img/banner1.jpg" /></div>
                        <div><img class="banner_img" data-u="image" src="img/banner2.jpg" /></div>
                        <div><img class="banner_img" data-u="image" src="img/banner3.jpg" /></div>
                    </div>
                    <!--#region Bullet Navigator Skin Begin -->
                    <div data-u="navigator" class="jssorb057" style="position:absolute;bottom:12px;right:12px;"
                        data-autocenter="1" data-scale="0.5" data-scale-bottom="0.75">
                        <div data-u="prototype" class="i" style="width:16px;height:16px;">
                            <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
                                <circle class="b" cx="8000" cy="8000" r="5000"></circle>
                            </svg>
                        </div>
                    </div>
                    <!--#endregion Bullet Navigator Skin End -->
                    <!--#region Arrow Navigator Skin Begin -->
                    <div data-u="arrowleft" class="jssora051" style="width:55px;height:55px;top:0px;left:25px;"
                        data-autocenter="2" data-scale="0.75" data-scale-left="0.75">
                        <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
                            <path class="a"
                                d="M4576,7719.7l5678-5677.8c81.3-81.2,174.8-121.9,280.3-121.9c105.6,0,199,40.8,280.3,121.9 l609.1,609.2c81.3,81.2,121.8,174.5,121.8,280.3c0,105.8-40.5,199-121.8,280.3L6635.2,8000.1l4788.4,4788.5 c81.3,81.2,121.8,174.7,121.8,280.1c0,105.7-40.5,199.2-121.8,280.4l-609.2,609c-81.2,81.3-174.7,121.8-280.3,121.8 c-105.5,0-199-40.6-280.3-121.8L4576.3,8280.4c-81.2-81.2-121.8-174.7-121.8-280.3C4454.5,7894.5,4494.8,7801.1,4576,7719.7z">
                            </path>
                        </svg>
                    </div>
                    <div data-u="arrowright" class="jssora051" style="width:55px;height:55px;top:0px;right:25px;"
                        data-autocenter="2" data-scale="0.75" data-scale-right="0.75">
                        <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
                            <path class="a"
                                d="M11424,7719.7L5746,2041.9c-81.3-81.2-174.8-121.9-280.3-121.9c-105.6,0-199,40.8-280.3,121.9 l-609.1,609.2c-81.3,81.2-121.8,174.5-121.8,280.3c0,105.8,40.5,199,121.8,280.3l4788.4,4788.4l-4788.4,4788.5 c-81.3,81.2-121.8,174.7-121.8,280.1c0,105.7,40.5,199.2,121.8,280.4l609.2,609c81.2,81.3,174.7,121.8,280.3,121.8 c105.5,0,199-40.6,280.3-121.8l5677.7-5677.8c81.2-81.2,121.8-174.7,121.8-280.3C11545.5,7894.5,11505.2,7801.1,11424,7719.7z">
                            </path>
                        </svg>
                    </div>
                    <!--#endregion Arrow Navigator Skin End -->
                </div>
            </div>
        </section>
    
        <section id="character">
            <h1 class="title">Sobreviventes</h1>
            <article class="box sbox1">
                <figure></figure>
                <h1 class="box-title">Meg Thomas</h1>
                <p>Nome: Meg Thomas<br>
                    Velocidade: 4.0 m/s<br>
                    Altura: Média<br>
                    Dificuldade: Fácil</p>
            </article>
            <article class="box sbox2">
                <figure></figure>
                <h1 class="box-title">Laurie Strode</h1>
                <p>Nome: Laurie Strode<br>
                    Velocidade: 4.0 m/s<br>
                    Altura: Média<br>
                    Dificuldade: Difícil</p>
            </article>
            <article class="box sbox3">
                <figure></figure>
                <h1 class="box-title">Nea Karlsson</h1>
                <p>Nome: Nea Karlsson<br>
                    Velocidade: 4.0 m/s<br>
                    Altura: Média<br>
                    Dificuldade: Média</p>
            </article>
            <h1 class="title">Assassinos</h1>
            <article class="box abox1">
                <figure></figure>
                <h1 class="box-title">The Nurse</h1>
                <p>Nome: Sally Smithson <br>
                    Velocidade: 3.85 m/s<br>
                    Raio de Terror: 32 m<br>
                    Altura: Média<br>
                    Dificuldade: Muito Difícil</p>
            </article>
            <article class="box abox2">
                <figure></figure>
                <h1 class="box-title">The Trapper</h1>
                <p>Nome: Evan MacMillan<br>
                    Velocidade: 4.6 m/s<br>
                    Raio de Terror: 32 m<br>
                    Altura: Alto<br>
                    Dificuldade: Fácil</p>
            </article>
            <article class="box abox3">
                <figure></figure>
                <h1 class="box-title">The Ghostface</h1>
                <p>Nome: Danny "Jed Olsen" Johnson<br>
                    Velocidade: 4.6 m/s<br>
                    Raio de Terror: 32 m<br>
                    Altura: Média<br>
                    Dificuldade: Difícil</p>
            </article>
        </section>
    
        <section id="perks">
            <article id="survivor">
                <h1 class="title">Sobreviventes</h1>
            </article>
            <article id="killer">
                <h1 class="title">Assassinos</h1>
            </article>
        </section>
        <section id="contact">
            <article id="contentTitle">
                <h1 class="title">Contatos</h1>
            </article>
            <article class="footerJ">
                <h3>Jhonathan da Silva</h3>
                <nav>
                    <ul>
                        <a href="https://www.facebook.com/JhonathanSilva0" target="_black">
                            <li><i class="fab fa-facebook"></i></li>
                        </a>
                        <a href="https://www.instagram.com/jhonathansilva92/?hl=pt-br" target="_black">
                            <li><i class="fab fa-instagram"></i></li>
                        </a>
                        <a href="https://www.twitch.tv/little_yuuh" target="_black">
                            <li><i class="fab fa-twitch"></i></li>
                        </a>
                        <a href="https://twitter.com/YuuhLittle" target="_black">
                            <li><i class="fab fa-twitter"></i></li>
                        </a>
                    </ul>
                </nav>
            </article>
            <article class="footerP">
                <h3>Pedro Zangaro</h3>
                <nav>
                    <ul>
                        <a href="https://www.facebook.com/pedro.moura.56211" target="_black">
                            <li><i class="fab fa-facebook"></i></li>
                        </a>
                        <a href="https://www.instagram.com/mooura3107/?hl=pt-br" target="_black">
                            <li><i class="fab fa-instagram"></i></li>
                        </a>
                        <a href="https://www.twitch.tv/little_yuuh" target="_black">
                            <li><i class="fab fa-twitch"></i></li>
                        </a>
                        <a href="https://twitter.com/YuuhLittle" target="_black">
                            <li><i class="fab fa-twitter"></i></li>
                        </a>
                    </ul>
                </nav>
            </article>
        </section>
    
        <footer>
            &copy; 2019 Pedro Zangaro e Jhonathan da Silva
        </footer>

        <script src="js/event.js"></script>
        <script src="js/banner/jssor.slider.min.js"></script>
        <script src="js/banner/banner.js"></script>
        <script src="js/createElement.js"></script>
    </body>

</html>
