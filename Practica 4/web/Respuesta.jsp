
<%@page import="java.net.InetAddress"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
                Calendar calendario = new GregorianCalendar();
		   String fecha = "";
		   String dia, mes, año;
		   String hora, min, seg;
		   dia = Integer.toString(calendario.get(Calendar.DATE));
		   mes = Integer.toString(calendario.get(Calendar.MONTH));
		   año = Integer.toString(calendario.get(Calendar.YEAR));
		   hora = Integer.toString(calendario.get(Calendar.HOUR_OF_DAY));
		   min = Integer.toString(calendario.get(Calendar.MINUTE));
		   seg = Integer.toString(calendario.get(Calendar.SECOND));
                   fecha = dia + "/" + mes +"/" +año;
                   String tiempo = hora + ":" + min + ":" + seg;
		   String ip = "";
		   ip = InetAddress.getLocalHost().getHostAddress();
        %>
        <h1> ip: <%=ip%></h1>
        <h1> Fecha :  <%=fecha%></h1>
        <h1> Tiempo : <%=tiempo%> </h1>
    </body>
</html>
