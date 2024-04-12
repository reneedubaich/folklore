<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns="http://www.w3.org/1999/xhtml"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math" exclude-result-prefixes="#all"
    version="3.0">
    <xsl:variable name="tales" as="document-node()+"
        select="collection('../xmlGrimmMarkup?select=redridingfirst.xml') | collection('../xmlOriginalMarkup?select=redriding_frenchadaptation.xml')
        "/>
    <xsl:template name="xsl:initial-template">
        <xsl:for-each-group select="$tales" group-by="descendant::story/@type">
            <xsl:result-document
                href="../Webpage/tale_{current-grouping-key()}.xhtml"
                method="xhtml" html-version="5" omit-xml-declaration="no" include-content-type="no"
                indent="yes">
        <html>
            <head>
                <title>
                    <xsl:value-of select="current-grouping-key()"/>           
                </title>
                <link href="sidebysidetest.css" rel="stylesheet" type="text/css"/>
            </head>
            <!-- I made it so that when open in the browser, the webpage tab states the unique story title -->
            <body>
                <section>
                    <h2>Original</h2>
                    <h2>Grimm</h2>
                </section>
                <main>
                    <!-- group ayahs by ayah number -->
                    
                        <xsl:for-each-group select="current-group()" group-by="position()">
                            <xsl:sort select="current-grouping-key()" data-type="number"/>
                            <xsl:for-each select="current-group()">
                            <xsl:sort select="ancestor::story/@version"/>
                                <div>
                                    <xsl:apply-templates select="//p"/>
                                </div>
                        </xsl:for-each>
                        </xsl:for-each-group>
                </main>
                <!-- below the title, create a section that contains all of the descendants of the paragraph element -->
            </body>
        </html>
            </xsl:result-document>
        </xsl:for-each-group>
    </xsl:template>
    <xsl:template match='p'>
        <p><xsl:apply-templates/></p>
    </xsl:template>
</xsl:stylesheet>
