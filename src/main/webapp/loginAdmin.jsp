<%-- 
    Document   : loginAdmin
    Created on : 8/05/2023, 9:46:42 p. m.
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
        <h1>Login Administrador</h1>
        <div class ="container">
            <div class="containerCliente">
                <form action="AccAdminServlet">
                    <table>
                        <tr>
                            <td>Usuario</td>
                            <td><input type="text" name="user" required size="30"></td>
                        </tr>
                        <tr>
                            <td>Contraseña</td>
                            <td><input type="password" name="password" required size="30"></td>
                        </tr>
                        <tr>
                            <td><input type="submit" name="accion" value="Acceder"></td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
       
    </body>  
</html>
