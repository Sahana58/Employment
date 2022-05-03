<!DOCTYPE html>
<html>
<head>
<style>
     body
    {
        background-color:rgb(230, 233, 230);
    }
    </style>
    </head>
    <body>
        <form method="POST">
        <label for="if"> Enter number  </label>
        <input type="text" id="x" name="x"><br>
        <input type="submit" value="submit" name="submit">
         </form>
</body>
</html>
<cfif isDefined ('form.submit')>
<cfset x = #form.x#>  
 <cfif x EQ 1 > 
 <label for="1" >entered number is 1</label>
 <cfelseif x EQ 2> 
<label for="2" >entered number is 2</label>
 <cfelseif x EQ 3> 
<label for="3" >entered number is 3</label>
 <cfelseif  x EQ  4> 
<label for="4" >entered number is 4</label>
 <cfelseif x EQ   5> 
<label for="5" >entered number is 5</label>
 <cfelse >
 <label for ="else">number not given between 1 to 5</label>
 </cfif>
</cfif>




