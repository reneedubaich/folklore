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
                </script>-\->-->
                <!--Referring to JavaScript-->
                <html>
                    <head>
                        <title>
                            <xsl:value-of select="current-grouping-key()"/>
                            <!-- Title from @story_title  -->
                        </title>
                        <link href="xsltstyle.css" rel="stylesheet" type="text/css"/>
                        <link href="../indexcss.css" rel="stylesheet" type="text/css"/>
                        <script type="text/javascript" src="folklore_script.js"/>
                    </head>

                    <body>
                        <h1>Navigation Bar</h1>
                        <ol>
                            <li>
                                <a href="index.xhtml">Home</a>
                            </li>
                            <li>
                                <a href="methodologies.xhtml">Methodologies</a>
                            </li>
                            <li>
                                <a href="folklore_histories.xhtml">Textual History</a>
                            </li>
                            <li>
                                <a href="texts.xhtml">Texts</a>
                            </li>
                            <li>
                                <a href="analysis.xhtml">Analysis</a>
                            </li>
                            <li>
                                <a href="conclusion.xhtml">Conclusion</a>
                            </li>
                        </ol>
                        <br/>


                        <!--     <script src="folklore_script.js">  -->


                        <!--   <meta charset="UTF-8"></meta>
                        <meta name="viewport" content="width=devide-width, initial-scale=1.0"></meta>
                        
                        <style>
                           .sublist {display: none;} 
                            
                        </style> -->

                     <!--  <h3>Toggable List of Elements and Attributes </h3> -->
<h3>Elemental Markup</h3>
  <table>
      <tr><td>"Characteristic" -- orange underline</td></tr>
      <tr><td>"Autonomy" -- blue underline</td></tr>
      <tr><td>"Quote" -- coral underline</td></tr>
      <tr><td>"Villainization" -- green underline</td></tr>
      <tr><td>"Reproduction" -- purple underline</td></tr>
      <tr><td> "Adjective" -- gold underline</td></tr>
  </table>                      
<br/>
                        
<h3>Characteristic</h3>
<table border="black">
    <tr><td>"char_type" -- physical (orange), nonphysical (orangered)</td></tr>
    <tr><td>"depiction" -- naivity (violet), innocent (mistyrose), maternal (salmon), emotional (lightpink),
    clever (pink), secluded (mediumvioletred), protective (magenta), brave (deeppink), domesticity (fuschia), beauty (hotpink)</td></tr>
   
</table>
   
<br/>
<h3>Autonomy</h3>
<table>
    <tr><td>"auto_type" -- controlled (peachpuff), free (rosybrown)</td></tr>
    <tr><td>"level" -- male_savior (darkcyan), damsel (deepskyblue), evil (dodgerblue), religious (aqua), heroine (cornflowerblue),
    societal_expectations (royalblue)</td></tr>
</table>
   
   <br/>
<h3>Villainization</h3>
    <table>
        <tr><td>"cause" -- competition (darkolivegreen), jealousy (forestgreen), revenge (lightgreen), unspecified (olivedrab), sex (palegreen), manipulation (seagreen),
        power (springgreen)</td></tr>
        
    </table>
    
    <br/>
  <h3>Reproduction</h3>    
          <table>
              <tr><td> "rep_type" -- menstruation (orchid), childbirth (purple), sex (plum)</td></tr>
              
          </table>              
                        
<br/>
<h3>Applicable to Multiple</h3>
<table>
    <tr><td>"gender" -- female (paleturquoise), male (palegreen)</td></tr>
    <tr><td>"age" -- young (crimson), old (firebrick)</td></tr>
    
</table>
                   <div class="sticky">
                            <!--Characteristic-->

                           <!-- <p> *I left this so our javascript efforts are recorded*
                                <strong>Characteristic:</strong>
                            </p>
                            <p class="removespace">
                                <strong>Depiction</strong>
                            </p>
                            <input type="checkbox" id="beauty"/>
                            <span class="beauty">Beauty</span>

                            <br/>
                            <input type="checkbox" id="innocent"/>
                            <span class="">Innocent</span>

                            <br/>
                            <input type="checkbox" id="naivity"/>
                            <span class="naivity">Naivity</span>

                            <br/>
                            <input type="checkbox" id="maternal"/>
                            <span class="maternal">Maternal</span>

                            <br/>
                            <input type="checkbox" id="emotional"/>
                            <span class="emotional">Emotional</span>

                            <br/>
                            <input type="checkbox" id="clever"/>
                            <span class="clever">Clever</span>

                            <br/>
                            <input type="checkbox" id="secluded"/>
                            <span class="secluded">Secluded</span>

                            <br/>
                            <input type="checkbox" id="protective"/>
                            <span class="protective">Protective</span>

                            <br/>
                            <input type="checkbox" id="brave"/>
                            <span class="brave">Brave</span>

                            <br/>
                            <input type="checkbox" id="domesticity"/>
                            <span class="domesticity">Domesticity</span>


                            <br/>
                            <p class="removespace">
                                <strong>Gender</strong>
                            </p>

                     
                            <input type="checkbox" id="chargender_female"/>
                            <span class="charggender_female">Female</span>

                            <br/>
                            <input type="checkbox" id="chargender_male"/>
                            <span class="chargender_male">Male</span>


                            <br/>
                            <p class="removespace">
                                <strong>Age</strong>
                            </p>

                            <br/>
                            <input type="checkbox" id="age_young"/>
                            <span class="age_young">Young</span>

                            <br/>
                            <input type="checkbox" id="age_old"/>
                            <span class="age_old">Old</span>



                            <br/>
                            <p class="removespace">
                                <strong>Char_type</strong>
                            </p>

                            <input type="checkbox" id="physical"/>
                            <span class="physical">Physical</span>

                            <br/>
