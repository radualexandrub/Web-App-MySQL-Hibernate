package pojo;
// Generated Jan 19, 2019 8:56:43 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

public class Carti  implements java.io.Serializable {


     private Integer idcarte;
     private String numeCarte;
     private String edituraCarte;
     private String isbn;
     private Set<Volumpoezii> volumpoeziis = new HashSet<Volumpoezii>(0);

    public Carti() {
    }

    public Carti(String numeCarte, String edituraCarte, String isbn, Set<Volumpoezii> volumpoeziis) {
       this.numeCarte = numeCarte;
       this.edituraCarte = edituraCarte;
       this.isbn = isbn;
       this.volumpoeziis = volumpoeziis;
    }
   
    public Integer getIdcarte() {
        return this.idcarte;
    }
    
    public void setIdcarte(Integer idcarte) {
        this.idcarte = idcarte;
    }
    public String getNumeCarte() {
        return this.numeCarte;
    }
    
    public void setNumeCarte(String numeCarte) {
        this.numeCarte = numeCarte;
    }
    public String getEdituraCarte() {
        return this.edituraCarte;
    }
    
    public void setEdituraCarte(String edituraCarte) {
        this.edituraCarte = edituraCarte;
    }
    public String getIsbn() {
        return this.isbn;
    }
    
    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }
    public Set<Volumpoezii> getVolumpoeziis() {
        return this.volumpoeziis;
    }
    
    public void setVolumpoeziis(Set<Volumpoezii> volumpoeziis) {
        this.volumpoeziis = volumpoeziis;
    }




}


