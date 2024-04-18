<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns="http://www.w3.org/1999/xhtml"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math" exclude-result-prefixes="#all"
    version="3.0">
    <!-- Setting up document nodes variable for Side by Side view of each story -->
    <xsl:variable name="tales" as="document-node()+" select="
            collection('../xmlGrimmMarkup?select=*.xml') | collection('../xmlOriginalMarkup?select=*.xml')
            "/>
    <!-- Template for Side by Side view -->
    <xsl:template name="xsl:initial-template">
        <xsl:for-each-group select="$tales" group-by="descendant::story/@story_title">
            <!-- Return an output for each story that contains both versions and save them in Webpage folder -->
            <xsl:result-document
                href="../Webpage/Grimm%20+%20Original%20xhtmls/tale_{current-grouping-key()}.xhtml"
                method="xhtml" html-version="5" omit-xml-declaration="no" include-content-type="no"
                indent="yes">
                <!-- <script src="folklore_script.js">  
                </script>-->
                <!--Referring to JavaScript-->
                <html>
                    <head>
                        <title>
                            <xsl:value-of select="current-grouping-key()"/>
                            <!-- Title from @story_title  -->
                        </title>
                        <link href="xsltstyle.css" rel="stylesheet" type="text/css"/>
                        <link href="../Webpage/indexcss.css" rel="stylesheet" type="text/css"/>
                    </head>
                    <body>
                        <ol>
                            <h1>Navigation Bar</h1>
                            <li>
                                <a href="folklore_index.xhtml">Home</a>
                            </li>
                            <li>
                                <a href="methodologies.xhtml">Methodologies</a>
                            </li>
                            <li>
                                <a href="texts.xhtml">Texts</a>
                            </li>
                            <li>
                                <a href="analysis.xhtml">Analysis</a>
                            </li>
                            <li>
                                <a href="folklore_histories.xhtml">The Histories</a>
                            </li>
                        </ol>
                        <br/>

                       <!-- <h2>Nav Bar for Grimm and Original Fairytales (respectively)</h2>
                        <ol>
                            
                            <li>
                                <a href="littlebriarrose.xhtml">Little Briar Rose (Sleeping
                                    Beauty)</a>
                            </li>
                            <li>
                                <a href="rapunzel6.xhtml">Rapunzel</a>
                            </li>
                            <li>
                                <a href="snowwhite_grimm.xhtml">Little Snow-White (Snow White)</a>
                            </li>
                            <li>
                                <a href="singingsoaring.xhtml">The Singing Sprining Lark(Beauty and
                                    the Beast)</a>
                            </li>
                            <li>
                                <a href="redridingfirst.xhtml">Little Red-Cap (Red Riding Hood)</a>
                            </li>
                        </ol>

                        <ol>
                            
                            <li>
                                <a href="thesleepingbeautyinthewood.xhtml">The Sleeping Beauty in
                                    the Wood (Sleeping Beauty)</a>
                            </li>
                            <li>
                                <a href="petrosinella2.xhtml">Petrosinella (Rapunzel)</a>
                            </li>
                            <li>
                                <a href="snowwhite_original.xhtml">The Young Slave (Snow White)</a>
                            </li>
                            <li>
                                <a href="beautyandbeast.xhtml">Beauty and the Beast</a>
                            </li>
                            <li>
                                <a href="redriding_frenchadaptation.xhtml">Little Red Riding Hood
                                    (Red Riding Hood)</a> 
                            </li>
                        </ol> -->
                        
                        <script src="folklore_script.js">  
                        
                        
                       <meta charset="UTF-8"></meta>
                        <meta name="viewport" content="width=devide-width, initial-scale=1.0"></meta>
                        
                        <style>
                           .sublist {display: none;} 
                            
                        </style>
                        
                        <h3>Toggable List of Elements and Attributes </h3>
                        
                        <ul id="mainList">
                            <!--Characteristic-->
                            <li class="category">
                                <strong>Characteristic</strong>
                            </li>
                            <div id="charSublist" class="sublist"/>
                            <ul>
                                <li>Depiction</li>
                                <ul>
                                    <li>Beauty</li>
                                    <li>Innocent</li>
                                    <li>Naivity</li>
                                    <li>Maternal</li>
                                    <li>Emotional</li>
                                    <li>Clever</li>
                                    <li>Secluded</li>
                                    <li>Protective</li>
                                    <li>Brave</li>
                                    <li>Domesticity</li>
                                </ul>

                                <li>Gender</li>
                                <ul>
                                    <li>Female</li>
                                    <li>Male</li>
                                </ul>

                                <li>Age</li>
                                <ul>
                                    <li>Young</li>
                                    <li>Old</li>
                                </ul>

                                <li>Char_type</li>
                                <ul>
                                    <li>Physical</li>
                                    <li>Nonphysical</li>
                                </ul>
                            </ul>

                            <!--Autonomy-->
                            <li class="category">
                                <strong>Autonomy</strong>
                            </li>
                            <div id="autoSublist" class="sublist">
                                <ul>
                                    <li>Auto_type</li>
                                    <ul>
                                        <li>Controlled</li>
                                        <li>Free</li>
                                    </ul>

                                    <li>Level</li>
                                    <ul>
                                        <li>Male_savior</li>
                                        <li>Damsel</li>
                                        <li>Evil</li>
                                        <li>Religious</li>
                                        <li>Heroine</li>
                                        <li>Societal_expectations</li>
                                    </ul>

                                    <li>Gender</li>
                                    <ul>
                                        <li>Female</li>
                                        <li>Male</li>
                                    </ul>

                                </ul>
                            </div>

                            <!--Villainization-->
                            <li class="category">
                                <strong>Villainization</strong>
                            </li>
                            <div id="villSublist" class="sublist">
                                <ul>
                                    <li>Cause</li>
                                    <ul>
                                        <li>Competition</li>
                                        <li>Jealousy</li>
                                        <li>Revenge</li>
                                        <li>Unspecified</li>
                                        <li>Sex</li>
                                        <li>Power</li>
                                        <li>Manipulation</li>
                                    </ul>

                                    <li>Gender</li>
                                    <ul>
                                        <li>Female</li>
                                        <li>Male</li>
                                    </ul>

                                </ul>
                            </div>

                            <!--Reproduction-->
                            <li class="category">
                                <strong>Reproduction</strong>
                            </li>
                            <div id="repSublist" class="sublist">
                                <ul>
                                    <li>Rep_type</li>
                                    <ul>
                                        <li>Menstruation</li>
                                        <li>Childbirth</li>
                                        <li>Sex</li>
                                    </ul>

                                </ul>
                            </div>

                            <!--Adjective-->
                            <li class="category">
                                <strong>Adjective</strong>
                            </li>
                            <div id="adjSublist" class="sublist">
                                <ul>
                                    <li>Gender</li>
                                    <ul>
                                        <li>Female</li>
                                        <li>Male</li>
                                    </ul>
                                </ul>
                            </div>
                        </ul>
                        </script>
                        <script>
                            document.querySlectorAll('category').forEach(item => {
                            item.addEventListener('click', function() {
                            let sublist = this.nextElementSibling; 
                            sublist.style.display = (sublist.style.display === 'none') ? 'block' : 'none';
                            });
                            });
                            
                        </script>
                        <section>
                            <h2>Jacob and Wilhelm Grimm</h2>
                            <!-- For original version stories, take the author and wrap in h2 element -->
                            <h2>
                                <xsl:for-each select="current-group()">
                                    <xsl:sort select="story[@version = 'original']"/>
                                    <xsl:apply-templates select="//author"/>
                                </xsl:for-each>
                            </h2>
                        </section>
                        <main>
                            <!-- Paragraphs of each version side by side  -->

                            <xsl:for-each-group select="current-group()" group-by="position()">
                                <xsl:sort select="current-grouping-key()" data-type="number"/>
                                <xsl:for-each select="current-group()">
                                    <xsl:sort select="ancestor::story/@version"/>
                                    <div>
                                        <h3>
                                            <xsl:apply-templates select="//title"/>
                                            <xsl:text> </xsl:text>
                                            (<xsl:apply-templates select="//date"/>)
                                        </h3>
                                        <xsl:apply-templates select="//p"/>
                                    </div>
                                </xsl:for-each>
                            </xsl:for-each-group>
                        </main>
                    </body>
                </html>

            </xsl:result-document>

        </xsl:for-each-group>
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

            <xsl:if test="@depiction">
                <xsl:attribute name="class">
                    <xsl:value-of select="@depiction"/>
                </xsl:attribute>
            </xsl:if>


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

    <xsl:template match="villainization">
        <span class="vill">

            <xsl:if test="@cause">
            <xsl:attribute name="class">
                <xsl:value-of select="@cause"/>
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

        <span class="adj">
            <xsl:if test="@gender">
                <xsl:attribute name="class">
                    <xsl:value-of select="@gender"/>
                </xsl:attribute>
                
            </xsl:if>

            <xsl:apply-templates/>
        </span>
    </xsl:template>


</xsl:stylesheet>
