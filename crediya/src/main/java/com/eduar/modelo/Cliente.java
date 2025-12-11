package modelo;


public  class Cliente extends persona{

    private String telefono;


  public Cliente(int id, String nombre, String correo, String telefono){
    super(id, nombre, documento, correo);
this.telefono = telefono;
  }

  //getters y setters

  public String getTelefono(){
    return telefono;
  }



  
}
