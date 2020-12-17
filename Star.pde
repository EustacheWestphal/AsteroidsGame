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
