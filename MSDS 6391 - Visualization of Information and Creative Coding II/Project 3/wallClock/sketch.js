// Zach Brown
// MSDS 6391 - Visualization of Information and Creative Coding II
// Project 3 - p5.js
// 5-30-2017

var w, h;
var bgCol;
var logo;
var seconds, minutes, hours, curDay, curMonth;
var secondsDeg, minutesDeg, hoursDeg;

function setup() {
	w = 600;
	h = 600;
	bgCol = 150;
	createCanvas(w,h);
	background(bgCol);
};

function draw() {
	background(bgCol);

	// Determine current time and clock positions
	seconds = second();
	minutes = minute() + (seconds / 60);
	hours = hour() + (minutes / 60);
	secondsDeg = (seconds / 60) * 360;
	minutesDeg = (minutes / 60) * 360;
	hoursDeg = (hours / 12) * 360;

	curDay = day();
	switch(month()) {
		case 1:
			curMonth = "JAN";
			break;
		case 2:
			curMonth = "FEB";
			break;
		case 3:
			curMonth = "MAR";
			break;
		case 4:
			curMonth = "APR";
			break;
		case 5:
			curMonth = "MAY";
			break;
		case 6:
			curMonth = "JUN";
			break;
		case 7:
			curMonth = "JUL";
			break;
		case 8:
			curMonth = "AUG";
			break;
		case 9:
			curMonth = "SEP";
			break;
		case 10:
			curMonth = "OCT";
			break;
		case 11:
			curMonth = "NOV";
			break;
		case 12:
			curMonth = "DEC";
			break;
		default:
			curMonth = "";
			break;
	}

	// Draw clock
	push();
		fill(255);
		noStroke();
		ellipse(w/2, h/2, 300, 300);
		noFill();
		stroke(0);
		strokeWeight(5);
		ellipse(w/2, h/2, 300, 300);
		fill(0);
		noStroke();
		ellipse(w/2, h/2, 15, 15);
	pop();

	push();
		strokeWeight(1);
		stroke(0);
		noFill();
		textAlign(CENTER);
		textSize(8);
		text("QUARTZ", w/2, h/2 - 75);
	pop();

	for (var i = 0; i < 60; i++) {
		push();
			translate(w/2, h/2);
			rotate(radians((i/60) * 360));
			ellipse(0, -125, 1, 1);
		pop();
	}

	for (var i = 0; i < 12; i++) {
		push();
			strokeWeight(3);
			translate(w/2, h/2);
			rotate(radians((i/12) * 360));
			line(0, -120, 0, -125);
		pop();
	}

	// Draw month and day
	push();
		var textLen = textWidth(curMonth)
		textSize(11);
		text(curMonth, w/2 - textLen, h/2 + 75);
		text(curDay, w/2 + 5, h/2 + 75);
		strokeWeight(1);
		stroke(0);
		noFill();
		rect(w/2 - textLen - 3, h/2 + 77, textLen + textWidth(curDay) + 11, -13);
		line(w/2, h/2 + 64, w/2, h/2 + 77);
	pop();

	// Draw hour hand
	push();
		fill(0);
		strokeWeight(5);
		translate(w/2, h/2);
		rotate(radians(hoursDeg));
		line(0, 0, 0, -100);
	pop();

	// Draw minute hand
	push();
		fill(0);
		strokeWeight(3);
		translate(w/2, h/2);
		rotate(radians(minutesDeg));
		line(0, 0, 0, -125);
	pop();

	// Draw second hand
	push();
		fill(255, 0, 0);
		stroke(255, 0, 0);
		strokeWeight(1);
		translate(w/2, h/2);
		rotate(radians(secondsDeg));
		line(0, 0, 0, -125);
	pop();

};