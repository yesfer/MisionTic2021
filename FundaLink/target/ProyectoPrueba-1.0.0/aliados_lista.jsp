<%-- 
    Document   : aliados_lista
<<<<<<< HEAD
    Created on : 11/09/2021, 9:47:41 a. m.
    Author     : Arie Agudelo FundaLink
=======
    Created on : 03/10/2021, 9:47:41 a. m.
    Author     : Suayan Barón Melgarejo FundaLink
>>>>>>> main
--%>

<%@page import="logica.Aliados"%>
<%@page import="logica.ColeccionAliados"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<<<<<<< HEAD
        <link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.18.3/dist/bootstrap-table.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

        <title>Listado Fundaciones en FundaLink</title>
=======
        <title>Listado Aliados en FundaLink</title>
>>>>>>> main
        
        <style>
body {
    background-color: beige;
	
}
<<<<<<< HEAD


</style>

<script type="text/javascript">
    (function(document) {
      'use strict';

      var LightTableFilter = (function(Arr) {

        var _input;

        function _onInputEvent(e) {
          _input = e.target;
          var tables = document.getElementsByClassName(_input.getAttribute('data-table'));
          Arr.forEach.call(tables, function(table) {
            Arr.forEach.call(table.tBodies, function(tbody) {
              Arr.forEach.call(tbody.rows, _filter);
            });
          });
        }

        function _filter(row) {
          var text = row.textContent.toLowerCase(), val = _input.value.toLowerCase();
          row.style.display = text.indexOf(val) === -1 ? 'none' : 'table-row';
        }

        return {
          init: function() {
            var inputs = document.getElementsByClassName('light-table-filter');
            Arr.forEach.call(inputs, function(input) {
              input.oninput = _onInputEvent;
            });
          }
        };
      })(Array.prototype);

      document.addEventListener('readystatechange', function() {
        if (document.readyState === 'complete') {
          LightTableFilter.init();
        }
      });

    })(document);
    </script>


    </head>
    <body>
        
        <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #B5BB05;">
            <div class="container">
                <a class="navbar-brand" href="index.jsp">
                    <img src="img/logo.png" alt="Fundaciones" width="180" height="48">
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="true" href="fundaciones_lista.jsp"><i class="bi bi-briefcase-fill"></i> Fundaciones</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="aliados_lista.jsp"><i class="bi bi-person-lines-fill"></i> Aliados</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        
        
        
        
        
        <div class="container mt-5">
            
            <h3 class="mb-3">Lista de Aliados</h3>
            <hr>
                      
             <!-- Acá estaba el codigo para el filtro de datos de la tabla...-->
                                
             <div id="toolbar" >      
                <div class="row">
                   <div class="col-5 col-12-medium">
                        <a href="aliados_form.jsp?accion=nuevo" class="col-sm-2"> <button type="submit" class="btn btn-primary"  id="btnNuevo" >Crear Aliado</button></a><!-- comment -->                           
                   </div>
                   <div class="col-7 col-12-medium">
                    <input class="form-control col-md-3 light-table-filter" data-table="order-table" type="text" placeholder="Search..">                                   
                    </div> 
                  
                </div> 
             </div>
             <div> <hr>  </div>
             <!-- tabla de datos cargados desde la base de datos -->
             
                    <table id="tablaaliados" class="table order-table" data-toolbar="#toolbar" data-toggle="table" data-search="true" data-show-columns="true" data-show-export="true" data-pagination="true" data-page-list="[10, 25, 50]" data-locale="es-SP">
                    <thead>
                        <tr>
                            <th scope="col" data-sortable="true">Id</th>
                            <th scope="col" data-sortable="true">Nombre</th>
                            <th scope="col" data-sortable="true">Teléfono</th>
                            <th scope="col" data-sortable="true">Email</th>
                            <th scope="col" data-sortable="true">Alianzas1</th>
                            <th scope="col" data-sortable="true">Alianzas2</th>
                            <th scope="col" data-sortable="true">Usuario</th>
                            <th scope="col" data-sortable="true">Contraseña</th>                              
                            <th scope="col" >Acciones</th>  
                         </tr>                                              
=======
.red {
    color: red;
}
 
#footer {
    position: fixed;
    width: 100%;
    height: 40px;
    line-height: 40px;
    vertical-align: middle;
    background-color: black;
    color: white;
    text-align: center;
    bottom: 0;
    left: 0;
}

