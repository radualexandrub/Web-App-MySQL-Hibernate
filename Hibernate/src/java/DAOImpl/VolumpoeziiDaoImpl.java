package DAOImpl;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import pojo.Volumpoezii;
import DAO.VolumpoeziiDao;
import java.util.Date;
import pojo.Carti;
import pojo.Poeti;

public class VolumpoeziiDaoImpl {

    public void adaugaVolumpoezii(Volumpoezii Volumpoezii) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.save(Volumpoezii);
        transaction.commit();
        session.close();
    }

    public List<Volumpoezii> afiseazaVolumpoezii() {
        List<Volumpoezii> listaVolumpoezii = new ArrayList();
        Session session = HibernateUtil.getSessionFactory().openSession();
        org.hibernate.Query query = session.createQuery("From Volumpoezii");
        listaVolumpoezii = query.list();
        return listaVolumpoezii;
    }
    public void modificaVolumpoezii(Integer idVolumpoezii, Poeti poet, Carti carte, String numevolum, String datalansare, String tema) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        Volumpoezii detaliivolumpoeziii;
        detaliivolumpoeziii = (Volumpoezii) session.load(Volumpoezii.class, idVolumpoezii);
        detaliivolumpoeziii.setPoeti(poet);
        detaliivolumpoeziii.setCarti(carte);
        detaliivolumpoeziii.setNumeVolum(numevolum);
        detaliivolumpoeziii.setDataLansare(datalansare);
        detaliivolumpoeziii.setTema(tema);
        session.update(detaliivolumpoeziii);
        transaction.commit();
        session.close();
    }

    public void stergeVolumpoezii(Volumpoezii Volumpoezii) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.delete(Volumpoezii);
        transaction.commit();
        session.close();
    }
}
