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
import pojo.Carti;
import DAOImpl.CartiDaoImpl;

public class CartiController extends HttpServlet {

    Carti Carti = new Carti();
    CartiDaoImpl CartiDaoImpl = new CartiDaoImpl();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getParameter("adaugaCarti") != null) {
            String NumeCarte = request.getParameter("NumeCarte");
            String EdituraCarte = request.getParameter("EdituraCarte");
            String ISBN = request.getParameter("ISBN");
            Carti.setNumeCarte(NumeCarte);
            Carti.setEdituraCarte(EdituraCarte);
            Carti.setIsbn(ISBN);
            CartiDaoImpl.adaugaCarti(Carti);
            RequestDispatcher rd = request.getRequestDispatcher("adauga_Carti.jsp");
            rd.forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getParameter("afiseazaCarti") != null) {
            List<Carti> listaCarti = new ArrayList();
            listaCarti = CartiDaoImpl.afiseazaCarti();
            request.setAttribute("listaCarti", listaCarti);
            RequestDispatcher rd = request.getRequestDispatcher("tabela_Carti.jsp");
            rd.forward(request, response);
        }

        if (request.getParameter("modificaCarti") != null) {
            int id1 = Integer.parseInt(request.getParameter("idcarte"));
            String NumeCarte = request.getParameter("NumeCarte");
            String EdituraCarte = request.getParameter("EdituraCarte");
            String ISBN = request.getParameter("ISBN");
            CartiDaoImpl.modificaCarti(id1, NumeCarte, EdituraCarte, ISBN);
            RequestDispatcher rd = request.getRequestDispatcher("adauga_Carti.jsp");
            rd.forward(request, response);

        }

        if (request.getParameter("stergeCarti") != null) {
            int id2 = Integer.parseInt(request.getParameter("idcarte"));
            Carti.setIdcarte(id2);
            CartiDaoImpl.stergeCarti(Carti);
            RequestDispatcher rd = request.getRequestDispatcher("adauga_Carti.jsp");
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
