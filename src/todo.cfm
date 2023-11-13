<!doctype html>
<html>
<head>
</head>
<body>

<h1>Todo</h1>

<cfinclude template="links.cfm">

<blockquote>
A Todo List
</blockquote>

<cfset q = application.todo.getAllTodos()>

</html>