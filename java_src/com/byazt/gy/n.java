package com.byazt.gy;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 2085, 46})
public class n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f14803c;
    public int tt;
    public com.byazt.cda.c ve;

    public n(String str, int i10) {
        this.f14803c = str;
        this.tt = i10;
    }

    public n(com.byazt.cda.c cVar) {
        if (cVar != null) {
            this.f14803c = cVar.tt();
            this.tt = cVar.ve();
            this.ve = cVar;
        }
    }
}
