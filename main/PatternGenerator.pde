class PatternGenerator {
  
  PImage output;
  
  /**
  *  I screwed up and something cool came up.
  *  Left it for science.
  */
  public PImage getWeirdShit(int wid, int hei) {
    this.output = createImage(wid, hei, RGB);
    this.output.loadPixels();
    
    for(int h = 0; h < output.height; h++){
      for(int w = 0; w < output.width; w++){
        this.output.pixels[w * h] = color(255, 255, 0);
      }
    }
    return this.output;
  }
}
