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
class Floater //Do NOT modify the Floater class! Make changes in the Spaceship class


{  

 protected int corners;  //the number of corners, a triangular floater has 3  

 protected int[] xCorners;  

 protected int[] yCorners;  

 protected int myColor;  

 protected double myCenterX, myCenterY; //holds center coordinates  

 protected double myXspeed, myYspeed; //holds the speed of travel in the x and y directions  

 protected double myPointDirection; //holds current direction the ship is pointing in degrees   




 //Accelerates the floater in the direction it is pointing (myPointDirection)  

 public void accelerate (double dAmount)  

 {         

   //convert the current direction the floater is pointing to radians   

   double dRadians =myPointDirection*(Math.PI/180);    

   //change coordinates of direction of travel   

   myXspeed += ((dAmount) * Math.cos(dRadians));   

   myYspeed += ((dAmount) * Math.sin(dRadians));      

 }  

 public void turn (double degreesOfRotation)  

 {    

   //rotates the floater by a given number of degrees   

   myPointDirection+=degreesOfRotation;  

 }  

 public void move ()   //move the floater in the current direction of travel

 {     

   //change the x and y coordinates by myXspeed and myYspeed      

   myCenterX += myXspeed;   

   myCenterY += myYspeed;    




   //wrap around screen   

   if(myCenterX >width)

   {    

     myCenterX = 0;   

   }   

   else if (myCenterX<0)

   {    

     myCenterX = width;   

   }   

   if(myCenterY >height)

   {   

     myCenterY = 0;   

   }

  

   else if (myCenterY < 0)

   {    

     myCenterY = height;   

   }  

 }  

 public void show ()  //Draws the floater at the current position 

 {            

   fill(myColor);  

   stroke(myColor);   

  

   //translate the (x,y) center of the ship to the correct position

   translate((float)myCenterX, (float)myCenterY);




   //convert degrees to radians for rotate()    

   float dRadians = (float)(myPointDirection*(Math.PI/180));

  

   //rotate so that the polygon will be drawn in the correct direction

   rotate(dRadians);

  

   //draw the polygon

   beginShape();

   for (int nI = 0; nI < corners; nI++)

   {

     vertex(xCorners[nI], yCorners[nI]);

   }

   endShape(CLOSE);




   //"unrotate" and "untranslate" in reverse order

   rotate(-1*dRadians);

   translate(-1*(float)myCenterX, -1*(float)myCenterY);

 }  

}
class Spaceship extends Floater
{       
    public Spaceship()
    {
        corners = 4;
        xCorners = new int[corners];
        yCorners = new int[corners];
        xCorners[0] = -8;
        yCorners[0] = -8;
        xCorners[1] = -6;
        yCorners[1] = 0;
        xCorners[2] = -8;
        yCorners[2] = 8;
        xCorners[3] = 16;
        yCorners[3] = 0;
        myCenterX = myCenterY = 250;
        myXspeed = myYspeed = 0;
        myColor = color(255, 255, 255);
        myPointDirection = (int)(Math.random()*360);
    }
    public void hyperspace()
    {
        myCenterX = (int)(Math.random()*500);
        myCenterY = (int)(Math.random()*500);
        myPointDirection = (int)(Math.random()*360);
        myXspeed = 0;
        myYspeed = 0;s
    }
    public int getX()
    {
        return (int)myCenterX;
    } 
    public int getY()
    {
        return (int)myCenterY;
    }
}
public class Starfield //note that this class does NOT extend Floater
{  
     private double myX;

     private double myY;

    private double myAngle;

    private double mySpeed;

    private int random; 

    public Starfield(x,y)

    {

        myX = x;

        myY = y;

        myAngle = Math.random()*(2*Math.PI);

        mySpeed = Math.random()*5 + 1.5;

        random = (int)(Math.random()*3)-1;

    }

    public void show()

    {

        mySize = dist(250,250,myX,myY) / 60;

        fill(255);

        noStroke;

        ellipse((float)myX, (float)myY, (float)mySize, (float)mySize); 

    }

    public void move()

    {

         myX = myX + Math.cos(myAngle) * mySpeed;

         myY = myY + Math.sin(myAngle) * mySpeed;

         if(myX > 500 || myY > 500)

         {

             myX = 250;

             myY = 250;

         }

         else if(myX > 500 || myY > 500)

         {

             myX = 250;

             myY = 250;

         }

         else if(myX < 0 || myY < 0)

         {

             myX = 250;

             myY = 250;

         }

         else

         {

         }

    }       

}
 public class Asteroid extends Floater
{
    private double rotSpeed();
    public Asteroid()
    {
        corners = 12;
        xCorners = new int[corners];
        yCorners = new int[corners];
        xCorners[0] = -2;
        yCorners[0] = -12;
        xCorners[1] = -14;
        yCorners[1] = -18;
        xCorners[2] = -10;
        yCorners[2] = -8;
        xCorners[3] = -20;
        yCorners[3] = 12;
        xCorners[4] = -6;
        yCorners[4] = 6;
        xCorners[5] = -6;
        yCorners[5] = 22;
        xCorners[6] = -1;
        yCorners[6] = 12;
        xCorners[7] = 16;
        yCorners[7] = 16;
        xCorners[8] = 8;
        yCorners[8] = 2;
        xCorners[9] = 20;
        yCorners[9] = -10;
        xCorners[10] = 10;
        yCorners[10] = -12;
        xCorners[11] = 14;
        yCorners[11] = -26;
        myCenterX = (int)(Math.random()*500);
        myCenterY = (int)(Math.random()*500);
        myXspeed = (int)(Math.random()*2)+1; 
        myYspeed = (int)(Math.random()*2)+1;
        myColor = color(102, 51, 0);
        myPointDirection = (int)(Math.random()*360);
        rotSpeed = (int)(Math.random()*3)+1;       
    }   
    public int getX()
    {
        return (int)myCenterX;
    } 
    public int getY()
    {
        return (int)myCenterY;
    }
    public void setX(double x)
    {
        myCenterX = x;
    }
    public void setY(double y)
    {
        myCenterY = y;
    }
    public void move()
    {
        turn(rotSpeed);
        super.move();
    }
}
