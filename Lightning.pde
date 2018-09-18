int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;


void setup()
{
  strokeWeight(4);
  background(0);
  size(800, 300);
}
void draw()
{
	int rgbRand1 = (int)(Math.random()*256);
	int rgbRand2 = (int)(Math.random()*256);
	int rgbRand3 = (int)(Math.random()*256);
	stroke(rgbRand1, rgbRand2, rgbRand3);
	while(endX < 300) {
		endX = startX + (int)(Math.random()*10);
		endY = startY + (int)(Math.random()*19-9);
		line(startX, startY, endX, endY);
	  	startX = endX;
		startY = endY;
 	}
}
void mousePressed()
{
	startX = 0;
	startY = 150;
	endX = 0;
	endY = 150;
}

