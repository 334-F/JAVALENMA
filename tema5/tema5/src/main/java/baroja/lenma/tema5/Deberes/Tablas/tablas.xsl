<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format">

    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/ciudades">
        <fo:root>
            <fo:layout-master-set>
                <fo:simple-page-master master-name="A4"
                    page-height="29.7cm" page-width="21cm" margin="2cm">
                    <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>

            <fo:page-sequence master-reference="A4">
                <fo:flow flow-name="xsl-region-body">

                    <!-- Título alineado a la izquierda -->
                    <fo:block font-size="12pt" font-weight="bold" text-align="left" space-after.optimum="10pt">
                        Lista de ciudades de Felipe Xu
                    </fo:block>

                    <!-- Tabla alineada a la izquierda -->
                 <fo:table table-layout="fixed" width="30%" border="0.3pt solid black">
    <fo:table-column column-width="50%"/>
    <fo:table-column column-width="50%"/>

    <!-- Cabecera sin espacio extra entre celdas -->
    <fo:table-header>
        <fo:table-row background-color="#87ce00">
            <fo:table-cell padding="1px" border="0.3pt solid black">
                <fo:block font-size="10pt" font-weight="bold" text-align="center">nombre</fo:block>
            </fo:table-cell>
            <fo:table-cell padding="1px" border="0.3pt solid black">
                <fo:block font-size="10pt" font-weight="bold" text-align="center">habitantes</fo:block>
            </fo:table-cell>
        </fo:table-row>
    </fo:table-header>

    <!-- Cuerpo de la tabla -->
    <fo:table-body>
        <xsl:for-each select="ciudad">
            <fo:table-row>
                <fo:table-cell padding="1px" border="0.3pt solid black">
                    <fo:block font-size="10pt" text-align="center">
                        <xsl:value-of select="nombre"/>
                    </fo:block>
                </fo:table-cell>
                <fo:table-cell padding="1px" border="0.3pt solid black">
                    <fo:block font-size="10pt" text-align="center">
                        <xsl:value-of select="habitantes"/>
                    </fo:block>
                </fo:table-cell>
            </fo:table-row>
        </xsl:for-each>
    </fo:table-body>
</fo:table>

                    <!-- Pie de página -->
                    <fo:block space-before="10cm" text-align="right" background-color="#fbfbb1" padding="5px">
                        Actividad 6.5 de (Felipe Xu) Página: 1
                    </fo:block>

                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
