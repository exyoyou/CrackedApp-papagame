package com.umeng.analytics.pro;

import android.content.Context;

/* JADX INFO: loaded from: classes9.dex */
class be implements ax {
    be() {
    }

    @Override // com.umeng.analytics.pro.ax
    public String a(Context context) {
        if (context == null) {
            return null;
        }
        boolean zC = org.repackage.com.meizu.flyme.openidsdk.c.c();
        bl.a("getOAID", "isSupported", Boolean.valueOf(zC));
        if (zC) {
            return org.repackage.com.meizu.flyme.openidsdk.c.d(context);
        }
        return null;
    }
}
