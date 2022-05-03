<cfif isDefined("Form.FileContents") > 
<cffile action = "upload" destination = "#expandpath('./uploads')#" > 
<cfelse> 
<!--- If FALSE, show the Form. ---> 
<form method="post" action=<cfoutput>#cgi.script_name#</cfoutput> 
name="uploadForm" enctype="multipart/form-data"> 
<input name="FileContents" type="file"> 
<br> <br>
<input name="submit" type="submit" value="Upload File"> 
</form>
</cfif> 