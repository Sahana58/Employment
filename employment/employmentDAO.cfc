<cfcomponent>
   <cffunction  name="listAll" returntype="query">
        <cfargument name="data" type="numeric" default=0>
        <!--- <cfdump var="#arguments#"><cfabort> --->
        <cfquery name="Applicationlist" datasource="#application.DSN#">
            select * from employment where 1=1 
            <cfif val(arguments.data)>and
                id=#arguments.data#
            </cfif>
        </cfquery>
        <cfreturn  Applicationlist>
   </cffunction>
















</cfcomponent>