<cfset isdeletepage = false>
<cfif isDefined("url.id")>
    <cfquery name="editSingleData" datasource="EMPDATA"> 
    delete from employee_details where id = <cfqueryparam value="#url.id#" cfsqltype="cf_sql_integer">
  </cfquery>
  <cflocation url="index.cfm">
</cfif>