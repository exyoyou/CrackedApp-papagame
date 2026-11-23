package com.byazt.wc;

import com.byazt.ch.ve;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1692, 13})
public class tt extends ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.dhf.c f21479c;

    public tt(com.byazt.dhf.c cVar) {
        this.f21479c = cVar;
    }

    @Override // com.byazt.ch.ve
    public void onCancel() {
        com.byazt.dhf.c cVar = this.f21479c;
        if (cVar != null) {
            cVar.tt();
        }
    }

    @Override // com.byazt.ch.ve
    public void onSelected(int i10, String str) {
        com.byazt.dhf.c cVar = this.f21479c;
        if (cVar != null) {
            cVar.c(i10, str, false);
        }
    }

    @Override // com.byazt.ch.ve
    public void onShow() {
        com.byazt.dhf.c cVar = this.f21479c;
        if (cVar != null) {
            cVar.c();
        }
    }
}
