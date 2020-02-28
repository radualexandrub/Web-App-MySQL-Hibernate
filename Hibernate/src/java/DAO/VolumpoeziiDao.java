package DAO;

import java.util.List;
import pojo.Volumpoezii;
import java.util.Date;
import pojo.Carti;
import pojo.Poeti;

public interface VolumpoeziiDao {
    public void adaugaVolumpoezii (Volumpoezii volumpoezii);
    public List<Volumpoezii> afiseazaVolumpoezii();
    public void modificaVolumpoezii (Integer idvolumpoezii, Poeti Poet, Carti Carte, String numeVolum, String data, String tema);
    public void stergeVolumpoezii (Volumpoezii volumpoezii);
}
