



String[] page=new String[]{"home", "ecom1-", "blog1-", "social1-", "ecom2-", "blog2-", "social2-", "end"};

int imgCounter=0;
int pageCounter=0;

int sTime;
int eTime;

int clickCount=0;

int[] times=new int[6];
int[] clicks=new int[6];
String[] tests = new String[6];

//home buttons
boolean type1Test1=false;
boolean type1Test2=false;
boolean type1Test3=false;
boolean type2Test1=false;
boolean type2Test2=false;
boolean type2Test3=false;

//instruction button
boolean start=false;

//ecom buttons
boolean home=false;
boolean shirt=false;
boolean sweater=false;
boolean jacket=false;
boolean pants=false;
boolean more=false;
boolean buy=false;
boolean back=false;
boolean pants2=false;
boolean check=false;

//end button
boolean end=false;

//blog buttons
boolean blog=false;
boolean sdCard=false;
boolean blogHome=false;
boolean readMore=false;
boolean bookMark=false;
boolean next=false;

//social buttons
boolean messages=false;
boolean friend=false;
boolean send=false;
boolean socHome=false;

void setup(){
  fullScreen();
  //size(1440, 900);
  //images[imgCounter]=loadImage(page[0] + ".jpeg");
  image(loadImage(page[pageCounter] + ".jpeg"), 0, 0);
}

