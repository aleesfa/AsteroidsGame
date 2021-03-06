Spaceship ship = new Spaceship();
Star[] st;
//Bullet bul = new Bullet(ship);
ArrayList <Bullet> bul = new ArrayList <Bullet>();
ArrayList <Asteroid> as = new ArrayList <Asteroid>();
public void setup() 
{
  size(400, 400);
  st = new Star[1000];
  for(int i = 0; i < st.length; i++)
  {
    st[i] = new Star();
  }
  for (int j = 0; j < 10; j++)
  {
    as.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  //bul.show();
  //bul.move();
  //as.show();
  for(int i = 0; i < st.length; i++)
  {
    st[i].show();
  }                                                
  ship.show();
  ship.move();
  for(int i = 0; i < as.size(); i++)
  {
    //as.get(i).show();
    if(dist((float)as.get(i).getCenterX(), (float)as.get(i).getCenterY(), (float)ship.getCenterX(), (float)ship.getCenterY()) <= 20)
    {
      as.remove(i);
    }
    else
    {
      as.get(i).show();
      as.get(i).move();
    }
  }
  for(int i = 0; i < bul.size(); i++)
  {
    for(int j = 0; j < as.size(); j++)
    {
      if(dist((float)as.get(j).getCenterX(), (float)as.get(j).getCenterY(), (float)bul.get(i).myCenterX, (float)bul.get(i).myCenterY) <= 20)
      {
        bul.remove(i);
        as.remove(j);
        break;
      }
      else
      {
        bul.get(i).show();
        bul.get(i).move();
      }
    }
  }
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
  if(key == 's')
  {
    bul.add(new Bullet(ship));
  }
}
