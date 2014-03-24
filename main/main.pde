// Array just in place to switch quickly between the image to glitch.
// Just add your filenames, and change the index number in imageSource to change between glitched images.
String[] sources = new String[]{"adventure_time.jpg", "cat.jpeg", "doge.jpg", "game_of_thrones.jpg"};
String imageSource = sources[0];
PImage img;

void setup() {
  img = loadImage(imageSource);
  
  size(img.width, img.height);
  background(51);
  
  Glitcher gltchr = new Glitcher();
  
  //PImage result = gltchr.getTransposedRgb(img, 20, 0);
  //PImage result = gltchr.getSteppedTransposedRgb(img, 20, 10);
  //PImage result = gltchr.getWeirdShit(width, height);
  //PImage result = gltchr.getThresholdDisplacement(img, 125);
  PImage result = gltchr.getByteGlitched(img, 38);
  result = gltchr.getTransposedRgb(result, 20, 0);
  result = gltchr.getSteppedTransposedRgb(result, 20, 25);
  
  image(result, 0, 0);
  saveFrame("result.jpg");
}