void draw(){
  //homepage 
  if (pageCounter==0){
     type1Test1=type1Test2=type1Test3=type2Test1=type2Test2=type2Test3=false;
     if (mouseX>397 && mouseX<575){
        if (mouseY>360 && mouseY<410){type1Test1=true;}
        if (mouseY>468 && mouseY<518){type1Test2=true;}
        if (mouseY>581 && mouseY<631){type1Test3=true;}
    }
      if (mouseX>866 && mouseX<1045){
        if (mouseY>360 && mouseY<410){type2Test1=true;}
        if (mouseY>468 && mouseY<518){type2Test2=true;}
        if (mouseY>581 && mouseY<631){type2Test3=true;}
    }
  }
 //measuring buttons on instruction page (should turn off once imgCounter++)
 if (pageCounter!=0 && imgCounter==0){
   start=false;
   if (mouseX>557 && mouseX<885 && mouseY>497 && mouseY<549){start=true;}
 }
 
 
 //measuring buttons on ecom1 page (excluding last page)
 if(pageCounter==1){
   if (imgCounter<5){
     home=shirt=sweater=jacket=pants=false;
     if (mouseY>75 && mouseY<107 ){
       if (mouseX>649 && mouseX<762){home=true;}
       if (mouseX>788 && mouseX<904){shirt=true;}
       if (mouseX>928 && mouseX<1043){sweater=true;}
       if (mouseX>1068 && mouseX<1182){jacket=true;}
       if (mouseX>1207 && mouseX<1322){pants=true;}
     } 
   }
   //pants page
   if (imgCounter==5){
     home=shirt=sweater=jacket=pants=more=false;
     if(mouseX>584 && mouseX<697 && mouseY>661 && mouseY<692){more=true;}
     if (mouseY>75 && mouseY<107 ){
       if (mouseX>649 && mouseX<762){home=true;}
       if (mouseX>788 && mouseX<904){shirt=true;}
       if (mouseX>928 && mouseX<1043){sweater=true;}
       if (mouseX>1068 && mouseX<1182){jacket=true;}
       if (mouseX>1207 && mouseX<1322){pants=true;}
     } 
   }
   //measuring buttons on ecom1 page (last page)
   if (imgCounter==6){
     buy=back=false;
     if(mouseX>58 && mouseX<117 && mouseY>180 && mouseY<242){back=true;}
     else if (mouseX>715 && mouseX<903 && mouseY>345 && mouseY<393){buy=true;}
   }
 }
 
 
 //measuring buttons on blog1
 if(pageCounter==2){
   if(imgCounter>=1 && imgCounter<=4){
     blog=blogHome=false;
     if(mouseX>1238 && mouseX<1355 && mouseY>75 && mouseY<106){blog=true;}
     if(mouseX>1072 && mouseX<1188 && mouseY>75 && mouseY<106){blogHome=true;}
   }
   if(imgCounter==2){
     sdCard=false;
     if(mouseX>933 && mouseX<1187 && mouseY>671 && mouseY<765){sdCard=true;}
   }
   if(imgCounter==3){
     readMore=false;
     if(mouseX>427 && mouseX<546 && mouseY>803 && mouseY<835){readMore=true;}
   }
   if(imgCounter==4){
     bookMark=false;
     if(mouseX>1043 && mouseX<1087 && mouseY>619 && mouseY<661){bookMark=true;}
   }
 }
 
 //measuring buttons on social1
 if(pageCounter==3){
   if(imgCounter==1){
     messages=false;
     if(mouseX>66 && mouseX<315 && mouseY>274 && mouseY<305){messages=true;} 
   }
   if(imgCounter==2){
     friend=false;
     if(mouseX>462 && mouseX<796 && mouseY>113 && mouseY<168){friend=true;} 
   }
   if(imgCounter==3){
     send=false;
     if(mouseX>1250 && mouseX<1325 && mouseY>828 && mouseY<889){send=true;} 
   }
 }
 
 //measuring buttons on ecom2
 if(pageCounter==4){
   if (imgCounter<7){
     home=shirt=sweater=jacket=pants=false;
     if (mouseY>111 && mouseY<128 ){
       if (mouseX>699 && mouseX<717){home=true;}
       if (mouseX>837 && mouseX<855){shirt=true;}
       if (mouseX>976 && mouseX<995){sweater=true;}
       if (mouseX>1117 && mouseX<1135){jacket=true;}
       if (mouseX>1258 && mouseX<1276){pants=true;}
     } 
   }
   if (imgCounter==5){
     more=false;  
     if(mouseX>202 && mouseX<218 && mouseY>616 && mouseY<632){more=true;} 
   }
   if (imgCounter==6){
     pants2=false;
     if(mouseX>1106 && mouseX<1356 && mouseY>217 && mouseY<248){pants2=true;} 
   }
   if (imgCounter==7){
     back=check=false;
     if(mouseX>736 && mouseX<773 && mouseY>356 && mouseY<392){check=true;} 
     if(mouseX>52 && mouseX<144 && mouseY>170 && mouseY<213){back=true;} 
   }
   if (imgCounter==8){
     back=buy=false;
     if(mouseX>51 && mouseX<141 && mouseY>316 && mouseY<355){back=true;} 
     if(mouseX>73 && mouseX<272 && mouseY>824 && mouseY<879){buy=true;} 
   }
 }
 
 //measuring buttons on blog2
 if (pageCounter==5){
   if (imgCounter>=1 && imgCounter<3){
     blog=blogHome=false;
     if(mouseX>1122 && mouseX<1140 && mouseY>127 && mouseY<145){blogHome=true;} 
     if(mouseX>1287 && mouseX<1303 && mouseY>127 && mouseY<145){blog=true;} 
   }
   if (imgCounter==2){
     next=false;
     if(mouseX>126 && mouseX<243 && mouseY>653 && mouseY<686){next=true;} 
   }
   if (imgCounter>=3 && imgCounter<=4){
     blog=blogHome=false;
     if(mouseX>1142 && mouseX<1158 && mouseY>145 && mouseY<159){blogHome=true;} 
     if(mouseX>1306 && mouseX<1325 && mouseY>145 && mouseY<159){blog=true;} 
   }
   if (imgCounter==3){
     readMore=false;
     if(mouseX>786 && mouseX<851 && mouseY>83 && mouseY<111){readMore=true;}
   }
   if(imgCounter==4){
     bookMark=false;
     if(mouseX>32 && mouseX<82 && mouseY>837 && mouseY<859){bookMark=true;}
   }
 }
 
 //measuring buttons on social2
 if(pageCounter==6){
   if(imgCounter!=0){
     socHome=messages=false;
     if(mouseX>336 && mouseX<375 && mouseY>110 && mouseY<128){socHome=true;} 
     if(mouseX>336 && mouseX<375 && mouseY>278 && mouseY<298){messages=true;} 
   }
   if(imgCounter==2){
     friend=false;
     if(mouseX>185 && mouseX<202 && mouseY>812 && mouseY<829){friend=true;} 
   }
   if(imgCounter==3){
     send=false;
     if(mouseX>771 && mouseX<788 && mouseY>820 && mouseY<836){send=true;} 
   }
 }
}




