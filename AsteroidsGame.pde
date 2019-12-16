Spaceship bob = new Spaceship();
Star [] bill ;
Asteroid [] juno;
ArrayList <Bullet> boom = new ArrayList <Bullet>();
boolean wPressed = false;
boolean aPressed = false;
boolean dPressed = false;
boolean sPressed = false;
boolean spaceBarPressed = false;
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
/*	for(int i = 0; i < 10; i++)
	{
		boom.get(i).show();
		boom.get(i).move();
	}
*/
	if(wPressed == true)
	{
		bob.setDirectionX(0);
		bob.setDirectionY(0);
		bob.accelerate(4.5);
	}
	if(aPressed == true)
	{
		bob.turn(-5);
	}
	if(sPressed == true)
	{
		bob.setDirectionX(0);
		bob.setDirectionY(0);
		bob.accelerate(-4.5);
	}
	if(dPressed == true)
	{
		bob.turn(5);
	}
	if(spaceBarPressed == true)
	{
		boom.add(new Bullet(bob));
	}


	
}

public void keyReleased()
{

	//MOVE FUNCTIONS
	if(key == 'w' || key == 'W')
  {
    wPressed = false;
  }

  if (key == 'a' || key == 'A')
  {
    aPressed = false;
  }

  if (key == 'd' || key == 'D')
  {
    dPressed = false;
  }

  if (key == 's' || key == 'S')
  {
    sPressed = false;
  }
  if (key == 'v')
  {
  	spaceBarPressed = false;
  }

}

public void keyPressed()
{

	//MOVE FUNCTIONS
	if(key == 'w' || key == 'W')
	{
		wPressed = true;
		//bob.accelerate(1);
	}
	if(key == 'a' || key == 'A')
	{
		aPressed = true;
		//bob.turn(-10);
	}
	if(key == 's' || key == 'S')
	{
		sPressed = true;
		//bob.accelerate(-1);
	}
	if(key == 'd' || key == 'D')
	{ 
		dPressed = true;
		//bob.turn(10);
	}
	if (key == 'v')
  	{
  		spaceBarPressed = true;
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
private void showBullets()
{
	for(int i = 0; i<boom.size(); i++)
	{
		boom.get(i).show();
	}
}
