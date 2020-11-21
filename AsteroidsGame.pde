Spaceship ship = new Spaceship();
Star[] st;
public void setup() 
{
  size(400, 400);
  st = new Star[1000];
  for(int i = 0; i < st.length; i++)
  {
    st[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < st.length; i++)
  {
    st[i].show();
  }                                                
  ship.show();
  ship.move();
}
public void keyPressed()
{
  //hyperspace
  if(key == 'h')
  {
    //ship.setXSpeeds(0);
    //ship.setYSpeeds(0);
    ship.setCenterX((int)(Math.random()*400));
    ship.setCenterY((int)(Math.random()*400));
    ship.show();
  }
  //turn left
  if(key == 'l')
  {
    ship.setDirection(180);
  }
  //turn right
  if(key == 'r')
  {
    ship.setDirection(0);
  }
  //accelerate
  if(key == 'a')
  {
    ship.setXSpeeds(ship.getXSpeed() + 1);
    ship.setYSpeeds(ship.getYSpeed() + 1);
    //ship.show();
    //ship.move();
  }
}
