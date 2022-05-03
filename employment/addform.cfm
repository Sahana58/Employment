<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employment</title>
    <!-- CSS -->
    <link rel="stylesheet" href="style.css">
</head>
<body> 
    <h1 id="logo">
        <a href="https://www.wufoo.com/?utm_source=form-header&amp;utm_medium=logo" target="_blank" title="Powered by Wufoo">Wufoo</a>
    </h1>
    <div class="form">
        <h3>Employment Application</h3>
        <hr>
        <form  method="post" name="uploadForm" enctype="multipart/form-data">

            <label for="position">Which position are you applying for?</label><br><br>
            <select name="position" id="position">
                <option value="Select">Select</option>
                <option value="Manager">Manager</option>
                <option value="Office Assistant">Office Assistant</option>
                <option value="Clerk">Clerk</option>
                <option value="Sales Agent">Sales Agent</option>
                <option value="Others">Others</option>
            </select><br><br>

            <label>Are you willing to relocate?</label><br><br>
            <input type="radio" name="relocate" id="yes" value="Yes" checked>
            <label for="yes">Yes</label><br><br>

            <input type="radio" name="relocate" id="no" value="No">
            <label for="no">No</label><br><br>

            <label>When can you start?</label><br><br>
            <input type="date" name="startingdate" id="startingdate"><br><br>

            <label>Portfolio Web Site</label><br><br>
            <input type="url" name="url" id="url"><br><br>

            <label>Attach a Copy of Your Resume</label><br><br>
            <input type="file" name="resume" id="resume"><br><br>
        
            <label>Salary Requirements</label><br><br>
            <input type="text" name="salary" id="salary"><br><br>

            <hr>
            <h5>Your Contact Information</h5>

            <label for="name">Name:</label><br>
            <input type="text" name="firstname" id="fname" placeholder="First Name">
            <input type="text" name="lastname" id="lname" placeholder="Last Name"><br><br>
            
            <label for="email">Email Address</label><br><br>
            <input type="email" name="email" id="email"><br><br>

            <label for="phone">Phone</label><br><br>
            <input type="text" name="phone" id="phone"><br><br>

            <input type="submit" name="submit" value="Submit">

        </form>
    </div>

    <cfif isDefined('form.submit')>
        <cfdump var="#form#">
        <cffile action = "upload" destination = "#expandpath('./uploads')#">
        <cfquery name="Applicationadd" datasource="#application.DSN#">
            INSERT INTO employment (position,relocate,startingdate,url,salary,firstname,lastname,email,phone,resume)
            VALUES (<cfqueryparam value = "#form.position#" cfsqltype = "cf_sql_varchar">,
                    <cfqueryparam value = "#form.relocate#" cfsqltype = "cf_sql_varchar">,
                    <cfqueryparam value = "#form.startingdate#" cfsqltype = "cf_sql_date">,
                    <cfqueryparam value = "#form.url#" cfsqltype = "cf_sql_varchar">,
                    <cfqueryparam value = "#form.salary#" cfsqltype = "CF_SQL_INTEGER">,
                    <cfqueryparam value = "#form.firstname#" cfsqltype = "cf_sql_varchar">,
                    <cfqueryparam value = "#form.lastname#" cfsqltype = "cf_sql_varchar">,
                    <cfqueryparam value = "#form.email#" cfsqltype = "cf_sql_varchar">,
                    <cfqueryparam value = "#form.phone#" cfsqltype = "cf_sql_varchar">,
                    <cfqueryparam value = "#form.resume#" cfsqltype = "cf_sql_varchar">)
                    

        </cfquery>
        <cflocation url = "admin/view.cfm"> 
    </cfif>
    
</body>
</html>


