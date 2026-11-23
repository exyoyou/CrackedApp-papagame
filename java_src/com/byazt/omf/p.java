package com.byazt.omf;

import android.text.TextUtils;
import com.haima.hmcp.device.input.manager.TcMouseManager;
import com.umeng.commonsdk.framework.UMModuleRegister;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 31, TcMouseManager.MOUSE_STARY})
public final class p {
    public static final int tt = 7611;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Boolean f18091c = Boolean.TRUE;
    public static boolean ve = false;
    public static int uj = 7611;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static String f18094n = "7.6.1.1";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f18090a = 1000;
    public static boolean sp = true;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static String f18095x = "main";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static boolean f18093i = false;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public static String f18092da = "6.6.0.0";

    public static String a() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(f18095x);
        sb2.append(c() ? "_plugin" : "");
        sb2.append(f18093i ? "_open" : "_close");
        return sb2.toString();
    }

    public static String c(String str, int i10) {
        return "";
    }

    public static boolean n() {
        return com.byazt.btt.tt.c().isTTVideoOk();
    }

    public static String sp() {
        return c("com.byted.pangle", 7611);
    }

    public static boolean tt() {
        return false;
    }

    public static boolean uj() {
        return false;
    }

    public static boolean ve() {
        return com.byazt.bzd.sp.tt();
    }

    public static boolean x() {
        return TextUtils.equals(UMModuleRegister.INNER, f18095x);
    }

    public static boolean c() {
        return true;
    }
}
