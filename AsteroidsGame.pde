Spaceship bob = new Spaceship();
ArryayList <Asteroid> theList = new ArrayList <Asteroid>();
for(int j = 0; j<11; j++)
{
    theList.add(j, new Asteroid());
}
Starfield[]star = new Starfield[100];
double x = 250;
double y = 250;
public void setup() 
{  
    size(500, 500);
    for(int i = 0; i < star.length; i++)
          {         
              star[i] = new Starfield(x,y);
          }
}
public void draw()
{  
    background(0);
    bob.show();
    bob.move();
    for(int m = 0; m<theList.size(); m++)
    {
    theList.get(m).show();
    theList.get(m).move();
    if(dist(bob.getX(), bob.getY(), theList.get(m).getX(), theList.get(m).getY()) <= 20)
        {
        theList.remove(m);
        }
    }
    for(int i = 0; i < star.length; i++)
         {         
             star[i].show();
             star[i].move();
         }    
}
public void keyPressed()
{
    if(key == 'a')
        bob.turn(-5);
    else if(key == 'd')
        bob.turn(5);
    else if(key == 'w')
        bob.accelerate(0.3);
    else if(key == 's')
        bob.accelerate(-0.3);
    else if(key == 'f')
        bob.hyperspace();
}

