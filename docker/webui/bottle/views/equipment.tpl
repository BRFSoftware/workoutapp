<html>
<head>
<title>Workout APP</title>
</head>
<body>

<h1>Equipment List</h1>
<table border="1">
    <tr>
        <td>Equipment Name</td>
        <td>Equipment Type</td>
    </tr>
% for equipment in data:
    <tr>
        <td>
            <input type="text" name="equipmenttype" value="{{equipment['equipmenttype']}}">
        </td>
        <td>
            <input type="text" name="equipmentname" value="{{equipment['equipmentname']}}">
        </td>
    </tr>
% end
</table>

<p>
    <a href="/">Main Menu</a>
</p>
</body>
</html>