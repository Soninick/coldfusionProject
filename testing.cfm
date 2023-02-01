<!--- <cfset faq = []>
<cfset ArrayAppend(faq, "What are ColdFusion arrays")>
<cfset ArrayAppend(faq, "How to create a ColdFusion array?")>
<cfset ArrayAppend(faq, "What are two dimensional arrays?")>
<cfdump var= "#faq#">


<!--- <cfloop Array= "#faq#" item = "item">
    <cfoutput>
    <!--- #idx#<br /> --->
    #item#<br/>
    </cfoutput>
  </cfloop> --->

  <cfloop list = "a,d,f,g,h,d,e,t,1,2,3,4" index="ListItem">
    
    <cfoutput>
    #ListItem#<br/>
</cfoutput>
</cfloop>


<cfset variablename="value">

<cfoutput>
#variablename#
</cfoutput>
<cfparam name="Signupsubmitbutton" default= 0>
<cfdump var = "#form#">

<cfset variablename="value">
<cfoutput>
#variablename#
</cfoutput>

<cfset Session.BodyType = "Perfect">
<cfoutput>
  Body Type: #Session.BodyType#
</cfoutput> --->

<cfquery name="employees" datasource="EMPDATA"> 
  SELECT *
  FROM employee_details 
  </cfquery> 
  <cfoutput query="employees"> 
  #employees.first_name#, #employees.last_name#, #employees.email#<br> 
  </cfoutput> 
  
<!--- <cfloop query="employees">
  <cfoutput>
  <tr>
    <td>$64</td>
   </tr>   
    </cfloop>
  </cfoutput> --->
