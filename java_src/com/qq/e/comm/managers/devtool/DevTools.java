package com.qq.e.comm.managers.devtool;

import android.content.Context;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes2.dex */
public class DevTools {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f78317a;

    public String getDemoGameUrl() {
        String str = this.f78317a;
        this.f78317a = null;
        return str;
    }

    public void testDemoGame(Context context, String str) {
        if (!TextUtils.isEmpty(str) && context.getPackageName().equals("com.qq.e.union.demo.union")) {
            this.f78317a = str;
        }
    }
}
