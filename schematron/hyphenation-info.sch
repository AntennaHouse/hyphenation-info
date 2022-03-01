<?xml version="1.0" encoding="UTF-8"?>
<!--
     Copyright 2019-2022 Antenna House, Inc.

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

<!-- <classes> -->

<rule context="classes">
  <let name="invalid-classes" value="ahf:invalid-classes(.)"/>
  <assert test="empty($invalid-classes)" role="Error">Character equivalent classes should be a lower-case letter followed by upper-case. Invalid classes: <value-of select="$invalid-classes" /></assert>
</rule>

<!-- <exceptions> -->

<rule context="exceptions">
  <let name="hyphen-char" value="(../hyphen-char/@value, '-')[1]" />
  <let name="filename" value="base-uri(.)" />
  <let name="invalid-exceptions"
       value="ahf:invalid-exceptions(., $hyphen-char, $filename)" />
  <assert test="empty($invalid-exceptions)" role="Warning">Invalid character(s) in exceptions: <value-of select="$invalid-exceptions" /></assert>
</rule>

<!-- <patterns> -->

<rule context="patterns">
  <let name="invalid-patterns" value="ahf:invalid-patterns(.)"/>
  <assert test="empty($invalid-patterns)" role="Error">Patterns should be characters and digits. Invalid patterns: <value-of select="$invalid-patterns" /></assert>
</rule>

</pattern>
</schema>

<!-- Local Variables:  -->
<!-- mode: nxml        -->
<!-- End:              -->
