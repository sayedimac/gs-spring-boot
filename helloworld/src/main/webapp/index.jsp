<html>
<body>
<h2>Hello World!</h2>

<p>Today is: <%= new java.util.Date() %></p>
<p>Message from the server: <%= request.getAttribute("name") %></p>
<p>Server Variables:</p>
<p></p>
</body>
</html>
