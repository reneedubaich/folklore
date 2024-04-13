<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math" 
    exclude-result-prefixes="xs math" version="3.0">
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="no" include-content-type="no"
        indent="yes"/>
    <xsl:template match="/">
        <html lang="en">
            <head>
                <meta charset="UTF-8">
                    
                </meta>
                <meta name="viewport" content="width=device-width, initial-scale-1.0"></meta>
                <title>
                  <xsl:apply-templates select="//title"/>            
                </title>
                
              <!--  <style .sublist {display: none;}></style> This reads as an error-->
                <ol>
                    <li><a href="folklore_index.xhtml">Home</a></li>
                    <li><a href="methodologies.xhtml">Methodologies</a></li>
                    <li><a href="texts.xhtml">Texts</a></li>
                    <li><a href="analysis.xhtml">Analysis</a></li>
                    <li><a href="folklore_histories.xhtml">The Histories</a></li>
                </ol>
                
                <title>Nav Bar for Grimm and Original Fairytales (respectively)</title>
                <ol> <!--Grimm-->
                    <li><a>Little Briar Rose (Sleeping Beauty)</a></li>  
                    <li><a>Rapunzel</a></li>
                    <li><a>Little Snow-White (Snow White)</a></li>
                    <li><a>The Singing Sprining Lark(Beauty and the Beast)</a></li>
                    <li><a>Little Red-Cap (Red Riding Hood)</a></li>
                </ol>
                
                <ol> <!--Original-->
                    <li><a>The Sleeping Beauty in the Wood (Sleeping Beauty)</a></li>  
                    <li><a>Petrosinella (Rapunzel)</a></li>
                    <li><a>The Young Slave (Snow White)</a></li>
                    <li><a>Beauty and the Beast</a></li>
                    <li><a>Little Red Riding Hood (Red Riding Hood)</a></li>
                </ol>
           
              
                <link href="xsltstyle.css" rel="stylesheet" type="text/css"/>
                
                    <script src="folklore_script.js">  
                    </script> <!--Referring to JavaScript-->
                <title>Toggable List of Elements and Attributes </title>
            </head>
            <body>
               <ul id="mainList">
                   <!--Characteristic-->
               <li><strong>Characteristic</strong></li>
                   <div id="charSublist" class="sublist"></div>
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
               <li><strong>Autonomy</strong></li>
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
                           <li>Heroin</li>
                           <li>Societal_expectations</li>
                       </ul>
                       
                       <li>Gender</li>
                       <ul>
                         <li>Female</li>  
                           <li>Male</li>
                       </ul>
                       
                   </ul></div>
                   
                 <!--Villainization-->
               <li><strong>Villainization</strong></li>
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
                       
                   </ul></div>
                   
                   <!--Reproduction-->
               <li><strong>Reproduction</strong></li>
                   <div id="repSublist" class="sublist">
                   <ul>
                     <li>Rep_type</li>
                       <ul>
                           <li>Menstruation</li>
                           <li>Childbirth</li>
                           <li>Sex</li>
                       </ul>
                       
                   </ul></div>
                  
                  <!--Adjective-->
               <li><strong>Adjective</strong></li>
                   <div id="adjSublist" class="sublist">
                   <ul>
                      <li>Gender</li>
                       <ul>
                           <li>Female</li>
                           <li>Male</li>
                       </ul>
                   </ul></div>
                   
               </ul>
              
           
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
            
<<<<<<< HEAD
=======
            <xsl:if test="@cause">
>>>>>>> d6ab60d9b942a525aa1dc9dea9416b1f3c5c78fd
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
<<<<<<< HEAD
        <span class="class">
=======
        <span class="adj">
            
            <xsl:if test="@gender">
                <xsl:attribute name="class">
                    <xsl:value-of select="@gender"/>
                </xsl:attribute>
            </xsl:if>
            
>>>>>>> d6ab60d9b942a525aa1dc9dea9416b1f3c5c78fd
            <xsl:apply-templates/>
        </span>
    </xsl:template>

</xsl:stylesheet>

