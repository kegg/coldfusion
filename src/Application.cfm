<cfapplication name="testing">
<cfset request.dsn = "cf">
<cfset request.usr =  "coldfusion">
<cfset request.pws = "root">

<cffunction name="onApplicationStart">
    <cfset application.todo = createObject("component", "cfcs.todo").init()>
</cffunction>

<cffunction name="onRequestStart" output="true">
    <cfif IsDefined("url.reload")>
        <cfset onApplicationStart()>
    </cfif>
    <cfoutput>hi</cfoutput>
</cffunction>