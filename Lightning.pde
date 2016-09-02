int startX = 150;
int startY = 0;
int endX = 0;
int endY = 150;
int lightStroke = 1;
void setup()
{
  size(300,300);
  background(0, 0, 0);
}
void draw()
{
	while (startY <= 300) 
	{
		strokeWeight(lightStroke);
		endX = startX + (int)(Math.random() * 19) - 9;
		endY = startY + (int)(Math.random() * 9);
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}
}
void mousePressed()
{
	lightStroke = (int)(Math.random() * 6) + 1;
	int randomColor1 = (int)(Math.random() * 236) + 20;
	int randomColor2 = (int)(Math.random() * 236) + 20;
	int randomColor3 = (int)(Math.random() * 236) + 20;
	stroke(randomColor1, randomColor2, randomColor3);
	startX = (int)(Math.random() * 250) + 25;
	startY = 0;
	endX = 0;
	endY = 150;
	fill(0, 0, 0);
	rect(0, 0, 299, 299);
}
