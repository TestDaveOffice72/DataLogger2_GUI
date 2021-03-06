/******************* begin text field programs ***********************/

public void getParams() {  

  cGainA = cp5.get(Textfield.class, "gainA").getText();
  iGainA = round(float(cGainA));       
  if (iGainA <= -1) {
    iGainA = 0;
  }
  if (iGainA >= 31) {
    iGainA = 30;
  }
  cGainA = nf(iGainA, 6);   // pad with zeros to 6 digits

  cGainB = cp5.get(Textfield.class, "gainB").getText();
  iGainB = round(float(cGainB));       
  if (iGainB <= -1) {
    iGainB = 0;
  }
  if (iGainB >= 31) {
    iGainB = 30;
  }
  cGainB = nf(iGainB, 6);   // pad with zeros to 6 digits

  inVal = cp5.get(Textfield.class, "interval").getText();
  int iRate = round(float(inVal));
  inVal = nf(iRate, 6);   // pad with zeros to 6 digits

}

