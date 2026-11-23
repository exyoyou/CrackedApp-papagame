package com.haima.hmcp.beans;

/* JADX INFO: loaded from: classes5.dex */
public class Joypad {
    public static final int ALL_PLAYER = 3;
    public static final int HAT_DEFAULT = -999;
    public static final String HAT_X = "ABS_HAT0X:%.4f";
    public static final String HAT_Y = "ABS_HAT0Y:%.4f";
    public static final float MAX_HAT = 1.0f;
    public static final float MIN_HAT = -1.0f;
    public String keyCodeEvent;
    public int battlePlayer = 3;
    public boolean isCrossDirection = false;
    public float hatXDown = -999.0f;
    public float hatYDown = -999.0f;
    public float hatXUp = -999.0f;
    public float hatYUp = -999.0f;

    public String toString() {
        return "Joypad{battlePlayer=" + this.battlePlayer + ", isCrossDirection=" + this.isCrossDirection + ", keyCodeEvent='" + this.keyCodeEvent + "', hatXDown=" + this.hatXDown + ", hatYDown=" + this.hatYDown + ", hatXUp=" + this.hatXUp + ", hatYUp=" + this.hatYUp + '}';
    }
}
