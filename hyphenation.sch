<?xml version="1.0" encoding="UTF-8"?>
<schema
    xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:include href="hyphenation.xsl"/>

<ns uri="http://www.antennahouse.com/names/XSLT/Functions/Document" prefix="ahf" />

<pattern id="hyphenation">
        
  <!-- axf:custom-property -->
  <!-- https://www.antenna.co.jp/AHF/help/v70e/ahf-ext.html#axf.custom-property -->
  <rule context="classes">
    <let name="invalid-classes" value="ahf:invalid-classes(.)"/>
    <assert test="empty($invalid-classes)" role="Error">Character equivalent classes should be a lower-case letter followed by upper-case. Invalid classes: <value-of select="$invalid-classes" /></assert>
  </rule>
</pattern>

</schema>

<!-- Local Variables:  -->
<!-- mode: nxml        -->
<!-- End:              -->
