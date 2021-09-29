/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import java.util.ArrayList;
import persistencia.AliadosDAO;


/**
 *
 * @author E5-473
 */
public class ColeccionAliados {
    
    private ArrayList<Aliados> lista;
    
    public ArrayList<Aliados> getLista() {
        return lista;
    }
    
    public boolean cargarTodosLosAliados() {
        AliadosDAO dao = new AliadosDAO();
        lista = dao.consultarAliados();
        if (lista.size() > 0) {
            return true;
        }
        else {
            return false;
        }
    } 
    
    /**
     * Guarda la información de un Aliado tomado desde el formulario
     * @param j un objeto con los datos de un Aliado en específico
     * @return true si guarda el aliado en la base de datos, o false si no lo guarda
     */
    public boolean guardarAliado(Aliados j){

	AliadosDAO dao= new AliadosDAO();
	
   	
        if(j.getIdAliado()==0){
            int id = dao.guardarNuevoAliado(j);
        
            if (id > 0){

		return true;
            }else {
		return false;
	}
        }else{
            int filas = dao.guardarAliadoExistente(j);
            if (filas==1){
                return true;
            }else {
                return false;
            }
        }

}
   /**
     * Carga la información de ciertos Aliados de la base de datos mediante filtro
     * @return true si carga los Aliados, o false si no se logró cargar
     */
    public boolean cargarAliadosPorFiltro(String filtro) {
        AliadosDAO dao = new AliadosDAO();
        lista = dao.consultarAliadosPorFiltro(filtro);
        if (lista.size() > 0) {
            return true;
        }
        else {
            return false;
        }
    } 
       
    /**
     * Carga la información de un solo Aliado de la base de datos
     * @return true si carga el Aliado, o false si no se logró cargar
     */
    public Aliados cargarUnAliado(int id) {
        AliadosDAO dao = new AliadosDAO();
        Aliados j = dao.consultarAliados(id);
        return j;
    }
    
    
}
