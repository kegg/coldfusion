<cfcomponent name="todo">

    <cffunction name="init" output="false" access="public" returnType="any">
        <cfargument name="dsn">
        <cfargument name="usr">
        <cfargument name="pwd">

        <cfset instance = {}>
        <cfset instance.dsn = dsn>
        <cfset instance.usr = usr>
        <cfset instance.pwd = pwd>
        <cfreturn this>
    </cffunction>

    <cffunction name="getAllTodos" output="false" access="public" returnType="query">
        <cfquery name="todoQ" datasource="#instance.dsn#" username="#instance.usr#" password="#instance.pwd#">
            select * from todo;
        </cfquery>
        <cfreturn todoQ>
    </cffunction>

</cfcomponent>