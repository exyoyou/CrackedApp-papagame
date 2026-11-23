package com.kongzue.dialogx.interfaces;

import com.kongzue.dialogx.interfaces.BaseDialog;

/* JADX INFO: loaded from: classes3.dex */
public abstract class u<D extends BaseDialog> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Boolean f74119a;

    public u() {
    }

    public abstract int a(D d10, int i10, String str);

    public Boolean b() {
        return this.f74119a;
    }

    public u(boolean z10) {
        this.f74119a = Boolean.valueOf(z10);
    }
}
