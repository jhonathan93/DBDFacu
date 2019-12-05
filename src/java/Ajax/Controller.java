/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Ajax;

import java.io.IOException;
import DAO.UsuarioDAO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Jhonathan
 */
public class Controller extends HttpServlet {

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
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UsuarioDAO usuDao = new UsuarioDAO();
        switch(request.getServletPath()){
            case "/Register":
                try {
                    response.getWriter().write(Boolean.toString(usuDao.inserir(request.getParameter("nome"), request.getParameter("email"), request.getParameter("senha"))));
                } catch (Exception erro) {
                    throw new RuntimeException("ERRO Controller(Register)" + erro );
                }
            break;
            case "/Deletar":
                try {
                    HttpSession session = request.getSession(false); 
                    session.invalidate();
                    response.getWriter().write(usuDao.apagar(Integer.parseInt(request.getParameter("id"))));
                } catch (IOException | NumberFormatException erro) {
                    throw new RuntimeException("ERRO Controller(Register)" + erro );
                }
            break;
            case "/Alterar":
                try {
                    response.getWriter().write(usuDao.alterar(Integer.parseInt(request.getParameter("id")), request.getParameter("nome"), request.getParameter("email")));
                } catch (IOException | NumberFormatException erro) {
                    throw new RuntimeException("ERRO Controller(Alterar)" + erro );
                }
            break;
        }
    }
}
