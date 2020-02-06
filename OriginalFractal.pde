public void setup()
{
	size(600,600);
	background(0);
	
	
}
public void draw()
{
	myFractal1(400,200,200);
	myFractal2(200,400,200);
	myFractal3(400,200,200);
	myFractal4(200,400,200);
	myFractal5(200,200,200);
}
public void myFractal1(int x, int y, int s)
{
	if( s <=10)
	{
		triangle((float)x,(float)y,(float)x-s,(float)y,(float)x-(s/2),(float)y-s);
	}
	else 
	{
		myFractal1(x,y,s/2);
		myFractal1(x-s/2,y,s/2);
		myFractal1(x-s/4,y-s/2,s/2);
	}
	
}
public void myFractal2(int x, int y, int s)
{
	if( s <=10)
	{
		triangle((float)x,(float)y,(float)x+s,(float)y,(float)x+(s/2),(float)y+s);
	}
	else 
	{
		myFractal2(x,y,s/2);
		myFractal2(x+s/2,y,s/2);
		myFractal2(x+s/4,y+s/2,s/2);
	}
	
}
public void myFractal3(int x, int y, int s)
{
	if( s <=10)
	{
		triangle((float)x,(float)y,(float)x,(float)y+s,(float)x+s,(float)y+(s/2));
	}
	else 
	{
		myFractal3(x,y,s/2);
		myFractal3(x,y+s/2,s/2);
		myFractal3(x+s/2,y+s/4,s/2);
	}
	
}
public void myFractal4(int x, int y, int s)
{
	if( s <=10)
	{
		triangle((float)x,(float)y,(float)x,(float)y-s,(float)x-s,(float)y-(s/2));
	}
	else 
	{
		myFractal4(x,y,s/2);
		myFractal4(x,y-s/2,s/2);
		myFractal4(x-s/2,y-s/4,s/2);
	}
	
}
public void myFractal5(int x, int y, int s)
{
	stroke(250);
	fill(0);
	if(s<=10)
	{
		rect(x,y,s,s);
	}
	else 
	{
		rect(x,y,s,s);
		myFractal5(x+10,y+10,s-20);	
	}
	
}