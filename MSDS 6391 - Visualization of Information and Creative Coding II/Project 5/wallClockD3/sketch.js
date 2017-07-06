// Zach Brown
// MSDS 6391 - Visualization of Information and Creative Coding II
// Project 5 - D3 Replot Assignment
// 6-13-2017

var bgCol;

function init() {
	bgCol = "#969696";
	window.requestAnimationFrame(draw);
}

function draw() {

	d3.selectAll("svg").remove();

	var w = 600,
	    h = 600;

	var now, seconds, minutes, hours, curDay, curMonth, month;
	var secondsDeg, minutesDeg, hoursDeg;

	// Determine current date and time
	now = new Date();
	seconds = now.getSeconds();
	minutes = now.getMinutes() + (seconds / 60);
	hours = now.getHours() + (minutes / 60);
	secondsDeg = (seconds / 60) * 360;
	minutesDeg = (minutes / 60) * 360;
	hoursDeg = (hours / 12) * 360;
	curDay = now.getDate();

	month = new Array();
	month[0] = "JAN";
	month[1] = "FEB";
	month[2] = "MAR";
	month[3] = "APR";
	month[4] = "MAY";
	month[5] = "JUN";
	month[6] = "JUL";
	month[7] = "AUG";
	month[8] = "SEP";
	month[9] = "OCT";
	month[10] = "NOV";
	month[11] = "DEC";
	curMonth = month[now.getMonth()];

	var svg = d3.select("body").append("svg")
	    .attr("width", w)
	    .attr("height", h);

	// Set background color
	svg.append("rect")
	    .attr("width", "100%")
	    .attr("height", "100%")
	    .attr("fill", bgCol);

	// Draw clock outline
	svg.append("circle")
	  .attr("cx", w/2)
	  .attr("cy", h/2)
	  .attr("r", "150")
	  .attr("stroke", "black")
	  .attr("stroke-width", "5")
	  .attr("fill", "white");

	// Draw center circle in clock
	svg.append("circle")
	  .attr("cx", w/2)
	  .attr("cy", h/2)
	  .attr("r", "7.5")
	  .attr("fill", "black");

	// Draw small tick marks
	for (var i = 0; i < 60; i++) {
	  var angle = (i / 60) * 360;
	  svg.append("circle")
	    .attr("transform", "translate(300, 300) rotate("+angle+")")
	    .attr("cx", "0")
	    .attr("cy", "-125")
	    .attr("r", "0.5")
	    .attr("fill", "black")
	    .attr("stroke", "black")
	    .attr("stroke-width", "1");
	}

	// Draw large tick marks
	for (var i = 0; i < 12; i++) {
	  var angle = (i / 12) * 360;
	  svg.append("line")
	    .attr("transform", "translate(300, 300) rotate("+angle+")")
	    .attr("x1", "0")
	    .attr("y1", "118")
	    .attr("x2", "0")
	    .attr("y2", "126")
	    .attr("fill", "black")
	    .attr("stroke", "black")
	    .attr("stroke-width", "2.5");
	}

	// Draw "QUARTZ" text
	svg.append("text")
	  .style("fill", "black")
	  .style("font-size", "8px")
	  .style("font-family", "arial")
	  .attr("x", w/2)
	  .attr("y", h/2 - 75)
	  .attr("stroke", "black")
	  .attr("stroke-width", "1")
	  .attr("text-anchor", "middle")
	  .text("QUARTZ");

	// Draw month and day
	svg.append("text")
	  .style("fill", "black")
	  .style("font-size", "11px")
	  .style("font-family", "arial")
	  .attr("x", w/2 - 2)
	  .attr("y", (h/2) + 75)
	  .attr("text-anchor", "end")
	  .text(curMonth);

	svg.append("text")
	  .style("fill", "black")
	  .style("font-size", "11px")
	  .style("font-family", "arial")
	  .attr("x", w/2 + 5)
	  .attr("y", (h/2) + 75)
	  .attr("text-anchor", "start")
	  .text(curDay);

	svg.append("rect")
	  .attr("x", w/2 - 27)
	  .attr("y", h/2 + 64)
	  .attr("width", "47")
	  .attr("height", "13")
	  .attr("fill", "none")
	  .attr("stroke", "black")
	  .attr("stroke-width", "1");

	svg.append("line")
	  .attr("x1", w/2)
	  .attr("y1", h/2 + 64)
	  .attr("x2", w/2)
	  .attr("y2", h/2 + 77)
	  .attr("fill", "none")
	  .attr("stroke", "black")
	  .attr("stroke-width", "1");

	// Draw hour hand
	svg.append("line")
	  .attr("transform", "translate(300, 300) rotate("+hoursDeg+")")
	  .attr("x1", "0")
	  .attr("y1", "0")
	  .attr("x2", "0")
	  .attr("y2", "-100")
	  .attr("fill", "black")
	  .attr("stroke", "black")
	  .attr("stroke-width", "5");

	// Draw minute hand
	svg.append("line")
	  .attr("transform", "translate(300, 300) rotate("+minutesDeg+")")
	  .attr("x1", "0")
	  .attr("y1", "0")
	  .attr("x2", "0")
	  .attr("y2", "-125")
	  .attr("fill", "black")
	  .attr("stroke", "black")
	  .attr("stroke-width", "3");

	// Draw second hand
	svg.append("line")
	  .attr("transform", "translate(300, 300) rotate("+secondsDeg+")")
	  .attr("x1", "0")
	  .attr("y1", "0")
	  .attr("x2", "0")
	  .attr("y2", "-125")
	  .attr("fill", "red")
	  .attr("stroke", "red")
	  .attr("stroke-width", "1");

	window.requestAnimationFrame(draw);
}

init();