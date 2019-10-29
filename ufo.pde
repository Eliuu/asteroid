class ufo extends GameObject {
  ufo(){
    location = new PVector(random(width), random(height));
    
  }
  
  void show(){
    image(ufo, location.x, location.y,50,50);
    
  }
  
  void act(){
    super.act();
  }


}
