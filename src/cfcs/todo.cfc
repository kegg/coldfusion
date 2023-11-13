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

    <cffunction name="updateTodos" output="false" access="public" returnType="void">
        <cfargument name="done">
        
        <cfquery datasource="#instance.dsn#" username="#instance.usr#" password="#instance.pwd#">
            update todo set done = 0
            where id not in(#done#);
        </cfquery>

        <cfquery datasource="#instance.dsn#" username="#instance.usr#" password="#instance.pwd#">
            update todo set done = 1
            where id in(#done#);
        </cfquery>
    </cffunction>

    <cffunction name="updateTodosUncheckAll" output="false" access="public" returnType="void">
        <cfquery datasource="#instance.dsn#" username="#instance.usr#" password="#instance.pwd#">
            update todo set done = 0;
        </cfquery>
    </cffunction>

    <cffunction name="remove" output="false" access="public" returnType="void">
        <cfargument name="id">
        <cfquery datasource="#instance.dsn#" username="#instance.usr#" password="#instance.pwd#">
            delete from todo where id = <cfqueryparam cfsqltype="cf_sql_bigint" value="#id#">;
        </cfquery>
    </cffunction>

    <cffunction name="saveTodo" output="false" access="public" returnType="void">
        <cfargument name="todo">
        <cfquery datasource="#instance.dsn#" username="#instance.usr#" password="#instance.pwd#">
            insert into todo (item) values (<cfqueryparam cfsqltype="cf_sql_varchar" value="#todo#">);
        </cfquery>
    </cffunction>

</cfcomponent>