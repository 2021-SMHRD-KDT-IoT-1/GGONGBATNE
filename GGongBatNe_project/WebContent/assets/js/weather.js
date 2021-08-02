$(document).ready(function(){
var apiURI = "https://api.openweathermap.org/data/2.5/weather?q=Gwangju&appid=7169ea80614cc1b2d0691229825bc67a";
        $.ajax({
            url: apiURI,
            dataType: "json",
            type: "GET",
            async: "false",
            success: function(resp) {
        
                console.log(resp);
                console.log("현재온도 : "+ (resp.main.temp- 273.15) );
                console.log("현재습도 : "+ resp.main.humidity);
                console.log("날씨 : "+ resp.weather[0].main );
                console.log("상세날씨설명 : "+ resp.weather[0].description );
                console.log("날씨 이미지 : "+ resp.weather[0].icon );
                console.log("바람   : "+ resp.wind.speed );
                console.log("나라   : "+ resp.sys.country );
                console.log("도시이름  : "+ resp.name );
                console.log("구름  : "+ (resp.clouds.all) +"%" );        
                     
  				var imgURL = "http://openweathermap.org/img/w/" + resp.weather[0].icon + ".png";
			    $('#weather').attr("src", imgURL);  
			    
			    
			    $('.wether').text(Math.floor(resp.main.temp- 273.15)+"도"); 
            }
        })
    });