package com.czhj.devicehelper.cnoaid;

/* JADX INFO: loaded from: classes9.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f25281a = "OAID";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f25282b;

    private g() {
    }

    public static void a() {
        f25282b = true;
    }

    public static void a(Object obj) {
        if (f25282b) {
            if (obj == null) {
                obj = "<null>";
            }
            obj.toString();
        }
    }
}
