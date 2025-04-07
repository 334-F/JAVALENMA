<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" encoding="UTF-8" />

    <xsl:template match="/">
        <html>
            <head>
                <title>Currículum de Felipe Xu</title>
                <style>
                    body {
                    font-family: Arial, sans-serif;
                    margin: 20px;
                    background-color: #f9f9f9;
                    }
                    h1 {
                    color: #1a73e8;
                    }
                    .seccion {
                    margin-bottom: 20px;
                    }
                    .seccion h2 {
                    border-bottom: 1px solid #ccc;
                    color: #333;
                    }
                </style>
            </head>
            <body>
                <h1>
                    <xsl:value-of select="cv/nombre" />
                </h1>

                <div class="seccion">
                    <h2>Contacto</h2>
                    <p>Phone:<xsl:value-of select="cv/telefono" /></p>
                    <p>Gmail:<xsl:value-of select="cv/email" /></p>
                </div>

                <div class="seccion">
                    <h2>Formación Académica</h2>
                    <p>
                        <strong>Título:</strong>
                        <xsl:value-of select="cv/formacion/titulo" />
                    </p>
                    <p>
                        <strong>Centro:</strong>
                        <xsl:value-of select="cv/formacion/centro" />
                    </p>
                    <p><strong>Años:</strong> <xsl:value-of select="cv/formacion/inicio" /> - <xsl:value-of
                            select="cv/formacion/fin" /></p>
                </div>

                <div class="seccion">
                    <h2>Experiencia Profesional</h2>
                    <p>
                        <strong>Puesto:</strong>
                        <xsl:value-of select="cv/experiencia/puesto" />
                    </p>
                    <p>
                        <strong>Empresa:</strong>
                        <xsl:value-of select="cv/experiencia/empresa" />
                    </p>
                    <p><strong>Años:</strong> <xsl:value-of select="cv/experiencia/inicio" /> - <xsl:value-of
                            select="cv/experiencia/fin" /></p>
                </div>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>