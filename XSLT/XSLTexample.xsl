<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math" 
    exclude-result-prefixes="xs math" version="3.0">
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="no" include-content-type="no"
        indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>
                    <xsl:apply-templates select="//title"/>            
                </title>
                <link href="xsltstyle.css" rel="stylesheet" type="text/css"/>
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
        <span class="quote">
            <q>
                <xsl:apply-templates/>
            </q>
        </span>
    </xsl:template>
    <!-- show how quote tag adds quotes in html   -->


    <xsl:template match="characteristic">
        <span class="char">
            
            <xsl:attribute name="class">
                <xsl:value-of select="@depiction"/> 
            </xsl:attribute>
            
           
            <xsl:if test="@age">
                <xsl:attribute name="class">
                    <xsl:value-of select="@age"/>
                </xsl:attribute>
            </xsl:if>
            
            <xsl:if test="@char_type">
                <xsl:attribute name="class">
                    <xsl:value-of select="@char_type"/>
                </xsl:attribute>
            </xsl:if>
            
            <xsl:if test="@gender">
                <xsl:attribute name="class">
                    <xsl:value-of select="@gender"/>
                </xsl:attribute>
            </xsl:if>
            
            <xsl:apply-templates/>
        </span>
    </xsl:template>
   
 
    <xsl:template match="autonomy">
        <span class="auto">
           
            <xsl:if test="@level">
                <xsl:attribute name="class">
                    <xsl:value-of select="@level"/>
                </xsl:attribute>
            </xsl:if>
            
            <xsl:if test="@auto_type">
                <xsl:attribute name="class">
                    <xsl:value-of select="@auto_type"/>
                </xsl:attribute>
            </xsl:if>
            
            <xsl:if test="@gender">
                <xsl:attribute name="class">
                    <xsl:value-of select="@gender"/>
                </xsl:attribute>
            </xsl:if>
            
            <xsl:apply-templates/>
        </span>
    </xsl:template>

    <xsl:template match="villainizaiton">
        <span class="vill">
            
            <xsl:attribute name="class">
                <xsl:value-of select="@cause"/>
            </xsl:attribute>
        
            <xsl:if test="@gender">
                <xsl:attribute name="class">
                    <xsl:value-of select="@gender"/>
                </xsl:attribute>
            </xsl:if>
            <xsl:apply-templates/>
        </span>
    </xsl:template>

   
    <xsl:template match="reproduction">
        <span class="rep">
            <xsl:if test="@rep_type">
                <xsl:attribute name="class">
                    <xsl:value-of select="@rep_type"/>
                </xsl:attribute>
            </xsl:if>
           
            <xsl:apply-templates/>
        </span>
    </xsl:template>

   

    <xsl:template match="adjective">
        <span class="class">
            <xsl:apply-templates/>
        </span>
    </xsl:template>

</xsl:stylesheet>
