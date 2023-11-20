<cfif StructKeyExists(form, "done")>
    <cfset application.todo.updateTodos(form.done)>
<cfelse>
    <cfset application.todo.updateTodosUncheckAll()>
</cfif>

<cfif StructKeyExists(form, "todo") && trim(form.todo) neq "">
    <cfset application.todo.saveTodo(form.todo)>
</cfif>
<cflocation url="todo.cfm">