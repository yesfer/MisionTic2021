<%-- 
    Document   : aliados_lista
    Created on : 03/10/2021, 9:47:41 a. m.
    Author     : Suayan Barón Melgarejo FundaLink
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
        <title>Listado Aliados en FundaLink</title>
        
        <style>
body {
    background-color: beige;
	
}
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
                        
                        
                     </thead>
                    
                    
                    <%
                        ColeccionAliados coleccion = new ColeccionAliados();
                        boolean hayDatos;
                        if (filtro.equals("")){
                        
                            hayDatos = coleccion.cargarTodosLosAliados();
                        }else {
                             hayDatos = coleccion.cargarAliadosPorFiltro(filtro);
                        }
                    %>
                    <tbody>
                        <% if (hayDatos) { 
                          for (Aliados j : coleccion.getLista()) { %>
                         
                        
                        <tr>
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
                                                                    
                        <tr>                             
                            <td colspan="5">No hay datos</td>
                        </tr>
                        <% } %>
                    </tbody>
                    
                    </table>
            </form>
        </div>
    </body>
</html>