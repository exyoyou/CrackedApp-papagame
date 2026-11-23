package com.aggmoread.sdk.z.c.a.a.d.a.d;

/* JADX INFO: loaded from: classes7.dex */
public class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f4546a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static int f4547b = -1;

    public static void a(String str) {
        int i10;
        if ("0".equals(str)) {
            i10 = 0;
        } else if (!"1".equals(str)) {
            return;
        } else {
            i10 = 1;
        }
        f4547b = i10;
    }

    public static void a(boolean z10) {
        f4546a = z10 ? 1 : 0;
    }
}
