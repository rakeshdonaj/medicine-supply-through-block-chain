$(function(){
	
	$(".table").find("tbody").on('click',"tr td #request",function(){
		
		var drugName=$(this).closest('tr').children('td').eq(0).text();
		var manfEmail=$(this).closest('tr').children('td').eq(1).text();
		
		$.ajax({url:"requestKeyfromDist?drugName="+drugName+"&manfEmail="+manfEmail,success:function(data,responseText){
			alert("Request Sent For SecretKey to Manufacturer");
			window.location.href="sharedItemDetailsDist.jsp";			
		}});		
	});
	
	$(".table").find("tbody").on('click',"tr td #sendKeytoDist",function(){
		
		var drugName=$(this).closest('tr').children('td').eq(0).text();
		var distEmail=$(this).closest('tr').children('td').eq(2).text();
		var mname = $("#mname").text();
		alert(mname);
		$.ajax({url:"sendKeytoDist?drugName="+drugName+"&distEmail="+distEmail+"&mname="+mname,success:function(data,responseText){
			alert("SecretKey Sent to Distributor");
			window.location.href="keyRequestfromDistributor.jsp";			
		}});		
	});
	
		$("#decryptKey").click(function(){
			
			var drugName = $("#drugName").val();
			var manEmail = $("#manEmail").val();
			
			var enterSecKey = $("#enterSecKey").val();
			var dbSecKey = $("#dbSecKey").val();
			
			if(enterSecKey != dbSecKey)
			{
				alert("Enterd SecretKey is Wrong!! Please Enter Correct SecretKey")
				return false;
			}
			else
			{
				return true;				
			}
		});
		
		$(".table").find("tbody").on('click',"tr td #requestKeyfromPatient",function(){
			
			var drugName=$(this).closest('tr').children('td').eq(0).text();
			var distEmail=$(this).closest('tr').children('td').eq(1).text();
		
			$.ajax({url:"requestKeyfromPatient?drugName="+drugName+"&distEmail="+distEmail,success:function(data,responseText){
				alert("Request Sent For SecretKey to Distributor");
				window.location.href="viewItemsharedByDist.jsp";			
			}});		
		});
		
		$(".table").find("tbody").on('click',"tr td #sendKeytoPatient",function(){
			
			var drugName=$(this).closest('tr').children('td').eq(0).text();
			var patEmail=$(this).closest('tr').children('td').eq(2).text();
			var dname = $("#dname").text();
		
			$.ajax({url:"sendKeytoPatient?drugName="+drugName+"&patEmail="+patEmail+"&dname="+dname,success:function(data,responseText){
				alert("SecretKey Sent to Patient");
				window.location.href="keyRequestfromPatient.jsp";			
			}});		
		});
		
		$("#decryptPatientQRKey").click(function(){
			
			var drugName = $("#drugName").val();
			var distEmail = $("#distEmail").val();
			
			var enterSecKey = $("#enterSecKey").val();
			var dbSecKey = $("#dbSecKey").val();
			
			if(enterSecKey != dbSecKey)
			{
				alert("Enterd SecretKey is Wrong!! Please Enter Correct SecretKey")
				return false;
			}
			else
			{
				return true;				
			}
		});
		
		$(".table").find("tbody").on('click',"tr td #requestKeyfromHospital",function(){
			
			var drugName=$(this).closest('tr').children('td').eq(0).text();
			var distEmail=$(this).closest('tr').children('td').eq(1).text();
		
			$.ajax({url:"requestKeyfromHospital?drugName="+drugName+"&distEmail="+distEmail,success:function(data,responseText){
				alert("Request Sent For SecretKey to Distributor");
				window.location.href="viewItemsharedByDistHospital.jsp";			
			}});		
		});
		
		$(".table").find("tbody").on('click',"tr td #sendKeytoHospital",function(){
			
			var drugName=$(this).closest('tr').children('td').eq(0).text();
			var hosEmail=$(this).closest('tr').children('td').eq(2).text();
			var dname = $("#dname").text();
		
			$.ajax({url:"sendKeytoHospital?drugName="+drugName+"&hosEmail="+hosEmail+"&dname="+dname,success:function(data,responseText){
				alert("SecretKey Sent to Hospital");
				window.location.href="keyRequestfromHospital.jsp";			
			}});		
		});
		
		$("#decryptHospitalQRKey").click(function(){
			
			var drugName = $("#drugName").val();
			var distEmail = $("#distEmail").val();
			
			var enterSecKey = $("#enterSecKey").val();
			var dbSecKey = $("#dbSecKey").val();
			
			if(enterSecKey != dbSecKey)
			{
				alert("Enterd SecretKey is Wrong!! Please Enter Correct SecretKey")
				return false;
			}
			else
			{
				return true;				
			}
		});
});