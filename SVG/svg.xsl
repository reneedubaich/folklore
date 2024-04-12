<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns="http://www.w3.org/2000/svg"
    xmlns:math="http://www/w3/org/2005/xpath-functions/math" exclude-result-prefixes="#all"
    version="3.0">
    <xsl:output method="xml" indent="yes"/>

    <!-- ok sooo im just a little confused on how i should be using svg across all of our documents, especially to grab all instances of a certain attribute? 
        so im trying my hardest here ladies! -->

    <xsl:variable name="max_height" as="xs:double" select="500"/>
    <xsl:variable name="spacing" as="xs:double" select="100"/>
    <xsl:variable name="max_width" as="xs:double" select="$spacing + count(//characteristic)"/>
    <xsl:variable name="barwidth" as="xs:integer" select="20"/>
    <xsl:variable name="yscale" as="xs:double" select="10"/>

    <xsl:template match="/">
        <svg height="{$max_height + 200}" width="{$max_width + 500}"
            viewbox="-100, -{($max_height * $yscale) + 50}, {$max_width + 100}, {($max_height * $yscale) + 100}">

            <xsl:for-each select="0 to 4">
                <line x1="0" x2="{$max_width}" y1="-{. * .25 * $max_height * $yscale}"
                    y2="-{. * .25 * $max_height * $yscale}" stroke="black" stroke-dasharray="3"/>
                <text x="-5" y="-{. * .25 * $max_height * $yscale}" dominant-baseline="middle"
                    text-anchor="end" font-size="10">
                    <xsl:value-of select=". * $yscale"/>
                </text>
            </xsl:for-each>

            <xsl:apply-templates select="//characteristic"/>

            <text x="{$max_width div 2}" y="-{$max_height + 70}" text-anchor="middle">Red Riding
                Hood Characteristic Appearances</text>
            <text x="{$max_width div 2}" y="50" text-anchor="middle">Characteristic Type</text>
            <text x="-50" y="-{($max_height + 50) div 2}" text-anchor="middle" writing-mode="tb"
                >Number of Mentions</text>

            <line x1="0" x2="{$max_width}" y1="0" y2="0" stroke="black" stroke-linecap="square"/>
            <line x1="0" x2="0" y1="0" y2="-{$max_height * $yscale}" stroke="black"
                stroke-linecap="square"/>

        </svg>
    </xsl:template>

</xsl:stylesheet>
