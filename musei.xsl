<?xml version="1.0"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <h1>La culutura delle Marche</h1>
    <table border="1">
      <tr bgcolor="##7FFF00">
        <th><b>Musei</b></th>
      </tr>
      <tr bgcolor="#9acd32">
        <th>Comune</th>
        <th>Indirizzo</th>
        <th>Civico</th>
        <th>Telefono</th>
        <th>Orari Apertura</th>
        <th>Telefono</th>
      </tr>
      <tr>
        <tr> <xsl:value-of select="musei/museo/nome"/></tr>
        <xsl:for-each select="musei/museo">
            <tr>
              <xsl:for-each select="musei/museo/locazione">
                <td>Orario: </td>
                <td><xsl:value-of select="comune"/></td>
                <td><xsl:value-of select="indirizzo"/></td>
                <td><xsl:value-of select="civico"/></td>
              </xsl:for-each>
              <td><xsl:value-of select="locazione/telefono"/></td>
              <xsl:for-each select="musei/museo/orariApertura">
                <td><xsl:value-of select="lunedi"/></td>
                <td><xsl:value-of select="martedi"/></td>
                <td><xsl:value-of select="mercoledi"/></td>
                <td><xsl:value-of select="giovedi"/></td>
                <td><xsl:value-of select="venerdi"/></td>
                <td><xsl:value-of select="sabato"/></td>
                <td><xsl:value-of select="domenica"/></td>
                <td><xsl:value-of select="dateSpeciali"/></td>
              </xsl:for-each>
              <tr bgcolor="#C1FF33">
                <th>Classe</th> 
                <th>Immagine</th>
                <th>Didascalia</th>
                  <xsl:for-each select="musei/museo/manufatti/manufatto">
                      <tr>
                        <td><xsl:value-of select="classe"/>
                            <xsl:value-of select="classe/nome"/>
                        </td>
                        <td><xsl:value-of select="immagine"/></td>
                        <td><xsl:value-of select="didascalia"/></td>
                      </tr>
                  </xsl:for-each>
              </tr>
            </tr>
        </xsl:for-each>
      </tr>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>