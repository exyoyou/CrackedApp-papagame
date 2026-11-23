package com.umeng.analytics.pro;

import android.content.Context;

/* JADX INFO: loaded from: classes9.dex */
class bj implements ax {
    bj() {
    }

    @Override // com.umeng.analytics.pro.ax
    public String a(Context context) {
        if (context == null) {
            return null;
        }
        boolean zC = id.b.c();
        bl.a("getOAID", "isSupported", Boolean.valueOf(zC));
        if (zC) {
            return id.b.d(context);
        }
        return null;
    }
}
