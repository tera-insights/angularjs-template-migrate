<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >

  <!-- <xsl:output method="text"/> -->
   <xsl:output omit-xml-declaration="yes" indent="yes"/>


   <!-- <xsl:template match="@*|node()">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template>  -->

  <!-- <xsl:template match="/*">
    <xsl:for-each select="@*">
      <xsl:variable name="attr" select="current()"/>
      <xsl:attribute name="{name()}">
        <xsl:value-of select="bruh"/>
      </xsl:attribute>
      </xsl:for-each>
  </xsl:template> -->

    <xsl:template match="node()">
      <xsl:copy>
        <xsl:apply-templates select="node() | @*"/>
      </xsl:copy>
    </xsl:template>

    <xsl:template match="@*">
      <xsl:variable name="attr_val" select="translate(.,'$','')"/>
        <xsl:attribute name="{name()}">
        <xsl:choose>
          <xsl:when test="contains($attr_val, 'ctrl.')">
            <xsl:value-of select="concat( substring-before($attr_val, 'ctrl.'), substring-after($attr_val, 'ctrl.') )"/>
          </xsl:when>
          <xsl:otherwise>
            <xsl:value-of select="$attr_val"/>
          </xsl:otherwise>
          </xsl:choose>
        </xsl:attribute>
    </xsl:template>


    <!-- <xsl:template name="replace-string"/>
      <xsl:param name="text"/>
      <xsl:param name="replace"/>
      <xsl:param name="with"/>
      <xsl:choose>
        <xsl:when test="contains($text,$replace)">
          <xsl:value-of select="substring-before($text,$replace)"/>
          <xsl:value-of select="$with"/>
          <xsl:call-template name="replace-string">
            <xsl:with-param name="text" select="substring-after($text,$replace)"/>
            <xsl:with-param name="replace" select="$replace"/>
            <xsl:with-param name="with" select="$with"/>
          </xsl:call-template>
        </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="$text"/>
      </xsl:otherwise>
    </xsl:choose>
     </xsl:template>
 -->



  <!-- translate($attr, '$', '') -->
 
  <!-- Content:template -->

<!-- </xsl:variable> 
 <xsl:template match="//@*">

  <xsl:attribute name="{name()}">
    <xsl:value-of select="'bruh'"/>
  </xsl:attribute>
</xsl:template> -->


</xsl:stylesheet>

<!--     
  <xsl:template match="//">
   <xsl:for-each select="//@*"> 
    <xsl:value-of select="concat( ., ' ')" />
    </xsl:for-each>
  </xsl:template>
   -->