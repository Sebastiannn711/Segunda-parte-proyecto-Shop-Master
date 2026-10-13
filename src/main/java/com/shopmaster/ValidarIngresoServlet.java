package com.shopmaster;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/ValidarIngreso")
public class ValidarIngresoServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String usuarioRecibido = request.getParameter("campoUsuario");
        String claveRecibida = request.getParameter("campoContrasena");

        if (usuarioRecibido != null && usuarioRecibido.equals("admin") &&
                claveRecibida != null && claveRecibida.equals("1234")) {


            HttpSession misecion = request.getSession();

            // GUARDAMOS EL NOMBRE EN LA SESIÓN PARA QUE EL JSP LO PUEDA LEER
            misecion.setAttribute("usuarioLogueado", usuarioRecibido);

            response.sendRedirect("menuPrincipal.jsp");
        } else {
            response.sendRedirect("index.html");
        }
    }
}


