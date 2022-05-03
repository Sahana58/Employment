<cfparam name="session.login" default="0">
<cfapplication name="Employment" sessionmanagement="true">
<cfset application.DSN="EmploymentDSN">
<cfset application.emplist = createObject('component','employmentDAO')>

<!--- <cfdump var="#cgi#"> --->
<cfif not val(session.login) and listlast(cgi.SCRIPT_NAME,"/") NEQ "index.cfm">
    <cflocation url="index.cfm" addtoken="false">
</cfif>

<!--- <cfdump var="#session#"><cfabort> --->