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
    
    private int idAlidos;
    private String Nombre;
    private String Telefono;
    private String Email; 
    private int Alianzas_idAlianzas;
    private int Alianzas_Fundaciones_idFundacion;
    private String Username;
    private String Password;
    
    
    public Aliados(){

    }

    public Aliados(int idAlidos, String Nombre, String Telefono, String Email, int Alianzas_idAlianzas, int Alianzas_Fundaciones_idFundacion, String Username, String Password) {
        this.idAlidos = idAlidos;
        this.Nombre = Nombre;
        this.Telefono = Telefono;
        this.Email = Email;
        this.Alianzas_Fundaciones_idFundacion = Alianzas_Fundaciones_idFundacion;
        this.Alianzas_Fundaciones_idFundacion= Alianzas_Fundaciones_idFundacion;
        this.Username = Username;
        this.Password = Password;
    }

    public Aliados(String Nombre, String Telefono, String Email, int Alianzas_idAlianzas, int Alianzas_Fundaciones_idFundacion, String Username, String Password) {
        this.Nombre = Nombre;
        this.Telefono = Telefono;
        this.Email = Email;
        this.Alianzas_Fundaciones_idFundacion = Alianzas_Fundaciones_idFundacion;
        this.Alianzas_Fundaciones_idFundacion= Alianzas_Fundaciones_idFundacion;
        this.Username = Username;
        this.Password = Password;
    }

    public int getIdAlidos() {
        return idAlidos;
    }

    public void setIdAlidos(int idAlidos) {
        this.idAlidos = idAlidos;
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

    public int getAlianzas_idAlianzas() {
        return Alianzas_idAlianzas;
    }

    public void setAlianzas_idAlianzas(int Alianzas_idAlianzas) {
        this.Alianzas_idAlianzas = Alianzas_idAlianzas;
    }

    public int getAlianzas_Fundaciones_idFundacion() {
        return Alianzas_Fundaciones_idFundacion;
    }

    public void setAlianzas_Fundaciones_idFundacion(int Alianzas_Fundaciones_idFundacion) {
        this.Alianzas_Fundaciones_idFundacion = Alianzas_Fundaciones_idFundacion;
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
    
        
