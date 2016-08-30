int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;
void setup()
{
  size(300,300);
  background(0, 0, 0);
  strokeWeight(3);
}
void draw()
{
	while (endX <= 300) 
	{
		endX = startX + (int)(Math.random() * 9);
		endY = startY + (int)(Math.random() * 18) - 9;
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}
}
void mousePressed()
{
	int randomColor1 = (int)(Math.random() * 255);
	int randomColor2 = (int)(Math.random() * 255);
	int randomColor3 = (int)(Math.random() * 255);
	stroke(randomColor1, randomColor2, randomColor3);
	background(0, 0, 0);
	startX = 0;
	startY = 150;
	endX = 0;
	endY = 150;
}

