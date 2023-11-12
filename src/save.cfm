<cfset dir = "./io/output">
<cfif not directoryExists(expandPath(dir))>
    <cfset directoryCreate(expandPath(dir))>
</cfif>
<cfset date = now()>
<cfset fileWrite(expandPath(dir) & "/" & dateFormat(date, "yyyy-MM-dd-HH-mm-ss"), "#form.text#")>