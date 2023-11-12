<cfcomponent name="todo">

    <cffunction name="init" output="false" access="public" returnType="any">
        <cfreturn this>
    </cffunction>

    <cffunction name="getAllTodos" output="false" access="public" returnType="query">
        <cfquery name="todoQ" datasource="#request.dsn#" username="#request.usr#" password="#request.pwd#">
            selet * from todo;
        </cfquery>
        <cfreturn todoQ>
    </cffunction>

</cfcomponent>