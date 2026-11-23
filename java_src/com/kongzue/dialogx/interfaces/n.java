package com.kongzue.dialogx.interfaces;

import com.kongzue.dialogx.interfaces.BaseDialog;
import com.kongzue.dialogx.util.TextInfo;

/* JADX INFO: loaded from: classes3.dex */
public abstract class n<D extends BaseDialog> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f74111a;

    public n() {
    }

    public boolean a() {
        return this.f74111a;
    }

    public abstract TextInfo b(D d10, int i10, String str);

    public n(boolean z10) {
        this.f74111a = z10;
    }
}
