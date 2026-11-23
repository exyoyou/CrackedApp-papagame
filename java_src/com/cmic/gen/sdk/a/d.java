package com.cmic.gen.sdk.a;

import android.text.TextUtils;
import com.cmic.gen.sdk.e.k;

/* JADX INFO: loaded from: classes9.dex */
class d {
    static boolean a() {
        return System.currentTimeMillis() >= k.a("sso_config_xf", "client_valid", 0L);
    }

    static boolean b(boolean z10) {
        return "1".equals(k.a("sso_config_xf", "CLOSE_IPV6_LIST", !z10 ? "0" : "1"));
    }

    static boolean c(boolean z10) {
        String str = !z10 ? "0" : "1";
        return "1".equals(k.a("sso_config_xf", "CLOSE_M008_APPID_LIST", str)) || "1".equals(k.a("sso_config_xf", "CLOSE_M008_SDKVERSION_LIST", str));
    }

    static boolean d(boolean z10) {
        return k.a("sso_config_xf", "CLOSE_FRIEND_WAPKS", z10 ? "CU" : "").contains("CU");
    }

    static boolean e(boolean z10) {
        return k.a("sso_config_xf", "CLOSE_FRIEND_WAPKS", z10 ? "CT" : "").contains("CT");
    }

    static boolean f(boolean z10) {
        return "1".equals(k.a("sso_config_xf", "CLOSE_LOGS_VERSION", z10 ? "1" : "0"));
    }

    static boolean a(boolean z10) {
        return "1".equals(k.a("sso_config_xf", "CLOSE_IPV4_LIST", !z10 ? "0" : "1"));
    }

    static String b(String str) {
        String strA = k.a("sso_config_xf", "https_get_phone_scrip_host", (String) null);
        return TextUtils.isEmpty(strA) ? str : strA;
    }

    static String a(String str) {
        String strA = k.a("sso_config_xf", "config_host", (String) null);
        return TextUtils.isEmpty(strA) ? str : strA;
    }

    static String c(String str) {
        String strA = k.a("sso_config_xf", "logHost", "");
        return TextUtils.isEmpty(strA) ? str : strA;
    }

    static int b(int i10) {
        return k.a("sso_config_xf", "pauseTime", i10);
    }

    static int a(int i10) {
        return k.a("sso_config_xf", "maxFailedLogTimes", i10);
    }
}
