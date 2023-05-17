<%-- 
    Document   : loginCliente
    Created on : 8/05/2023, 9:55:26 p. m.
    Author     : Haner Box
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            h1 {
                text-align: center;
                font-size: 48px;
                font-weight: bold;
            }
            
            form {
               border: 1px solid black;
            }
            
            .containerCliente {
                display: flex;
                justify-content: center;
            }
            
            .containerCliente table {
                padding: 3px;
            }
        </style>
    </head>
    <body>
        <h1>Formulario De Acceso</h1>
        <div class="containerCliente">
            <form action="ClienteServlet">
                    <table>
                        <tr>
                            <td>Usuario</td>
                            <td><input type="text" name="documento" size="30"></td>
                        </tr>
                        <tr>
                            <td>Contraseña</td>
                            <td><input type="text" name="password" size="30"></td>
                        </tr>
                        <tr>
                            <td><input type="submit" name="accion" value="Acceder"></td>
                            <td><a href="registerCliente.jsp">Registrarse</a></td>
                        </tr>
                    </table>
                </form>
        </div>        
    </body>
</html>
