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

function displayHide(id) {
  var id = document.getElementById(id);
  if (id.style.display === 'none') {
    id.style.display = 'block';
  } else {
    id.style.display = 'none';
  }
}
</script>
</head>
<body>

<h1>Save Text</h1>

<cfinclude template="links.cfm">

<blockquote>A simple diary app.</blockquote>

<cfset fileName = ExpandPath("../LICENSE")>
<cffile variable="fileContent" action="read" file="#fileName#">
<form name="form1" method="post" action="save.cfm">
<div>
<label style="vertical-align:top;" for="text">Text</label>
<textarea rows="10" cols="80" id="text" name="text"></textarea>
</div>
<div>
<button style="margin-left:35px;">Submit</button>
<input type="button" value="Cancel" onClick="location.href='index.cfm'">
<input type="button" value="Calculate" onCLick="countChars('text', 'chars');countLines('text', 'lines')">
Characters: <span id="chars"></span>
Lines: <span id="lines"></span>
</div>
</form>

<br/>
<br/>
<button onClick="displayHide('license')">Show/Hide License</button>
<pre id="license" style="display:none">
<cfoutput>#fileContent#</cfoutput>
</pre>

</body>
</html>