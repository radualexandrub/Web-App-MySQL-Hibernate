/**
 *
 * @author raddu
 */
package Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import pojo.Poeti;
import pojo.Carti;
import pojo.Volumpoezii;
import DAOImpl.VolumpoeziiDaoImpl;
import DAOImpl.HibernateUtil;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.hibernate.Session;

public class VolumpoeziiController extends HttpServlet {

    Volumpoezii Volumpoezii = new Volumpoezii();
    VolumpoeziiDaoImpl VolumpoeziiDaoImpl = new VolumpoeziiDaoImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getParameter("adaugaVolumpoezii") != null) {
            // preluarea parametrilor de interes
            Integer idPoeti = java.lang.Integer.parseInt(request.getParameter("idpoet"));
            Integer idCarti = java.lang.Integer.parseInt(request.getParameter("idcarte"));
            Session session = HibernateUtil.getSessionFactory().openSession();
            Poeti Poeti = (Poeti) session.get(Poeti.class, idPoeti);
            Carti Carti = (Carti) session.get(Carti.class, idCarti);
            
            String NumeVolum= request.getParameter("NumeVolum");
            String DataLansare = request.getParameter("DataLansare");
            String Tema = request.getParameter("Tema");

            Volumpoezii.setPoeti(Poeti);
            Volumpoezii.setCarti(Carti);
            Volumpoezii.setDataLansare(DataLansare);
            Volumpoezii.setNumeVolum(NumeVolum);
            Volumpoezii.setTema(Tema);

            VolumpoeziiDaoImpl.adaugaVolumpoezii(Volumpoezii);
            RequestDispatcher rd = request.getRequestDispatcher("adauga_Volumpoezii.jsp");
            rd.forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getParameter("afiseazaVolumpoezii") != null) {
            List<Volumpoezii> listaVolumpoezii = new ArrayList();
            listaVolumpoezii = VolumpoeziiDaoImpl.afiseazaVolumpoezii();
            request.setAttribute("listaVolumpoezii", listaVolumpoezii);
            RequestDispatcher rd = request.getRequestDispatcher("tabela_Volumpoezii.jsp");
            rd.forward(request, response);
        }

        if (request.getParameter("modificaVolumpoezii") != null) {
            Integer id1 = Integer.parseInt(request.getParameter("idvolumpoezii"));
            // preluarea parametrilor de interes
            Integer idPoeti = java.lang.Integer.parseInt(request.getParameter("idpoet"));
            Integer idCarti = java.lang.Integer.parseInt(request.getParameter("idcarte"));
            Session session = HibernateUtil.getSessionFactory().openSession();
            Poeti Poeti = (Poeti) session.get(Poeti.class, idPoeti);
            Carti Carti = (Carti) session.get(Carti.class, idCarti);

           
            String NumeVolum= request.getParameter("NumeVolum");
            String DataLansare = request.getParameter("DataLansare");
            String Tema = request.getParameter("Tema");

            VolumpoeziiDaoImpl.modificaVolumpoezii(id1, Poeti, Carti, NumeVolum, DataLansare, Tema);
            RequestDispatcher rd = request.getRequestDispatcher("adauga_Volumpoezii.jsp");
            rd.forward(request, response);

        }

        if (request.getParameter("stergeVolumpoezii") != null) {
            Integer id2 = Integer.parseInt(request.getParameter("idvolumpoezii"));
            Volumpoezii.setIdvolumpoezii(id2);
            VolumpoeziiDaoImpl.stergeVolumpoezii(Volumpoezii);
            RequestDispatcher rd = request.getRequestDispatcher("adauga_Volumpoezii.jsp");
            rd.forward(request, response);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
