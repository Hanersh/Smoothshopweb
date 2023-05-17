<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Iterator, model.ClienteDao, model.Cliente" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <h1>Clientes</h1>
            <table border="2">
                <thead>
                    <tr>
                        <th>id</th>
                        <th>Documento</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Correo</th>
                        <th>Telefono</th>
                        <th>Contraseña</th>
                    </tr>
                </thead>
                <tbody>
                    <% 
                        ClienteDao clienteDao = new ClienteDao();
                        List<Cliente> list_Cliente = clienteDao.listClienteQuery("");
                        Iterator<Cliente> iter = list_Cliente.iterator();
                        Cliente cliente = null;
                        
                        while (iter.hasNext()){
                            cliente = iter.next();
                    %>
                    <tr>
                        <td><%= cliente.getId()%></td>
                        <td><%= cliente.getDocumentos()%></td>
                        <td><%= cliente.getNombre()%></td>
                        <td><%= cliente.getApellido()%></td>
                        <td><%= cliente.getCorreo()%></td>
                        <td><%= cliente.getTelefono()%></td>
                        <td><%= cliente.getPassword()%></td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
        </div>
    </body>
</html>
