<%-- 
    Document   : loginCliente
    Created on : 8/05/2023, 9:45:40 p. m.
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
        <h1>Formulario De Registro</h1>
        <div class ="containerCliente">
            <form action="ClienteServlet">
                    <table>
                        <tr>
                            <td>Documento</td>
                            <td><input type="text" name="documento" size="30"></td>
                        </tr>
                        <tr>
                            <td>Nombre</td>
                            <td><input type="text" name="nombre" size="30"></td>
                        </tr>
                        <tr>
                            <td>Apellido</td>
                            <td><input type="text" name="apellido" size="30"></td>
                        </tr>
                        <tr>
                            <td>Correo</td>
                            <td><input type="text" name="correo" size="30"></td>
                        </tr>
                        <tr>
                            <td>Telefono</td>
                            <td><input type="text" name="telefono" size="30"></td>
                        </tr>
                        <tr>
                            <td>Contraseña</td>
                            <td><input type="text" name="password" size="30"></td>
                        </tr>
                        <tr>
                            <td><input type="submit" name="accion" value="Registrarse"></td>
                        </tr>
                    </table>
                </form>
        </div>
    </body>
</html>
