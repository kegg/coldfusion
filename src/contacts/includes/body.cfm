<cfinclude template="variables.cfm">
<cfif ThisTag.ExecutionMode eq "Start">
<!DOCTYPE html>
<html>
<head>
<title>Contacts</title>
<style>
<cfinclude template="../assets/style.css.cfm"/>
</style>
</head>
<body>
<div id="header">
    <table>
        <tr>
            <td><img src="assets/logo.jpeg" style="width:50px;height:50px"/></td>
            <td><h1><cfoutput>#companyName#</cfoutput> Contact Manager</h1></td>
        </tr>
    </table>
</div>
<div id="searchField">
    <form id="search" name="search" method="post" action="search.cfm">
        <input type="search" name="searchFld" id="searchFld" placeholder="Search..."/>
        <input type="submit" name="searchBtn" value="Search" id="searchBtn"/>
    </form>
</div>
<div id="body">
<cfelse>
</div>
<div id="footer">
    <cfoutput>#copyright#</cfoutput>
</div>
</body>
</html>
</cfif>