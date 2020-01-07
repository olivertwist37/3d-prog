 class Bullet{
  float x,y,z,vx,vz,t,lives;

  Bullet(float _x,float _y,float _z,float _vx,float _vz){
    
    x=_x;
    y=_y;
    z=_z;
    vx=_vx;
    vz=_vz;
  lives=1;
  t=0;
  }
  void show(){
    pushMatrix();
    translate(x,y,z);
       fill(255);
   noStroke();
   sphere(2); 
    popMatrix();
    
    
  }
  void act(){
    x=x +vx*3;
    z=z+vz;
    t++;
   if(t>100){
lives=0;
   }
    
  }
  
}  
void handleBullets(){
  int i=0;
  while(i<bullets.size()){
    Bullet b = bullets.get(i);
    b.show();
    b.act();
    
  
    
    i++;
    
  }
}
 
    

  
 

 
  
  
  
  
  
  
  
  
  
  
