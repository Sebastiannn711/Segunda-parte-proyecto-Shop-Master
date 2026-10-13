<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Panel de Administración - ShopMaster</title>
</head>
<body>

    <%
        // RECUPERAMOS EL NOMBRE QUE DEJÓ EL SERVLET EN EL CASILLERO DE LA SESIÓN
        String nombreUsuario = (String) session.getAttribute("usuarioLogueado");

        // SI POR ALGÚN MOTIVO ENTRA DIRECTO SIN LOGUEARSE, LE PONEMOS UN NOMBRE POR DEFECTO
        if (nombreUsuario == null) {
            nombreUsuario = "Invitado Anónimo";
        }
    %>

    <!-- AHORA IMPRIMIMOS LA VARIABLE TOTALMENTE EN DINÁMICO -->
    <h1>¡Acceso Concedido! Bienvenido, <%= nombreUsuario %></h1>

    <p>Has ingresado correctamente al panel de gestión web de ShopMaster utilizando Servlets y JSP.</p>

    <hr>

    <h3>Módulos de Control Disponibles:</h3>
    <ul>
        <li>Gestionar Inventario de Productos (Próximamente)</li>
        <li>Ver Reportes de Ventas</li>
        <li><a href="index.html">Salir y volver a la tienda</a></li>
    </ul>

</body>
</html>
