<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html lang="es">
    <jsp:include page="head.jsp"/>
<body class="register-login__container">
    <main>
        <section>
            <div class="row justify-content-center">
                <div class="col-lg-8 col-xl-7">
                    <div class="container d-flex mt-5 justify-content-center">
                        <a href="index.jsp">
                            <img class="register-login-logo" src="statics/caclogo.png">
                        </a>
                        <h1 class="register-login-button" style=" font-size:48px; margin-left:60px; margin-top: 50px; margin-bottom: 50px; color: white; border-bottom: 2px solid #FFD200">Registro</h1>
                    </div>
                    <form  class="register-login__form" action="register" method="post">
                        <div class="row gx-2">
                            <div class="col-md mb-3">
                                <input type="text" class="form-control register-login-form__input" placeholder="Nombre" aria-label="Nombre" name="name" id="name" required>
                            </div>
                            <div class="col-md mb-3">
                                <input type="text" class="form-control register-login-form__input" placeholder="Apellido" aria-label="Apellido" name="surname" id="surname" required>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col mb-3">
                                <input type="email" class="form-control register-login-form__input" placeholder="Email" aria-label="Email" name="email" id="mail" required>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col mb-3">
                                <input type="password" class="form-control register-login-form__input" placeholder="Contraseña" aria-label="Password" name="password" id="password" required>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-6 mb-3">
                                <article class="text-center">
                                    <input type="submit" class="fs-4 register-login-button btn btn-lg btn-form" value= "Registrarse">
                                </article>
                            </div>
                            <div class="col-6 mb-3">
                                <form  action="login.jsp">
                                    <article class="text-center">
                                        <input type="submit" class="fs-4 register-login-button btn btn-lg btn-form" value="Iniciar Sesión">
                                    </article>
                                </form>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </section>
    </main>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>

