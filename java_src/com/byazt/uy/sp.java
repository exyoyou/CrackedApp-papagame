package com.byazt.uy;

import android.app.Application;
import android.content.Context;
import androidx.annotation.NonNull;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1180, 91})
public final class sp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f21109c;
    public static boolean tt;
    public static boolean uj;
    public static boolean ve;

    public static synchronized void c(@NonNull Context context, @NonNull n nVar, boolean z10, boolean z11) {
        c(context, nVar, z10, false, z11);
    }

    public static synchronized void c(@NonNull Context context, @NonNull n nVar, boolean z10, boolean z11, boolean z12) {
        c(context, nVar, z10, z10, z11, z12);
    }

    public static synchronized void c(@NonNull final Context context, @NonNull n nVar, boolean z10, boolean z11, boolean z12, final boolean z13) {
        if (f21109c) {
            return;
        }
        if (context == null) {
            throw new IllegalArgumentException("context must be not null.");
        }
        if (nVar != null) {
            if (!(context instanceof Application)) {
                context = context.getApplicationContext();
            }
            if (com.byazt.mg.c.ve(context)) {
                return;
            }
            x.c(context, nVar);
            com.byazt.ia.n.c(context);
            if (z10 || z11) {
                com.byazt.yg.c cVarC = com.byazt.yg.c.c();
                if (z10) {
                    cVarC.c(new com.byazt.yg.ve(context));
                }
                tt = true;
            }
            uj = z12;
            f21109c = true;
            ve = z13;
            com.byazt.rx.sp.tt().post(new Runnable() { // from class: com.byazt.uy.sp.1
                @Override // java.lang.Runnable
                public void run() {
                    com.byazt.kr.c.c().c(context);
                    com.byazt.jz.uj.c(context);
                    if (z13) {
                        com.byazt.kg.a.c(context).c();
                    }
                }
            });
            return;
        }
        throw new IllegalArgumentException("params must be not null.");
    }

    @Deprecated
    public static void c(String str) {
        if (x.n().c()) {
            com.byazt.yg.c.c(str);
        }
    }

    public static void c(a aVar) {
        x.tt().c(aVar);
    }

    public static void c(Map<? extends String, ? extends String> map) {
        if (map == null || map.isEmpty()) {
            return;
        }
        x.tt().c(map);
    }

    public static void c(final com.byazt.ba.tt ttVar) {
        com.byazt.rx.sp.tt().post(new Runnable() { // from class: com.byazt.uy.sp.2
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.ba.c.c(ttVar);
            }
        });
    }

    public static void c() {
        com.byazt.yg.c.tt();
    }
}
