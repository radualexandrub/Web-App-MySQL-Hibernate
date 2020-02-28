package DAO;

import java.util.List;
import pojo.Carti;

public interface CartiDao {
    public void adaugaCarti (Carti carti);
    public List<Carti> afiseazaCarti();
    public void modificaCarti (int idcarte, String numeCarte, String edituraCarte, String isbn);
    public void stergeCarti (Carti carti);
}
