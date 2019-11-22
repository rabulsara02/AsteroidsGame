class Asteroid extends Floater
{
	private int rot;
	public Asteroid()
	{
		rot = (int)(Math.random() *4) - 1;
		myColor = color(130,120,115);
		corners = 10;
		myCenterX = (int)(Math.random() * 500);
    	myCenterY = (int)(Math.random() * 500);
		xCorners = new int[corners];
    	yCorners = new int[corners];
    	myDirectionX = (int)(Math.random() * 4);
    	myDirectionY = (int)(Math.random() * 4);
    	myPointDirection = (int)(Math.random() * 360);
    	xCorners[0] = 9;
	    yCorners[0] = 0;
	    xCorners[1] = 10;
	    yCorners[1] = 5;
	    xCorners[2] = 7;
	    yCorners[2] = 13;
 	 	xCorners[3] = 0;
   	 	yCorners[3] = 15;
    	xCorners[4] = -5;
    	yCorners[4] = 12;
    	xCorners[5] = -7;
    	yCorners[5] = 10;
    	xCorners[6] = -7;
    	yCorners[6] = 4;
    	xCorners[7] = -6;
    	yCorners[7] = -1;
    	xCorners[8] = -3;
    	yCorners[8] = -6;
    	xCorners[9] = 5;
    	yCorners[9] = -7;
	}

	
	

	public void setDirectionX(double x)
	{
		myDirectionX = x;
	}
	public void setDirectionY(double y)
	{
		myDirectionY = y;	
	}
	public void setCenterX(double myX)
	{
		myCenterX = myX;
	}
	public void setCenterY(double myY)
	{
		myCenterY = myY;
	}
	public void setPointDirection(double myDirection)
	{
		myPointDirection = myDirection;
	}
	
}