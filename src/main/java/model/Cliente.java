package model;


public class Cliente {
    private int id;
    private String documento;
    private String nombre;
    private String apellido;
    private String correo;
    private String telefono;
    private String password;

    public Cliente() {
    }
    
    
    public Cliente (String documento, String nombre, String apellido, String correo, String telefono, String password){
        this.id = id;
        this.documento = documento;
        this.nombre = nombre;
        this.apellido = apellido;
        this.correo = correo;
        this.telefono = telefono;
        this.password = password;
    }
    
    public int getId(){
        return id;
    }
    
    public void setId(int id){
        this.id = id;
    }
       
    public String getDocumentos(){
        return documento;
    }
    
    public void setDocumento(String documento){
        this.documento = documento;
    }
    
    public String getNombre(){
        return nombre;
    }        
    
    public void setNombre(String nombre){
        this.nombre = nombre;
    }
    
    public String getApellido(){
        return apellido;
    }
    
    public void setApellido(String apellido){
        this.apellido = apellido;
    }
    
    public String getCorreo(){
        return correo;
    }
    
    public void setCorreo(String correo){
        this.correo = correo;
    }
    
    public String getTelefono(){
        return telefono;
    }
    
    public void setTelefono(String telefono){
        this.telefono = telefono;
    }
    
    public String getPassword(){
        return password;
    }
    
    public void setPassword(String password){
        this.password = password;
    }


    
}

