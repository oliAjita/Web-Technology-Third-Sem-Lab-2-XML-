<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
    <head>
      <style>
        .container{
        background-color:green; 
        }
        .container h1{
        color:white;
        }
        fieldset{
        margin-top:5px;
        margin-bottom:5px;
        background-color:#FFFFF9;
       
        }
        h2,u{
        color:green;
        }
        .chap1{
        color:lightgreen;
        }
         .chap2{
        color:purple;
        }
         .chap3{
        color:blue;
        }
         .chap4{
        color:yellow;
        }
        li{
       list-style:none;
        }
        body{
        text-align:center;
        }
     
      </style>    
    </head>
    <body>
      <div class="container">
        <h1>Hello Everyone! Welcome to XML to CSS</h1>
      </div>
      <xsl:for-each select="subjects/subject">
        <fieldset>
          <u><h2><xsl:value-of select="name"/></h2></u>
          <xsl:for-each select="chapter">
          <li class="chap1"><xsl:value-of select="chapter1"/></li>
          <li class="chap2"><xsl:value-of select="chapter2"/></li>
          <li  class="chap3"><xsl:value-of select="chapter3"/></li>
          <li class="chap4"><xsl:value-of select="chapter4"/></li>
          <li class="chap5"><xsl:value-of select="chapter5"/></li>
          </xsl:for-each>         
          </fieldset>
        </xsl:for-each>
    </body>
    </html>
  </xsl:template>
</xsl:stylesheet>