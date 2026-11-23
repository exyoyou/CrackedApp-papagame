package com.haima.hmcp.beans;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class PointCoord {
    public int actionType;
    public String buttonName;
    public int fnKeyCode;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f33822h;
    public boolean isFn;
    public Joypad joypad;
    public int keyCode;
    public float oX;
    public float oY;
    public List<PointCoord2> pointList;
    public float rx;
    public float ry;
    public float sp;
    public int toKeyCode;
    public int type;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f33823w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public float f33824x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public float f33825y;

    public String toString() {
        return "x = " + this.f33824x + ", y = " + this.f33825y + "w = " + this.f33823w + ", h = " + this.f33822h + ", keyCode = " + this.keyCode + ", buttonName = " + this.buttonName + ", isFn = " + this.isFn + ", joypad = " + this.joypad;
    }
}
