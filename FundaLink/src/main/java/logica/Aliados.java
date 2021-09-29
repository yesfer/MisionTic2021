/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

/**
 *
 * @authora Suayan
 */
public class Aliados {
    
    private int idAliado;
    private String Nombre;
    private String Telefono;
    private String Email;  
    private String Username;
    private String Password;
    
    
    public Aliados(){

    }

    public Aliados(int idAliado, String Nombre, String Telefono, String Email, String Username, String Password) {
        this.idAliado = idAliado;
        this.Nombre = Nombre;
        this.Telefono = Telefono;
        this.Email = Email;
        this.Username = Username;
        this.Password = Password;
    }

    public Aliados(String Nombre, String Telefono, String Email, String Username, String Password) {
        this.Nombre = Nombre;
        this.Telefono = Telefono;
        this.Email = Email;
        this.Username = Username;
        this.Password = Password;
    }

    public int getIdAliado() {
        return idAliado;
    }

    public void setIdAliado(int idAliado) {
        this.idAliado = idAliado;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

     public String getTelefono() {
        return Telefono;
    }

    public void setTelefono(String Telefono) {
        this.Telefono = Telefono;
    }
    
    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }
  
    public String getUsername() {
        return Username;
    }

    public void setUsername(String Username) {
        this.Username = Username;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }
      
}
    
        
