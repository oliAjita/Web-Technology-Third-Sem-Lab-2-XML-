<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <body>
        <fieldset style="border:3px solid skyblue" >
          <legend><h1 style="background-color:skyblue; padding-right:120px;">Oceans</h1></legend>
             <xsl:for-each select="oceans/ocean">
              <h1><xsl:value-of select="name"/></h1>
              <p>Area:<xsl:value-of select="Area"/></p>
              <p>Mean depth:<xsl:value-of select="Meandepth"/></p>
             </xsl:for-each>   
        </fieldset>      
      </body>    
    </html>  
  </xsl:template>
</xsl:stylesheet>