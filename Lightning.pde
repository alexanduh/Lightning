int startX = (int)(Math.random()*200+150);
int startY = 0;
int endX = (int)(Math.random()*200+150);
int endY = 0;
int squig = 30;


void setup()
{
  strokeWeight(4);
  background(0);
  size(500, 800);
  frameRate(2000);
}
void draw()
{
	int rgbRand1 = (int)(Math.random()*256);
	int rgbRand2 = (int)(Math.random()*256);
	int rgbRand3 = (int)(Math.random()*256);
	stroke(rgbRand1, rgbRand2, rgbRand3);
	if(endY < 600) {
		endY = startY + (int)(Math.random()*5);
		endX = startX + (int)(Math.random()*squig-squig/2);
		line(startX, startY, endX, endY);
	  	startY = endY;
		startX = endX;
 	}
}
void mousePressed()
{
	background(0);
	redraw();
	startX = (int)(Math.random()*200+150);
	startY = 0;
	endX = (int)(Math.random()*200+150);
	endY = 0;
}

