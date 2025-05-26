<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
      <title>Book Stylesheet</title>
        <style>
          table,th,td{
          border:1px solid black;
          border-collapse:collapse;
          } 
          th{
          background-color:#0085cb;
          color:white;
          }
        </style>      
      </head>
      <body>
        <table>
          <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Publish Date</th>
            <th>Author</th>
            <th>Genere</th>
            <th>Description</th>
            <th>Price</th>
          </tr>   
          <xsl:for-each select="catalog/book">
            <tr>
              <td><xsl:value-of select="@id"/></td>
              <td><xsl:value-of select="title"/></td>
              <td><xsl:value-of select="publish_date"/></td>
              <td><xsl:value-of select="author"/></td>
              <td><xsl:value-of select="genre"/></td>
              <td><xsl:value-of select="description"/></td>
              <td><xsl:value-of select="price"/></td>
              </tr>    
          </xsl:for-each>   
        </table>      
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>