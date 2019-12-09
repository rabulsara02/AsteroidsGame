class Spaceship extends Floater  
{   
	public Spaceship()
	{
		corners = 12;
		myColor = color(0, 221, 255);
    	myCenterX = 350;
    	myCenterY = 350;
    	myDirectionX = 0;
    	myDirectionY = 0;
    	myPointDirection = 0;
	    xCorners = new int[corners];
    	yCorners = new int[corners];
    	xCorners[0] = -2;
	    yCorners[0] = -2;
	    xCorners[1] = 20;
	    yCorners[1] = -2;
	    xCorners[2] = 7;
	    yCorners[2] = -7;
 	 	xCorners[3] = -2;
   	 	yCorners[3] = -7;
    	xCorners[4] = -10;
    	yCorners[4] = -2;
    	xCorners[5] = -7;
    	yCorners[5] = -2;
    	xCorners[6] = -7;
    	yCorners[6] = 2;
    	xCorners[7] = -10;
    	yCorners[7] = 2;
    	xCorners[8] = -2;
    	yCorners[8] = 7;
    	xCorners[9] = 7;
    	yCorners[9] = 7;
    	xCorners[10] = 20;
    	yCorners[10] = 2;
    	xCorners[11] = -2;
    	yCorners[11] = 2;
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
