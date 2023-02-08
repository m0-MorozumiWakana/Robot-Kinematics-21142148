float baseH = 20;

float arm1W = 10;
float arm1D = 20;
float arm1L = 20;

float arm2W = 10;
float arm2D = 10;
float arm2L = 30;

float arm3W = 5;
float arm3D = 5;
float arm3L = 25;


float armW1 = 10;
float armW2 = 10;
float armW3 = 5;

float sphereX ;
float sphereY;
float sphereZ;

float angle2 ;
float angle3 ;
float l3 = 0;
float l4 = 0;
float l5 = 0;
float l6 = 0;
float l7 = 100;

float dif = 1.0;
float t=0 ;
float px=0 ;
float pz=85 ;
float C3;
float S3;
float M;
float A;
float N;
float B;

void setup(){
  size(1000, 800, P3D);
  
  camera(80, 180, 50, 80, 0, 30, 0, 0, -1);
  
}

void draw(){
  background(206,210,219);
  
  if(keyPressed){
    //アームを移動
    if(key == 's'){
       if(t<89){
         t=t+dif;
       }
    }
    //押し出してボールを転がす
     if(key == 'd'){
       l3 += dif;
       if(l6< 10){
         l6 += 4 * dif;
       }
       if(l3> 32){
         l3=32;
       }
       if(l3== 32){
         l5 += dif ;
         l4 += dif ;
         if(l4> 42){
          l4= 42;
         }
       }
     }
     //アームは初期位置に戻り，ボールは画面外からまた落下する
    if(key == 'R'){
      t=0;
      l3=0;
      l4=0;
      l5=0;
      l6=0;
      l7=100;
      if(l7>0){
        l7= l7- 5.0*dif;
      }
    } 
  } //keypressed
  
  pushMatrix();
  //base
  strokeWeight(0);
  translate(0,0,baseH/2);
  fill(223,108,77);
  box(10,10,baseH);
  
  //1st link
  translate(0,0,baseH/2+arm1L/2);
  fill(242,238,167);
  box(arm1W,arm1D,arm1L);
  
  //2nd link
  //go to 2nd joint
  translate(0,0,0);
  px = 0 + 48 * t / 100;
  pz = 85 - 35 * t /100; 
  C3 = (sq(px)+sq(pz-40)-1025)/1000;
  S3 = sqrt(1-sq(C3));
  M = 20+ 25* C3;
  A = px;
  N = 25 * S3;
  B = pz- 40;
  angle2 = atan2((M*A-N*B), (N*A+M*B));
  rotateY(angle2); 
  //go to center of 2nd joint
  translate(0,0,arm2L/2);
  fill(58,108,178);  
  box(arm2W,arm2D,arm2L);
  strokeWeight(0);
  
  //3rd link
  // go to 3rd joint
  translate(0, 0, arm2L/2);
  angle3 = atan2(S3,C3);
  rotateY(angle3); 
  // go to center of 3rd joint
  translate(0, 0, arm3L/2);
  fill(106,182,84);
  box(arm3W,arm3D,arm3L+l6);
  strokeWeight(0);
  
  translate(0, 0, arm3L/2+l6/2);
  fill(242,238,167);
  box(4,4,l6);
  strokeWeight(0);
  
  translate(0, 0, l6/2);
  fill(223,108,77);
  box(9,9,2);
  popMatrix();
  
  //Sphere
  pushMatrix();
  sphereX = 58+ l3+ 1.73* l5;
  sphereY = 0;
  sphereZ = 50- l4+ l7 ;
  if(l7>0){
    l7= l7- 5.0*dif;
  }
  translate(sphereX,sphereY,sphereZ);
  strokeWeight(0);
  fill(79,64,58);
  sphere(8);
  popMatrix();
  
  //slope
  pushMatrix();
  strokeWeight(20);
  stroke(242,238,167);
  line(50,0,40,91,0,40);
  line(90, 0, 40, 159.2, 0, 0);
  line(158,0,0,800,0,0);
  popMatrix();  
} 