void mousePressed(){
  println("X:" + mouseX + " Y:" + mouseY + " imgCount:" + imgCounter + " pageCount:" +pageCounter);
  clickCount++;
  //while home
  if (pageCounter==0){
    if (type1Test1==true) {pageCounter=1; background(255); image(loadImage(page[pageCounter] + imgCounter + ".jpeg"), 0, 0);}
    if (type1Test2==true) {pageCounter=2; background(255); image(loadImage(page[pageCounter] + imgCounter + ".jpeg"), 0, 0);}
    if (type1Test3==true) {pageCounter=3; background(255); image(loadImage(page[pageCounter] + imgCounter + ".jpeg"), 0, 0);}
    if (type2Test1==true) {pageCounter=4; background(255); image(loadImage(page[pageCounter] + imgCounter + ".jpeg"), 0, 0);}
    if (type2Test2==true) {pageCounter=5; background(255); image(loadImage(page[pageCounter] + imgCounter + ".jpeg"), 0, 0);}
    if (type2Test3==true) {pageCounter=6; background(255); image(loadImage(page[pageCounter] + imgCounter + ".jpeg"), 0, 0);}
  }
    
  //while ecom1
  if (pageCounter==1){
  //while on the first page
    if (imgCounter==0){
      if (start==true) {sTime=millis(); imgCounter=1; background(255); image(loadImage(page[pageCounter] + imgCounter + ".jpeg"), 0, 0);}
    }
  //while on any page
    if(imgCounter!=0){
      if (home==true) {imgCounter=1; background(255); image(loadImage(page[pageCounter] + imgCounter + ".jpeg"), 0, 0);}
      if (shirt==true) {imgCounter=2; background(255); image(loadImage(page[pageCounter] + imgCounter + ".jpeg"), 0, 0);}
      if (sweater==true) {imgCounter=3; background(255); image(loadImage(page[pageCounter] + imgCounter + ".jpeg"), 0, 0);}
      if (jacket==true) {imgCounter=4; background(255); image(loadImage(page[pageCounter] + imgCounter + ".jpeg"), 0, 0);}
      if (pants==true) {imgCounter=5; background(255); image(loadImage(page[pageCounter] + imgCounter + ".jpeg"), 0, 0);}
    }
  //while on pants page
    if(imgCounter==5 && more==true) {imgCounter=6; background(255); image(loadImage(page[pageCounter] + imgCounter + ".jpeg"), 0, 0);}
    
  //while on last page
    if(imgCounter==6){
      if (back==true) {imgCounter=5; background(255); image(loadImage(page[pageCounter] + imgCounter + ".jpeg"), 0, 0);}
      if (buy==true) {eTime=millis(); clicks[0]=(clickCount-2); clickCount=0; times[0]=timer(); imgCounter=0; pageCounter=7; background(255); image(loadImage(page[pageCounter] + ".jpeg"), 0, 0);}
    }
  }
  
  
  
  
  //while blog1
  if (pageCounter==2){
  //while on the first page
    if (imgCounter==0){
      if (start==true) {sTime=millis(); imgCounter=1; background(255); image(loadImage(page[pageCounter] + imgCounter + ".jpeg"), 0, 0);}
    }
  //while on first, second or third page
    if(imgCounter>=1 || imgCounter<=4){
      if(blog==true) {imgCounter=2; background(255); image(loadImage(page[pageCounter] + imgCounter + ".jpeg"), 0, 0);}
      if(blogHome==true) {imgCounter=1; background(255); image(loadImage(page[pageCounter] + imgCounter + ".jpeg"), 0, 0);}
    }
  //while on second page
    if(imgCounter==2){
      if(sdCard==true) {imgCounter=3; background(255); image(loadImage(page[pageCounter] + imgCounter + ".jpeg"), 0, 0);}
    }
  //while on third page
    if(imgCounter==3){
      if(readMore==true) {imgCounter=4; background(255); image(loadImage(page[pageCounter] + imgCounter + ".jpeg"), 0, 0);}
    }
  //while on last page
    if(imgCounter==4){
      if(bookMark==true) {eTime=millis(); clicks[2]=(clickCount-2); clickCount=0; times[2]=timer(); imgCounter=0; pageCounter=7; background(255); image(loadImage(page[pageCounter] + ".jpeg"), 0, 0);}
    }
  }
  
  
  
  //while social1
  if (pageCounter==3){
  //while on the inst page
    if (imgCounter==0){
      if (start==true) {sTime=millis(); imgCounter=1; background(255); image(loadImage(page[pageCounter] + imgCounter + ".jpeg"), 0, 0);}
    }
  //while on first page
    if(imgCounter==1){
      if(messages==true){imgCounter=2; background(255); image(loadImage(page[pageCounter] + imgCounter + ".jpeg"), 0, 0);}
    }
  //while on second page
    if(imgCounter==2){
      if(friend==true){imgCounter=3; background(255); image(loadImage(page[pageCounter] + imgCounter + ".jpeg"), 0, 0);}
    }
  //while on third page
    if(imgCounter==3){
      if(send==true) {eTime=millis(); clicks[4]=(clickCount-2); clickCount=0; times[4]=timer(); imgCounter=0; pageCounter=7; background(255); image(loadImage(page[pageCounter] + ".jpeg"), 0, 0);}
    }
  }
  
  
  //while ecom2
  if (pageCounter==4){
  //while on the first page
    if (imgCounter==0){
      if (start==true) {sTime=millis(); imgCounter=1; background(255); image(loadImage(page[pageCounter] + imgCounter + ".jpeg"), 0, 0);}
    }
    if(imgCounter<7){
      if (home==true) {imgCounter=1; background(255); image(loadImage(page[pageCounter] + imgCounter + ".jpeg"), 0, 0);}
      if (shirt==true) {imgCounter=2; background(255); image(loadImage(page[pageCounter] + imgCounter + ".jpeg"), 0, 0);}
      if (sweater==true) {imgCounter=3; background(255); image(loadImage(page[pageCounter] + imgCounter + ".jpeg"), 0, 0);}
      if (jacket==true) {imgCounter=4; background(255); image(loadImage(page[pageCounter] + imgCounter + ".jpeg"), 0, 0);}
      if (pants==true) {imgCounter=5; background(255); image(loadImage(page[pageCounter] + imgCounter + ".jpeg"), 0, 0);}
    }
    if(imgCounter==5){
      if (more==true) {imgCounter=6; background(255); image(loadImage(page[pageCounter] + imgCounter + ".jpeg"), 0, 0);}
    }
    if(imgCounter==6){
      if (pants2==true) {imgCounter=7; background(255); image(loadImage(page[pageCounter] + imgCounter + ".jpeg"), 0, 0);}
    }
    if(imgCounter==7){
      if (check==true) {imgCounter=8; background(255); image(loadImage(page[pageCounter] + imgCounter + ".jpeg"), 0, 0);}
      if (back==true) {imgCounter=1; background(255); image(loadImage(page[pageCounter] + imgCounter + ".jpeg"), 0, 0);}
    }
    if(imgCounter==8){
      if (back==true) {imgCounter=1; background(255); image(loadImage(page[pageCounter] + imgCounter + ".jpeg"), 0, 0);}
      if (buy==true) {eTime=millis(); clicks[1]=(clickCount-2); clickCount=0; times[1]=timer(); imgCounter=0; pageCounter=7; background(255); image(loadImage(page[pageCounter] + ".jpeg"), 0, 0);}
    }
  }
  
  //while blog2
  if (pageCounter==5){
  //while on the first page
    if (imgCounter==0){
      if (start==true) {sTime=millis(); imgCounter=1; background(255); image(loadImage(page[pageCounter] + imgCounter + ".jpeg"), 0, 0);}
    }
    if (imgCounter>=1 && imgCounter<3){
      if (blogHome==true) {imgCounter=1; background(255); image(loadImage(page[pageCounter] + imgCounter + ".jpeg"), 0, 0);}
      if (blog==true) {imgCounter=2; background(255); image(loadImage(page[pageCounter] + imgCounter + ".jpeg"), 0, 0);}
    }
    if (imgCounter==2){
      if(next==true) {imgCounter=3; background(255); image(loadImage(page[pageCounter] + imgCounter + ".jpeg"), 0, 0);}
    }
    if (imgCounter>=3 && imgCounter<=4){
      if (blogHome==true) {imgCounter=1; background(255); image(loadImage(page[pageCounter] + imgCounter + ".jpeg"), 0, 0);}
      if (blog==true) {imgCounter=2; background(255); image(loadImage(page[pageCounter] + imgCounter + ".jpeg"), 0, 0);}
    }
    if(imgCounter==3){
      if(readMore==true){imgCounter=4; background(255); image(loadImage(page[pageCounter] + imgCounter + ".jpeg"), 0, 0);}
    }
    if(imgCounter==4){
      if(bookMark==true){eTime=millis(); clicks[3]=(clickCount-2); clickCount=0; times[3]=timer(); imgCounter=0; pageCounter=7; background(255); image(loadImage(page[pageCounter] + ".jpeg"), 0, 0);}
    }
  }
  
  //while social2
  if (pageCounter==6){
  //while on the first page
    if (imgCounter==0){
      if (start==true) {sTime=millis(); imgCounter=1; background(255); image(loadImage(page[pageCounter] + imgCounter + ".jpeg"), 0, 0);}
    }
    if (imgCounter!=0){
      if (socHome==true) {imgCounter=1; background(255); image(loadImage(page[pageCounter] + imgCounter + ".jpeg"), 0, 0);}
      if (messages==true) {imgCounter=2; background(255); image(loadImage(page[pageCounter] + imgCounter + ".jpeg"), 0, 0);}
    }
    if(imgCounter==2){
      if(friend==true){imgCounter=3; background(255); image(loadImage(page[pageCounter] + imgCounter + ".jpeg"), 0, 0);}
    }
    if(imgCounter==3){
      if(send==true){eTime=millis(); clicks[5]=(clickCount-2); clickCount=0; times[5]=timer(); imgCounter=0; pageCounter=7; background(255); image(loadImage(page[pageCounter] + ".jpeg"), 0, 0);}
    }
  }
  
  //while end
  if (pageCounter==7){
      if (start==true) {printTimes(); imgCounter=0; pageCounter=0; background(255); image(loadImage(page[pageCounter] + ".jpeg"), 0, 0);} 
  }
}

