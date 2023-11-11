<cfset greeting="Hello World!">
<cfoutput>#greeting#</cfoutput>
<cfset date = createDateTime(2023, 11, 11)>
<cfset date1 = dateAdd('yyyy', 1, date)>
<cfoutput>#date1#</cfoutput>