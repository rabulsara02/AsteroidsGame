class Bullet extends Floater
{
	public Bullet(Spaceship bob) 
	{
		myCenterX = bob.getCenterX();
		myCenterY = bob.getCenterY();
		myDirectionX = bob.getDirectionX();
		myDirectionX = bob.getDirectionX();
		myPointDirection = bob.getPointDirection();
	}

	public void show() 
	{
		fill(255,255,255);
		noStroke();
		ellipse((float)myCenterX, (float)myCenterY, 30, 30);
	}
}