<<<<<<< HEAD
                            <input type="checkbox" id="nonphysical"/>
                            <span class="nonphysical">Nonphysical</span>
=======
                            <input type="checkbox" value="chartype_nonphysical"/>
                            <span class="chartype_nonphysical">Nonphysical</span> -->
>>>>>>> 312657e94be8dbd4a4a5f538dce705578cd4725a


                            <!--Autonomy-->

                          <!--  <strong>Autonomy:</strong>


                            <p class="removespace">
                                <strong>Auto_type</strong>
                            </p>

                            <br/>
                            <input type="checkbox" id="controlled"/>
                            <span class="controlled">Controlled</span>

                            <br/>
                            <input type="checkbox" id="free"/>
                            <span class="free">Free</span>


                            <br/>
                            <p class="removespace">
                                <strong>Level</strong>
                            </p>

           
                            <input type="checkbox" id="male_savior"/>
                            <span class="male_savior">Male_savior</span>


                            <br/>
                            <input type="checkbox" id="damsel"/>
                            <span class="damsel">Damsel</span>


                            <br/>
                            <input type="checkbox" id="evil"/>
                            <span class="evil">Evil</span>

                            <br/>
                            <input type="checkbox" id="religious"/>
                            <span class="religious">Religious</span>

                            <br/>
                            <input type="checkbox" id="heroine"/>
                            <span class="heroine">Heroine</span>

                            <br/>
                            <input type="checkbox" id="societal_expectations"/>
                            <span class="societal_expectations">Societal_expectations</span>


                            <br/>
                            <p class="removespace">
                                <strong>Gender</strong>
                            </p>

      
                            <input type="checkbox" id="autogender_female"/>
                            <span class="autogender_female">Female</span>

                            <br/>
<<<<<<< HEAD
                            <input type="checkbox" id="autogender_male"/>
                            <span class="autogender_male">Male</span>
=======
                            <input type="checkbox" value="autogender_male"/>
                            <span class="autogender_male">Male</span> -->
>>>>>>> 312657e94be8dbd4a4a5f538dce705578cd4725a


                            <!--Villainization-->

                       <!--     <strong>Villainization:</strong>



                            <p class="removespace">
                                <strong>Cause</strong>
                            </p>

             
                            <input type="checkbox" id="competition"/>
                            <span class="competition">Competition</span>

                            <br/>
                            <input type="checkbox" id="jealousy"/>
                            <span class="jealousy">Jealousy</span>

                            <br/>
                            <input type="checkbox" id="revenge"/>
                            <span class="revenge">Revenge</span>

                            <br/>
                            <input type="checkbox" id="unspecified"/>
                            <span class="unspecified">Unspecified</span>

                            <br/>
                            <input type="checkbox" id="sex"/>
                            <span class="sex">Sex</span>

                            <br/>
                            <input type="checkbox" id="power"/>
                            <span class="power">Power</span>


                            <br/>
                            <input type="checkbox" id="manipulation"/>
                            <span class="manipulation">Manipulation</span>


                            <br/>
                            <p class="removespace">
                                <strong>Gender</strong>
                            </p>

                     
                            <input type="checkbox" id="villgender_female"/>
                            <span class="villgender_female">Female</span>

                            <br/>
<<<<<<< HEAD
                            <input type="checkbox" id="villgender_male"/>
                            <span class="villgender_male">Male</span>
=======
                            <input type="checkbox" value="villgender_male"/>
                            <span class="villgender_male">Male</span> -->
>>>>>>> 312657e94be8dbd4a4a5f538dce705578cd4725a

                            <!--Reproduction-->

                         <!--   <strong>Reproduction:</strong>


                   
                            <p class="removespace">
                                <strong>Rep_type</strong>
                            </p>

                    
                            <input type="checkbox" id="menstruation"/>
                            <span class="menstruation">Menstruation</span>

                            <br/>
                            <input type="checkbox" id="childbirth"/>
                            <span class="childbirth">Childbirth</span>

                            <br/>
<<<<<<< HEAD
                            <input type="checkbox" id="sex"/>
                            <span class="sex">Sex</span>
=======
                            <input type="checkbox" value="reptype_sex"/>
                            <span class="reptype_sex">Sex</span> -->
>>>>>>> 312657e94be8dbd4a4a5f538dce705578cd4725a


                            <!--Adjective-->

                         <!--   <strong>Adjective:</strong>


                           
                            <p class="removespace">
                                <strong>Gender</strong>
                            </p>

                    
                            <input type="checkbox" id="adjgender_female"/>
                            <span class="adjgender_female">Female</span>

                            <br/>
<<<<<<< HEAD
                            <input type="checkbox" id="adjgender_male"/>
                            <span class="adjgender_male">Male</span>
=======
                            <input type="checkbox" value="adjgender_male"/>
                            <span class="adjgender_male">Male</span> -->
>>>>>>> 312657e94be8dbd4a4a5f538dce705578cd4725a

                        </div> 

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
                                            <xsl:text> </xsl:text> (<xsl:apply-templates
                                                select="//date"/>) </h3>
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
            
            


            <!-- Apply templates recursively
            <xsl:apply-templates/>  -->

            <xsl:copy-of select="."/>
            <!-- <xsl:copy-of select="node()"/> -->



        </span>
    </xsl:template>



</xsl:stylesheet>