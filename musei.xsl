<?xml version="1.0"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <h1>La culutura delle Marche</h1>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>Musei</th>
      </tr>
      <tr bgcolor="#9acd32">
        <th>Comune</th>
        <th>Indirizzo</th>
        <th>Civico</th>
        <th>Telefono</th>
        <th>Orari Apertura</th>
      </tr>
      <tr>
        <xsl:for-each select="musei/museo">
            <tr>
              <th><xsl:value-of select="comune"/></th>
              <td><xsl:value-of select="indirizzo"/></td>
              <td><xsl:value-of select="civico"/></td>
              <td><xsl:value-of select="telefono"/></td>
              <td><xsl:value-of select="orariApertura"/></td>
              <tr bgcolor="#C1FF33">
                <th>Immagine</th>
                <th>Didascalia</th>
                      <tr>
                        <td><xsl:value-of select="manufatti/manufatto/immagine"/></td>
                        <td><xsl:value-of select="manufatti/manufatto/didascalia"/></td>
                      </tr>
              </tr>
            </tr>
        </xsl:for-each>
      </tr>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>