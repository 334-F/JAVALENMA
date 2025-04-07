<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text"/>
    
    <xsl:template match="/">
{
    "peliculas": {
        "pelicula": [
            <xsl:for-each select="peliculas/pelicula">
            {
                "titulo": "<xsl:value-of select="titulo"/>",
                "argumento": "<xsl:value-of select="argumento"/>"
            },
            </xsl:for-each>
        ]
    }
}
    </xsl:template>
</xsl:stylesheet>
