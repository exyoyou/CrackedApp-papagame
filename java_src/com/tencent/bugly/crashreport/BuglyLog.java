package com.tencent.bugly.crashreport;

import com.sdk.base.module.manager.SDKManager;
import com.tencent.bugly.proguard.ao;
import com.tencent.bugly.proguard.p;

/* JADX INFO: loaded from: classes2.dex */
public class BuglyLog {
    public static void d(String str, String str2) {
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "null";
        }
        boolean z10 = p.f83617c;
        ao.a(SDKManager.ALGO_D_RFU, str, str2);
    }

    public static void e(String str, String str2) {
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "null";
        }
        boolean z10 = p.f83617c;
        ao.a(SDKManager.ALGO_E_SM4_SM3_SM2, str, str2);
    }

    public static void i(String str, String str2) {
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "null";
        }
        boolean z10 = p.f83617c;
        ao.a("I", str, str2);
    }

    public static void setCache(int i10) {
        ao.a(i10);
    }

    public static void v(String str, String str2) {
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "null";
        }
        boolean z10 = p.f83617c;
        ao.a("V", str, str2);
    }

    public static void w(String str, String str2) {
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "null";
        }
        boolean z10 = p.f83617c;
        ao.a("W", str, str2);
    }

    public static void e(String str, String str2, Throwable th) {
        if (str == null) {
            str = "";
        }
        boolean z10 = p.f83617c;
        ao.a(SDKManager.ALGO_E_SM4_SM3_SM2, str, th);
    }
}
