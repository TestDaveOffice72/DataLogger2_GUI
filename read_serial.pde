// read_serial tab.  for info, see gicentre.org/utils/chart/

void  read_serial() {
  
//  int whu = 0;   // not in wheestat
      if (serialPort.available () <= 0) {}
      if (serialPort.available() > 0) { 
        sData3 = serialPort.readStringUntil(LINE_FEED);  // good to here
     
       if(sData3 != null && p != 0) {   // p = reset counter
       /*"," print("p = ");
        print(p);
        print('\t');
        print("data = ");
        println(sData3);  
        logData(file1, sData3, true);  */
        String[] tokens = sData3.split(",");
       tokens = trim(tokens);  
       if (run == true)  {  

//    if (whu != 1)  {  
        xRead = Float.parseFloat(tokens[0]);  
        xRead = xRead/1000;
        yReadA = Float.parseFloat(tokens[1]);  
        yReadB = Float.parseFloat(tokens[2]); 
        
        //////////////// end of run ////////////
       if (xRead == 99999)  // signals end of run
        {
          run = false;    // stops program
           println("end the madness");
           gotparams = false;
          myTextarea2.setColor(#036C09);
          myTextarea2.setText("FINISHED");
         // whu = 1;
          cData = 'a';   
          xRead = 0;  
          yReadA = 0;
          yReadB = 0;
         }
      else if (xData[0] == 0) 
               {
               delay(10);
               xData[0] = xRead;
               yData[0] = yReadA;  // will need if iChan statement
               yData2[0] = yReadB;
         println(xRead);
         println(yReadA);
         println(yReadB);
//         println(yRead);
         println(xData[0]);
         println(yData[0]);
         println(yData2[0]);
               }
       else {  
         xData = append(xData, xRead);
         if (iChan == 0 || iChan == 2) {
           yData = append(yData, yReadA);         
         }
            if (iChan == 0 || iChan == 1) {
         yData2 = append(yData2, yReadB);
            }
          logData(file1, sData3, true);
        }   

         }
      }
         p +=1;
    } // end of if serial available > 0
  }

 

