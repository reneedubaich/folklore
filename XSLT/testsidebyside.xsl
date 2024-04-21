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
    <xsl:template match="xsl:initial-template">
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
                        <link type="text/javascript" scr="folklore_script.js"/>
                    </head>
                    
                    <body>
                        <ol>
                            <h1>Navigation Bar</h1>
                            <li><a href="../Webpage/index.xhtml">Home</a></li>
                            <li><a href="../Webpage/methodologies.xhtml">Methodologies</a></li>
                            <li><a href="../Webpage/folklore_histories.xhtml">The Histories</a></li>
                            <li><a href="../Webpage/texts.xhtml">Texts</a></li>
                            <li><a href="../Webpage/analysis.xhtml">Analysis</a></li>
                            <li><a href="../Webpage/conclusion.xhtml">Conclusion</a></li>
                        </ol>
                        <br/>

                      
                        <script src="folklore_script.js">  
                        
                        
                    <!--   <meta charset="UTF-8"></meta>
                        <meta name="viewport" content="width=devide-width, initial-scale=1.0"></meta>
                        
                        <style>
                           .sublist {display: none;} 
                            
                        </style> -->
                        
                        <h3>Toggable List of Elements and Attributes </h3>
                        
                        <div class="stick">
                            <!--Characteristic-->
                            
                                <strong>Characteristic:</strong>
                            
                            <br/>
                                <p class="removespace"><strong>Depiction</strong></p>
                                
                                    <br/>
                                        <input type="checkbox" value="depiction_beauty"/>
                                        <span class="depiction_beauty">Beauty</span>
                                    
                                    <br/>
                                    <input type="checkbox" value="depiction_innocent"/>
                            <span class="depiction_">Innocent</span>
                                    
                                    <br/>
                            <input type="checkbox" value="depiction_naivity"/>
                            <span class="depiction_naivity">Naivity</span>
                                   
                                    <br/>
                            <input type="checkbox" value="depiction_maternal"/>
                            <span class="depiction_maternal">Maternal</span>
                     
                                    <br/>
                            <input type="checkbox" value="depiction_emotional"/>
                            <span class="depiction_emotional">Emotional</span>
                                    
                            <br/>
                            <input type="checkbox" value="depiction_clever"/>
                            <span class="depiction_clever">Clever</span>
                                    
                            <br/>
                            <input type="checkbox" value="depiction_secluded"/>
                            <span class="depiction_secluded">Secluded</span>
                                    
                            <br/>
                            <input type="checkbox" value="depiction_protective"/>
                            <span class="depiction_protective">Protective</span>
                                    
                            <br/>
                            <input type="checkbox" value="depiction_brave"/>
                            <span class="depiction_brave">Brave</span> 
                                    
                            <br/>
                            <input type="checkbox" value="depiction_domesticity"/>
                            <span class="depiction_domesticity">Domesticity</span>  
                                    
                                    
                                <br/>
                                <p class="removespace"><strong>Gender</strong></p>
                                
                            <br/>
                            <input type="checkbox" value="chargender_female"/>
                            <span class="charggender_female">Female</span>
                                    
                            <br/>
                            <input type="checkbox" value="chargender_male"/>
                            <span class="chargender_male">Male</span>
                                    
                            
                            <br/>
                                <p class="removespace"><strong>Age</strong></p>
                                
                            <br/>
                            <input type="checkbox" value="age_young"/>
                            <span class="age_young">Young</span>
                                   
                            <br/>
                            <input type="checkbox" value="age_old"/>
                            <span class="age_old">Old</span>
                                    
                              
                              
                              <br/>
                                <p class="removespace"><strong>Char_type</strong></p>
                                
                            <br/>
                            <input type="checkbox" value="chartype_physical"/>
                            <span class="chartype_physical">Physical</span>
                                    
                            <br/>
                            <input type="checkbox" value="chartype_nonphysical"/>
                            <span class="chartype_nonphysical">Nonphysical</span>
                                   

                            <!--Autonomy-->
                           
                                <strong>Autonomy:</strong>
                            
                                <br/>
                                    <p class="removespace"><strong>Auto_type</strong></p>
                                    
                            <br/>
                            <input type="checkbox" value="autotype_controlled"/>
                            <span class="autotype_controlled">Controlled</span>
                                        
                            <br/>
                            <input type="checkbox" value="autotype_free"/>
                            <span class="autotype_free">Free</span>
                                        
                              
                              <br/>
                                    <p class="removespace"><strong>Level</strong></p>
                                    
                            <br/>
                            <input type="checkbox" value="level_male_savior"/>
                            <span class="level_male_savior">Male_savior</span>
                                        
                                        
                            <br/>
                            <input type="checkbox" value="level_damsel"/>
                            <span class="level_damsel">Damsel</span>
                                        
                                       
                            <br/>
                            <input type="checkbox" value="level_evil"/>
                            <span class="level_evil">Evil</span>
                                   
                            <br/>
                            <input type="checkbox" value="level_religious"/>
                            <span class="level_religious">Religious</span>
                            
                            <br/>
                            <input type="checkbox" value="level_heroine"/>
                            <span class="level_heroine">Heroine</span>
                                        
                            <br/>
                            <input type="checkbox" value="level_societal_expectations"/>
                            <span class="level_societal_expectations">Societal_expectations</span>
                                       

                                 <br/>
                                    <p class="removespace"><strong>Gender</strong></p>
                           
                            <br/>
                            <input type="checkbox" value="autogender_female"/>
                            <span class="autogender_female">Female</span>
                            
                            <br/>
                            <input type="checkbox" value="autogender_male"/>
                            <span class="autogender_male">Male</span>

                           
                            <!--Villainization-->
                            
                                <strong>Villainization:</strong>
                            
                            
                                
                                    <p class="removespace"><strong>Cause</strong></p>
                                    
                            <br/>
                            <input type="checkbox" value="cause_competition"/>
                            <span class="cause_competition">Competition</span>
                            
                            <br/>
                            <input type="checkbox" value="cause_jealousy"/>
                            <span class="cause_jealousy">Jealousy</span>
                                        
                            <br/>
                            <input type="checkbox" value="cause_revenge"/>
                            <span class="cause_revenge">Revenge</span>
                            
                            <br/>
                            <input type="checkbox" value="cause_unspecified"/>
                            <span class="cause_unspecified">Unspecified</span>
                                          
                            <br/>
                            <input type="checkbox" value="cause_sex"/>
                            <span class="cause_sex">Sex</span>
                            
                            <br/>
                            <input type="checkbox" value="cause_power"/>
                            <span class="cause_power">Power</span>
                                       
                                        
                            <br/>
                            <input type="checkbox" value="cause_manipulation"/>
                            <span class="cause_manipulation">Manipulation</span>
                                
                                
                            <br/>
                            <p class="removespace"><strong>Gender</strong></p>
                            
                            <br/>
                            <input type="checkbox" value="villgender_female"/>
                            <span class="villgender_female">Female</span>
                            
                            <br/>
                            <input type="checkbox" value="villgender_male"/>
                            <span class="villgender_male">Male</span>

                            <!--Reproduction-->
                           
                                <strong>Reproduction:</strong>
                            
                            
                            <br/>
                            <p class="removespace"><strong>Rep_type</strong></p>
                            
                            <br/>
                            <input type="checkbox" value="reptype_menstruation"/>
                            <span class="reptype_menstruation">Menstruation</span>
                            
                            <br/>
                            <input type="checkbox" value="reptype_childbirth"/>
                            <span class="reptype_childbirth">Childbirth</span>
                              
                              <br/>
                            <input type="checkbox" value="reptype_sex"/>
                            <span class="reptype_sex">Sex</span>
                                       

                            <!--Adjective-->
                            
                                <strong>Adjective:</strong>
                            
                            
                            <br/>
                            <p class="removespace"><strong>Gender</strong></p>
                            
                            <br/>
                            <input type="checkbox" value="adjgender_female"/>
                            <span class="adjgender_female">Female</span>
                            
                            <br/>
                            <input type="checkbox" value="adjgender_male"/>
                            <span class="adjgender_male">Male</span>
                             
                        </div></script>
                     
                        <!--  <script>
                            document.querySlectorAll('category').forEach(item => {
                            item.addEventListener('click', function() {
                            let sublist = this.nextElementSibling; 
                            sublist.style.display = (sublist.style.display === 'none') ? 'block' : 'none';
                            });
                            });
                            
                        </script> -->
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
            
            <!-- Apply templates recursively
            <xsl:apply-templates/>  -->
            
            <xsl:copy-of select="."/>
            <!-- <xsl:copy-of select="node()"/> -->
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
            <!-- Apply templates recursively
            <xsl:apply-templates/>  -->
            
            <xsl:copy-of select="."/>
            <!-- <xsl:copy-of select="node()"/> -->
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
            <!-- Apply templates recursively
            <xsl:apply-templates/>  -->
            
            <xsl:copy-of select="."/>
            <!-- <xsl:copy-of select="node()"/> -->
        </span>
    </xsl:template>
    
    
    <xsl:template match="reproduction">
        <span class="rep">
            <xsl:if test="@rep_type">
                <xsl:attribute name="class">
                    <xsl:value-of select="@rep_type"/>
                </xsl:attribute>
            </xsl:if>
            <!-- Apply templates recursively
            <xsl:apply-templates/>  -->
            
                <xsl:copy-of select="."/>
                <!-- <xsl:copy-of select="node()"/> -->
            
            
        </span>
    </xsl:template>
    
    
    
    <xsl:template match="adjective">
        
        <span class="adj">
            <xsl:if test="@gender">
                <xsl:attribute name="class">
                    <xsl:value-of select="@gender"/>
                </xsl:attribute>
                
            </xsl:if>
             
            <!-- Apply templates recursively
            <xsl:apply-templates/>  -->
            
                <xsl:copy-of select="."/>
                <!-- <xsl:copy-of select="node()"/> -->
            
            
        </span>
    </xsl:template>



</xsl:stylesheet>

