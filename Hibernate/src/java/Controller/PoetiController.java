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
import DAOImpl.PoetiDaoImpl;

public class PoetiController extends HttpServlet {

    Poeti Poeti = new Poeti();
    PoetiDaoImpl PoetiDaoImpl = new PoetiDaoImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getParameter("adaugaPoeti") != null) {
            String Nume = request.getParameter("Nume");
            String Prenume = request.getParameter("Prenume");
            String Nationalitate = request.getParameter("Nationalitate");
            Poeti.setNume(Nume);
            Poeti.setPrenume(Prenume);
            Poeti.setNationalitate(Nationalitate);
            PoetiDaoImpl.adaugaPoeti(Poeti);
            RequestDispatcher rd = request.getRequestDispatcher("adauga_Poeti.jsp");
            rd.forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getParameter("afiseazaPoeti") != null) {
            List<Poeti> listaPoeti = new ArrayList();
            listaPoeti = PoetiDaoImpl.afiseazaPoeti();
            request.setAttribute("listaPoeti", listaPoeti);
            RequestDispatcher rd = request.getRequestDispatcher("tabela_Poeti.jsp");
            rd.forward(request, response);
        }

        if (request.getParameter("modificaPoeti") != null) {
            int id1 = Integer.parseInt(request.getParameter("idpoet"));
            String Nume = request.getParameter("Nume");
            String Prenume = request.getParameter("Prenume");
            String Nationalitate = request.getParameter("Nationalitate");
            PoetiDaoImpl.modificaPoeti(id1, Nume, Prenume, Nationalitate);
            RequestDispatcher rd = request.getRequestDispatcher("adauga_Poeti.jsp");
            rd.forward(request, response);

        }

        if (request.getParameter("stergePoeti") != null) {
            int id2 = Integer.parseInt(request.getParameter("idpoet"));
            Poeti.setIdpoet(id2);
            PoetiDaoImpl.stergePoeti(Poeti);
            RequestDispatcher rd = request.getRequestDispatcher("adauga_Poeti.jsp");
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