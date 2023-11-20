<cfif StructKeyExists(url, "id")>
    <cfset application.todo.remove(url.id)>
</cfif>
<cflocation url="todo.cfm">