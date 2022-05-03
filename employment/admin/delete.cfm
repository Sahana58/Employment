
<cfquery name="Applicationdelete" datasource="#application.DSN#">
    DELETE FROM employment WHERE ID=#url.id#
</cfquery>

<cflocation url = "view.cfm?isDeleted=1">


