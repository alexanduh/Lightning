int startX = 250;
int startY = 0;
int endX = 250;
int endY = 0;


void setup()
{
  strokeWeight(4);
  background(0);
  size(500, 800);
  frameRate(120);
}
void draw()
{
	int rgbRand1 = (int)(Math.random()*256);
	int rgbRand2 = (int)(Math.random()*256);
	int rgbRand3 = (int)(Math.random()*256);
	stroke(rgbRand1, rgbRand2, rgbRand3);
	if(endY < 600) {
		endY = startY + (int)(Math.random()*10);
		endX = startX + (int)(Math.random()*30-15);
		line(startX, startY, endX, endY);
	  	startY = endY;
		startX = endX;
 	}
}
void mousePressed()
{
	redraw();
	startX = 250;
	startY = 0;
	endX = 250;
	endY = 0;
}

