<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format">

    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/invitacion">
        <fo:root>
            <fo:layout-master-set>
                <fo:simple-page-master master-name="simple"
                    page-height="9cm" page-width="20cm" margin="2cm">
                    <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>

            <fo:page-sequence master-reference="simple">
                <fo:flow flow-name="xsl-region-body">

                    <fo:block text-align="center">
                        Felicidades, <xsl:value-of select="name"/>!
                    </fo:block>

                    <fo:block text-align="center">
                        <xsl:value-of select="text"/>
                    </fo:block>

                    <fo:block text-align="center">
                        Fecha: <xsl:value-of select="day"/> - Hora: <xsl:value-of select="time"/>
                    </fo:block>

                    <fo:block text-align="center">
                        Ceremonia: <xsl:value-of select="ceremony"/>
                    </fo:block>

                    <fo:block text-align="center">
                        Celebración: <xsl:value-of select="celebration"/>
                    </fo:block>

                    <fo:block text-align="center">
                        Contacto: <xsl:value-of select="number"/>
                    </fo:block>

                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>

</xsl:stylesheet>
