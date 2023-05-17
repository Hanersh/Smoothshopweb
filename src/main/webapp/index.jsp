
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Start Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            h1 {
                text-align: center;
                font-size: 48px;
                font-weight: bold;
            }
            
            .button1 {
                background-color: blue;
                color: white;
                padding: 12px 24px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                margin-right: 10px;
            }
            
            .button2 {
                background-color: red;
                color: white;
                padding: 12px 24px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
            }
        </style>
    </head>
    <body>
        <h1>Smoth Shop</h1>
        <div style="text-align:center;">
            <a href="loginCliente.jsp" class="button1">Acceso Clientes</a>
            <a href="loginAdmin.jsp" class="button2">Acceso Administrador</a>
        </div>
    </body>
</html>