void mouseClicked(){
  resetButtons();
}

void printTimes(){
  String toSave;
  String date = "Test" + day() + month() + year() + hour() + minute() + second();
  
  for(int i=0; i<=5; i++){
    println("Test" + (i+1) + ": " + times[i] + "ms in " + clicks[i] + " mouse clicks");
    toSave=("Test" + (i+1) + ": " + times[i] + "ms in " + clicks[i] + " mouse clicks");
    tests[i]=toSave;
  }
  saveStrings(date, tests);
  
}

void resetButtons(){
  //home buttons
   type1Test1=false;
   type1Test2=false;
   type1Test3=false;
   type2Test1=false;
   type2Test2=false;
   type2Test3=false;
  
  //instruction button
   start=false;
  
  //ecom buttons
   home=false;
   shirt=false;
   sweater=false;
   jacket=false;
   pants=false;
   more=false;
   buy=false;
   back=false;
   pants2=false;
   check=false;
  
  //end button
   end=false;
  
  //blog buttons
   blog=false;
   sdCard=false;
   blogHome=false;
   readMore=false;
   bookMark=false;
   next=false;
  
  //social buttons
   messages=false;
   friend=false;
   send=false;
   socHome=false;
}

int timer(){
  int time = eTime-sTime;
  return time;
}
