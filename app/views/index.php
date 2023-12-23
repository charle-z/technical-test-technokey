<!doctype html>
<html lang="en">
    <head>
        <title>Vuelos</title>
        <!-- Required meta tags -->
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
        />

        <!-- Bootstrap CSS v5.2.1 -->
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
            crossorigin="anonymous"
        />
    </head>

    <body>
        <div class="container">
            <div class="row justify-content-center p-5">
              <div class="col-sm-6">
                <h5>Vuelo formulario</h5>
                <hr />
                <form action="javascript:void(0);" onsubmit="app.guardar()">
                  <input type="hidden" id="id" />
                  
                  <label for="fechaVuelo">Fecha de Vuelo</label>
                  <input type="date" class="form-control" id="fecha_vuelo" required />
              
                  <label for="horaSalida">Hora de Salida</label>
                  <input type="time" class="form-control" id="hora_salida" required />
              
                  <label for="horaLlegada">Hora de Llegada</label>
                  <input type="time" class="form-control" id="hora_llegada" required />
              
                  <label for="duracionTrayecto">Duración de Trayecto</label>
                  <input type="number" class="form-control" id="duracion_trayecto" placeholder="En minutos" required />
              
                  <label for="tipoTrayecto">Tipo de Trayecto</label>
                  <select class="form-control" id="tipoTrayecto" required>
                      <option value="">Seleccione</option>
                      <option value="Direct Flight">Vuelo Directo</option>
                      <option value="Layover Flight">Vuelo con Escala</option>
                      <option value="Connecting Flight">Vuelo de Conexión</option>
                      <option value="Round Trip">Vuelo de Ida y Vuelta</option>
                      <option value="Vuelo Multidestino">Multicity Flight</option>
                      <option value="Vuelo Charter">Vuelo Charter</option>
                      <option value="Connecting Flight">Vuelo Nacional</option>
                      <option value="Domestic Flight">Vuelo de Conexión</option>
                  </select>
              
                  <label for="costoVuelo">Costo de Vuelo</label>
                  <input type="number" class="form-control" id="costo_vuelo" placeholder="En dólares" required />
              
                  <label for="puertaVuelo">Puerta de Vuelo</label>
                  <input type="text" class="form-control" id="puerta_vuelo" required />
              
                  <label for="grupoVuelo">Grupo de Vuelo</label>
                  <input type="number" class="form-control" id="grupo_vuelo" required />
                  
                  <br />
                  <div>
                      <button type="submit" class="btn btn-primary">Guardar</button>
                      <button type="reset" class="btn btn-danger">Cancelar</button>
                  </div>
              </form>
              
                <br />
                <h5>Listado</h5>
                <hr />
                
              </div>
              <table class="table">
                  <thead>
                    <tr>
                      <th>Id</th>
                      <th>Fecha Creacion</th>
                      <th>Estado</th>
                      <th>Usuario</th>
                      <th>Fecha de vuelo</th>
                      <th>Hora de salida</th>
                      <th>Hora de llegada</th>
                      <th>Duracion del trayecto</th>
                      <th>Tipo de trayecto</th>
                      <th>Costo</th>
                      <th>Puerta de vuelo</th>
                      <th>Grupo de Vuelo</th>
                      <th>Opciones</th>
                    </tr>
                  </thead>
                  <tbody id="tbody"></tbody>
                </table>
            </div>
          </div>
        <script src="../assets/code.js"></script>
        <!-- Bootstrap JavaScript Libraries -->
        <script
            src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
            integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
            crossorigin="anonymous"
        ></script>

        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
            integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
            crossorigin="anonymous"
        ></script>
    </body>
</html>
