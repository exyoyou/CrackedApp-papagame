package com.haima.hmcp.beans;

/* JADX INFO: loaded from: classes5.dex */
public class ButtonBarrier implements Comparable<ButtonBarrier> {
    public static final int OP_MOUSE_BUTTON_LEFT = 512;
    public static final int OP_MOUSE_BUTTON_MID = 513;
    public static final int OP_MOUSE_BUTTON_RIGHT = 514;
    public boolean isConsumed = false;
    public int keyCode;
    public int sendRomCode;

    public ButtonBarrier() {
    }

    public int getSendRomCode() {
        return this.sendRomCode;
    }

    public void setSendRomCode(int i10) {
        this.sendRomCode = i10;
    }

    public String toString() {
        return "ButtonBarrier{keyCode=" + this.keyCode + ", sendRomCode=" + this.sendRomCode + ", isConsumed=" + this.isConsumed + '}';
    }

    @Override // java.lang.Comparable
    public int compareTo(ButtonBarrier buttonBarrier) {
        return Integer.compare(this.keyCode, buttonBarrier.keyCode);
    }

    public ButtonBarrier(int i10) {
        this.keyCode = i10;
    }

    public ButtonBarrier(int i10, int i11) {
        this.keyCode = i10;
        this.sendRomCode = i11;
    }
}
