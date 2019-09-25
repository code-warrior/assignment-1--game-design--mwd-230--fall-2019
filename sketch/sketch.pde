
int x = 0; 
int y = 0;

void setup(){

size(1024,768);


}

void drawhead(){ 
  
  fill(0,255,0);//green
  ellipse(x+426,y+494,512,406);//head
  
  
  ellipse(x+100,y+100,50,50);
  ellipse(x+500,y+100,50,50);
  ellipse(x+800,y+100,50,50);//ants
 
 fill(255);//white
 ellipse(x+420,y+400,90,90);//eye
 fill(255,0,0);//red 
 ellipse(x+420,y+400,15,15);//pupil 
 
 line(x+346,y+525,x+463,y+525);
 line(x+463,y+485,x+346,y+525);// nose?
  ellipse(x+346,y+525,12,12);//red nose ring maybe? 
   
  line(x+350,y+607,x+485,y+580);//line mouth(looks better) 
  rect(x+350,y+550,140,70);// rect possible mouth
    
 
}
void drawbody(){

  
 line(x+320,y+350,x+100,y+100);
 line(x+495,y+320,x+500,y+100);
 line(x+580,y+350,x+800,y+100);//line to ants
 
  line(x+351,y+688,x+352,y+717);//left leg
  line(x+352,y+717,x+324,y+720);
  line(x+537,y+678,x+537,y+717);//right leg
  line(x+537,y+717,x+569,y+716);

  
}

void draw(){
background(255);
  
 strokeWeight(4); 
  
 stroke(0);
 drawhead(); 
 
 
 drawbody();
  
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      y -= 1;
     
    } else if (keyCode == DOWN) {
      y += 1;
    }
    else if (keyCode == RIGHT) {
      x +=1;
  }
    else if(keyCode== LEFT){
      x -=1;
  }
}
}
