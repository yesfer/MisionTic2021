<%-- 
    Document   : aliados_form
<<<<<<< HEAD
    Created on : 15/09/2021, 10:25:00 a. m.
    Author     : Ariel Agudelo
=======
    Created on : 03/10/2021, 10:25:00 a. m.
    Author     : Suayan Barón Melgarejo
>>>>>>> main
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
<<<<<<< HEAD
    background-color: #f5c2c7;
=======
    background-color: beige;
>>>>>>> main
	
}
.red {
    color: red;
}
 
<<<<<<< HEAD


</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
        <link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.18.3/dist/bootstrap-table.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
 


    </head>
<body style="Background-color:beige">
    
     <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #B5BB05;">
            <div class="container">
                <a class="navbar-brand" href="index.jsp">
                    <img src="img/logo.png" title="FundaLink- Home" width="180" height="48">
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
    
=======
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
>>>>>>> main

    <hr>  
<h1 style="text-align:center"> 
    <% 
      String etiqueta = "";
      String  btnLabel = "";
      String accion1= request.getParameter("accion");
      
      if (accion1.equals("nuevo")){
         etiqueta = "Nuevo Aliado";
         btnLabel = "Guardar Aliado Nuevo";
<<<<<<< HEAD
        }
      if (accion1.equals("editar1")){
         etiqueta = "Borrar Aliado";
         btnLabel = "Borrar Aliado";
        
      }
      if (accion1.equals("editar")) {
        etiqueta = "Editar Aliado ";
        btnLabel = "Guardar Aliado Editado";
=======
      }
      else if(accion1.equals("editar")){
         etiqueta = "Editar Aliado ";
         btnLabel = "Guardar Aliado Editado";
      }
      else if(accion1.equals("borrar")){
         etiqueta = "Borrar Aliado ";
         btnLabel = "Borrar Aliado";
>>>>>>> main
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
<<<<<<< HEAD
                int Alianzas_idAlianzas = 0;
                int Alianzas_Fundaciones_idFundacion = 0;
                String Username = "";
               
                String Password = "";
               
=======
                String Username = "";
                String Password = "";
                
>>>>>>> main
                               
                if (accion.equals("editar")){
                    id = Integer.parseInt(request.getParameter("id"));
                    
                    ColeccionAliados coleccion = new ColeccionAliados();
                    
                    Aliados j = coleccion.cargarUnAliado(id);
                   
                    Nombre = j.getNombre();
                    Telefono = j.getTelefono();
                    Email = j.getEmail();
<<<<<<< HEAD
                    Alianzas_idAlianzas = j.getAlianzas_idAlianzas();  
                    Alianzas_Fundaciones_idFundacion = j.getAlianzas_Fundaciones_idFundacion(); 
                    Username = j.getUsername();
                    Password = j.getPassword();
                   
                }
                
               
=======
                    Username = j.getUsername();
                    Password = j.getPassword();
                    
                }
>>>>>>> main
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
<<<<<<< HEAD
                <label for="txtId" hidden >Id:<span class="blue" ></span></label>
                <input type="text" hidden class="col-form-control col-1 " id="txtId" name="txtId" value="<%= id %>" readonly>
=======
                <label for="txtId" >Id:<span class="blue" ></span></label>
                <input type="text" class="col-form-control col-1 " id="txtId" name="txtId" value="<%= id %>" readonly>
>>>>>>> main
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
<<<<<<< HEAD
      
        <div class="col sm-4">
            <div class="p-2" >
            <label for="txtTelefono" >Telefono:<span class="red">*</span></label>
            <input type="text" class="form-control"  id="txtTelefono" name="txtTelefono" value="<%= Telefono %>" required>
            </div>
        </div>
        <div class="col sm-4" >
=======
            
      <div class="col sm-4">
            <div class="p-2">
            <label for="txtTelefono">Teléfono:<span class="red">*<span> </label>
            <input type="text" class="form-control"  id="txtTelefono" name="txtTelefono" value="<%= Telefono %>" required>
            </div>
        </div>
            
      <div class="col sm-4" >
>>>>>>> main
            <div class="p-2">
                <label for="txtEmail">Email:<span class="red">*</span></label>
                <input type="email" class="form-control"  id="txtEmail" name="txtEmail" value="<%= Email %>" required>
            </div>
        </div>
    </div>

<<<<<<< HEAD
    <div class="form-row">
=======
            
        <!--<div class="col sm-4">
            <div class="p-2" >
            <label for="txtDireccion" >Dirección:<span class="red">*</span></label>
            <input type="text" class="form-control"  id="txtDireccion" name="txtDireccion" value="<%= Direccion %>" required>
            </div>
        </div>-->
        
        
    <!--<div class="form-row">
>>>>>>> main
        

        <div class="col sm-4">
            <div class="p-2">
<<<<<<< HEAD
            <label for="txtAlianzas" >Alianzas:<span class="red">*<span> </label>
            <input type="text" class="form-control"  id="txtAlianzas" name="txtAlianzas" value="<%= Alianzas_idAlianzas %>"required>
=======
            <label for="txtRepresentante" >Representante:<span class="red">*<span> </label>
            <input type="text" class="form-control"  id="txtRepresentante" name="txtRepresentante" value="<%= Representante %>"required>
>>>>>>> main
            </div>
        </div>
        <div class="col sm-4" >
            <div class="p-2">
<<<<<<< HEAD
                <label for="txtAlianzas_Fundaciones" >Alianzas Fundaciones:</label>
                <input type="text" class="form-control"  id="txtAlianzas_Fundaciones" name="txtAlianzas_Fundaciones"  value="<%= Alianzas_Fundaciones_idFundacion %>"required>
            </div>
        </div>
         <div class="col sm-4">
=======
                <label for="txtUrl" >Url:</label>
                <input type="url" class="form-control"  id="txtUrl" name="txtUrl"  value="<%= Url %>"required>
            </div>
        </div>
         
    </div>-->
   
    <div class="form-row">
    
        <div class="col sm-6">
>>>>>>> main
            <div class="p-2">
            <label for="txtUsername">Usuario:<span class="red">*<span> </label>
            <input type="text" class="form-control"  id="txtUsername" name="txtUsername" value="<%= Username %>" required>
            </div>
        </div>
<<<<<<< HEAD
    </div>
   
    <div class="form-row">
           
        
        <div class="col-4 col-12-medium">
            <div class="p-2">
                <label for="txtPass">Contraseña:<span class="red">*<span> </label>
                <input type="password" class="form-control "  id="txtPassword" name="txtPassword" value="<%= Password %>"required>
            </div>
        </div>
                
    </div>
=======
        
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
>>>>>>> main
    
    
    <div class="form-row">
	<div class="mx-auto mt-5">
        <button class="btn btn-primary" type="submit" id="btnSubmit" name="btnSubmit" value="<%= accion %>"><%= btnLabel %></button>
<<<<<<< HEAD
       
        </div>
    </div>
=======
        <button class="btn btn-success ml-3" type="reset" id="btnReset" name="btnReset">Limpiar Datos</button>
    </div>
 </div>
>>>>>>> main

</form>
</body>
  

</html>
