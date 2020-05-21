/**
 * 
 */

$(document).ready(function(){
	$('#table').DataTable();
})

$("#reject").on('click', function(){
    $("#text-title").text( 
        $(this).attr("data-title") 
    );
})


$("#approve").on('click', function(){
    $("#text-title").text( 
        $(this).attr("data-title") 
    );
})