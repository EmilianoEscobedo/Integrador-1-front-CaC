<%@ page contentType="text/html;charset=UTF-8" %>
<%
    if(session.getAttribute("email") == null){
        response.sendRedirect("login.jsp");
    }
%>
<!doctype html>
<html lang="es">
<jsp:include page="head.jsp"/>
<body>
<jsp:include page="header.jsp"/>
<main>
    <section class="cards__container justify-content-center row mt-5 w-100">
            <div class="col-md-2"></div>
        <div class="card col-md-2 col-12 rounded-0 border border-primary border-1 me-2 mt-2" style="width: 18rem;">
            <div class="card-body text-center">
              <h5 class="card-title mb-3 fw-bold">Estudiante</h5>
              <h6 class="card-subtitle mb-4 text-body-secondary">Tienen un descuento</h6>
              <h6 class="card-subtitle mb-4 fs-5 text-body-secondary fw-bold">80%</h6>
              <p class="card-text text-secondary mb-3">* presentar documentación</p>
            </div>
          </div>

          <div class="card col-md-2 col-12 rounded-0 border border-success border-1 me-2 mt-2" style="width: 18rem;">
            <div class="card-body text-center">
              <h5 class="card-title mb-3 fw-bold">Trainee</h5>
              <h6 class="card-subtitle mb-4 text-body-secondary">Tienen un descuento</h6>
              <h6 class="card-subtitle mb-4 fs-5 text-body-secondary fw-bold">50%</h6>
              <p class="card-text text-secondary mb-3">* presentar documentación</p>
            </div>
          </div>

          <div class="card col-md-2 col-12 rounded-0 border border-warning border-1 me-2 mt-2" style="width: 18rem;">
            <div class="card-body text-center">
              <h5 class="card-title mb-3 fw-bold">Junior</h5>
              <h6 class="card-subtitle mb-4 text-body-secondary">Tienen un descuento</h6>
              <h6 class="card-subtitle mb-4 fs-5 text-body-secondary fw-bold">15%</h6>
              <p class="card-text text-secondary mb-3">* presentar documentación</p>
            </div>
          </div>

        <div class="col-md-2"></div>
    </section>
    <section class="container__form">
        <div class="row">
            <div class="col-12 text-center mb-5">
                <h6 class="mt-3 text-secondary">VENTA</h6>
                <h2 class="fw-bold fs-1">VALOR DE TICKET $<span id="ticketPrice">200</span> </h2>
            </div>
        </div>
        <div class="w-100 d-flex justify-content-center">
            <form class="w-75">
                <div class="mb-3 d-flex justify-content-around">
                <input type="text" class="form-control w-50" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Nombre">
                <input type="text" class="form-control w-50 ms-2" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Apellido">
                </div>
                <div class="mb-3">
                <input type="email" class="form-control" id="exampleInputPassword1" placeholder="Correo">
                </div>
                <div class="d-flex">
                    <div class="mb-3 w-50">
                        <label for="quantity" class="form-label">Cantidad</label>
                        <select id="quantitySelect" class="form-select" required>
                            <option value="" disabled selected hidden>Cantidad</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                        </select>
                    </div>
                    <div class="mb-3 w-50 ms-2">
                        <label for="category" class="form-label">Categoría</label>
                        <select id="categorySelect" class="form-select" required>
                            <option value="" disabled selected hidden>Estudiante</option>
                            <option value="Estudiante">Estudiante</option>
                            <option value="Trainee">Trainee</option>
                            <option value="Junior">Junior</option>
                        </select>
                    </div>
                </div>
                <div class="container__totalPrice displayNone mt-3">
                    <p class="ms-4 mt-3">Total a Pagar: $<span id="totalPrice"></span></p>
                </div>
                <div class="text-center mt-5">
                    <button type="button" class="btn btn-borrar">Borrar</button>
                    <button type="button" class="btn btn-resumen">Resumen</button>
                </div>
            </form>
        </div>
    </section>
</main>

<jsp:include page="footer.jsp"/>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="js/BuyTickets.js"></script>
</body>
</html>