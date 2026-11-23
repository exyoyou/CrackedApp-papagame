package com.byazt.ac;

import com.byazt.at.n;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 89, 15})
public class uj extends com.byazt.vgp.uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final WeakReference<n> f11555c;

    public uj(n nVar) {
        this.f11555c = new WeakReference<>(nVar);
    }

    @Override // com.byazt.zb.c
    public void c() {
        if (this.f11555c.get() != null) {
            this.f11555c.get().c(0);
        }
    }

    @Override // com.byazt.zb.c
    public void c(int i10, String str) {
        WeakReference<n> weakReference = this.f11555c;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.f11555c.get();
    }
}
