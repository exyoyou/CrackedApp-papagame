package com.umeng.analytics.pro;

import android.content.Context;

/* JADX INFO: loaded from: classes9.dex */
public class bd implements ax {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f84378a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private org.repackage.com.zui.opendeviceidlibrary.b f84379b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f84380c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f84381d = false;

    @Override // com.umeng.analytics.pro.ax
    public String a(Context context) {
        if (context == null) {
            return null;
        }
        if (!this.f84380c) {
            org.repackage.com.zui.opendeviceidlibrary.b bVar = new org.repackage.com.zui.opendeviceidlibrary.b();
            this.f84379b = bVar;
            this.f84381d = bVar.a(context, null) == 1;
            this.f84380c = true;
        }
        bl.a("getOAID", "isSupported", Boolean.valueOf(this.f84381d));
        if (this.f84381d && this.f84379b.j()) {
            return this.f84379b.b();
        }
        return null;
    }
}
