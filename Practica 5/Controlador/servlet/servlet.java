import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "FormularioServlet", urlPatterns = {"/FormularioServlet"})
public class FormularioServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           Calendar calendario = new GregorianCalendar();
		   String fecha = "";
		   String dia, mes, año;
		   int hora, min, seg;
		   dia = Integer.toString(calendario.get(Calendar.DATE));
		   mes = Integer.toString(calendario.get(Calendar.MONTH));
		   año = Integer.toString(calendario.get(Calendar.YEAR));
		   hora = Integer.toString(calendario.get(Calendar.HOUR_OF_DAY));
		   min = Integer.toString(calendario.get(Calendar.MINUTE));
		   seg = Integer.toString(calendario.get(Calendar.SECOND));
		   String ip = "";
		   ip = InetAddress.getLocalHost().getHostAddress();
		   out.println("<! DOCTYPE html>"); 
		   out.println("<html>");
		   out.println("<head>");
		   out.println("<title> Servlet </title>");
            out.println("</head>");
            out.println("<h1> ip: " + ip + "</h1>");
            out.println("<h1> Fecha : " + Fecha + "</h1>");
            out.println("<h1> Dia : " + dia + " </h1>");
			out.println("<h1> mes : " + mes + " </h1>");
			out.println("<h1> año : " + año + " </h1>");
			out.println("<h1> hora : " + hora + " </h1>");
			out.println("<h1> minuto : " + min + " </h1>");
			out.println("<h1> segundo : " + seg + " </h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            String usuario = request.getParameter("usuario");
            String correo = request.getParameter("correo");
            String contra = request.getParameter("contra");
            String FNam = request.getParameter("FNam");
            out.println("<! DOCTYPE html>"); 
            out.println("<html>");
            out.println("</head>");
            out.println("<h1> usuario: " + usuario + "</h1>");
            out.println("<h1> correo : " + correo + "</h1>");
            out.println("<h1> contra : " + contra + " </h1>");
            out.println("<h1> Fecha de nacimiento : " + FNam + " </h1>");
            out.println("</body>");
            out.println("</html>");
        processRequest(request, response);
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