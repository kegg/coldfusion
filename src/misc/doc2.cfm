<cfsavecontent variable="content">
<html>
<head>
    <style type="text/css">
    @page Section1 {
        margin:0.75in 0.75in 0.75in 0.75in;
        size:841.7pt 595.45pt;
        mso-page-orientation:landscape;
        mso-header-margin:0.5in;
        mso-header: h1;
        mso-footer-margin:0.5in;
        mso-footer: f1;
    }

    div.Section1 {page:Section1;}

    p.headerFooter { margin:0in; text-align: center; }
    </style>
</head>
<body><div class=Section1>

Main content goes here.
Here's a page break:
<br clear=all style='mso-special-character:line-break; page-break-before:always'>
This is page 2

</div></body>
</html>
</cfsavecontent>
<cfheader name="content-type" value="application/word">
<cfheader name="Content-Disposition" value="attachment;filename=hello.doc">
<cfoutput>#content#</cfoutput>