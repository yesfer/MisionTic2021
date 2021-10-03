<%-- 
    Document   : aliados_ctrl
    Created on : 03/10/2021, 10:56:17 a. m.
    Author     : Suayan Baron Melgarejo Fundalink
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="logica.ColeccionAliados" %>
<%@page import="logica.Aliados" %>
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
            String Telefono = request.getParameter("txtTelefono");
            String Email = request.getParameter("txtEmail");
            String Username = request.getParameter("txtUsername");
            String Password = request.getParameter("txtPassword");
            String accion = request.getParameter("btnSubmit");
            
            Aliados j = null;
            
            if (accion.equals("nuevo")){
            

                j = new Aliados(Nombre, Telefono, Email, Username, Password);
               
            }
            if (accion.equals("editar")){
            
                
                j = new Aliados(id, Nombre, Telefono, Email, Username, Password);
            }    
                
                ColeccionAliados coleccion= new ColeccionAliados();
                boolean guardado = coleccion.guardarAliado(j);
                 
                if (guardado == true) {
                      //JOptionPane.showMessageDialog(null, "Información guardada con éxito !");
                     
                      out.println("Nuevo Aliado guardado con éxito");
                     
                }else {
                     //JOptionPane.showMessageDialog(null, "Información  NO guardada  !");
                      out.println("Información de aliado no guardada");
		}
                                                                                     
            //out.println ("Los datos enviados fueron: Nombre: \n"+Nombre+" +" Email: "+Email+" Representante: "+Representante+" Url: "+Url+" Telefono: "+Telefono+" Usuario: "+Username+" Contraseña: "+Password);
        %>
        <div>
            <a href=aliados_lista.jsp> <button class="btn btn-primary" type="submit" id="btnSubmit" name="btnSubmit" value="regresar" >Ir a la Lista</button></a><!-- comment -->
        </div>
        </body>
</html>
