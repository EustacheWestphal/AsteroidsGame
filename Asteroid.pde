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
