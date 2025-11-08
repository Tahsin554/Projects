//atm remote design rework

void setup(){
 size(800, 800);
 background(255);
}

void draw(){
 noStroke();
 fill(50,50,50);
 rect(width/10, height/10,width*2/10, height*4/10);
 rect(width*0.5/10, height*3/10, width*2.5/10, height*2/10);
 quad(width*0.5/10, height*3/10, width/10, height*2.5/10, width*3/10, height*2.5/10, width*3/10, height*3/10); 
 
 fill(0,0,0);
 rect(width*2.5/10, height/10,width*0.5/10, height*4/10);
 quad(width*2/10, height*3/10, width*2.5/10, height*2.5/10, width*3/10, height*5/10, width*2/10, height*5/10); 

 fill(255);
 rect(width*1.2/10, height*1.2/10, width*1.1/10, height*1/10);
 quad(width*0.8/10, height*2.9/10, width*1.1/10, height*2.6/10, width*2.1/10, height*2.6/10, width*1.8/10, height*2.9/10); 
 
 fill(100,100,100);
 
 rect(width*1.2/10, height*1.2/10, width*0.1/10, height*1/10);
 rect(width*2.2/10, height*1.2/10, width*0.1/10, height*1/10);
 
 quad(width*0.8/10, height*2.9/10, width*1.1/10, height*2.6/10, width*2.1/10, height*2.6/10, width*1.8/10, height*2.9/10); 

}
