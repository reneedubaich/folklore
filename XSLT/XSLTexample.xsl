<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math" xmlns="http://www.w3.org/1999/xhtml"
    exclude-result-prefixes="xs math" version="3.0">
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="no" include-content-type="no"
        indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>
                    <xsl:apply-templates select="//title"/>
                </title>
                    <link rel="stylesheet" href="xsltstyles.css"/>
            </head>
            <!-- I made it so that when open in the browser, the webpage tab states the unique story title -->
            <body>
                <h1>
                    <xsl:apply-templates select="//title"/>
                </h1>
                <!-- take the text within the title element and wrap it in h1 header-->
                <section>
                    <xsl:apply-templates select="//p"/>
                </section>
                <!-- below the title, create a section that contains all of the descendants of the paragraph element -->
            </body>
        </html>
    </xsl:template>
    <xsl:template match="p">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    <xsl:template match="quote">
        <q>
            <xsl:apply-templates/>
        </q>
    </xsl:template>
<!-- show how quote tag adds quotes in html   -->
</xsl:stylesheet>
