<cfsavecontent variable="content">
<html>
<head>
<title>Hello World!</title>
</head>
<body>
<p>Hello World!</p>
</body>
</html>
</cfsavecontent>
<cfheader name="content-type" value="application/word">
<cfheader name="Content-Disposition" value="attachment;filename=hello.doc">
<cfoutput>#content#</cfoutput>