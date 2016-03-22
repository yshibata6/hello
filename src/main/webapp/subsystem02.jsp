<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Subsystem02</title>
</head>

<body>
<h1>Subsystem02</h1>

<h1>ENV_VAR is <%= System.getenv("ENV_VAR")%></h1>

<h1>MYSQL_USER is <%= System.getenv("MYSQL_USER")%></h1>

<h1>MYSQL_PASSWORD is <%= System.getenv("MYSQL_PASSWORD")%></h1>

 <h1><a href="./index.html">Return to Home</a></h1>

</body>
</html>
