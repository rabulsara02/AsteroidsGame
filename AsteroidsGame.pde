Spaceship bob = new Spaceship();
Star [] bill ;
Asteroid [] juno;
public void setup() 
{
	background(0);
	size(500,500);
	bill = new Star[500];
	juno = new Asteroid[20];
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

	
}
public void keyPressed()
{
	if(key == 'w' || keyCode == UP)
	{
		bob.accelerate(1);
	}
	if(key == 'a')
	{
		bob.turn(-10);
	}
	if(key == 's')
	{
		bob.accelerate(-1);
	}
	if(key == 'd')
	{
		bob.turn(10);
	}
	if(key == 'r')
	{
		 bob.setCenterX((int)(Math.random() * 500) + 1);
		 bob.setCenterY((int)(Math.random() * 500) + 1);
		 bob.setDirectionX(0);
		 bob.setDirectionY(0);
		 bob.setPointDirection((int)(Math.random() * 360));
	}
}

