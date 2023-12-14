<cfapplication name="contacts">
<cfset request.dsn = "cf">
<cfset request.usr = "coldfusion">
<cfset request.pwd = "root">

<cfset application.contacts = createObject("component", "cfcs.contacts").init(request.dsn, request.usr, request.pwd)>