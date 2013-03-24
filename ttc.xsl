<?xml version="1.0" encoding="UTF-8" ?> 
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >


  <xsl:output method="html" indent="yes"/>
 

  
    <xsl:template match="thesaurus">
    <html>
    <head>
    <link rel="stylesheet" href="ttc.css" media="all"></link>
    </head>
    <body>

<header>
     <h1><xsl:value-of select="//titre/@id"/></h1>
</header>
     
  <xsl:for-each select="term0"> <!--#début de boucle term0-->
  
      <table id="page-table"><tr><td id="page-td">
    <div id="global">
  
     <h1><xsl:number format="1. "/><xsl:value-of select="@name"/></h1>
     
    <xsl:for-each select="relation1"> <!--#boucle relation1-->

     <xsl:for-each select="term1"> <!--#début de boucle term1-->

     	<h2><xsl:number count="term0" level="multiple"/><xsl:text>.</xsl:text><xsl:number format="1. "/><xsl:value-of select="@name"/></h2>
     	
     	<xsl:for-each select="relation2"> <!--#boucle relation2-->
     	
     		<xsl:for-each select="term2"> <!--#début de boucle term2-->

    			 <h3><xsl:number count="term0" level="multiple"/><xsl:text>.</xsl:text><xsl:number count="term1" level="multiple"/><xsl:text>.</xsl:text><xsl:number format="1. "/><xsl:value-of select="@name"/></h3>
    	        			 
    			      	<xsl:for-each select="relation3"> <!--#boucle relation3-->

     		               <xsl:for-each select="term3"> <!--#début de boucle term3-->
     		               
     		               	    <h4><xsl:number count="term0" level="multiple"/><xsl:text>.</xsl:text><xsl:number count="term1" level="multiple"/><xsl:text>.</xsl:text><xsl:number count="term2" level="multiple"/><xsl:text>.</xsl:text><xsl:number format="1. "/><xsl:value-of select="@name"/></h4>
     		               	    
     		               	    	<xsl:for-each select="relation4"> <!--#boucle relation4-->
     		               	    	
     		               	    	<xsl:for-each select="term4"> <!--#début de boucle term4-->
     		               	    	
     		               	    		<h5><xsl:number count="term0" level="multiple"/><xsl:text>.</xsl:text><xsl:number count="term1" level="multiple"/><xsl:text>.</xsl:text><xsl:number count="term2" level="multiple"/><xsl:text>.</xsl:text><xsl:number count="term3" level="multiple"/><xsl:text>.</xsl:text><xsl:number format="1. "/><xsl:value-of select="@name"/></h5>
     		               	    		
     		               	    			<xsl:for-each select="relation5"> <!--#boucle relation5-->
     		               	    			
     		               	    			<xsl:for-each select="term5"> <!--#début de boucle term5-->
     		               	    			
     		               	    				<h6><xsl:number count="term0" level="multiple"/><xsl:text>.</xsl:text><xsl:number count="term1" level="multiple"/><xsl:text>.</xsl:text><xsl:number count="term2" level="multiple"/><xsl:text>.</xsl:text><xsl:number count="term3" level="multiple"/><xsl:text>.</xsl:text><xsl:number count="term4" level="multiple"/><xsl:text>.</xsl:text><xsl:number format="1. "/><xsl:value-of select="@name"/></h6>
     		               	    				
      		               	    					<xsl:for-each select="relation6"> <!--#boucle relation6-->
     		               	    			
     		               	    					<xsl:for-each select="term6"> <!--#début de boucle term6-->
     		               	    						<p><xsl:number count="term0" level="multiple"/><xsl:text>.</xsl:text><xsl:number count="term1" level="multiple"/><xsl:text>.</xsl:text><xsl:number count="term2" level="multiple"/><xsl:text>.</xsl:text><xsl:number count="term3" level="multiple"/><xsl:text>.</xsl:text><xsl:number count="term4" level="multiple"/><xsl:text>.</xsl:text><xsl:number count="term5" level="multiple"/><xsl:text>.</xsl:text><xsl:number format="1. "/><xsl:value-of select="@name"/></p>
      		               	    					</xsl:for-each> <!--#fin de boucle term6-->
     		               	    			
     		               	    					</xsl:for-each> <!--#fin de boucle relation6-->
 
     		               	    			</xsl:for-each> <!--#fin de boucle term5-->
     		               	    			
     		               	    			</xsl:for-each> <!--#fin de boucle relation5-->
     		               	    		
     		               	    	</xsl:for-each> <!--#fin de boucle term4-->
     		               	    	
     		               	    	</xsl:for-each> <!--#fin de boucle relation4-->
     		               	    
     		               </xsl:for-each> <!--#fin de boucle term3-->

        	            </xsl:for-each> <!--#fin de boucle relation3-->

           </xsl:for-each> <!--#fin de boucle term2-->

   		</xsl:for-each> <!--#fin de boucle relation2-->

    </xsl:for-each> <!--#fin de boucle term1-->
    
    </xsl:for-each> <!--#fin de boucle relation1-->
   
           </div><!--#global-->
     </td></tr></table> 
   
  </xsl:for-each> <!--#fin de boucle term0-->
    
<footer>
     <p><xsl:value-of select="//titre/@id"/></p>
</footer>
    
    </body></html>
  </xsl:template>
  
  
  


</xsl:stylesheet>