<!doctype html>
<html>
<head>
<style>
.records table tbody tr:nth-child(odd) {
    background-color:#DDD;
}

.records table tbody tr:hover {
    background-color:#FFFFE0;
}

.records {
    cursor:pointer;
}
</style>

<script>
function checkAll() {
    var done = document.getElementById("checkAllDone");
    var checkboxes = document.querySelectorAll("input[name='done']");

    if (done.checked !== undefined && done.checked === true) {
        // Loop through each checkbox
        for (var i = 0; i < checkboxes.length; i++) {
        // Check the checkbox
            checkboxes[i].checked = true;
        }        
    } else {
        // Loop through each checkbox
        for (var i = 0; i < checkboxes.length; i++) {
        // Check the checkbox
            checkboxes[i].checked = false;
        }        
    }
}
</script>
</head>
<body>

<h1>Todo</h1>

<cfinclude template="links.cfm">

<blockquote>
A Todo List
</blockquote>

<cfset q = application.todo.getAllTodos()>

<form name="form1" method="post" action="todo.save.cfm">
<div class="records">
<cftable query="q" border="1" colheaders="true" headerlines="1" htmltable="true">
    <cfcol header="ID" align="right" text="#id#">
    <cfcol header="Item" text="#item#">
    <cfcol header="#createCheckBoxHeader()# Done" align="center" text="#createCheckBox(id, done)#">
    <cfcol header="Date/Time" text="#ts#">
    <cfcol header="" text="#createDeleteLink(id)#">
</cftable>
<input type="text" name="todo" id="todo">
<button>Save</button>
</div>
</form>

<cffunction name="createCheckBoxHeader" returnType="string">
    <cfreturn "<input type=""checkbox"" name=""checkAllDone"" id=""checkAllDone"" title=""Check all boxes"" onClick=""checkAll();"">">
</cffunction>

<cffunction name="createCheckBox" returnType="string">
    <cfargument name="id">
    <cfargument name="done">

    <cfset checked = "">
    <cfif done eq 1>
        <cfset checked = "checked">
    </cfif>

    <cfset returnVar = "<input type=""checkbox"" name=""done"" value=""#id#""" & checked & "/>">
    <cfreturn returnVar>
</cffunction>

<cffunction name="createDeleteLink" returnType="string">
    <cfargument name="id">
    <cfset message = "Are you sure you want to delete this record?">
    <cfreturn "<a href=""todo.del.cfm?id=" & id & """ onClick=""return confirm('" & message & "');"">del</a>">
</cffunction>

</body>
</html>