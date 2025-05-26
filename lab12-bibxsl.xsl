<?xml version="1.0" encoding="UTF-8"?>
<xsl-stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
    <head>
      <head>
        <style>
          table{
          border: 1px solid;
           border-collpse:collapse;
          }
          th
          {
          background-color:blue;
           padding-button:200px;
          border-collpse:collapse;
          }
          td
          {
            border:1px solid;
            border-collaspe:collaspe;
          }
          
        </style>
      </head>
    </head>
    <body>
      <table>
        <tr>
          <th>tilte</th>
          <th>year</th>
          <th>author</th>
          <th>Editor</th>
          <th>publisher</th>
          <th>price</th>
        </tr>
        <xsl:for-each select="bib/book">
          <tr>
            <td><xsl:value-of select="title"/></td>
            <td><xsl:value-of select="@year"/></td>
            <td><xsl:value-of select="author"/></td>
            <td><xsl:value-of select="editor"/></td>
            <td><xsl:value-of select="publisher"/></td>
            <td><xsl:value-of select="price"/></td>
         </tr>
        </xsl:for-each>
      </table>
    </body>
  </html>
  </xsl:template>
</xsl-stylesheet>
