package DAOImpl;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import pojo.Poeti;
import DAO.PoetiDao;

public class PoetiDaoImpl {

    public void adaugaPoeti(Poeti Poet) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.save(Poet);
        transaction.commit();
        session.close();
    }

    public List<Poeti> afiseazaPoeti() {
        List<Poeti> listaPoeti = new ArrayList();
        Session session = HibernateUtil.getSessionFactory().openSession();
        org.hibernate.Query query = session.createQuery("From Poeti");
        listaPoeti = query.list();
        return listaPoeti;
    }

    public void modificaPoeti(int idpoet, String nume, String prenume, String nationalitate) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        Poeti detaliipoeti = (Poeti) session.load(Poeti.class, idpoet);
        detaliipoeti.setNume(nume);
        detaliipoeti.setPrenume(prenume);
        detaliipoeti.setNationalitate(nationalitate);
        session.update(detaliipoeti);
        transaction.commit();
        session.close();
    }

    public void stergePoeti(Poeti Poet) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.delete(Poet);
        transaction.commit();
        session.close();
    }
}
