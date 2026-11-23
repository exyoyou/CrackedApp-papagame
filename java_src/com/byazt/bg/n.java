package com.byazt.bg;

import org.json.JSONArray;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1535, 46})
public class n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f11919c;
    public final float[] tt;
    public final int[] ve;

    public n(String str, JSONArray jSONArray, JSONArray jSONArray2) {
        this.f11919c = str;
        this.tt = new float[jSONArray.length()];
        this.ve = new int[jSONArray2.length()];
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            this.tt[i10] = (float) jSONArray.optDouble(i10);
        }
        for (int i11 = 0; i11 < jSONArray2.length(); i11++) {
            this.ve[i11] = jSONArray2.optInt(i11);
        }
    }

    public int c(float f10) {
        int[] iArr;
        int i10;
        float[] fArr = this.tt;
        int i11 = -1;
        if (fArr == null || fArr.length == 0 || (iArr = this.ve) == null || iArr.length == 0) {
            return -1;
        }
        int length = fArr.length;
        int i12 = 0;
        while (i12 < length) {
            float[] fArr2 = this.tt;
            float f11 = fArr2[i12];
            if (f10 > f11 && (i10 = i12 + 1) < length && f10 <= fArr2[i10]) {
                int[] iArr2 = this.ve;
                return i12 < iArr2.length ? iArr2[i12] : i11;
            }
            if (i12 == length - 1 && f10 > f11) {
                i11 = this.ve[i12];
            }
            i12++;
        }
        return i11;
    }
}
