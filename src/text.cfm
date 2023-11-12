<cfset fileName = ExpandPath("../LICENSE")>
<cffile variable="fileContent" action="read" file="#fileName#">
<form name="form1" method="post" action="save.cfm">
<div style="width:700px;height:200px;">
<textarea style="width:700px;height:200px;" id="text" name="text"></textarea>
<button>Submit</button>
<input type="button" value="Cancel" onClick="location.href='index.cfm'">
</div>
</form>

<br/>
<br/>
<pre>
<cfoutput>#fileContent#</cfoutput>
</pre>