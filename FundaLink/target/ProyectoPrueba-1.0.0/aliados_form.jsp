<%-- 
    Document   : aliados_form
    Created on : 03/10/2021, 10:25:00 a. m.
    Author     : Suayan Barón Melgarejo
--%>
<%@page import="logica.Aliados"%>
<%@page import="logica.ColeccionAliados"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
   <title>Formulario de Aliados</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

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
     <center>    
         <a href="index.html"> <img src="img/logo.png" alt="Home" width="400" height="120"></a>
            </center>

    <hr>  
<h1 style="text-align:center"> 
    <% 
      String etiqueta = "";
      String  btnLabel = "";
      String accion1= request.getParameter("accion");
      
      if (accion1.equals("nuevo")){
         etiqueta = "Nuevo Aliado";
         btnLabel = "Guardar Aliado Nuevo";
      }
      else if(accion1.equals("editar")){
         etiqueta = "Editar Aliado ";
         btnLabel = "Guardar Aliado Editado";
      }
      else if(accion1.equals("borrar")){
         etiqueta = "Borrar Aliado ";
         btnLabel = "Borrar Aliado";
      }
      
    %>
     <%= etiqueta %>   

  
</h1>
    
     <% 
                String accion= request.getParameter("accion");
                int id;
                
                String Nombre = "";
                String Telefono = "";
                String Email = "";
                String Username = "";
                String Password = "";
                
                               
                if (accion.equals("editar")){
                    id = Integer.parseInt(request.getParameter("id"));
                    
                    ColeccionAliados coleccion = new ColeccionAliados();
                    
                    Aliados j = coleccion.cargarUnAliado(id);
                   
                    Nombre = j.getNombre();
                    Telefono = j.getTelefono();
                    Email = j.getEmail();
                    Username = j.getUsername();
                    Password = j.getPassword();
                    
                }
                else {
                id=0;
                }                             
                //out.println("Acción recibida: "+accion + id);
                
            %>
  <!-- INICIO FORMULARIO HTML -->
<form method="post" action="aliados_ctrl.jsp">
    <!-- AQUI desapareci EL ID OJO -->
    <div class="form-row " >   
            <div class="col" ><!-- comment -->
            <div class="p-2">
                <label for="txtId" >Id:<span class="blue" ></span></label>
                <input type="text" class="col-form-control col-1 " id="txtId" name="txtId" value="<%= id %>" readonly>
            </div>
        </div>
    </div>
    <div class="form-row ">
               
            <div class="col sm-4">
            <div class="p-2" >
            <label for="txtNombre" > Nombre:<span class="red">*</span></label>
            <input type="text" class="form-control" id="txtNombre" name="txtNombre" value="<%= Nombre %>" required>
            </div> 
        </div> 
            
      <div class="col sm-4">
            <div class="p-2">
            <label for="txtTelefono">Teléfono:<span class="red">*<span> </label>
            <input type="text" class="form-control"  id="txtTelefono" name="txtTelefono" value="<%= Telefono %>" required>
            </div>
        </div>
            
      <div class="col sm-4" >
            <div class="p-2">
                <label for="txtEmail">Email:<span class="red">*</span></label>
                <input type="email" class="form-control"  id="txtEmail" name="txtEmail" value="<%= Email %>" required>
            </div>
        </div>
    </div>

            
        <!--<div class="col sm-4">
            <div class="p-2" >
            <label for="txtDireccion" >Dirección:<span class="red">*</span></label>
            <input type="text" class="form-control"  id="txtDireccion" name="txtDireccion" value="<%= Direccion %>" required>
            </div>
        </div>-->
        
        
    <!--<div class="form-row">
        

        <div class="col sm-4">
            <div class="p-2">
            <label for="txtRepresentante" >Representante:<span class="red">*<span> </label>
            <input type="text" class="form-control"  id="txtRepresentante" name="txtRepresentante" value="<%= Representante %>"required>
            </div>
        </div>
        <div class="col sm-4" >
            <div class="p-2">
                <label for="txtUrl" >Url:</label>
                <input type="url" class="form-control"  id="txtUrl" name="txtUrl"  value="<%= Url %>"required>
            </div>
        </div>
         
    </div>-->
   
    <div class="form-row">
    
        <div class="col sm-6">
            <div class="p-2">
            <label for="txtUsername">Usuario:<span class="red">*<span> </label>
            <input type="text" class="form-control"  id="txtUsername" name="txtUsername" value="<%= Username %>" required>
            </div>
        </div>
        
        <div class="col sm-6">
            <div class="p-2">
            <label for="txtPass">Contraseña:<span class="red">*<span> </label>
            <input type="password" class="form-control"  id="txtPassword" name="txtPassword" value="<%= Password %>"required>
            </div>
        </div>
        
    
   
        <!--<div class="col-sm-4">
            <div  class="p-2">
            <label for ="selTipo">Tipo de Fundación:<span class="red">*</span></label>
                                              
            <select class="custom-select" name="txtTipo" required>
                
                <option selected disabled value="">Tipo: <%= Tipo %></option>
                             
                <option value="Sociales">Sociales</option>
                <option value="Ambientales">Ambientales</option>
                <option value="Culturales">Culturales</option>
                <option value="Otras">Otras</option>
            </select>
            </div>
        </div>-->
     </div>
    
    
    <div class="form-row">
	<div class="mx-auto mt-5">
        <button class="btn btn-primary" type="submit" id="btnSubmit" name="btnSubmit" value="<%= accion %>"><%= btnLabel %></button>
        <button class="btn btn-success ml-3" type="reset" id="btnReset" name="btnReset">Limpiar Datos</button>
    </div>
 </div>

</form>
</body>
  

</html>
