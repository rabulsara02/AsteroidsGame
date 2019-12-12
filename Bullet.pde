class Bullet extends Floater
{
	public Bullet(Spaceship theShip) 
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
		ellipse(30, 30, (float)bob.getCenterX(), (float)bob.getCenterY());
	}
}