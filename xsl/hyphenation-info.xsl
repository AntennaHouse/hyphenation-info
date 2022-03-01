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

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="2.0"
    xmlns:ahf="http://www.antennahouse.com/names/XSLT/Functions/Document"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="ahf xs">

<!-- <classes> -->

<xsl:function name="ahf:invalid-classes" as="xs:string*" >
  <xsl:param name="classes" as="xs:string" />

  <xsl:sequence
      select="for $token in tokenize(normalize-space($classes), '\s+')
                return if (not(matches($token, '^\p{Ll}\p{Lu}+$')))
                         then $token
                       else ()" />
</xsl:function>

<!-- <exceptions> -->

<!--
<exceptions> can include <hyphen/> within an exception word.  Before
checking exception words, <hyphen/> is transformed into &#xFFFC
(OBJECT REPLACEMENT CHARACTER) so that the text of <exceptions> can be
tokenized on white space. &#xFFFC; also has to be included in the
regular expressions for checking exception words.

The language for the hyphenation exceptions is determined from the
first two characters of the filename.

Different languages allow different sets of characters in words that
can be hyphenated.  The valid characters are assumed to be the
intersection of the Unicode character blocks (plus extra characters)
and Unicode character categories (plus extra characters) for the
language based on the description in the the 'Hyphenation Limited To'
column in 'https://www.antenna.co.jp/AHF/help/en/ahf-hyp.html#Languages'.

Default values are used if there is no match for the language code
extracted from the filename.

A hyphenation exception dictionary can specify its own hyphenation
character.  The default is '-'.  The hyphenation character must be
last in any regular expressions because '-' between two characters in
a character class exrpession ([...]) indicates a range.
-->

<xsl:variable
    name="cyrillic-characters"
    select="'\p{IsCyrillic}'"
    as="xs:string" />

<xsl:variable
    name="greek-characters"
    select="'\p{IsGreek}'"
    as="xs:string" />

<xsl:variable
    name="latin-characters"
    select="'\p{IsBasicLatin}\p{IsLatin-1Supplement}\p{IsLatinExtended-A}\p{IsLatinExtended-B}'"
    as="xs:string" />
<xsl:variable
    name="latin-characters-and-apostrophe"
    select="concat($latin-characters, '''')"
    as="xs:string" />

<xsl:variable
    name="letters-cased"
    select="'\p{Lu}\p{Ll}'"
    as="xs:string" />
<xsl:variable
    name="letters-cased-and-apostrophe"
    select="concat($letters-cased, '''')"
    as="xs:string" />

<xsl:variable
    name="patterns"
    as="element(pattern)+">
  <pattern language="af"
           characters="{$latin-characters-and-apostrophe}"
           letters="{$letters-cased-and-apostrophe}" />
  <pattern language="bg"
           characters="{$cyrillic-characters}"
           letters="{$letters-cased}" />
  <pattern language="ca"
           characters="{$latin-characters-and-apostrophe}.&#xB7;"
           letters="{$letters-cased-and-apostrophe}.&#xB7;" />
  <pattern language="cs"
           characters="{$latin-characters}"
           letters="{$letters-cased}" />
  <pattern language="cy"
           characters="{$latin-characters-and-apostrophe}"
           letters="{$letters-cased-and-apostrophe}" />
  <pattern language="da"
           characters="{$latin-characters-and-apostrophe}"
           letters="{$letters-cased-and-apostrophe}" />
  <pattern language="de"
           characters="{$latin-characters-and-apostrophe}"
           letters="{$letters-cased-and-apostrophe}" />
  <pattern language="el"
           characters="{$greek-characters}"
           letters="{$letters-cased}" />
  <pattern language="en"
           characters="{$latin-characters-and-apostrophe}"
           letters="{$letters-cased-and-apostrophe}" />
  <pattern language="eo"
           characters="{$latin-characters}"
           letters="{$letters-cased}" />
  <pattern language="es"
           characters="{$latin-characters}"
           letters="{$letters-cased}" />
  <pattern language="et"
           characters="{$latin-characters}"
           letters="{$letters-cased}" />
  <pattern language="eu"
           characters="{$latin-characters}"
           letters="{$letters-cased}" />
  <pattern language="fi"
           characters="{$latin-characters}"
           letters="{$letters-cased}" />
  <pattern language="fr"
           characters="{$latin-characters-and-apostrophe}"
           letters="{$letters-cased-and-apostrophe}" />
  <pattern language="ga"
           characters="{$latin-characters-and-apostrophe}"
           letters="{$letters-cased-and-apostrophe}" />
  <pattern language="hr"
           characters="{$cyrillic-characters}{$latin-characters}"
           letters="{$letters-cased-and-apostrophe}" />
  <pattern language="hu"
           characters="{$latin-characters}"
           letters="{$letters-cased}" />
  <pattern language="id"
           characters="{$latin-characters-and-apostrophe}2"
           letters="{$letters-cased-and-apostrophe}2" />
  <pattern language="is"
           characters="{$latin-characters}"
           letters="{$letters-cased}" />
  <pattern language="it"
           characters="{$latin-characters-and-apostrophe}"
           letters="{$letters-cased-and-apostrophe}" />
  <pattern language="la"
           characters="{$latin-characters}"
           letters="{$letters-cased}" />
  <pattern language="lt"
           characters="{$latin-characters}"
           letters="{$letters-cased}" />
  <pattern language="lv"
           characters="{$latin-characters}"
           letters="{$letters-cased}" />
  <pattern language="ms"
           characters="{$latin-characters-and-apostrophe}2"
           letters="{$letters-cased-and-apostrophe}2" />
  <pattern language="mt"
           characters="{$latin-characters-and-apostrophe}"
           letters="{$letters-cased-and-apostrophe}" />
  <pattern language="nb"
           characters="{$latin-characters-and-apostrophe}"
           letters="{$letters-cased-and-apostrophe}" />
  <pattern language="nl"
           characters="{$latin-characters-and-apostrophe}"
           letters="{$letters-cased-and-apostrophe}" />
  <pattern language="nn"
           characters="{$latin-characters-and-apostrophe}"
           letters="{$letters-cased-and-apostrophe}" />
  <pattern language="no"
           characters="{$latin-characters-and-apostrophe}"
           letters="{$letters-cased-and-apostrophe}" />
  <pattern language="pl"
           characters="{$latin-characters}"
           letters="{$letters-cased}" />
  <pattern language="pt"
           characters="{$greek-characters}"
           letters="{$letters-cased}" />
  <pattern language="ro"
           characters="{$latin-characters-and-apostrophe}"
           letters="{$letters-cased-and-apostrophe}" />
  <pattern language="ru"
           characters="{$cyrillic-characters}"
           letters="{$letters-cased}" />
  <pattern language="sk"
           characters="{$latin-characters-and-apostrophe}"
           letters="{$letters-cased-and-apostrophe}" />
  <pattern language="sl"
           characters="{$latin-characters-and-apostrophe}"
           letters="{$letters-cased-and-apostrophe}" />
  <pattern language="sr"
           characters="{$cyrillic-characters}{$latin-characters}"
           letters="{$letters-cased-and-apostrophe}" />
  <pattern language="sv"
           characters="{$latin-characters-and-apostrophe}"
           letters="{$letters-cased-and-apostrophe}" />
  <pattern language="sw"
           characters="{$latin-characters-and-apostrophe}"
           letters="{$letters-cased-and-apostrophe}" />
  <pattern language="th"
           characters="\p{{IsThai}}"
           letters="\p{{IsThai}}" />
  <pattern language="tr"
           characters="{$latin-characters}"
           letters="{$letters-cased}" />
  <pattern language="uk"
           characters="{$cyrillic-characters}"
           letters="{$letters-cased}" />

  <pattern language="#default"
           characters="\p{{L}}"
           letters="\p{{L}}" />