</style>
    </head>
    <body>
        <div class="container mt-3">
            <div class="text-center">
            <center>    
                <a href="index.html"> <img src="img/logo.png" alt="Home" width="400" height="120"></a>
            </center>
           
            </div>
            <h3 class="mb-3">Lista de Aliados</h3>
            <hr>
            
            <% 
                String filtro = request.getParameter("txtFiltro")==null ? "" : request.getParameter("txtFiltro"); 
            %>
             <div class="row">        
                <form method ="GET" action="" class="col-sm-10">        
                     
                   
                    <div class="row mb-3"> 
                    <label for="txt1" class="col-form-label col-sm-1">Buscar:</label>
                    <input type="text" class="col-form-control col-sm-9" id = "txtFiltro" name="txtFiltro" value="<%= filtro %>" placeholder = "Por : Nombre, Email, "  id="txt1" name="txt1" value="">                                         
                    <button type="submit" class="btn btn-outline-secondary col-sm-1"><i class="bi bi-search"></i></button>                    
                    </div>
                                             
               </form>                                      
                        <a href="aliados_form.jsp?accion=nuevo" class="col-sm-2"> <button type="submit" class="btn btn-primary"  id="btnNuevo" name="nuevo" >Crear Aliado</button></a><!-- comment -->                           
                    </div>
                                                   
            <form>
                    <table class="table"
                    <thead>
                        <tr>
                            <th scope="col">Id</th>
                            <th scope="col">Nombre</th>
                            <th scope="col">Telefono</th>
                            <th scope="col">Email</th>
                            
                            
                            
                         </tr>
                        
                        
>>>>>>> main
                     </thead>
                    
                    
                    <%
                        ColeccionAliados coleccion = new ColeccionAliados();
<<<<<<< HEAD
                        boolean hayDatos = coleccion.cargarTodosLosAliados();                                                                                                
                        
                    %>
                    <tbody>
                         <% if (hayDatos) { 
=======
                        boolean hayDatos;
                        if (filtro.equals("")){
                        
                            hayDatos = coleccion.cargarTodosLosAliados();
                        }else {
                             hayDatos = coleccion.cargarAliadosPorFiltro(filtro);
                        }
                    %>
                    <tbody>
                        <% if (hayDatos) { 
>>>>>>> main
                          for (Aliados j : coleccion.getLista()) { %>
                         
                        
                        <tr>
<<<<<<< HEAD
                            <td scope="row"><%= j.getIdAlidos()%></td>
                            <td><%= j.getNombre() %></td>
                            <td><%= j.getTelefono()%></td>
                            <td><%= j.getEmail()%></td>
                            <td><%= j.getAlianzas_idAlianzas()%></td>
                            <td><%= j.getAlianzas_Fundaciones_idFundacion()%></td>
                            <td><%= j.getUsername()%></td>
                            <td><%= j.getPassword()%></td>
                                                                                                              
                            <td>
                                <a href="aliados_form.jsp?accion=editar&id=<%= j.getIdAlidos() %>"<button type="button" class="btn btn-warning"><i class="bi bi-pencil-fill"></i></button></a>                               
                            </td> 
                            <td>
                                <a href="aliados_form.jsp?accion=editar1&id=<%= j.getIdAlidos() %>"<button type="button" class="btn btn-danger"><i class="bi bi-trash"></i></button></a>                              
                            </td>
                                                                          
                        </tr>
                        <% } 
                          } else {
                        %>
=======
                            <td scope="row"><%= j.getIdAliado()%></td>
                            <td><%= j.getNombre() %></td>
                            <td><%= j.getTelefono() %></td>
                            <td><%= j.getEmail()%></td>
                            
                            <td>
                                <a href="aliados_form.jsp?accion=editar&id=<%= j.getIdAliado() %>"<button type="button" class="btn btn-warning"><i class="bi bi-pencil-fill"></i></button></a>                               
                            </td> 
                            <td>
                                <a href="aliados_form.jsp?accion=editar&id=<%= j.getIdAliado() %>"<button type="button" class="btn btn-danger"><i class="bi bi-trash"></i></button></a>                              
                            </td>
                                                                          
                        </tr>
                        <% } %> 
                         <% } else { %>
>>>>>>> main
                                                                    
                        <tr>                             
                            <td colspan="5">No hay datos</td>
                        </tr>
                        <% } %>
                    </tbody>
                    
                    </table>
<<<<<<< HEAD
            
        </div>
        <script src="https://cdn.jsdelivr.net/npm/jquery/dist/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
        <script src="https://unpkg.com/bootstrap-table@1.18.3/dist/bootstrap-table.min.js"></script>
        <script src="https://unpkg.com/tableexport.jquery.plugin/tableExport.min.js"></script>
        <script src="https://unpkg.com/bootstrap-table@1.18.3/dist/bootstrap-table.min.js"></script>
        <script src="https://unpkg.com/bootstrap-table@1.18.3/dist/extensions/export/bootstrap-table-export.min.js"></script>
        <script src="https://unpkg.com/bootstrap-table@1.18.3/dist/bootstrap-table-locale-all.min.js"></script>     
=======
            </form>
        </div>
>>>>>>> main
    </body>
</html>