<?xml version="1.0" encoding="UTF-8"?>
<!--
     Copyright 2019 Antenna House, Inc.

     Licensed under the Apache License, Version 2.0 (the "License");
     you may not use this file except in compliance with the License.
     You may obtain a copy of the License at

         http://www.apache.org/licenses/LICENSE-2.0

     Unless required by applicable law or agreed to in writing, software
     distributed under the License is distributed on an "AS IS" BASIS,
     WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
     See the License for the specific language governing permissions and
     limitations under the License.
-->
<schema xmlns="http://purl.oclc.org/dsdl/schematron"
	xmlns:sqf="http://www.schematron-quickfix.com/validator/process"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	queryBinding="xslt2">

<xsl:include href="../xsl/hyphenation-info.xsl"/>

<ns uri="http://www.antennahouse.com/names/XSLT/Functions/Document" prefix="ahf" />

<phase id="hyphenation-info">
  <active pattern="hyphenation-info-pattern" />
</phase>

<pattern id="hyphenation-info-pattern">

<rule context="classes">
  <let name="invalid-classes" value="ahf:invalid-classes(.)"/>
  <assert test="empty($invalid-classes)" role="Error">Character equivalent classes should be a lower-case letter followed by upper-case. Invalid classes: <value-of select="$invalid-classes" /></assert>
</rule>

<rule context="exceptions">
  <let name="hyphen-char" value="(../hyphen-char/@value, '-')[1]" />
  <report test="for $token in tokenize(normalize-space(string-join(text(), '')), '\s') return if (matches($token, concat('^(', $hyphen-char, '|[\p{L}])+$'))) then () else true()" role="Error">Invalid character in exceptions.</report>
</rule>

</pattern>
</schema>

<!-- Local Variables:  -->
<!-- mode: nxml        -->
<!-- End:              -->
