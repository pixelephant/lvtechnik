$(document).ready(function(){               
                
        $('#slider-code').tinycarousel({
        	display: 2
        	//interval: true
        });
       
        $(".fancybox").fancybox();

        $("#length").change(function(){
        	var val = $(this).val();
            var deli = $(this).data("delivery");
        	var min = $(this).data("min");
        	var max = $(this).data("max");
        	var base = $(this).data("base");
        	if(val < min){
        		$(".dyn-price").text("Minimál").css("color","red");
        	}
        	else if(val > max){
        		$(".dyn-price").text("Maximál").css("color","red");
        	}
            else if(val > deli && val < max){
                $(".dyn-price").text("Delivery").css("color","red");
            }
        	else{
        		$(".dyn-price").text(base*val+" Ft").css("color","#325A7C");	
        	}
        });

    });
