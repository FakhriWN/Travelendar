<%-- 
    Document   : index.jsp
    Created on : Sep 21, 2017, 9:51:43 PM
    Author     : afadh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Travlendar</title>
<link rel="stylesheet" href="css/Style.css">
</head>
<body>

<div class="navbar">
<ul style="list-style-type: none;">
<img src="css/icon/logocontoh.png" width="130" height="40">
  <li style="float:right;margin-top:0px;"class="dropdown">
    <div id="menuBtn" class="dropbtn"><img src="css/icon/showmenu.png" alt="Menu" width="40" height="40"></div>
    	<div id="myDropdown" class="dropdown-content">
        	<a href="#UserProfile"><div class="t2">USERNAME</div><img src="css/icon/user.png" alt="css/icon/user.png" width="40" height="40"></a>
        	<a href="/Travlendar/Home"><img src="css/icon/home.png" alt="Menu" width="40" height="40"><div class="t1">Home</div></a>
        	<a href="/Travlendar/Calendar"><img src="css/icon/calendar1.png" alt="Menu" width="40" height="40"><div class="t1">Calendar</div></a>
        	<a href="#LogOut"><img src="css/icon/logout.png" alt="Menu" width="40" height="40"><div class="t1">Log Out</div></a>
        </div>
  </li>
</ul>
</div>

<h1> Upcoming Event </h1>

<div class="relative">
	<div class="boxstyle1">
    	<div class="row">
    		<div class="column">
       			<content style="font-size:23px;">Rapat Ianugurasi<br></content>
            	<content style="font-size:16px;">Time: 20/09/2017 10:20 - 12:30</content>
            </div>
            <div class="column" style="margin-top:2%;text-align:center;">
            	<div id="countdown"></div> 
            </div>
            <div class="column" style="margin-top:2%;text-align:center;">
    			<button><a href="#EventDetails">Event details</a></button>
			</div>
   		</div>
  </div>
</div>

<div class="relative">
	<div class="boxstyle1">
    	<div class="row">
    		<div class="column">
       			<content style="font-size:23px;">Survey Villa<br></content>
            	<content style="font-size:16px;">Time: 20/09/2017 13:00 - 14:00</content>
            </div>
            <div class="column" style="margin-top:2%;text-align:center;">
            	<div id="countdown2"></div>
            </div>
            <div class="column" style="margin-top:2%;text-align:center;">
    			<button><a href="#EventDetails">Event details</a></button>
			</div>
   		</div>
  </div>
</div>

<div class="footer">
Lander 2017
</div>


<script>

function countdown(setdetik){
	var minutes = 1;
    var seconds = setdetik;
    var mins = minutes
    function tick() {
        //elemen dengan id= counter bisa diganti sesuka hati 
        var counter = document.getElementById("countdown");
        var current_minutes = mins-1;
        seconds--;
        counter.innerHTML = String(seconds);
        if( seconds > 0 ) {
            setTimeout(tick, 1000);
        } else {
            if(mins > 1){
                countdown(mins-1);           
            }
        }
    }
    tick();
}
countdown(100); 

function countdown2(setdetik){
	var minutes = 1;
    var seconds = setdetik;
    var mins = minutes
    function tick() {
        //elemen dengan id= counter bisa diganti sesuka hati 
        var counter = document.getElementById("countdown2");
        var current_minutes = mins-1;
        seconds--;
        counter.innerHTML = String(seconds);
        if( seconds > 0 ) {
            setTimeout(tick, 1000);
        } else {
            if(mins > 1){
                countdown(mins-1);           
            }
        }
    }
    tick();
}
countdown2(500); 

// Get the button, and when the user clicks on it, execute myFunction
document.getElementById("menuBtn").onclick = function() {myFunction()};

/* myFunction toggles between adding and removing the show class, which is used to hide and show the dropdown content */
function myFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
}


</script>

</body>
</html>
