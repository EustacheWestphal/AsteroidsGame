class Bullet extends Floater{
  public Bullet(Spaceship bob){
    myCenterX = bob.getX();
    myCenterY = bob.getY();
    myXspeed = bob.getXspeed();
    myYspeed = bob.getYspeed();
    
    myPointDirection = bob.getPointDirection();
    accelerate(6);
    
  }
  public void show(){
    noStroke();
    fill(0,255,0);
    ellipse((float)myCenterX,(float)myCenterY,5,5);
  }
}
