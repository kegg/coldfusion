<!doctype html>
<html>
<head>
<script>
function countChars(textarea, chars) {
    var i = document.getElementById(textarea).value.length;
    document.getElementById(chars).innerText = i;
}

function countLines(textarea, lines) {
    var i = chunkString(document.getElementById(textarea).value, 80).length;
    document.getElementById(lines).innerText = i;
}

function chunkString(str, length) {
  return str.match(new RegExp('.{1,' + length + '}', 'g'));
}
</script>
</head>
<body>

<cfset fileName = ExpandPath("../LICENSE")>
<cffile variable="fileContent" action="read" file="#fileName#">
<form name="form1" method="post" action="save.cfm">
<div style="width:700px;height:200px;">
<textarea rows="10" cols="80" id="text" name="text"></textarea>
<button>Submit</button>
<input type="button" value="Cancel" onClick="location.href='index.cfm'">
<input type="button" value="Calculate" onCLick="countChars('text', 'chars');countLines('text', 'lines')">
Characters: <span id="chars"></span>
Lines: <span id="lines"></span>
</div>
</form>

<br/>
<br/>
<pre>
<cfoutput>#fileContent#</cfoutput>
</pre>

</body>
</html>