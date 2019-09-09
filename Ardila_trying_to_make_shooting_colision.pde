class Ball {

 float locx;
 float locy;
 PVector location;
 PVector velocity;

Ball(){
   location = new PVector(width/2,5);
   velocity = new PVector(0,3);
   locx = location.x;
   locy = location.y;
 }

 void move(){
    location.add(velocity);
 }
 void display(){
   ellipse(location.x,location.y,30,30);
 }
 
 
}

 class laser {
   PVector location;
   PVector velocity;
   float locx;
   float locy;
   
   
   laser(){
   location = new PVector(width/2,390);
   velocity = new PVector(0,-2);
   locx = location.x;
   locy = location.y;
 }
  
    void move(){
    location.add(velocity);
    }
void display(){
   rect(location.x,location.y,5,20);
 }
 
 }

Ball b;
laser l;

 void setup(){
   size(400,400);
   b = new Ball();
   l = new laser();

 }
 
 void draw(){
   noStroke();
   background(100,0,250);
   b.move();
   b.display();
   l.move();
   l.display();
   
    if (abs(l.location.y - b.location.y) <= 7){
    l.location.y += 1000000;
    b.location.y += 1000000;
  }
 }
 
 

 
 
