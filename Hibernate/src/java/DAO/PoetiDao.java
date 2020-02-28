package DAO;

import java.util.List;
import pojo.Poeti;

public interface PoetiDao {
    public void adaugaPoeti (Poeti pacient);
    public List<Poeti> afiseazaPoeti();
    public void modificaPoeti (int idpoet, String nume, String prenume, String nationalitate);
    public void stergePoeti (Poeti poet);
}
