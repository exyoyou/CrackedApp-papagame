package com.byazt.us;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import com.byazt.hu.u;
import com.byazt.nr.m;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 251, 34})
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Handler f20951c = new Handler(Looper.getMainLooper());

    /* JADX INFO: Access modifiers changed from: private */
    public static int da(com.byazt.dd.tt ttVar) {
        return com.byazt.hu.n.c((com.byazt.dd.c) ttVar).c("app_link_check_count", 10);
    }

    private static int i(com.byazt.dd.tt ttVar) {
        return com.byazt.hu.n.c((com.byazt.dd.c) ttVar).c("app_link_check_delay", 1);
    }

    public static long n(com.byazt.dd.tt ttVar) {
        return ttVar == null ? BaseCloudFileManager.ACK_TIMEOUT : com.byazt.hu.n.c((com.byazt.dd.c) ttVar).c("app_link_opt_back_time_limit", 3) * 1000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void tt(@NonNull final com.byazt.dd.tt ttVar, final int i10) {
        if (i10 <= 0) {
            return;
        }
        com.byazt.di.n.c().c(new Runnable() { // from class: com.byazt.us.a.2
            @Override // java.lang.Runnable
            public void run() {
                int i11 = 1;
                if (!u.ve(ttVar.n())) {
                    a.tt(ttVar, i10 - 1);
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                try {
                    if (!ttVar.q()) {
                        i11 = 2;
                    }
                    jSONObject.putOpt("deeplink_source", Integer.valueOf(i11));
                } catch (JSONException e10) {
                    m.c(e10);
                }
                com.byazt.zn.c.c().c("deeplink_success_2", jSONObject, ttVar);
            }
        }, i(ttVar) * 1000);
    }

    public static boolean uj(com.byazt.dd.tt ttVar) {
        return com.byazt.hu.n.c((com.byazt.dd.c) ttVar).tt("app_link_opt_dialog_switch") == 1;
    }

    public static boolean ve(com.byazt.dd.tt ttVar) {
        return com.byazt.hu.n.c((com.byazt.dd.c) ttVar).tt("app_link_opt_invoke_switch") == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long x(com.byazt.dd.tt ttVar) {
        return com.byazt.hu.n.c((com.byazt.dd.c) ttVar).c("app_link_check_timeout", e0.a.f90863b);
    }

    public static void c(final com.byazt.dd.tt ttVar, @NonNull final x xVar) {
        boolean zTt = com.byazt.g.c.c().tt();
        if (!zTt && Build.VERSION.SDK_INT >= 29) {
            u.ve();
        }
        boolean zTt2 = com.byazt.g.c.c().tt();
        boolean z10 = !zTt && zTt2;
        if (ttVar != null) {
            ttVar.t(z10);
        }
        xVar.c(z10);
        if (ttVar == null) {
            return;
        }
        tt(ttVar, da(ttVar));
        if (zTt2) {
            return;
        }
        final long jCurrentTimeMillis = System.currentTimeMillis();
        com.byazt.g.c.c().c(new com.byazt.g.c.InterfaceC0315c() { // from class: com.byazt.us.a.1
            @Override // com.byazt.g.c.InterfaceC0315c
            public void tt() {
                com.byazt.g.c.c().tt(this);
                com.byazt.di.n.c().c(new Runnable() { // from class: com.byazt.us.a.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        boolean zVe = u.ve(ttVar.n());
                        long jN = a.n(ttVar);
                        if (!zVe || jN >= System.currentTimeMillis() - jCurrentTimeMillis) {
                            long jX = a.x(ttVar);
                            long jCurrentTimeMillis2 = System.currentTimeMillis();
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            if (jCurrentTimeMillis2 - jCurrentTimeMillis > jX) {
                                com.byazt.zn.c.c().c("deeplink_delay_timeout", ttVar);
                                return;
                            }
                            ttVar.t(true);
                            com.byazt.zn.c.c().c("deeplink_delay_invoke", ttVar);
                            xVar.c(true);
                            com.byazt.dd.tt ttVar2 = ttVar;
                            a.tt(ttVar2, a.da(ttVar2));
                        }
                    }
                });
            }

            @Override // com.byazt.g.c.InterfaceC0315c
            public void ve() {
            }
        });
    }

    public static boolean tt(com.byazt.dd.tt ttVar) {
        return com.byazt.hu.n.c((com.byazt.dd.c) ttVar).tt("app_link_opt_install_switch") == 1;
    }

    public static boolean c(com.byazt.dd.tt ttVar) {
        return com.byazt.hu.n.c((com.byazt.dd.c) ttVar).tt("app_link_opt_switch") == 1;
    }
}
