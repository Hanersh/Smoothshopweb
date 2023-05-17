
package control;

import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Cliente;
import model.ClienteDao;


public class ClienteServlet extends HttpServlet {

    private ClienteDao clienteDao = new ClienteDao();
    Cliente cliente = new Cliente();
    int r;
    
    String listar = "listar.jsp";
    

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String accion = request.getParameter("accion");
        
        if (accion.equalsIgnoreCase("Acceder")){
            String usuario = request.getParameter("documento");
            String contraseña = request.getParameter("password");
            cliente.setDocumento(usuario);
            cliente.setPassword(contraseña);
            r = clienteDao.validar(cliente);
            if(r==1){
                request.getRequestDispatcher("viewCliente.jsp").forward(request, response);
            }else {
                request.getRequestDispatcher("loginCliente.jsp").forward(request, response);
            }
        }
       
    }

        @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        String acceso ="";
        String action = request.getParameter("accion");
        if (action.equalsIgnoreCase("listar")){
            acceso = listar;

         }else if (action.equalsIgnoreCase("Registrarse")) {
             
            String documento = request.getParameter("documento");
            String nombre = request.getParameter("nombre");
            String apellido = request.getParameter("apellido");
            String correo = request.getParameter("correo");
            String telefono = request.getParameter("telefono");
            String password = request.getParameter("password");
            
            cliente.setDocumento(documento);
            cliente.setNombre(nombre);
            cliente.setApellido(apellido);
            cliente.setCorreo(correo);
            cliente.setTelefono(telefono);
            cliente.setPassword(password);
            
            clienteDao.Create(cliente);
              
         }else {
            // Acceso por defecto si no se reconoce la acción
            System.out.println("Acción no reconocida: " + action);
            request.setAttribute("mensaje", "Acción no reconocida: " + action);
            acceso = "vista/error.jsp";
        }

        RequestDispatcher vista = request.getRequestDispatcher(acceso);
        vista.forward(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
    }
    

}

