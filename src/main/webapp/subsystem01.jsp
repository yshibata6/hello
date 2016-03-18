<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Subsystem01</title>
</head>

<body>
<h1>Subsystem01</h1>

<h1>ENV_VAR is <%= System.getenv("ENV_VAR")%></h1>

<h1>HELLO_JAVA_MYSQL_SERVICE_HOST is <%= System.getenv("HELLO_JAVA_MYSQL_SERVICE_HOST")%></h1>

<h1>MYSQL_DATABASE is <%= System.getenv("MYSQL_DATABASE")%></h1>

 <h1><a href="./index.html">Return to Home</a></h1>

</body>
</html>
