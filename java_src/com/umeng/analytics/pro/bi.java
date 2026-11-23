package com.umeng.analytics.pro;

import android.content.Context;

/* JADX INFO: loaded from: classes9.dex */
public class bi implements ax {
    @Override // com.umeng.analytics.pro.ax
    public String a(Context context) {
        if (context == null) {
            return null;
        }
        boolean zA = org.repackage.com.vivo.identifier.e.a(context);
        bl.a("getOAID", "isSupported", Boolean.valueOf(zA));
        if (zA) {
            return org.repackage.com.vivo.identifier.e.c(context);
        }
        return null;
    }
}