</xsl:variable>

<!-- ahf:invalid-exceptions($exceptions as element(exceptions),
                            $hyphen-char as xs:string,
                            $filename as xs:string) as xs:string* -->
<!-- Returns a sequence of string representations of all of the
     invalid exceptions found in the content of $exceptions. -->
<xsl:function name="ahf:invalid-exceptions" as="xs:string*" >
  <xsl:param name="exceptions" as="element(exceptions)" />
  <xsl:param name="hyphen-char" as="xs:string" />
  <xsl:param name="filename" as="xs:string" />

  <xsl:variable
      name="language"
      select="substring(tokenize($filename, '/')[last()], 1, 2)"
      as="xs:string" />

  <xsl:variable
      name="characters"
      select="($patterns[@language = $language]/@characters,
               $patterns[@language = '#default']/@characters)[1]"
      as="xs:string" />
  <xsl:variable
      name="characters-regex"
      select="concat('^[', $characters, '&#xFFFC;', $hyphen-char, ']+$')"
      as="xs:string" />

  <xsl:variable
      name="letters"
      select="($patterns[@language = $language]/@letters,
               $patterns[@language = '#default']/@letters)[1]"
      as="xs:string" />
  <xsl:variable
      name="letters-regex"
      select="concat('^[', $letters, '&#xFFFC;', $hyphen-char, ']+$')"
      as="xs:string" />
  <!--<xsl:message select="$language, $characters, $letters" />-->
  <xsl:variable name="as-string" as="xs:string?">
    <xsl:value-of>
      <xsl:apply-templates select="$exceptions/node()" mode="replace-hyphens" />
    </xsl:value-of>
  </xsl:variable>

  <xsl:sequence
      select="for $token in tokenize(normalize-space($as-string), '\s+')
                return if (not(matches($token, $characters-regex)) or
                           not(matches($token, $letters-regex)))
                         then replace($token, '&#xFFFC;', '&lt;hyphen/>')
                       else ()" />
</xsl:function>

<xsl:template match="hyphen" mode="replace-hyphens">
  <xsl:text>&#xFFFC;</xsl:text>
</xsl:template>

<!-- <patterns> -->

<xsl:function name="ahf:invalid-patterns" as="xs:string*" >
  <xsl:param name="patterns" as="xs:string" />

  <xsl:sequence
      select="for $token in tokenize(normalize-space($patterns), '\s+')
                return if (not(matches($token, '^[\p{L}\p{M}0-9.]+$')))
                         then $token
                       else ()" />
</xsl:function>

</xsl:stylesheet>
