void setup() {
 size(640, 640); 
}

int x = 200; //X axis movement
int y = 400; //Y axis movement
int speed = 30; //Movement speed

void draw(){
  background (255, 216, 200); //Background color

  
  fill(191, 146, 61); //collor for shoes
  ellipse(x - 50, y, 100, 50); //left shoe
  fill(191, 146, 61);
  ellipse(x + 50, y, 100, 50); //right shoe
  fill(247, 30, 30);//Body color
  triangle(x + 98, y - 170, x, y, x - 97, y - 170); //body
  
  fill(255, 229, 179);//Head color
  ellipse(x, y- 200, 200, 200); //head
  
  fill(0,0,0);//Eye color
  ellipse(x - 40, y-200, 50, 50); //left eye
  fill(0,0,0);
  ellipse(x + 40, y-200, 50, 50); //right eye
}

void keyPressed()//Movement for the creature
{
  if (key == CODED){
    if(keyCode == UP)
    {
     y -= speed;  
    }
    else if(keyCode == DOWN)
    {
          y += speed;  
    }
    else if(keyCode == RIGHT)
    {
          x += speed;  
    }
    if(keyCode == LEFT)
    {
          x -= speed;  
    }
  }
}


