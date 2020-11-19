Spaceship bob = new Spaceship();
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
        myYspeed = 0;
    }
}
class Starfield //note that this class does NOT extend Floater
{  
     double myX;

     double myY;

    double myAngle;

    double mySpeed;

    ouble mySize; 

    int random; 

    Starfield(x,y)

    {

        myX = x;

        myY = y;

        myAngle = Math.random()*(2*Math.PI);

        mySpeed = Math.random()*5 + 1.5;

        random = (int)(Math.random()*3)-1;

    }

    void show()

    {

        mySize = dist(250,250,myX,myY) / 60;

        fill(255);

        noStroke;

        ellipse((float)myX, (float)myY, (float)mySize, (float)mySize); 

    }

    void move()

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


