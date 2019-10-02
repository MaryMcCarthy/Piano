//THIS PROJECT WAS CREATED BY:
//MARY MCCARTHY 18234712
//CIARA O'BRIEN 18223834
//MICHAEL FITZGERALD 18234542
//COLIN RYAN 18247253

import arb.soundcipher.*; // create folder named 'arb' to contain SoundCipher files
SoundCipher midi = new SoundCipher(this);

String[] note = {"C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B"};

int midiValue;

color white= color(255,255,255);
color black= color(0,0,0);
color grey= color(211,211,211);
color blue = color(0,0,255);

PShape L;
PShape T;
PShape E;
PShape D;


int shape_index = 0,x;

void setup() {
  size(1520,210);
  background(grey);
  rectMode(CORNER);
 
  L = createShape();
  L.beginShape();
  L.fill(white);
  L.vertex(0,0);
  L.vertex(0,200);
  L.vertex(25,200);
  L.vertex(25,120);
  L.vertex(20,120);
  L.vertex(20,0);
  L.endShape(CLOSE);
  
  T = createShape();
  T.beginShape();
  T.fill(white);
T.vertex(25,120);
T.vertex(25,200);
T.vertex(55,200);
T.vertex(55,120);
T.vertex(50,120);
T.vertex(50,0);
T.vertex(30,0);
T.vertex(30,120);
T.endShape(CLOSE);
  
  E = createShape();
  E.beginShape();
  E.fill(black);
  E.vertex(20,0);
  E.vertex(20,120);
  E.vertex(30,120);
  E.vertex(30,0);
  E.endShape(CLOSE);
  
  D = createShape();
  D.beginShape();
  D.vertex(55,120);
  D.vertex(55,200);
  D.vertex(80,200);
  D.vertex(80,0);
  D.vertex(60,0);
  D.vertex(60,120); }
  
   
  
  //white keys
void display(int x){
   L = createShape();
  L.beginShape();
  L.fill(white);
  L.vertex(x+0,0);
  L.vertex(x+0,200);
  L.vertex(x+25,200);
  L.vertex(x+25,120);
  L.vertex(x+20,120);
  L.vertex(x+20,0);
  L.endShape(CLOSE);
 
 T = createShape();
  T.beginShape();
  T.fill(white);
T.vertex(x+25,120);
T.vertex(x+25,200);
T.vertex(x+55,200);
T.vertex(x+55,120);
T.vertex(x+50,120);
T.vertex(x+50,0);
T.vertex(x+30,0);
T.vertex(x+30,120);
T.endShape(CLOSE);

E = createShape();
  E.beginShape();
  E.fill(black);
  E.vertex(x+20,0);
  E.vertex(x+20,120);
  E.vertex(x+30,120);
  E.vertex(x+30,0);
  E.endShape(CLOSE);

 D = createShape();
  D.beginShape();
  D.vertex(x+55,120);
  D.vertex(x+55,200);
  D.vertex(x+80,200);
  D.vertex(x+80,0);
  D.vertex(x+60,0);
  D.vertex(x+60,120);
  
  shape(L);
shape(T);
shape(E);
shape(D);

shape(L,80,0);
shape(T,80,0);
shape(T,110,0);
shape(D,110,0);

//black keys
shape(E,30,0);
shape(E,80,0);
shape(E,110,0);
shape(E,140,0);

midiValue = 12; // C0
  midi.instrument(midi.PIANO);
}


void draw() {
   for (int i = 0; i < 8; i++) {
    display(0);
   }
}

void keyPressed(){
   if(key == 'r'){
      background(grey); //allows the screen to go back to default however still wont start at the proper place of beginning. loop needed.
  }
  if (key == CODED) {
    if (keyCode == UP) {
      if( x<= 1000){
      x+=190;
      }
    
   display(x);
   println(x);
  
    }
    else if(keyCode == DOWN){
      if(x>= 190 && x<=2000){
        background(grey); //Once again a loop is needed. probably a for loop. 
      }
       display(x);
   println(x);
  }
  }
}

