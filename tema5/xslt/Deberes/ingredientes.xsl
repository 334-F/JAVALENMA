<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            
                <h1>Ingredientes del Cocido Madrileño</h1>
           
            <body>
                
                <ul>
                    <xsl:for-each select="receta/ingrediente">
                        <li>
                            <xsl:value-of select="@nombre"/>
                        </li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
