<%@ page import="java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
    <title>Server Variables</title>
</head>
<body>
    <table border="1">
        <tr>
            <th>Parameter Name</th>
            <th>Parameter Value(s)</th>
        </tr>
        <% 
            Map<String, String[]> parameters = request.getParameterMap();
            for (Map.Entry<String, String[]> entry : parameters.entrySet()) {
                String paramName = entry.getKey();
                String[] paramValues = entry.getValue();
        %>
        <tr>
            <td><%= paramName %></td>
            <td>
                <% for (String value : paramValues) { %>
                    <%= value %><br>
                <% } %>
            </td>
        </tr>
        <% } %>
    </table>
</body>
</html>
