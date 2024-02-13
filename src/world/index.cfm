<cfquery name="q" datasource="#request.worlddsn#" username="#request.usr#" password="#request.pwd#">
    select * from country;
</cfquery>

<cftable query="q" htmltable="true">
    <cfcol header="Name" text="#name#">
    <cfcol header="Abbr" text="<a href='#code#'>#code#</a>">
</cftable>

<table>
    <tr>
        <th>Name</th>
        <th>Code</th>
    </tr>
<cfoutput query="q">
    <tr>
        <td>#name#</td>
        <td><a href="">#code#</a></td>
    </tr>
</cfoutput>
</table>