<cfcomponent name="contacts">

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
</cfcomponent>