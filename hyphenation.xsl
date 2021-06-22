<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="2.0"
    xmlns:ahf="http://www.antennahouse.com/names/XSLT/Functions/Document"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="ahf xs">

<xsl:function name="ahf:invalid-classes" as="xs:string*" >
  <xsl:param name="classes" as="xs:string" />

  <xsl:sequence
      select="for $token in tokenize(normalize-space($classes), '\s+')
                return if (not(matches($token, '^\p{Ll}\p{Lu}+$')))
                         then $token
                       else ()" />
</xsl:function>

</xsl:stylesheet>
