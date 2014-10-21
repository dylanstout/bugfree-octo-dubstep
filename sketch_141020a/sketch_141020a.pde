int num = 60;//size of elipse
float mx[] = new float[num];//moves elipse horizontally with a new elipse following the first elipse
float my[] = new float[num];//moves elipse viertically with a new elipse following the first elipse

void setup() { //starts the setup
  size(640, 360);//size of window
  noStroke();//turns off outside line so no visible line around elipse
  fill(255, 153);//color of elipse
}

void draw() {//starts draw loop and continues over and over forever
  background(51);//color of window
  
  // Cycle through the array, using a different entry on each frame. 
  // Using modulo (%) like this is faster than moving all the values over.
  int which = frameCount % num; //resets elipses so that they fade awa1
  mx[which] = mouseX;//elipse follows mouse horizontally
  my[which] = mouseY;//elipse follows mouse vertically
  
  for (int i = 0; i < num; i++) { //controls the speed of which the elipses follow
    // which+1 is the smallest (the oldest in the array)
    int index = (which+1 + i) % num; //contorls the delay of the second flow of elipses
    ellipse(mx[index], my[index], i, i);//creates the elipse
  }
}
