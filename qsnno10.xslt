<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
        <style>
          table,th,td{
          border:1px solid black;
          } 
        </style>      
      </head>
      <body>
      <h1>Book List</h1>
        <table>
          <tr>
            <th>Title</th>
            <th>Author</th>
            <th>Publisher</th>
            <th>Edition</th>
            <th>Price</th>          
          </tr>
          <xsl:for-each select="books/book">
            <tr>
              <td><xsl:value-of select="title"/></td> 
              <td><xsl:value-of select="author"/></td>
              <td><xsl:value-of select="publisher"/></td>
              <td><xsl:value-of select="edition"/></td>
              <td><xsl:value-of select="price"/></td>           
            </tr>          
          </xsl:for-each>
        </table>      
      </body>    
    </html>  
  </xsl:template>
</xsl:stylesheet>