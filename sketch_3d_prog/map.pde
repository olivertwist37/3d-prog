color black =#000000;
color white =#FFFFFF;
void drawMap(){
  pushMatrix();
  //rotation

  //rotation
  int mapX=0,mapY=0;
  int worldX=0,worldY=height/2,worldZ=0;
  
  while(mapY<map.height){
    
  color pixel =  map.get(mapX,mapY);
    if (pixel==black){
      worldX=mapX*bs;
         worldZ=mapY*bs;
     texturedBox(texture, bs/2, worldX, worldY, worldZ); 
    }
    
    
   mapX++; 
    if(mapX>map.width){
     mapX=0;
     mapY++;
    }
    
  }
  
  
  popMatrix();
}
