<%-- 
    Document   : fundaciones_ctrl
    Created on : 15/09/2021, 10:56:17 a. m.
    Author     : Ariel Fundalink
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="logica.ColeccionFundaciones" %>
<%@page import="logica.Fundaciones" %>
<!DOCTYPE html>
<html>
    <head>
        
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Control de datos</title>
    </head>
    <body>
        <%
            
            int id = Integer.parseInt(request.getParameter("txtId"));
            String Nombre = request.getParameter("txtNombre");
            String Direccion = request.getParameter("txtDireccion");
            String Email = request.getParameter("txtEmail");
            String Representante = request.getParameter("txtRepresentante");
            String Url = request.getParameter("txtUrl");
            String Telefono = request.getParameter("txtTelefono");
            String Tipo = request.getParameter("txtTipo");
            String Username = request.getParameter("txtUsername");
            String Password = request.getParameter("txtPassword");
            String accion = request.getParameter("btnSubmit");
            
            Fundaciones j = null;
            
            if (accion.equals("nuevo")){
            

                j = new Fundaciones(Nombre, Direccion, Email, Representante, Url, Telefono, Tipo, Username, Password);
               
            }
            if (accion.equals("editar")){
            
                
                j = new Fundaciones(id, Nombre, Direccion, Email, Representante, Url, Telefono, Tipo, Username, Password);
<<<<<<< HEAD
            }   
            
            if (accion.equals("editar1")){
              j = new Fundaciones(id, Nombre, Direccion, Email, Representante, Url, Telefono, Tipo, Username, Password);
            }
=======
            }    
                
>>>>>>> main
                ColeccionFundaciones coleccion= new ColeccionFundaciones();
                boolean guardado = coleccion.guardarFundacion(j);
                 
                if (guardado == true) {
                      //JOptionPane.showMessageDialog(null, "Información guardada con éxito !");
                     
                      out.println("Nueva Fundacion guardada con éxito");
                     
                }else {
                     //JOptionPane.showMessageDialog(null, "Información  NO guardada  !");
                      out.println("Información de fundación no guardada");
		}
<<<<<<< HEAD
                
                 
                
=======
>>>>>>> main
                                                                                     
            //out.println ("Los datos enviados fueron: Nombre: \n"+Nombre+" Direccion: \n"+Direccion+ " Email: "+Email+" Representante: "+Representante+" Url: "+Url+" Telefono: "+Telefono+" Usuario: "+Username+" Contraseña: "+Password);
        %>
        <div>
            <a href=fundaciones_lista.jsp> <button class="btn btn-primary" type="submit" id="btnSubmit" name="btnSubmit" value="regresar" >Ir a la Lista</button></a><!-- comment -->
        </div>
        </body>
</html>
