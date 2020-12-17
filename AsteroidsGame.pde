Spaceship bob = new Spaceship();
Starfield[]star = new Starfield[100];
ArrayList <Asteroid> theList = new ArrayList <Asteroid>();
ArrayList<Bullet> shots = new ArrayList<Bullet>();
public void setup() 
{
  size(500, 500);
  background(0);
  for(int i = 0; i < star.length; i++)
          {         
              star[i] = new Starfield(250,250);
          }
  bob.accelerate(0);
  bob.turn(90);
}
public void draw() 
{
  background(0);
  for(int i = 0; i< star.length; i++)
 {
     star[i].move();
     star[i].show();
 }
  for(int i = 0; i<shots.size();i++){
    shots.get (i).move();
    shots.get (i).show();
    float d = dist(theList.get(i).myCenterX, theList.get(i).myCenterY, shots.get(i).myCenterX, shots.get(i).myCenterY);
    if(d<50){
      //shots.remove(i);
      theList.remove(i);
      break;
    }
  }
  
  Asteroid joe = new Asteroid();
  theList.add(joe);
  for (int y = 0; y < 30; y++)
  {
    theList.add(new Asteroid());
  }

  for (int nI = 0; nI < 6; nI++)
  {
    theList.get(nI).show();
    theList.get(nI).move();
  }

  for (int nI = 0; nI < theList.size(); nI++)
  {
    if (dist(theList.get(nI).myCenterX, theList.get(nI).myCenterY, bob.myCenterX, bob.myCenterY) < 20) 
    {
      theList.remove(nI);
      break;
    }
  }
  bob.show();
  bob.move();
}

public void keyPressed()
{
  if (key == 'w') {
    bob.accelerate(0.3);
  }
  if (key == 's') {
    bob.accelerate(-0.3);
  }
  if (key == 'a') {
    bob.turn(-5);
  }
  if (key == 'd') {
    bob.turn(5);
  }
  if (key == 'f') {
    bob.hyperspace();
  }
  if(key == ' ')
    shots.add(new Bullet(bob));
}
