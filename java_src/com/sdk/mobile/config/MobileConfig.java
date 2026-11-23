package com.sdk.mobile.config;

import com.sdk.base.module.config.BaseConfig;
import com.sdk.f.c;
import com.sdk.k.a;

/* JADX INFO: loaded from: classes2.dex */
public class MobileConfig implements c {
    public String apk = BaseConfig.apk;
    public String cm = BaseConfig.cm;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f78551c = 1;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public String f78554v = "1.0";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f78552n = "OAuth";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public long f78553r = System.currentTimeMillis();

    public String getApiKey() {
        return this.apk;
    }

    public String getCM() {
        return this.cm;
    }

    public String toJsonString() {
        return a.a(this);
    }
}
