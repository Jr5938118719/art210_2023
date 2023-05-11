import java.util.*;

class Animation
{
  PShape[] framesS;
  PImage[] framesI;
  int nFrames = 0;
  int currentFrame = 0;
  float speed = 0.25;
  float scale = 0.5;
  float counter = 0;
  boolean isSvg = true;
  boolean pause = false;
  boolean playOnce = false;
  
  Animation(String foldername, String ext)
  {
    File dir= new File(dataPath(foldername));
    File[] files= dir.listFiles();
 // println(files);
    Arrays.sort(files);
    if(ext == "svg")
    {
      this.isSvg=true;
      this.framesS = new PShape[files.length];
      for(int i = 0; i <= files.length - 1; i++)
   {
      String path = files[i].getAbsolutePath();
      if(path.toLowerCase().endsWith(".svg"))
      {
        //println(path);
        this.framesS[this.nFrames]=loadShape(path);
        this.nFrames = this.nFrames + 1;
      }
     }
    }
      else
      {
        this.isSvg=false;
       this.framesI = new PImage[files.length];
        for(int i = 0; i <= files.length - 1; i++)
   {
      String path = files[i].getAbsolutePath();
       if(path.toLowerCase().endsWith(".jpg") || path.toLowerCase().endsWith("png"))
      {
    this.framesI[this.nFrames]=loadImage(path);
    this.nFrames = this.nFrames + 1;
      }
     }
    }
  }
  
  void display()
  {
    pushMatrix();
    scale(this.scale);
    if(isSvg)
    {
     shapeMode(CENTER);
     shape(this.framesS[currentFrame],0,0);
    }
    else
    {
     imageMode(CENTER);
     image(this.framesI[this.currentFrame],0,0);
    }
    popMatrix();
    
    if(!this.pause)
    {
      this.counter = this.counter + this.speed;
      this.currentFrame = floor(this.counter);
      
    }
    if(this.currentFrame > this.nFrames-1)
    {
      if(this.playOnce)
      {
        this.pause = true;
        this.currentFrame=this.nFrames-1;
        if(s.currentAnim==  2)
        {
        s.currentAnim=0;
        }
        else if(s.currentAnim==3)
        {
          s.currentAnim=1;
        }
      }
      else
      {
        this.counter=0;
       this.currentFrame=0;
       
      }
      
      
    }
  }
  
}
