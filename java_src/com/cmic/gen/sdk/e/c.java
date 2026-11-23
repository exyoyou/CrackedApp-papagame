package com.cmic.gen.sdk.e;

/* JADX INFO: loaded from: classes9.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final c f24478a = new c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f24479b = false;

    public static void a(boolean z10) {
        f24479b = z10;
    }

    public static void b(String str, String str2) {
        if (f24479b) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("CMCC-SDK:");
            sb2.append(str);
            StringBuilder sb3 = new StringBuilder();
            sb3.append("");
            sb3.append(str2);
        }
    }

    public static void a(String str, String str2) {
        if (f24479b) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("CMCC-SDK:");
            sb2.append(str);
            StringBuilder sb3 = new StringBuilder();
            sb3.append("");
            sb3.append(str2);
        }
    }
}
