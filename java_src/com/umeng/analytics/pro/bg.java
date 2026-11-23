package com.umeng.analytics.pro;

import android.content.Context;

/* JADX INFO: loaded from: classes9.dex */
public class bg implements ax {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f84383a = false;

    @Override // com.umeng.analytics.pro.ax
    public String a(Context context) {
        if (context == null) {
            return null;
        }
        if (!this.f84383a) {
            hd.a.a(context);
            this.f84383a = true;
        }
        boolean zB = hd.a.b();
        bl.a("getOAID", "isSupported", Boolean.valueOf(zB));
        if (zB) {
            return hd.a.d(context);
        }
        return null;
    }
}
