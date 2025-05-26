﻿<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
        <style>
          table,td,th{
          border:1px solid black;
          border-collapse:collapse;
          }
          th{
          background-color:skyblue;
          }
        </style>      
      </head> 
      <body>
        <table>
        <tr>
          <th>Title</th>
          <th>Year</th>
          <th>Author</th>
          <th>Editor</th>
          <th>Publisher</th>
          <th>Price</th>  
          </tr>
          <xsl:for-each select="bib/book">
          <xsl:if test="string(title)='The Economics of Technology and Content for Digital TV'">
            <tr>
              <td><xsl:value-of select="title"/></td>
              <td><xsl:value-of select="@year"/></td>
              <td><xsl:value-of select="author"/></td>
              <td><xsl:value-of select="editor"/></td>
              <td><xsl:value-of select="publisher"/></td>
              <td><xsl:value-of select="price"/></td>
              </tr> 
              </xsl:if>   
              </xsl:for-each>
        </table>
      </body>
    </html>  
  </xsl:template>
</xsl:stylesheet>