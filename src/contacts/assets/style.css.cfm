<!--- fonts --->
<cfset font="Arial, Helvetica, sans-serif">
<cfset footerFont="Georgia, serif">

<!--- Colors --->
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

td#menu {
    font-size:10pt;
}

td#menu a{
    display:block;
}
