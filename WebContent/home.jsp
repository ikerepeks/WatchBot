<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%
String connection = "Connected";
String name = "WatchBot";
String battery = "40%";
String signal = "Good";
String lidar = session.getAttribute("lidar") == null ? "disabled" : session.getAttribute("lidar").toString();
String camera = session.getAttribute("camera") == null ? "disabled" : session.getAttribute("camera").toString();
String volume = "33%";
String time = new java.util.Date().toLocaleString();
String speed = "Fast";

%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
  background-color: #b3b3b3;
}
</style>
<meta charset="ISO-8859-1">
<title>WatchBot Homepage</title>
 <link rel="stylesheet" href="styles.css">
</head>
<body>
<div class="sidenav">
<p>Connection: <%out.print(connection);%></p>
<p>WatchBot Name: <%out.print(name);%></p>
<p>Robot Battery: <%out.print(battery);%></p>
<p>Signal: <%out.print(signal);%></p>
<p>LiDAR: <%out.print(lidar);%></p>
<p>Camera: <%out.print(camera);%></p>
<p>Volume Speaker: <%out.print(volume);%></p>
<p>Time Active: <%out.print(time);%></p>
<p>Speed: <%out.print(speed);%></p><br>
<form method="get" action="LidarModule">
<button type="submit">Enable LiDAR</button>
</form>
<br>
<form method="get" action="CameraModule">
<button type="submit">Enable Camera</button>
</form>
<br>
<form>
<button type="button">Scan and Generate Mapping</button>
</form>
<br>
<form>
<button type="button">Livestream</button>
</form>
<br>
<form>
<button type="button">Capture Image</button>
</form>
</div>
<div class="main">
<h1>WatchBot</h1>
</div>
</body>
</html>