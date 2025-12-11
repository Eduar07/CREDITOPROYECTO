package modelo;


public abstract class Persona {
    
    protected int id;
    protected String nombre;
    protected String documento;
    protected String correo;

    public Persona(int id, String nombre, String documento, String correo){
        this.id = id;
        this.nombre = nombre;
        this.documento = documento;
        this.correo = correo;
    }


// ======== Getter y setter

public int getId(){
    return id;
}


public void setId(int id){
    this.id = id;
}

public String getNombre(){
    return nombre;
}


public void setNombre(String nombre){
   if(nombre != null && !nombre.trim().isEmpty()){
    this.nombre = nombre.trim();
   }else{
      throw new IllegalArgumentException("El nombre no puede estar vacío");
   }
}

public String getdocument(){
    return documento;
}

public void setDocumento(String documento){
   if(documento != null && !documento.trim().isEmpty()){
    this.documento = documento.trim();
   }else{
          throw new IllegalArgumentException("El documento no puede esta vacio");

   }
}

public String getCorreo(){
    return correo;
}

public void  setCorreo(){
    if(correo != null && correo.contains("@")){
        this.correo = trim();
    }else{
         throw new IllegalArgumentException("El correo debe contener @");

    }

}

    public abstract String getTipo();

@Override
    public String toString() {
        return String.format("ID: %d | Nombre: %s | Documento: %s | Correo: %s", 
                             id, nombre, documento, correo);

}
 @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null || getClass() != obj.getClass()) return false;
        Persona persona = (Persona) obj;
        return documento.equals(persona.documento);
    }
    
    // ========== MÉTODO hashCode() ==========
    @Override
    public int hashCode() {
        return documento.hashCode();
    }

}