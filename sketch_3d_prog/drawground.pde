int  y=50,c=0,A=0;
void drawGround() {
strokeWeight(1);
    stroke(0);
  int  x=0;
  while (x<map.width*bs){
    
  line(x,y,0,x,y,map.height*bs);
x=x+bs;  

}

int z=0;

while(z<map.height*bs){
  line (0,y,z,map.width*bs,y,z);
  
  z=z+bs;
}





}
