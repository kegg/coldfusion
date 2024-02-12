<cfquery name="q" datasource="#request.worlddsn#" username="#request.usr#" password="#request.pwd#">
    select * from country;
</cfquery>

<table>
    <tr>
        <th>Name</th>
        <th>Code</th>
    </tr>
<cfoutput query="q">
    <tr>
        <td>#name#</td>
        <td>#code#</td>
    </tr>
</cfoutput>
</table>