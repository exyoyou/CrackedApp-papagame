package com.byazt.uph;

import android.graphics.Bitmap;
import com.byazt.nr.m;
import com.byazt.nr.uj;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 446, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f20942c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Map<String, String> f20943n;
    public byte[] tt;
    public List<Object> uj;
    public Bitmap ve;

    public tt(byte[] bArr, int i10) {
        this.ve = null;
        this.uj = null;
        this.f20943n = null;
        this.tt = bArr;
        this.f20942c = i10;
    }

    public Bitmap c() {
        return this.ve;
    }

    public boolean n() {
        byte[] bArr = this.tt;
        return bArr != null && bArr.length >= 3 && bArr[0] == 71 && bArr[1] == 73 && bArr[2] == 70;
    }

    public int tt() {
        return this.f20942c;
    }

    public boolean uj() {
        if (this.ve != null) {
            return true;
        }
        byte[] bArr = this.tt;
        return bArr != null && bArr.length > 0;
    }

    public byte[] ve() {
        try {
            if (this.tt == null) {
                this.tt = uj.tt(this.ve);
            }
        } catch (OutOfMemoryError e10) {
            m.c(e10);
        }
        return this.tt;
    }

    public tt(Bitmap bitmap, int i10) {
        this.tt = null;
        this.uj = null;
        this.f20943n = null;
        this.ve = bitmap;
        this.f20942c = i10;
    }
}
