<cfapplication name="testing">
<cfset request.dsn = "cf">
<cfset request.usr = "coldfusion">
<cfset request.pwd = "root">

<cfset application.todo = createObject("component", "cfcs.todo").init(request.dsn, request.usr, request.pwd)>
<cfset application.journal = createObject("component", "cfcs.journal").init(request.dsn, request.usr, request.pwd)>
<cfset application.contacts = createObject("component", "cfcs.contacts").init(request.dsn, request.usr, request.pwd)>