<!--- fonts --->
<cfset font="Arial, Helvetica, sans-serif">
<cfset footerFont="Georgia, serif">

<!--- Colors --->
<cfset linkColor="000000">
<cfset linkHoverColor="0000ff">
<cfset backgroundColor="d0d0d0">

body {
    font-family:<cfoutput>#font#</cfoutput>;
}

div#body {
    margin:10px;
}

div#header h1 {
    display:inline;
}

div#menu {
    float:left;
}

div#menu a {
    color:#<cfoutput>#linkColor#</cfoutput>;
    font-variant-caps: small-caps;
}

div#menu a:hover {
    color:#<cfoutput>#linkHoverColor#</cfoutput>;
    text-decoration:none;
}

div#searchField {
    background-color:#<cfoutput>#backgroundColor#</cfoutput>;
}

div#searchField form {
    float:right;
}

div#searchField:after {
    content: '';
    display: block;
    clear: both;
}

div#footer {
    background-color:#<cfoutput>#backgroundColor#</cfoutput>;
    font-family:<cfoutput>#footerFont#</cfoutput>;
}
