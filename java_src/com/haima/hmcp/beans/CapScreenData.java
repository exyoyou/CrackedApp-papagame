package com.haima.hmcp.beans;

/* JADX INFO: loaded from: classes5.dex */
public class CapScreenData {
    public float scalePercent = 0.0f;

    public static boolean isValid(CapScreenData capScreenData) {
        if (capScreenData == null) {
            return false;
        }
        float f10 = capScreenData.scalePercent;
        return f10 >= 0.01f && f10 <= 1.0f;
    }

    public String toString() {
        return "cap:" + this.scalePercent;
    }
}
