package com.byazt.pc;

import android.graphics.Bitmap;
import com.byazt.yj.gt;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 695, 46})
public class n extends c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public byte[] f18614c;
    public com.byazt.yj.sp tt;

    public n(byte[] bArr, com.byazt.yj.sp spVar) {
        this.f18614c = bArr;
        this.tt = spVar;
    }

    @Override // com.byazt.pc.i
    public String c() {
        return "decode";
    }

    @Override // com.byazt.pc.i
    public void c(com.byazt.oz.ve veVar) {
        com.byazt.oz.a aVarU = veVar.u();
        com.byazt.ib.c cVarC = aVarU.c(veVar);
        try {
            gt gtVarM = veVar.m();
            if (gtVarM != null) {
                gtVarM.onStep(10, null);
            }
            Bitmap bitmapC = cVarC.c(this.f18614c);
            if (bitmapC != null) {
                veVar.c(new yp(bitmapC, this.f18614c, this.tt, false));
                String memoryCacheKey = veVar.getMemoryCacheKey();
                if (!veVar.i() || veVar.yp().isMemoryCache()) {
                    aVarU.c(veVar.yp()).c(memoryCacheKey, bitmapC);
                }
            } else {
                c(1002, "decode failed bitmap null", null, veVar);
            }
            if (gtVarM != null) {
                gtVarM.onStep(11, bitmapC);
            }
        } catch (Throwable th) {
            c(1002, "decode failed:" + th.getMessage(), th, veVar);
        }
    }

    private void c(int i10, String str, Throwable th, com.byazt.oz.ve veVar) {
        if (this.tt == null) {
            veVar.c(new sl());
        } else {
            veVar.c(new x(i10, str, th));
        }
    }
}
