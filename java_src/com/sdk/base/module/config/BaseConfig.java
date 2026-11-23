package com.sdk.base.module.config;

import com.sdk.f.c;
import com.sdk.k.a;

/* JADX INFO: loaded from: classes2.dex */
public class BaseConfig implements c {
    public static String apk = "com.cucc.sdk.api_key";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static int f78467c = 69;
    public static String cm = "CUCC";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static String f78468n = "SDKFactory";

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static String f78469v = "安卓6.0.9通用版20230808";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public long f78470r = System.currentTimeMillis();

    public String getApiKey() {
        return apk;
    }

    public String getCM() {
        return cm;
    }

    public String toJsonString() {
        return a.a(this);
    }
}
