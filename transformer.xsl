<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >

  <!-- <xsl:output method="text"/> -->
   <xsl:output omit-xml-declaration="yes" indent="yes"/>


   <xsl:template match="@*|node()">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template> 
  
 <xsl:template match="//@*">
 translate($string, 
          translate($string,'0123456789',''),'')
  <xsl:attribute name="{name()}">
    <xsl:value-of select="'bruh'"/>
  </xsl:attribute>
</xsl:template>




</xsl:stylesheet>

<!--     
  <xsl:template match="//">
   <xsl:for-each select="//@*"> 
    <xsl:value-of select="concat( ., ' ')" />
    </xsl:for-each>
  </xsl:template>
   -->