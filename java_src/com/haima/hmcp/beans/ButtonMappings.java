package com.haima.hmcp.beans;

/* JADX INFO: loaded from: classes5.dex */
public class ButtonMappings {
    public PointCoord buttonA;
    public PointCoord buttonAB;
    public PointCoord buttonB;
    public PointCoord buttonCenter;
    public PointCoord buttonDirection;
    public PointCoord buttonDown;
    public int buttonFn;
    public PointCoord buttonL1;
    public PointCoord buttonL2;
    public PointCoord buttonLeft;
    public PointCoord buttonNum0;
    public PointCoord buttonNum1;
    public PointCoord buttonNum2;
    public PointCoord buttonNum3;
    public PointCoord buttonNum4;
    public PointCoord buttonNum5;
    public PointCoord buttonNum6;
    public PointCoord buttonNum7;
    public PointCoord buttonNum8;
    public PointCoord buttonNum9;
    public PointCoord buttonR1;
    public PointCoord buttonR2;
    public PointCoord buttonRight;
    public PointCoord buttonUp;
    public PointCoord buttonX;
    public PointCoord buttonY;
    public String imageURL;
    public String mappingName;
    public PointCoord trackBallL;
    public PointCoord trackBallR;

    public String toString() {
        String str = "mappingName = " + this.mappingName;
        if (this.buttonX != null) {
            str = str + ":buttonX = (" + this.buttonX.toString() + ")";
        }
        if (this.buttonA != null) {
            str = str + ":buttonA = (" + this.buttonA.toString() + ")";
        }
        if (this.buttonNum0 == null) {
            return str;
        }
        return str + ":buttonNum0 = (" + this.buttonNum0.toString() + ")";
    }
}
