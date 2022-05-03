<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin-Employment</title>
    <!-- CSS -->
    <link rel="stylesheet" href="style.css">
    <style>
        .login_form{
            text-align:center;    

        }

        input[type=text],
        input[type=password]
         {
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            resize: vertical;
            max-width:100%;
        }
        
    </style>
</head>
<body> 

    <div class="form">
        <h3 style="text-align:center;">Login Form</h3>
        <form action="" method="post" class="login_form">

            <label for="username">User Name</label>
            <input type="text" name="username" id="username"><br><br>

            <label for="password">Password</label>
            <input type="password" name="password" id="password"><br><br>
            
            <input type="submit" name="submit" value="Login"><br><br>
            <a href="">Forgot Password?</a>

        </form><br><br>

    </div>
        
         
         <cfif isDefined('form.submit')>
            <cfquery name="qLoginChk" datasource="#application.DSN#">
                select * from login where username='#form.username#' and password='#form.password#'
            </cfquery>
             <cfif val(qLoginChk.recordCount)>
                <cfset session.login ="#qLoginChk.id#">
                <!--- <cfdump var="#session#"><cfabort> --->
                <cflocation url = "view.cfm" addtoken="false">
            <cfelse>
                <cflocation url = "error.cfm" addtoken="false">
            </cfif>
        </cfif>

            <!--- <cfdump var="#form#"><cfabort> --->
                <!--- <cfloop query ="qLoginChk" >
                    <cfif form.username EQ qLoginChk.username AND form.password EQ qLoginChk.password>
                       <!--- <label>Username and password is correct</label> --->
                       <cfset session.login=1>
                       <!--- <cfdump var="#session#"><cfabort> --->
                        <cflocation url = "view.cfm"> 
                        <cfelse>
                            <!--- <cfdump var="#session#"><cfabort> --->
                        <cflocation url = "error.cfm">
                    </cfif>
                </cfloop>      --->
       
   
    
    
</body>
</html>