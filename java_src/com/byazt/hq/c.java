package com.byazt.hq;

import android.text.TextUtils;
import com.alipay.sdk.packet.d;
import com.byazt.aas.eo;
import com.byazt.bwm.n;
import com.byazt.bwm.sp;
import com.byazt.ete.nb;
import com.byazt.hm.tt;
import com.byazt.nr.a;
import com.byazt.nr.m;
import com.byazt.omf.gt;
import com.byazt.va.uj;
import com.byazt.va.ve;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.HashMap;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DOWNLOAD_BYTES, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f15054c = "";
    public static String tt = "";

    /* JADX INFO: renamed from: com.byazt.hq.c$c, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DOWNLOAD_BYTES, 44})
    public static class RunnableC0332c implements Runnable {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public WeakReference<Runnable> f15057c;

        public RunnableC0332c(Runnable runnable) {
            if (runnable != null) {
                this.f15057c = new WeakReference<>(runnable);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            WeakReference<Runnable> weakReference = this.f15057c;
            Runnable runnable = weakReference != null ? weakReference.get() : null;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    public static void c(final RunnableC0332c runnableC0332c) {
        nb nbVarDz = gt.tt().dz();
        final String strC = nbVarDz == null ? null : nbVarDz.c();
        if (TextUtils.isEmpty(strC)) {
            return;
        }
        if (TextUtils.isEmpty(tt)) {
            tt = strC;
        }
        n.tt(new sp("loadPfJs") { // from class: com.byazt.hq.c.1
            @Override // java.lang.Runnable
            public void run() {
                RunnableC0332c runnableC0332c2;
                String str = strC;
                if (str != null && str.equalsIgnoreCase(c.tt)) {
                    if (TextUtils.isEmpty(c.f15054c)) {
                        c.f15054c = eo.c("js_pform").get(a.tt(strC), "");
                    }
                    if (!TextUtils.isEmpty(c.f15054c) && (runnableC0332c2 = runnableC0332c) != null) {
                        runnableC0332c2.run();
                        return;
                    }
                }
                ve veVarVe = com.byazt.hy.n.c().tt().ve();
                veVarVe.c(strC);
                HashMap map = new HashMap();
                map.put(d.f7182f, "application/json; charset=utf-8");
                veVarVe.uj(map);
                veVarVe.c(new com.byazt.mh.c() { // from class: com.byazt.hq.c.1.1
                    @Override // com.byazt.mh.c
                    public void c(uj ujVar, IOException iOException) {
                    }

                    @Override // com.byazt.mh.c
                    public void c(uj ujVar, tt ttVar) {
                        try {
                            c.f15054c = ttVar.n();
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            c.tt = strC;
                            RunnableC0332c runnableC0332c3 = runnableC0332c;
                            if (runnableC0332c3 != null) {
                                runnableC0332c3.run();
                            }
                            eo.c("js_pform").clear();
                            eo.c("js_pform").put(a.tt(strC), c.f15054c);
                        } catch (Throwable th) {
                            m.ve("performanceH5", "TTWebViewClient : onPageFinished", th);
                        }
                    }
                });
            }
        });
    }

    public static void c(StringBuilder sb2, String str, String str2) {
        int iIndexOf;
        if (sb2 == null || TextUtils.isEmpty(str) || (iIndexOf = sb2.indexOf(str)) <= 0) {
            return;
        }
        sb2.replace(iIndexOf, str.length() + iIndexOf, str2);
    }
}
