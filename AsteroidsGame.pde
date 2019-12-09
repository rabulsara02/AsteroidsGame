Spaceship bob = new Spaceship();
Star [] bill ;
Asteroid [] juno;
boolean wPressed = false;
boolean aPressed = false;
boolean dPressed = false;
boolean sPressed = false;
public void setup() 
{
	background(0);
	size(700,700);
	bill = new Star[500];
	juno = new Asteroid[30];
	for(int i = 0; i < bill.length; i++)
	{
		bill[i] = new Star();
	}
	for(int i = 0; i < juno.length; i++)
	{
		juno[i] = new Asteroid();
	}
}
public void draw() 
{
	background(0);
	for(int i = 0; i < bill.length; i++)
 	{
 		bill[i].show();
 	}
	bob.show();
	bob.move();
	for(int i =0; i < juno.length; i++)
	{
		juno[i].show();
		juno[i].move();
	}

	if(wPressed == true)
	{
		bob.setDirectionX(0);
		bob.setDirectionY(0);
		bob.accelerate(4);
		//PUT AN ELSE SLOW DOWN HERE
	}
	if(aPressed == true)
	{
		bob.turn(-5);
	}
	if(sPressed == true)
	{
		bob.setDirectionX(0);
		bob.setDirectionY(0);
		bob.accelerate(-4);
	}
	if(dPressed == true)
	{
		bob.turn(5);
	}


	
}

public void keyReleased()
{

	//MOVE FUNCTIONS
	if(key == 'w')
  {
    wPressed = false;
  }

  if (key == 'a')
  {
    aPressed = false;
  }

  if (key == 'd')
  {
    dPressed = false;
  }

  if (key == 's')
  {
    sPressed = false;
  }

}

public void keyPressed()
{

	//MOVE FUNCTIONS
	if(key == 'w')
	{
		wPressed = true;
		//bob.accelerate(1);
	}
	if(key == 'a')
	{
		aPressed = true;
		//bob.turn(-10);
	}
	if(key == 's')
	{
		sPressed = true;
		//bob.accelerate(-1);
	}
	if(key == 'd')
	{
		dPressed = true;
		//bob.turn(10);
	}
		
	if(key == 'r')
	{
		 bob.setCenterX((int)(Math.random() * 700) + 1);
		 bob.setCenterY((int)(Math.random() * 700) + 1);
		 bob.setDirectionX(0);
		 bob.setDirectionY(0);
		 bob.setPointDirection((int)(Math.random() * 360));
	}
}
