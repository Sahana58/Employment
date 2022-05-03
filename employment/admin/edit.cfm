<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin-Employment</title>
    <!-- CSS -->
    <link rel="stylesheet" href="style.css">
</head>

<cfparam name="url.id" default="0">
<!--- <cfquery name="Applicationlist" datasource="#application.DSN#">
    select * from employment where ID=#url.id#
</cfquery> --->

<cfset Applicationlist=  application.emplist .listAll (#url.id#)>

<body> 
    <h1 id="logo">
        <a href="https://www.wufoo.com/?utm_source=form-header&amp;utm_medium=logo" target="_blank" title="Powered by Wufoo">Wufoo</a>
    </h1>
    <div class="form">
        <h3>Employment Application</h3>
        <hr>
        <cfoutput>
            <form action="" method="post">
                <input type="hidden" name="id" value="#Applicationlist.ID#">
                <label for="position">Which position are you applying for?</label><br><br>
                <select name="position" id="position" >
                    <option value="">Select</option>
                    <option value="Manager" <cfif #Applicationlist.position# EQ 'Manager'>selected</cfif>>Manager</option>
                    <option value="Office Assistant" <cfif #Applicationlist.position# EQ 'Office Assistant'>selected</cfif>>Office Assistant</option>
                    <option value="Clerk" <cfif #Applicationlist.position# EQ 'Clerk'>selected</cfif>>Clerk</option>
                    <option value="Sales Agent"<cfif #Applicationlist.position# EQ 'Sales Agent'>selected</cfif>>Sales Agent</option>
                    <option value="Others"<cfif #Applicationlist.position# EQ 'Others'>selected</cfif>>Others</option>
                </select><br><br>

                <label>Are you willing to relocate?</label><br><br>
                <input type="radio" name="relocate" id="yes" <cfif #Applicationlist.relocate# EQ 'Yes'>checked</cfif> >
                <label for="yes">Yes</label><br><br>

                <input type="radio" name="relocate" id="no" <cfif #Applicationlist.relocate# EQ 'No'>checked</cfif>>
                <label for="no">No</label><br><br>

                <label>When can you start?</label><br><br>
                <input type="date" name="startingdate" id="startingdate" value="#Applicationlist.startingdate#"><br><br>

                <label>Portfolio Web Site</label><br><br>
                <input type="url" name="url" id="url" value="#Applicationlist.url#" ><br><br>

                <label>Attach a Copy of Your Resume</label><br><br>
                <input type="file" name="resume" id="resume" value="#Applicationlist.resume#" ><br><br>
                <p>Word or PDF Documents Only</p><br><br>

                <label>Salary Requirements</label><br><br>
                <input type="text" name="salary" id="salary" value="#Applicationlist.salary#"><br><br>

                <hr>
                <h5>Your Contact Information</h5>

                <label for="name">Name:</label><br>
                <input type="text" name="firstname" id="fname" placeholder="First Name" value="#Applicationlist.firstname#">
                <input type="text" name="lastname" id="lname" placeholder="Last Name" value="#Applicationlist.lastname#"><br><br>
                
                <label for="email">Email Address</label><br><br>
                <input type="email" name="email" id="email" value="#Applicationlist.email#"><br><br>

                <label for="phone">Phone</label><br><br>
                <input type="text" name="phone" id="phone" value="#Applicationlist.phone#"><br><br>

                <input type="submit"  name="submit" value="Update">

            </form>
        </cfoutput>
    </div>  

    <cfif isDefined('form.submit')>
        <cfif val(form.id)>
            <cfquery name="Applicationupdate" datasource="#application.DSN#">
                UPDATE employment SET position='#form.position#',
                                      relocate='#form.relocate#',
                                      startingdate='#form.startingdate#',
                                      url='#form.url#',
                                      salary='#form.salary#',
                                      firstname='#form.firstname#',
                                      lastname='#form.lastname#',
                                      email='#form.email#',
                                      phone='#form.phone#',
                                      resume='#form.resume#'
                                 WHERE ID=#form.id#
            </cfquery>
            <cflocation url = "addform.cfm"> 
        </cfif>
    </cfif>
    
</body>
</html>