void mousePressed(){     //all sounds are available from start had trouble putting it to the specific shape.
  // First Octave
  if(mouseX>20&&mouseX<30&mouseY>0&&mouseY<120){
    midi.playNote(midiValue+1, 60, 2); // C#
  }else if(mouseX>0&&mouseX<25&&mouseY>0&&mouseY<200){
    midi.playNote(midiValue, 60, 2); // C
  } else if(mouseX>50&&mouseX<60&&mouseY>0&&mouseY<120){
    midi.playNote(midiValue+3, 60, 2); // D#
  } else if(mouseX>25&&mouseX<55){
    midi.playNote(midiValue+2, 60, 2); // D
  } else if(mouseX>55&&mouseX<80){
    midi.playNote(midiValue+4, 60, 2); // E
  } else if(mouseX>100&&mouseX<110&&mouseY>0&&mouseY<120){
    midi.playNote(midiValue+6, 60, 2); // F#
  } else if(mouseX>80&&mouseX<105){
    midi.playNote(midiValue+5, 60, 2); // F
  } else if(mouseX>130&&mouseX<140&&mouseY>0&&mouseY<120){
    midi.playNote(midiValue+8, 60, 2); // G#
  } else if(mouseX>105&&mouseX<135){
    midi.playNote(midiValue+7, 60, 2); // G
  } else if(mouseX>160&&mouseX<170&&mouseY>0&&mouseY<120){
    midi.playNote(midiValue+10, 60, 2); // A#
  } else if(mouseX>135&&mouseX<165){
    midi.playNote(midiValue+9, 60, 2); // A
  } else if(mouseX>165&&mouseX<190){
    midi.playNote(midiValue+11, 60, 2); // B
    // Second Octave
  } else if(mouseX>210&&mouseX<220&&mouseY>0&&mouseY<120){
    midi.playNote(midiValue+13, 60, 2); // C#
  } else if(mouseX>190&&mouseX<215){
    midi.playNote(midiValue+12, 60, 2); // C
  } else if(mouseX>240&&mouseX<250&&mouseY>0&&mouseY<120){
    midi.playNote(midiValue+15, 60, 2); // D#
  } else if(mouseX>215&&mouseX<245){
    midi.playNote(midiValue+14, 60, 2); // D
  } else if(mouseX>245&&mouseX<270){
    midi.playNote(midiValue+16, 60, 2); // E
  } else if(mouseX>290&&mouseX<300&&mouseY>0&&mouseY<120){
    midi.playNote(midiValue+18, 60, 2); // F#
  } else if(mouseX>270&&mouseX<295){
    midi.playNote(midiValue+17, 60, 2); // F
  } else if(mouseX>320&&mouseX<330&&mouseY>0&&mouseY<120){
    midi.playNote(midiValue+20, 60, 2); // G#
  } else if(mouseX>295&&mouseX<325){
    midi.playNote(midiValue+19, 60, 2); // G
  } else if(mouseX>350&&mouseX<360&&mouseY>0&&mouseY<120){
    midi.playNote(midiValue+22, 60, 2); // A#
  } else if(mouseX>320&&mouseX<355){
    midi.playNote(midiValue+21, 60, 2); // A
  } else if(mouseX>350&&mouseX<380){
    midi.playNote(midiValue+23, 60, 2); // B
    // Third Octave
  } else if(mouseX>400&&mouseX<410&&mouseY>0&&mouseY<120){
    midi.playNote(midiValue+25, 60, 2); // C#
  } else if(mouseX>375&&mouseX<405){
    midi.playNote(midiValue+24, 60, 2); // C
  } else if(mouseX>430&&mouseX<440&&mouseY>0&&mouseY<120){
    midi.playNote(midiValue+27, 60, 2); // D#
  } else if(mouseX>400&&mouseX<435){
    midi.playNote(midiValue+26, 60, 2); // D
  } else if(mouseX>430&&mouseX<460){
    midi.playNote(midiValue+28, 60, 2); // E
  } else if(mouseX>480&&mouseX<490&&mouseY>0&&mouseY<120){
    midi.playNote(midiValue+30, 60, 2); // F#
  } else if(mouseX>455&&mouseX<485){
    midi.playNote(midiValue+29, 60, 2); // F
  } else if(mouseX>510&&mouseX<520&&mouseY>0&&mouseY<120){
    midi.playNote(midiValue+32, 60, 2); // G#
  } else if(mouseX>480&&mouseX<515){
    midi.playNote(midiValue+31, 60, 2); // G
  } else if(mouseX>540&&mouseX<550&&mouseY>0&&mouseY<120){
    midi.playNote(midiValue+34, 60, 2); // A#
  } else if(mouseX>505&&mouseX<545){
    midi.playNote(midiValue+33, 60, 2); // A
  } else if(mouseX>535&&mouseX<570){
    midi.playNote(midiValue+35, 60, 2); // B
    // Fourth Octave
  } else if(mouseX>590&&mouseX<600&&mouseY>0&&mouseY<120){
    midi.playNote(midiValue+37, 60, 2); // C#
  } else if(mouseX>560&&mouseX<595){
    midi.playNote(midiValue+36, 60, 2); // C
  } else if(mouseX>620&&mouseX<630&&mouseY>0&&mouseY<120){
    midi.playNote(midiValue+39, 60, 2); // D#
  } else if(mouseX>585&&mouseX<625){
    midi.playNote(midiValue+38, 60, 2); // D
  } else if(mouseX>615&&mouseX<650){
    midi.playNote(midiValue+40, 60, 2); // E
  } else if(mouseX>670&&mouseX<680&&mouseY>0&&mouseY<120){
    midi.playNote(midiValue+42, 60, 2); // F#
  } else if(mouseX>640&&mouseX<675){
    midi.playNote(midiValue+41, 60, 2); // F
  } else if(mouseX>700&&mouseX<710&&mouseY>0&&mouseY<120){
    midi.playNote(midiValue+44, 60, 2); // G#
  } else if(mouseX>665&&mouseX<705){
    midi.playNote(midiValue+43, 60, 2); // G
  } else if(mouseX>730&&mouseX<740&&mouseY>0&&mouseY<120){
    midi.playNote(midiValue+46, 60, 2); // A#
  } else if(mouseX>690&&mouseX<735){
    midi.playNote(midiValue+45, 60, 2); // A
  } else if(mouseX>720&&mouseX<760){
    midi.playNote(midiValue+47, 60, 2); // B
    // Fifth Octave
  } else if(mouseX>780&&mouseX<790&&mouseY>0&&mouseY<120){
    midi.playNote(midiValue+49, 60, 2); // C#
  } else if(mouseX>745&&mouseX<785){
    midi.playNote(midiValue+48, 60, 2); // Middle C (C4)
  } else if(mouseX>810&&mouseX<820&&mouseY>0&&mouseY<120){
    midi.playNote(midiValue+51, 60, 2); // D#
  } else if(mouseX>770&&mouseX<815){
    midi.playNote(midiValue+50, 60, 2); // D
  } else if(mouseX>800&&mouseX<840){
    midi.playNote(midiValue+52, 60, 2); // E
  } else if(mouseX>860&&mouseX<870&&mouseY>0&&mouseY<120){
    midi.playNote(midiValue+54, 60, 2); // F#
  } else if(mouseX>825&&mouseX<865){
    midi.playNote(midiValue+53, 60, 2); // F
  } else if(mouseX>890&&mouseX<900&&mouseY>0&&mouseY<120){
    midi.playNote(midiValue+56, 60, 2); // G#
  } else if(mouseX>850&&mouseX<895){
    midi.playNote(midiValue+55, 60, 2); // G
  } else if(mouseX>920&&mouseX<930&&mouseY>0&&mouseY<120){
    midi.playNote(midiValue+58, 60, 2); // A#
  } else if(mouseX>875&&mouseX<925){
    midi.playNote(midiValue+57, 60, 2); // A
  } else if(mouseX>905&&mouseX<950){
    midi.playNote(midiValue+59, 60, 2); // B
    // Sixth Octave
  } else if(mouseX>970&&mouseX<980&&mouseY>0&&mouseY<120){
    midi.playNote(midiValue+61, 60, 2); // C#
  } else if(mouseX>930&&mouseX<975){
    midi.playNote(midiValue+60, 60, 2); // C
  } else if(mouseX>1000&&mouseX<1010&&mouseY>0&&mouseY<120){
    midi.playNote(midiValue+63, 60, 2); // D#
  } else if(mouseX>955&&mouseX<1005){
    midi.playNote(midiValue+62, 60, 2); // D
  } else if(mouseX>985&&mouseX<1030){
    midi.playNote(midiValue+64, 60, 2); // E
  } else if(mouseX>1050&&mouseX<1060&&mouseY>0&&mouseY<120){
    midi.playNote(midiValue+66, 60, 2); // F#
  } else if(mouseX>1010&&mouseX<1055){
    midi.playNote(midiValue+65, 60, 2); // F
  } else if(mouseX>1080&&mouseX<1090&&mouseY>0&&mouseY<120){
    midi.playNote(midiValue+68, 60, 2); // G#
  } else if(mouseX>1035&&mouseX<1085){
    midi.playNote(midiValue+67, 60, 2); // G
  } else if(mouseX>1110&&mouseX<1120&&mouseY>0&&mouseY<120){
    midi.playNote(midiValue+70, 60, 2); // A#
  } else if(mouseX>1060&&mouseX<1115){
    midi.playNote(midiValue+69, 60, 2); // A
  } else if(mouseX>1090&&mouseX<1140){
    midi.playNote(midiValue+71, 60, 2); // B
    // Seventh Octave
  } else if(mouseX>1160&&mouseX<1170&&mouseY>0&&mouseY<120){
    midi.playNote(midiValue+73, 60, 2); // C#
  } else if(mouseX>1115&&mouseX<1165){
    midi.playNote(midiValue+72, 60, 2); // C
  } else if(mouseX>1190&&mouseX<1200&&mouseY>0&&mouseY<120){
    midi.playNote(midiValue+75, 60, 2); // D#
  } else if(mouseX>1140&&mouseX<1195){
    midi.playNote(midiValue+74, 60, 2); // D
  } else if(mouseX>1170&&mouseX<1220){
    midi.playNote(midiValue+76, 60, 2); // E
  } else if(mouseX>1240&&mouseX<1250&&mouseY>0&&mouseY<120){
    midi.playNote(midiValue+78, 60, 2); // F#
  } else if(mouseX>1195&&mouseX<1245){
    midi.playNote(midiValue+77, 60, 2); // F
  } else if(mouseX>1270&&mouseX<1280&&mouseY>0&&mouseY<120){
    midi.playNote(midiValue+80, 60, 2); // G#
  } else if(mouseX>1220&&mouseX<1275){
    midi.playNote(midiValue+79, 60, 2); // G
  } else if(mouseX>1300&&mouseX<1310&&mouseY>0&&mouseY<120){
    midi.playNote(midiValue+82, 60, 2); // A#
  } else if(mouseX>1245&&mouseX<1305){
    midi.playNote(midiValue+81, 60, 2); // A
  } else if(mouseX>1275&&mouseX<1330){
    midi.playNote(midiValue+83, 60, 2); // B
    // Eighth Octave
  } else if(mouseX>1350&&mouseX<1360&&mouseY>0&&mouseY<120){
    midi.playNote(midiValue+85, 60, 2); // C#
  } else if(mouseX>1300&&mouseX<1355){
    midi.playNote(midiValue+84, 60, 2); // C
  } else if(mouseX>1380&&mouseX<1390&&mouseY>0&&mouseY<120){
    midi.playNote(midiValue+87, 60, 2); // D#
  } else if(mouseX>1325&&mouseX<1385){
    midi.playNote(midiValue+86, 60, 2); // D
  } else if(mouseX>1355&&mouseX<1410){
    midi.playNote(midiValue+88, 60, 2); // E
  } else if(mouseX>1430&&mouseX<1440&&mouseY>0&&mouseY<120){
    midi.playNote(midiValue+90, 60, 2); // F#
  } else if(mouseX>1380&&mouseX<1435){
    midi.playNote(midiValue+89, 60, 2); // F
  } else if(mouseX>1460&&mouseX<1470&&mouseY>0&&mouseY<120){
    midi.playNote(midiValue+92, 60, 2); // G#
  } else if(mouseX>1405&&mouseX<1465){
    midi.playNote(midiValue+91, 60, 2); // G
  } else if(mouseX>1490&&mouseX<1500&&mouseY>0&&mouseY<120){
    midi.playNote(midiValue+94, 60, 2); // A#
  } else if(mouseX>1430&&mouseX<1495){
    midi.playNote(midiValue+93, 60, 2); // A
  } else if(mouseX>1460&&mouseX<1520){
    midi.playNote(midiValue+95, 60, 2); // B
  }
}
