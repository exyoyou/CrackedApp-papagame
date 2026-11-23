package com.beizi.ad;

import android.content.Context;
import androidx.annotation.RequiresPermission;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static c f8643a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f8644b;

    @RequiresPermission(com.kuaishou.weapon.p0.g.f74777a)
    public static void a(Context context, String str, c cVar) {
        f8643a = cVar;
        com.beizi.ad.internal.c.a().a(context, str);
    }

    public static boolean b() {
        return f8644b;
    }

    public static void c(String str) {
        com.beizi.ad.internal.c.a().c(str);
    }

    public static void d(String str) {
        com.beizi.ad.internal.c.a().f8767e = str;
    }

    public static String e(String str) {
        return com.beizi.ad.internal.c.a().d(str);
    }

    public static void b(String str) {
        com.beizi.ad.internal.c.a().b(str);
    }

    public static c a() {
        return f8643a;
    }

    public static void a(boolean z10) {
        f8644b = z10;
    }

    public static void a(String str) {
        com.beizi.ad.internal.c.a().a(str);
    }

    public static void a(List<String> list) {
        com.beizi.ad.internal.c.a().a(list);
    }
}
