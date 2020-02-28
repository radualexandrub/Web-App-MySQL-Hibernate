package DAOImpl;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import pojo.Carti;
import DAO.CartiDao;

public class CartiDaoImpl {

    public void adaugaCarti(Carti carti) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.save(carti);
        transaction.commit();
        session.close();
    }

    public List<Carti> afiseazaCarti() {
        List<Carti> listaCarti = new ArrayList();
        Session session = HibernateUtil.getSessionFactory().openSession();
        org.hibernate.Query query = session.createQuery("From Carti");
        listaCarti = query.list();
        return listaCarti;
    }

    public void modificaCarti(int idcarti, String numecarte, String edituracarte, String  isbn) {
        Session session = HibernateUtil.getSessionFactory().openSession(); 
        Transaction transaction = session.beginTransaction();
        Carti detaliicarti = (Carti) session.load(Carti.class, idcarti);
        detaliicarti.setNumeCarte(numecarte);
        detaliicarti.setEdituraCarte(edituracarte);
        detaliicarti.setIsbn(isbn);
        session.update(detaliicarti);
        transaction.commit();
        session.close();
    }

    public void stergeCarti(Carti carti) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = session.beginTransaction();
        session.delete(carti);
        transaction.commit();
        session.close();
    }
}
