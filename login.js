
$("#a").click(function(){
        var a=$('#fname').val();
        var b=$("#fnama").val();
		if (a && b) 
                   {
                   $('#pp').attr('action','http://localhost/welcome.php');
                   $('#pp').attr('method','post');
                   
                   
				   $('#pp').submit();
				   
				   }
                                                     

	    else if(!a && b)
	                {
	                  $("#xx").html(" ***Plz fill up <b>PassWord</b>");}
	   
        else if(!b && a)
	               {
	                  $("#xx").html(" ***Plz fill up <b>UserName</b>");}
	   
	    else
	       {
	         $("#xx").html(" ***Plz fill up <b>UserName</b></br>***Plz fill up <b>PassWord</b>");} 
	   
	   });