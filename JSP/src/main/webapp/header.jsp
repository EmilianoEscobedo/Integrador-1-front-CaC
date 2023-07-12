<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String name = (String) session.getAttribute("name");
%>


<header>
        <nav class="navbar navbar-expand-lg">
            <div class="container-fluid header__container d-flex">
                <a class="navbar-brand d-flex text-white" href="index.jsp">
                    <img class="w-25" src="./statics/codoacodo.png" alt="Logo Codo a Codo">
                    <p class="mt-3 fw-bold header__logo-p">Conf Bs As</p>
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                    <ul class="navbar-nav justify-content-around me-5">
                    <li class="nav-item">
                        <a class="nav-link fw-bolder active nav__link" aria-current="page" href="index.jsp">La Conferencia</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#Oradores">
                            <p class="text-secondary nav__link">
                            Los Oradores
                            </p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#lugarFecha">
                            <p class="text-secondary nav__link">
                                El lugar y la fecha
                            </p></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#formOrador">
                            <p class="text-secondary nav__link">
                                Conviértete en orador
                            </p></a>
                    </li>
                    <li class="nav-item text-success">
                        <a class="nav-link" href="buytickets.jsp">
                            <p class="text-success fw-bolder">Comprar tickets</p>
                        </a>
                    </li>
                    <li class="separator"></li>
                    <li class="nav-item mt-3 ms-2">
                        <p class="text-white fw-bolder">
                            <%=name%>
                        </p>
                    </li>
                    <li class="nav-item text-danger ms-3 mt-1">
                        <a class="nav-link" href="logout">
                            <img src="statics/exit.png" style="width: 30px;">
                        </a>
                    </li>
                    </ul>
                </div>
            </div>
          </nav>
</header>