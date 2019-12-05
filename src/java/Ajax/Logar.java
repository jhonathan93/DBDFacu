/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Ajax;

import java.io.IOException;
import DAO.UsuarioDAO;
import MODEL.Usuario;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Logar extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
        switch(request.getServletPath()){
            case "/Logar":
                UsuarioDAO usuDao = new UsuarioDAO();
                Usuario usu = usuDao.login(request.getParameter("email"), request.getParameter("password"));
                if( usu != null ){
                    HttpSession session = request.getSession();  
                    session.setAttribute("id", usu.getId_usuario());
                    request.getRequestDispatcher("dashboard.jsp").forward(request, response);
                }else {
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                }
            break;
            case "/Deslogar":
                HttpSession session = request.getSession(false); 
                session.invalidate();
                try {
                    response.getWriter().write("true");
                } catch (Exception e) {
                    throw new RuntimeException("ERRO Logar(Deslogar)" + e);
                }
            break;
        }     
    }
}
