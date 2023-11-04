<?xml version="1.0"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <h1>La culutura delle Marche</h1>
    <table>
      <tr bgcolor="##7FFF00">
        <th><b>Musei</b></th>
      </tr>
      <tr bgcolor="#9acd32">
        <th>Comune</th>
        <th>Indirizzo</th>
        <th>Civico</th>
        <th>Telefono</th>
        <th>Classe</th> 
        <th>Immagine</th>
        <th>Didascalia</th>
      </tr>
      <tr>
        <tr> <xsl:value-of select="musei/museo/nome"/></tr>
        <xsl:for-each select="musei/museo">
            <tr>
              <xsl:for-each select="locazione">
                <td><xsl:value-of select="comune"/></td>
                <td><xsl:value-of select="indirizzo"/></td>
                <td><xsl:value-of select="civico"/></td>
              </xsl:for-each>
              <td><xsl:value-of select="locazione/@telefono"/></td>
              <td><xsl:value-of select="manufatti/classe/@nome"/>-<xsl:value-of select="manufatti/classe"/></td>
              <xsl:for-each select="manufatti/manufatto">
                <td>Manufatto numero:<xsl:value-of select="@numero"/><xsl:value-of select="immagine"/></td>
                <td><xsl:value-of select="didascalia"/></td>
              </xsl:for-each>
              <tr>
                <th>Orario apertura</th>
                <xsl:for-each select="orariApertura">
                  <tr>
                    <td>Lunedi':<xsl:value-of select="lunedi"/></td>
                  </tr>
                  <tr>
                    <td>Martedi':<xsl:value-of select="martedi"/></td>
                  </tr>
                  <tr>
                    <td>Mercoledi':<xsl:value-of select="mercoledi"/></td>
                  </tr>
                  <tr>
                    <td>Giovedi':<xsl:value-of select="giovedi"/></td>
                  </tr>
                  <tr>
                    <td>Vernerdi'<xsl:value-of select="venerdi"/></td>
                  </tr>
                  <tr>
                    <td>Sabato:<xsl:value-of select="sabato"/></td>
                  </tr>
                  <tr>
                    <td>Domenica:<xsl:value-of select="domenica"/></td>
                  </tr>
                  <tr>
                    <td>Date speciali:<xsl:value-of select="dateSpeciali"/></td>
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
