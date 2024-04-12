<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns="http://www.w3.org/2000/svg"
    xmlns:math="http://www/w3/org/2005/xpath-functions/math" exclude-result-prefixes="#all"
    version="3.0">
    <xsl:output method="xml" indent="yes"/>

    <!-- ok sooo im just a little confused on how i should be using svg across all of our documents, especially to grab all instances of a certain attribute? 
        so im trying my hardest here ladies! -->

    <xsl:variable name="max_height" as="xs:double" select="250"/>
    <xsl:variable name="spacing" as="xs:double" select="$barwidth div 2"/>
    <xsl:variable name="max_width" as="xs:double" select="($barwidth + $spacing) + count(//characteristic)"/>
    <xsl:variable name="barwidth" as="xs:integer" select="20"/>
    <xsl:variable name="yscale" as="xs:double" select="8"/>

    <xsl:template match="/">
        <svg height="{$max_height + 200}" width="{$max_width + 500}"
            viewbox="0, -{$max_height + 100}, {$max_width + 200}, {$max_height + 200}">

        <!-- the svg test answer key was the basis for most of this. but, i can't even see anything! sorry yall -->

            <xsl:for-each select="0 to 4">
                <line x1="0" x2="{$max_width}" y1="-{. * .25 * $max_height * $yscale}"
                    y2="-{. * .25 * $max_height * $yscale}" stroke="black" stroke-dasharray="3"/>
                <text x="-5" y="-{. * .25 * $max_height * $yscale}" dominant-baseline="middle"
                    text-anchor="end" font-size="10">
                    <xsl:value-of select=". * $yscale"/>
                </text>
            </xsl:for-each>

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

    <xsl:template match="story">
        
        <xsl:variable name="xposition" as="xs:double"
            select="(count(preceding::characteristic)) * $spacing + ($spacing div 2)"/>
        <xsl:variable name="yposition" as="xs:double"
            select="characteristic => count() * $yscale"/>
        <xsl:variable name="barcolor" as="xs:string" select="
            
            if (@depiction = 'beauty') then 'pink'
            else 
            if (@depiction = 'naivity') then 'orange'
            else
            if (@depiction = 'innocent') then 'peachpuff'
            else 
            if (@depiction = 'maternal') then 'violet'
            else 
            if (@depiction = 'emotional') then 'powderblue'
            else 
            if (@depiction = 'clever') then 'mediumslateblue'
            else 
            if (@depiction = 'secluded') then 'crimson'
            else 
            if (@depiction = 'protective') then 'red'
            else 
            if (@depiction = 'brave') then 'rosybrown'
            else 
            if (@depiction = 'domesticity') then 'darksalmon'
            else 'blue'
            "/>
        
        
        <rect x="{$xposition}" y="-{$yposition}" width="{$barwidth}" height="{$yposition}" fill="{$barcolor}"/>
        
            <xsl:apply-templates/>
            <line y1="20" y2="-{$max_height}" x1="{$xposition}" x2="{$xposition}" stroke="black" stroke-width="1"/>
            <text y="50" x="{$xposition}" text-anchor="middle">
                <xsl:value-of select="characteristic"/>
            </text>
        
    </xsl:template>

</xsl:stylesheet>
