package com.byazt.dg;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 186, 137})
public class nu<K, A> extends c<K, A> {
    public final A uj;

    @Override // com.byazt.dg.c
    public float a() {
        return 1.0f;
    }

    @Override // com.byazt.dg.c
    public void c(float f10) {
        this.tt = f10;
    }

    @Override // com.byazt.dg.c
    public A sp() {
        com.byazt.vc.ve<A> veVar = this.ve;
        A a10 = this.uj;
        return veVar.c(0.0f, 0.0f, a10, a10, x(), x(), x());
    }

    @Override // com.byazt.dg.c
    public void tt() {
        if (this.ve != null) {
            super.tt();
        }
    }

    @Override // com.byazt.dg.c
    public A c(com.byazt.vc.c<K> cVar, float f10) {
        return sp();
    }
}
