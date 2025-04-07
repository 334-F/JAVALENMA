<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" encoding="UTF-8" />

  <xsl:template match="/">
    <html>
      <head>
        <title>Ficha de Vehículos</title>
        <style>
          table {
          border-collapse: collapse;
          width: 60%;
          margin: 20px;
          }
          th, td {
          border: 1px solid #333;
          padding: 8px;
          text-align: center;
          }
          th {
          background-color: #f2f2f2;
          }
        </style>
      </head>
      <body>
        <h1>Ficha de Vehículos</h1>
        <table>
          <tr>
            <th>Marca</th>
            <th>Modelo</th>
            <th>Precio (€)</th>
          </tr>
          <xsl:for-each select="vehiculos/vehiculo">
            <tr>
              <td>
                <xsl:value-of select="marca" />
              </td>
              <td>
                <xsl:value-of select="modelo" />
              </td>
              <td>
                <xsl:value-of select="precio" />
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>