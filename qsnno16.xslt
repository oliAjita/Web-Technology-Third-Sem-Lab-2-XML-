<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <body>
        <h2>products list table</h2>
        <table border="2">
          <tr>
            <th>product_name</th>
          <th>category</th>
          <th>price</th>
          <th>quality</th>
          </tr>
          <xsl:for-each select="products/product">
            <tr>
             <td><xsl:value-of select="product_name"/></td>
             <td><xsl:value-of select="category"/></td>
             <td><xsl:value-of select="price"/></td>
             <td><xsl:value-of select="quantity"/></td>
            </tr>
    
          </xsl:for-each>
        </table>
      </body>
    </html>
     <html>
      <body>
        <h2>products less than 10 quantity</h2>
        <table border="2">
          <tr>
            <th>product_name</th>
          <th>category</th>
          <th>price</th>
          <th>quantity</th>
          </tr>
          <xsl:for-each select="products/product">
          <xsl:if test="10 > quantity">
            <tr>
            
             <td><xsl:value-of select="product_name"/></td>
             <td><xsl:value-of select="category"/></td>
             <td><xsl:value-of select="price"/></td>
             <td><xsl:value-of select="quantity"/></td>
            </tr>
            </xsl:if>
          </xsl:for-each>
        </table>
      </body>
    </html>
    <html>
      <body>
        <h2>remaining products</h2>
        <table border="2">
          <tr>
            <th>product_name</th>
          <th>category</th>
          <th>price</th>
          <th>quantity</th>
          </tr>
          <xsl:for-each select="products/product">
          <xsl:if test="quantity >= 10">
            <tr>
            
             <td><xsl:value-of select="product_name"/></td>
             <td><xsl:value-of select="category"/></td>
             <td><xsl:value-of select="price"/></td>
             <td><xsl:value-of select="quantity"/></td>
            </tr>
            </xsl:if>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
