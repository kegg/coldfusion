<cfapplication name="testing">
<cfset request.dsn = "cf">
<cfset request.usr = "coldfusion">
<cfset request.pwd = "root">

<cfset application.todo = createObject("component", "cfcs.todo").init(request.dsn, request.usr, request.pwd)>
