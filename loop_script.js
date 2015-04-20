//Random function
function randomNumber (upper) {
	return Math.floor(Math.random()*upper) +1;
}
var counter = 0;
while(counter < 10){
	counter +=1;
	var ranNum = randomNumber(6);
	document.write("<p>"+ranNum+"</p>");
}
