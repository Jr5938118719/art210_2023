import processing.sound.*;

Amplitude amp;
int samples = 100;
Waveform waveform;
AudioIn in;
SoundFile in2;
PinkNoise in3;

void setup()
{
  size (1200, 900);
  background(225);
  
  //in2 = new SoundFile(this, "soundFile.mp3"); //make sure the sound file is in a data folder like with animations
  //int2.play();
  
  //in3 = new PinkNoise(this);
  //in3.play();
  
  amp = new Amplitude(this);
  waveform = new Waveform(this, samples);
  in = new AudioIn(this, 0);
  in.start();
  amp.input(in);
  waveform.input(in);
}

void draw()
{
  background(100);
  noStroke();
  fill(255,200,200);
  circle(width/2,height/2,(amp.analyze()*500)+50);
  
  waveform.analyze();
  strokeWeight(1);
  stroke(0,150,255);
  noFill();
  beginShape();
  for(int i = 0; i < samples; i++)
  {
    vertex(
    map(i,0,samples, 0, width),
    map(waveform.data[i], -1,1,0,height)
    );
  }
    endShape();
    
}
