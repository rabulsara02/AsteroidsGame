class Star //note that this class does NOT extend Floater
{
  private int myX, myY, mySize, myColor;
  public Star()
  {
  	myX = (int)(Math.random() * 500);
  	myY = (int)(Math.random() * 500);
  	mySize = 3;
  	//myColor = color(255, 0, 0);
  	myColor = color(((int)(Math.random() * 255)), ((int)(Math.random() * 255)), ((int)(Math.random() * 255)));
  }
  public void show()
  {
  	noStroke();
  	fill(myColor);
  	ellipse(myX, myY, mySize, mySize);
  }
}
