package com.haima.hmcp.beans;

/* JADX INFO: loaded from: classes5.dex */
public class HmInputOp {
    public static final int ACTION_DOWN_TYPE = 1;
    public static final int ACTION_MOVE_TYPE = 3;
    public static final int ACTION_UP_TYPE = 2;
    public int actionType;
    public int value;

    public String toString() {
        return "HmInputOp{value=" + this.value + ", actionType=" + this.actionType + '}';
    }
}
