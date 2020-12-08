
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
