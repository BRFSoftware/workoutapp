<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Bottle web project template">
	<meta name="author" content="datamate">
	<link rel="icon" href="/static/favicon.ico">
	<title>Exercises</title>
	<link rel="stylesheet" type="text/css" href="/static/bootstrap.min.css">
	<script type="text/javascript" src="/static/jquery.min.js"></script>
	<script type="text/javascript" src="/static/bootstrap.min.js"></script>
</head>
<body>
	<!-- Static navbar -->
	<nav class="navbar navbar-default navbar-static-top">
		<div class="container">
			<div class="row">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">Project</a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="../navbar/">Home</a></li>
						<li><a href="./">Github</a></li>
						<li><a href="../navbar-fixed-top/">Stackoverflow</a></li>
					</ul>
				</div><!--/.nav-collapse -->
			</div>
		</div>
	</nav>
	<div class="container">
		<div class="row">
			<div class="jumbotron">
			<h1>Exercises List</h1>
<table border="1">
    <tr>
        <td>Exercise Name</td>
        <td>Exercise Type</td>
    </tr>
% for exercise in data:
    <tr>
        <td>
            <input type="text" name="exercisetype" value="{{exercise['exercisetype'}}">
        </td>
        <td>
            <input type="text" name="exercisename" value="{{exercise['exercisename'}}">
        </td>
    </tr>
% end
</table>

<p>
    <a href="/">Main Menu</a>
</p>
</body>
			</div>
		</div>
		<!--./row-->
		<div class="row">
			<hr>
		</div>
	</div>
	<!-- /container -->
</body>
</html>