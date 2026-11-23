package com.byazt.gu;

import com.byazt.eg.gu;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 17, 91})
public class sp extends com.byazt.gqp.uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public gu f14757c;

    public sp(gu guVar) {
        this.f14757c = guVar;
    }

    @Override // com.byazt.gqp.uj
    public void c(int i10) {
        this.f14757c.my().c(i10);
    }

    @Override // com.byazt.gqp.uj
    public void tt(int i10) {
        if (i10 < 5) {
            this.f14757c.my().tt(5);
        } else {
            this.f14757c.my().tt(i10);
        }
    }
}
