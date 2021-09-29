/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package persistencia;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import logica.Aliados;

/**
 *
 * @authora Suayan Fundalink
 * Contiene todas las operaciones CRUD para los Aliados
 */
public class AliadosDAO {
     
    /**
     * Envía la sentencia SQL para obtener la información de todos los Aliados y estructura
     * la respuesta en una estructura de datos.
     * @return una estructura de datos  con los objetos de tipo Aliados
     */
    
    public ArrayList<Aliados> consultarAliados() {
        ArrayList<Aliados> lista = new ArrayList<>();
        ConexionBD con = new ConexionBD();
        String sql = "SELECT idAliado, Nombre, Telefono, Email, Username, Password " +
                     "FROM aliados ";
        ResultSet rs = con.ejecutarQuery(sql);
        try {
            while (rs.next()) {
                int idAliado = rs.getInt("idAliado");
                String Nombre = rs.getString("Nombre");
                String Telefono = rs.getString("Telefono");
                String Email = rs.getString("Email");
                String Username = rs.getString("Username");
                String Password = rs.getString("Password");
                
                Aliados j = new Aliados(idAliado, Nombre, Telefono, Email, Username, Password);
                lista.add(j);
            }
        } catch (SQLException ex) {
           
            con.desconectar();
            return null;
        }
        con.desconectar();
        return lista;
    }
    
    public Aliados  consultarAliado(int idAConsultar) {
        Aliados j = null;
        ConexionBD con = new ConexionBD();
        String sql = "SELECT idAliado, Nombre, Telefono, Email, Username, Password " +
                     "FROM aliados " +
                     "WHERE idAliado = "+idAConsultar +" ";
        ResultSet rs = con.ejecutarQuery(sql);
        try {
            while (rs.next()) {
                int idAliado = rs.getInt("idAliado");
                String Nombre = rs.getString("Nombre");
                String Telefono = rs.getString("Telefono");
                String Email = rs.getString("Email");
                String Username = rs.getString("Username");
                String Password = rs.getString("Password");
                
                j = new Aliados(idAliado, Nombre, Telefono, Email, Username, Password);
                
            }
        } catch (SQLException ex) {
           
            con.desconectar();
            return j;
        }
        con.desconectar();
        return j;
    }
     
    
    /**
     * Envía la sentencia SQL para obtener la información de ciertos Aliados mediante filtro y estructura
     * la respuesta en una lista de tipo Aliado
     * @param filtro el filtro para buscar datos en la lista de Aliados a consultar
     * @return un arraylist de tipo Aliado con la información cargada
     */
    
    public ArrayList<Aliados> consultarAliadosPorFiltro(String filtro) {
        ArrayList<Aliados> lista = new ArrayList<>();
        ConexionBD con = new ConexionBD();
        String sql = "SELECT * " +
                     "FROM aliados " +
                     "WHERE Nombre LIKE '%" + filtro + "%' " +
                     "OR Email LIKE '%" + filtro + "%' ";
        
                
        ResultSet rs = con.ejecutarQuery(sql);
        try {
            while (rs.next()) {
                int idAliado = rs.getInt("idAliado");
                String Nombre = rs.getString("Nombre");
                String Telefono = rs.getString("Telefono");
                String Email = rs.getString("Email");
                String Username=rs.getString("Username");
                String Password=rs.getString("Password");
                
                Aliados j = new Aliados(idAliado, Nombre, Telefono, Email, Username, Password);
                lista.add(j);
            }
        } catch (SQLException ex) {
           
            con.desconectar();
            return null;
        }
        con.desconectar();
        return lista;
    }
    
    
      /**
     * Envía la sentencia SQL para almacenar los datos de un aliado  
     * @param j de un objeto de tipo Aliado
     * @return un numero indicando el id generado por la base de datos.
     */
      public int guardarNuevoAliado(Aliados j) {
        ConexionBD con = new ConexionBD();                                                                         
        String sql = "INSERT INTO aliados (Nombre, Telefono, Email, Username, Password) "+ 
                     "VALUES ('" + j.getNombre() + "', '" + j.getTelefono() + "', '" + j.getEmail() + "', '" + j.getUsername() + "', '" + j.getPassword() + "') ";
        
        
        //System.out.println(sql);
        ResultSet rs = con.ejecutarInsert(sql);
        int id = 0;
        try {
            if (rs.next()){
                id = rs.getInt(1);
            }
        } catch (SQLException ex) {
            con.desconectar();
            return 0; 
        }
        con.desconectar();
        return id;
    }   



/**
     * Envía la sentencia SQL para actualizar el dato de un Aliado existente
     * @param j un objeto de tipo Aliado
     * @return un número indicando la cantidad de registros afectados
     */
    public int guardarAliadoExistente(Aliados j) {
        
        int filas = 0;
                                        
        String sql = "UPDATE aliados "+
                     "SET Nombre='" + j.getNombre() + "', Telefono = '" + j.getTelefono() + "', Email = '" + j.getEmail() + "', Username= '" + j.getUsername() + "', Password= '" + j.getPassword() + "' " +
                     "WHERE idAliado ='" + j.getIdAliado() + "'" ;
        ConexionBD con = new ConexionBD();
        filas = con.ejecutarUpdate(sql);
        
        return filas;
    }
}