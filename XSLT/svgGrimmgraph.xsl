<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math" exclude-result-prefixes="#all"
    xmlns="http://www.w3.org/2000/svg" version="3.0">
    <xsl:output method="xml" indent="yes"/>
    <!-- ================================================================ -->
    <!-- Stylesheet variables                                             -->
    <!-- ================================================================ -->
    <xsl:variable name="grimmtales" as="document-node()+" select="
        collection('../xmlGrimmMarkup?select=*.xml')"/>
    <xsl:variable name="max_height" as="xs:double" select="800"/>
    <xsl:variable name="spacing" as="xs:double" select="200"/>
    <xsl:variable name="max_width" as="xs:double" select="($spacing) * count($grimmtales//story)"/>
    <!-- ================================================================ -->
    <!-- Templates                                                        -->
    <!-- ================================================================ -->
    <xsl:template name="xsl:initial-template">
        <xsl:result-document href="../SVG/grimmgraph.svg"
            method="xml" omit-xml-declaration="no" include-content-type="no"
            indent="yes">
        <svg height="{$max_height + 300}" width="{$max_width + 400}"
            viewBox="-50 -{$max_height + 100} {$max_width + 200} {$max_height + 200}">
        <xsl:for-each-group select="$grimmtales" group-by="descendant::story">
            
            <!-- ==================================================== -->
            <!-- Create axis labels                                   -->
            <!-- ==================================================== -->
            <text x="{$max_width div 2}" y="-{$max_height + 50}" text-anchor="middle"
                font-size="18">Female Autonomy in Grimm Fairytales</text>
            <text x="{$max_width div 2}" y="70" text-anchor="middle" font-size="16">Fairytale</text>
            <text y="-{$max_height div 2}" x="-70" text-anchor="middle" font-size="16"
                writing-mode="tb">Number of Instances</text>
            <!-- ==================================================== -->
            <!-- Create legend                                        -->
            <!-- ==================================================== -->
            <text x="{$max_width + 100}" y="-{$max_height * (2 div 3)}" font-size="12"
                dominant-baseline="middle">Freed</text>
            <circle cx="{$max_width + 80}" cy="-{$max_height * (2 div 3)}" r="10" fill="blue"
                fill-opacity=".25"/>
            <text x="{$max_width + 100}" y="-{$max_height div 2}" font-size="12"
                dominant-baseline="middle">Controlled</text>
            <circle cx="{$max_width + 80}" cy="-{$max_height div 2}" r="10" fill="red"
                fill-opacity=".25"/>
            <!-- ==================================================== -->
            <!-- Create bars and vertical ruling      -->
            <!-- ==================================================== -->
            <xsl:apply-templates select="$grimmtales/story"/>
        </xsl:for-each-group>
            <!-- ==================================================== -->
            <!-- Create horizontal ruling with labels                 -->
            <!-- ==================================================== -->
            <xsl:for-each select="0 to 7">
                <xsl:variable name="ruling_height" as="xs:double" select=". div 5 * $max_height"/>
                <line x1="0" x2="{$max_width}" y1="-{$ruling_height}" y2="-{$ruling_height}"
                    stroke="black" stroke-width="1"/>
                <text x="-20" y="-{$ruling_height}" text-anchor="end" dominant-baseline="middle"
                    font-size="12">
                    <xsl:value-of select="$ruling_height div 40"/>
                </text>
            </xsl:for-each>
        </svg>
        </xsl:result-document>
    </xsl:template>
    <xsl:template match="story">
        <!-- ============================================================ -->
        <!-- Template variables                                           -->
        <!-- ============================================================ -->
        <xsl:variable name="xpos" as="xs:double"
            select="((position() - 1) * $spacing) + ($spacing div 2)"/>
        <!-- ====================================== ====================== -->
        <!-- Create control bars                                               -->
        <!-- ============================================================ -->
        <xsl:variable name="controlledCount" as="xs:double" select="count(//autonomy[@auto_type='controlled'])"/>
        <rect x='{$xpos}' y='-{$controlledCount * 40}' width="20" height="{$controlledCount * 40}" fill="cornflowerblue"/>
        <!-- ============================================================ -->
        <!-- Create freed bars                                               -->
        <!-- ============================================================ -->
        <xsl:variable name="freeCount" as="xs:double" select="count(//autonomy[@auto_type='free'])"/>
        <rect x='{$xpos + 20}' y='-{$freeCount * 40}' width="20" height="{$freeCount * 40}" fill="crimson"/>
        <!-- ============================================================ -->
        <!-- Create story label                        -->
        <!-- ============================================================ -->
        <text y="40" x="{$xpos}" text-anchor="middle" font-size="12">
            <xsl:apply-templates select="title"/>
        </text>
    </xsl:template>
</xsl:stylesheet>