<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin-Employment</title>
    <!-- CSS -->
    <link rel="stylesheet" href="style.css">
    <style>
        a:link, a:visited {
            background-color:#669900;
            color: white;
            padding: 14px 25px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            }

        a:hover, a:active {
             background-color:#99cc00;
        }

    </style>
</head>
    <body> 

        <!--- This query used for retriving the data from student detail table  --->
            <cfset Applicationlist=  application.emplist .listAll ()>

        <!--- <cfdump var="#Applicationlist#"> --->
        <!--- Displaying Students List --->
        <h1 style="text-align: center;">Application List</h><br><br>
        <!--- <cfdump var="#url#"> --->

        <!--- <cfif val(#url.isDeleted#)>Record has been deleted successfully.</cfif> --->
       
        <table border="2px" class="app_table">
            <tr>
                <th>Position</th>
                <th>Relocate</th>
                <th>Startingdate</th>
                <th>URL</th>
                <th>salary</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Resume</th>
                <th colspan="2">Action</th>
            </tr>
            <cfoutput query="Applicationlist">
                <tr>
                    <td>#Applicationlist.position#</td>
                    <td>#Applicationlist.relocate#</td>
                    <td>#Applicationlist.startingdate#</td>
                    <td>#Applicationlist.url#</td>
                    <td>#Applicationlist.salary#</td>
                    <td>#Applicationlist.firstname#</td>
                    <td>#Applicationlist.lastname#</td>
                    <td>#Applicationlist.email#</td>
                    <td>#Applicationlist.phone#</td>
                    <td>#Applicationlist.resume#</td>
                    <td><a href="edit.cfm?id=#Applicationlist.ID#">Edit</a></td><!--- For Updating Student Record Based on the ID --->
                    <td><a href="Delete.cfm?id=#Applicationlist.ID#">Delete</a></td><!--- For Deleting Student Record Based on the ID --->
                </tr>
            </cfoutput>
        </table><br><br>

        <a href="../addform.cfm">Add Page</a>
        <a href="logout.cfm">Logout</a>


    </body>   
</html>

