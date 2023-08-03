float armL1 = 40;
float armW1 = 5;
float angle0 = 0;
float angle1 = 0;
float angle2 = 0;
float angle3 = 0;
float dif = 1.0;

void setup(){
  size(800, 800, P3D);
  // background(234,228,225);
  
  camera(100, 100, 70, 0, 0, 0, 0, 0, -1);
  
}

void draw(){
  
  background(234,228,225);
  
   if(keyPressed){
    if(key == 't'){
      angle0 = angle0 + dif;
    }
    if(key == 'T'){
      angle0 = angle0 - dif;
    }
   
    if(key == 'm'){
      angle1 = angle1 + dif;
    }
    if(key == 'M'){
      angle1 = angle1 - dif;
    }
    
    if(key == 'b'){
      angle2 = angle2 + dif;
    }
    if(key == 'B'){
      angle2 = angle2 - dif;
    }

    if(key == 'a'){
      angle3 = angle3 + dif;
    }
    
    if(key == 'A'){
      angle3 = angle3 - dif;
    }
    
    
    }

  
  //1
  pushMatrix();
  rotateZ(radians(angle0));
  rotateZ(radians(angle3));
  translate(0,armL1,armL1);
  strokeWeight(1);
  stroke(254, 225, 71);
  sphere(3);
  fill(254, 225, 71);
  strokeWeight(10);
  stroke(243, 165, 161);
  line(0, 0, 0, 0, -armL1, 0);
  popMatrix();
  
  //2
  pushMatrix();
  rotateZ(radians(angle0));
  rotateZ(radians(angle3));
  translate(0,0,armL1);
  strokeWeight(1);
  stroke(254, 225, 71);
  sphere(3);
  fill(254, 225, 71);
  strokeWeight(10);
  stroke(243, 165, 161);
  line(0, 0, 0, armL1, 0, 0);
  popMatrix();
  
  //3
  pushMatrix();
  rotateZ(radians(angle0));
  rotateZ(radians(angle3));
  translate(armL1, 0, armL1);
  strokeWeight(1);
  stroke(254, 225, 71);
  sphere(3);
  fill(254, 225, 71);
  strokeWeight(10);
  stroke(243, 165, 161);
  line(0, 0, 0, 0, armL1, 0);
  popMatrix();
  
  //4
  pushMatrix();
  rotateZ(radians(angle0));
  rotateZ(radians(angle3));
  translate(armL1, armL1, armL1);
  strokeWeight(1);
  stroke(254, 225, 71);
  sphere(3);
  fill(254, 225, 71);
  strokeWeight(10);
  stroke(243, 165, 161);
  line(0, 0, 0, -armL1, 0, 0);
  popMatrix();
  
  //5
  pushMatrix();
  rotateX(radians(angle1));
  rotateZ(radians(angle3));
  translate(0, armL1, 0);
  strokeWeight(10);
  stroke(1, 66, 84);
  line(0, 0, 0, 0, 0, armL1);
  popMatrix();
  
  //6
  pushMatrix();
  rotateX(radians(angle1));
  rotateZ(radians(angle3));
  translate(0, 0, 0);
  strokeWeight(10);
  stroke(1, 66, 84);
  line(0, 0, 0, 0, 0, armL1);
  popMatrix();
  
  //7
  pushMatrix();
  rotateX(radians(angle1));
  rotateZ(radians(angle3));
  translate(armL1, 0, 0);
  strokeWeight(10);
  stroke(1, 66, 84);
  line(0, 0, 0, 0, 0, armL1);
  popMatrix();
  
  //8
  pushMatrix();
  rotateX(radians(angle1));
  rotateZ(radians(angle3));
  translate(armL1, armL1, 0);
  strokeWeight(10);
  stroke(1, 66, 84);
  line(0, 0, 0, 0, 0, armL1);
  popMatrix();
  
   //9
  pushMatrix();
  rotateY(radians(angle2));
  rotateZ(radians(angle3));
  translate(0,armL1,0);
  strokeWeight(1);
  stroke(254, 225, 71);
  sphere(3);
  fill(254, 225, 71);
  strokeWeight(10);
  stroke(30, 188, 189);
  line(0, 0, 0, 0, -armL1, 0);
  popMatrix();
  
  //10
  pushMatrix();
  rotateY(radians(angle2));
  rotateZ(radians(angle3));
  translate(0,0,0);
  strokeWeight(1);
  stroke(240, 90, 91);
  sphere(3);
  fill(240, 90, 91);
  strokeWeight(10);
  stroke(30, 188, 189);
  line(0, 0, 0, armL1, 0, 0);
  popMatrix();
  
  //11
  pushMatrix();
  rotateY(radians(angle2));
  rotateZ(radians(angle3));
  translate(armL1, 0, 0);
  strokeWeight(1);
  stroke(254, 225, 71);
  sphere(3);
  fill(254, 225, 71);
  strokeWeight(10);
  stroke(30, 188, 189);
  line(0, 0, 0, 0, armL1, 0);
  popMatrix();
  
  //12
  pushMatrix();
  rotateY(radians(angle2));
  rotateZ(radians(angle3));
  translate(armL1, armL1, 0);
  strokeWeight(1);
  stroke(254, 225, 71);
  sphere(3);
  fill(254, 225, 71);
  strokeWeight(10);
  stroke(30, 188, 189);
  line(0, 0, 0, -armL1, 0, 0);
  popMatrix();
  
}
