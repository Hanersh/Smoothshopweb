

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
            div {
                text-align: center;
            }  
        </style>
    </head>
    <body>
        <h1>Vista Administrador</h1>
        <div> 
                <a href="${pageContext.request.contextPath}/ClienteServlet?accion=listar">Listar Personas</a>
                <br/><br/>
                <a href="index.jsp">Regresar Al Inicio</a>
        </div>
    </body>
</html>
