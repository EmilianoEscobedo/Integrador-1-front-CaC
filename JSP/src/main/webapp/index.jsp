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
    <section class="banner__container">
       <div class="row">
           <div class="col-1 col-md-7">
           </div>
           <div class="col-md-4 col-10 text-white banner__text">
               <h1 class="fw-white">Conf Bs As</h1>
               <h4>Bs As llega por primera vez a Argentina. Un evento para compartir con nuestra comunidad el conocimiento y experiencia de los expertos que están creando el futuro de Internet. Ven a conocer a miembros del evento, a otros estudiantes de Codo a Codo y los oradores de primer nivel que tenemos para ti. Te esperamos!</h4>
               <button class="btn btn-outline-light mt-2"> Quiero ser Orador</button>
               <button class="btn btn-success mt-2"> Comprar tickets</button>
           </div>
           <div class="col-md-2 col-1">
           </div>
       </div>
   </section>
   <section>
       <div class="row" id="Oradores">
           <div class="col-12 text-center mb-5">
               <h6 class="mt-3 text-secondary">CONOCE A LOS</h6>
               <h2 class="fw-bold fs-1">ORADORES</h2>
           </div>
       </div>
       <div class="row d-flex justify-content-center">
           <div class="col-md-3 col-11 my-2">
               <div class="card w-100" style="width: 18rem;">
                   <img src="./statics/steve.jpg" class="card-img-top" alt="Steve Jobs">
                   <div class="card-body">
                       <h3 class="badge text-bg-warning">JavaScript</h3>
                       <h3 class="badge text-bg-info text-white">React</h3>
                       <div class="card-title">
                           <h4>Steve Jobs</h4>
                       </div>
                       <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Eos eligendi voluptate quaerat nemo? Dicta vero reprehenderit ex ipsa quis reiciendis itaque harum ut tenetur eos. Non consectetur ut deleniti hic?os eligendi voluptate quaerat nemo? Dicta vero reprehenderit </p>
                   </div>
               </div>
           </div>
           <div class="col-md-3 col-11 my-2">
               <div class="card w-100" style="width: 18rem;">
                   <img src="./statics/bill.jpg" class="card-img-top" alt="Bill Gates">
                   <div class="card-body">
                       <h3 class="badge text-bg-warning">JavaScript</h3>
                       <h3 class="badge text-bg-info text-white">React</h3>
                       <div class="card-title">
                           <h4>Bill Gates</h4>
                       </div>
                       <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos maiores, magni nemo quia qui aliquam dicta dolorum culpa tenetur ipsum quasi assumenda mollitia inventore molestias aperiam sequi corrupti consequuntur asperiores?</p>
                   </div>
               </div>
           </div>
           <div class="col-md-3 col-11 my-2">
               <div class="card w-100" style="width: 18rem;">
                   <img src="./statics/ada.jpeg" class="card-img-top" alt="Ada Lovelace">
                   <div class="card-body">
                       <h3 class="badge text-bg-secondary">Negocios</h3>
                       <h3 class="badge text-bg-danger">Startups</h3>
                       <div class="card-title">
                           <h4>Ada Lovelace</h4>
                       </div>
                       <p class="card-text">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Maiores, quod dolore quo numquam rem quisquam optio unde, similique veritatis quibusdam consectetur quia tempora dicta enim temporibus expedita dolor suscipit debitis.</p>
                   </div>
               </div>
           </div>

       </div>
    </div>
   </section>
   <section class="card__octubre-container mt-5" id="lugarFecha">
       <div class="row">
           <div class="col-md-6 col-12 card__octubre-carrousel">
               <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
                   <div class="carousel-inner">
                     <div class="carousel-item active">
                       <img src="./statics/honolulu.jpg" class="d-block w-100 card__octubre-img" alt="Imagen de Honolulu">
                     </div>
                     <div class="carousel-item">
                       <img src="./statics/hawaii2.jpg" class="d-block w-100 card__octubre-img" alt="Imagen de Honolulu">
                     </div>
                     <div class="carousel-item">
                       <img src="./statics/hawaii2.jpg" class="d-block w-100 card__octubre-img" alt="Imagen de Honolulu">
                     </div>
                   </div>
                 </div>
           </div>
           <div class="col-md-6 col-12 card__octubre-text px-4 border border-left-1 border-white">
               <h2 class="fw-bold mt-4">Bs As - Octubre</h2>
               <p>Buenos Aires es la provincia y localidad más grande del estado de Argentina, en los Estados Unidos. Honolulu es la más sureña de entre las principales ciudades estadounidenses. Aunque el nombre de Honolulu se refiere al área urbana en la costa sureste de la isla de Oahu, la ciudad y el condado de Honolulu han formado una ciudad- condado consolidada que cubre toda la ciudad (aproximadamente 600 km2 de superficie).</p>
               <button type="button" class="btn btn-outline-light mb-5">Conocé más</button>
           </div>
       </div>
   </section>
   <section class="mb-5">
       <div class="col-12 text-center mb-5" id="formOrador">
           <h6 class="mt-3 text-secondary">CONVÍERTETE EN UN</h6>
           <h2 class="fs-1 fw-bold">ORADOR</h2>
           <p>Anótate como orador para dar una charla ignite. Cuéntanos de qué quieres hablar!</p>
       </div>
       <form>
           <div class="row d-flex justify-content-center">
               <div class="col-4 "></div>
               <div class="col-md-2 col-10">
                   <input type="text" class="form-control mb-2" placeholder="Nombre" aria-label="First name">
               </div>
               <div class="col-md-2 col-10">
                   <input type="text" class="form-control mb-2" placeholder="Apellido" aria-label="Last name">
               </div>
               <div class="col-4"></div>
           </div>
           <div class="row mt-3 d-flex justify-content-center">
               <div class="col-4"></div>
               <div class="col-md-4 col-10">
                   <div class="form-floating">
                       <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 100px"></textarea>
                       <label for="floatingTextarea2">Sobre qué quieres hablar?</label>
                       </div>
                       <p class="text-secondary fs-6 font-monospace">Recuerda incluir un título para tu charla.</p>
               </div>
               <div class="col-4"></div>
           </div>
           <div class="row mt-3 d-flex justify-content-center">
               <div class="col-md-4 col-1"></div>
               <div class="col-md-4 col-10">
                   <button type="submit" class="form__button-send mb-5">
                       Enviar
                   </button>
               </div>
               <div class="col-md-4 col-1"></div>
           </div>
       </form>
   </section>
</main>
<jsp:include page="footer.jsp"/>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>