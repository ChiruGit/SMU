// Zach Brown
// MSDS 6391 - Visualization of Information and Creative Coding II
// Project 4 - Canvas and JavaScript Animation
// 6-6-2017

var bgCol;

function init() {
	bgCol = "#969696";
	window.requestAnimationFrame(draw);
}

function draw() {
	var canvas, ctx;
	var w, h;
	var now, seconds, minutes, hours, curDay, curMonth, month;
	var secondsDeg, minutesDeg, hoursDeg;

	canvas = document.getElementById('canvas');
	ctx = canvas.getContext('2d');
	w = canvas.width;
	h = canvas.height;

	ctx.fillStyle = bgCol
	ctx.rect(0, 0, w, h);
	ctx.fill();

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

	// Draw clock face
	ctx.save();
		ctx.translate(w/2, h/2);
		ctx.beginPath();
		ctx.arc(0, 0, 150, 0, 2 * Math.PI);
		ctx.fillStyle = "#ffffff";
		ctx.fill();
		ctx.lineWidth = 5;
		ctx.stroke();
		ctx.beginPath();
		ctx.arc(0, 0, 7.5, 0, 2 * Math.PI);
		ctx.fillStyle = "#000000";
		ctx.fill();
	ctx.restore();

	// Draw "QUARTZ" text
	ctx.save();
		ctx.translate(w/2, h/2 - 75);
		ctx.textAlign = "center";
		ctx.font="bold 8px Arial";
		ctx.fillStyle = "#000000"; 
		ctx.fillText("QUARTZ", 0, 0);
	ctx.restore();

	// Draw small tick marks
	for (var i = 0; i < 60; i++) {
		ctx.save();
			ctx.translate(w/2, h/2);
			ctx.rotate((i / 60) * 360 * Math.PI / 180);
			ctx.beginPath();
			ctx.arc(0, -125, 1, 0, 2 * Math.PI);
			ctx.fillStyle = "#000000";
			ctx.fill();
		ctx.restore();
	}

	// Draw large tick marks
	for (var i = 0; i < 12; i++) {
		ctx.save();
			ctx.translate(w/2, h/2);
			ctx.rotate((i/12) * 360 * Math.PI / 180);
			ctx.beginPath();
			ctx.moveTo(0, -120);
			ctx.lineTo(0, -125);
			ctx.lineWidth = 3;
			ctx.stroke();
		ctx.restore();
	}

	// Draw month and day
	ctx.save();
		ctx.translate(w/2, h/2);
		var textLen = ctx.measureText(curMonth).width;
		ctx.textAlign = "left";
		ctx.font="11px Arial";
		ctx.fillStyle = "#000000";
		ctx.fillText(curMonth, 0 - textLen, 75);
		ctx.fillText(curDay, 5, 75);
		ctx.lineWidth = 1;
		ctx.beginPath();
		ctx.strokeStyle = "#000000"; 
		ctx.strokeRect(0 - textLen - 3, 77, textLen + ctx.measureText(curDay).width + 11, -13);
		ctx.beginPath();
		ctx.moveTo(4, 64);
		ctx.lineTo(4, 77);
		ctx.stroke();
	ctx.restore();

	// Draw hour hand
	ctx.save();
		ctx.translate(w/2, h/2);
		ctx.rotate(hoursDeg  * Math.PI / 180);
		ctx.beginPath();
		ctx.strokeStyle = "#000000";
		ctx.lineWidth = 5;
		ctx.moveTo(0, 0);
		ctx.lineTo(0, -100);
		ctx.stroke();
	ctx.restore();

	// Draw minute hand
	ctx.save();
		ctx.translate(w/2, h/2);
		ctx.rotate(minutesDeg  * Math.PI / 180);
		ctx.beginPath();
		ctx.strokeStyle = "#000000";
		ctx.lineWidth = 3;
		ctx.moveTo(0, 0);
		ctx.lineTo(0, -125);
		ctx.stroke();
	ctx.restore();

	// Draw second hand
	ctx.save();
		ctx.translate(w/2, h/2);
		ctx.rotate(secondsDeg  * Math.PI / 180);
		ctx.beginPath();
		ctx.strokeStyle = "#FF0000";
		ctx.lineWidth = 1;
		ctx.moveTo(0, 0);
		ctx.lineTo(0, -125);
		ctx.stroke();
	ctx.restore();

	window.requestAnimationFrame(draw);
}

init();