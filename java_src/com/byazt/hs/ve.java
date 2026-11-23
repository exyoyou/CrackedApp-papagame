package com.byazt.hs;

import android.net.Uri;
import android.os.Handler;
import com.byazt.nr.m;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.net.InetAddress;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1404, 54})
public class ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.byazt.w.x<String, tt> f15104c;
    public final Handler tt;
    public final Handler ve;

    public interface c {
        void c(String str, List<InetAddress> list);
    }

    @com.byazt.zqa.c(c = {0, 1, 1404, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_NON_KEY_FRAME_SWITCH_BUFFER_THRESHOLD})
    private static class tt {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public List<InetAddress> f15107c;
        public long tt;

        private tt() {
        }
    }

    /* JADX INFO: renamed from: com.byazt.hs.ve$ve, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, 1404, 917})
    private static class C0333ve {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final ve f15108c = new ve();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tt(final String str, final c cVar, long j10) {
        final tt ttVar;
        List<InetAddress> listC;
        a aVarQy;
        try {
            String host = Uri.parse(str).getHost();
            synchronized (this.f15104c) {
                ttVar = this.f15104c.get(host);
            }
            if (ttVar != null) {
                if (System.currentTimeMillis() - ttVar.tt < com.byazt.k.c.ve().c("dns_expire_min", 10) * 60 * 1000) {
                    if (cVar != null) {
                        cVar.c(str, ttVar.f15107c);
                        return;
                    }
                    return;
                }
            }
            Runnable runnable = new Runnable() { // from class: com.byazt.hs.ve.2
                @Override // java.lang.Runnable
                public void run() {
                    c cVar2 = cVar;
                    if (cVar2 != null) {
                        String str2 = str;
                        tt ttVar2 = ttVar;
                        cVar2.c(str2, ttVar2 == null ? null : ttVar2.f15107c);
                    }
                }
            };
            this.ve.postDelayed(runnable, j10);
            if (com.byazt.k.c.ve().c("use_host_dns", 1) != 1 || (aVarQy = com.byazt.zz.ve.qy()) == null) {
                listC = null;
            } else {
                try {
                    listC = aVarQy.c(host);
                } catch (Throwable th) {
                    m.c(th);
                    listC = null;
                }
            }
            if (listC == null || listC.isEmpty()) {
                try {
                    listC = com.byazt.zz.ve.gu().c(host);
                } catch (Throwable th2) {
                    m.c(th2);
                }
            }
            if (listC != null && !listC.isEmpty()) {
                c(host, listC);
            } else if (ttVar != null) {
                listC = ttVar.f15107c;
            }
            this.ve.removeCallbacks(runnable);
            if (cVar != null) {
                cVar.c(str, listC);
            }
        } catch (Throwable th3) {
            m.c(th3);
        }
    }

    private ve() {
        this.f15104c = new com.byazt.w.x<>(4, 16, false);
        this.tt = new Handler(com.byazt.no.tt.c());
        this.ve = new Handler(com.byazt.u.n.c());
    }

    public static ve c() {
        return C0333ve.f15108c;
    }

    public void c(final String str, final c cVar, final long j10) {
        this.tt.post(new Runnable() { // from class: com.byazt.hs.ve.1
            @Override // java.lang.Runnable
            public void run() {
                ve.this.tt(str, cVar, j10);
            }
        });
    }

    private void c(String str, List<InetAddress> list) {
        synchronized (this.f15104c) {
            tt ttVar = this.f15104c.get(str);
            if (ttVar == null) {
                ttVar = new tt();
                this.f15104c.put(str, ttVar);
            }
            ttVar.f15107c = list;
            ttVar.tt = System.currentTimeMillis();
        }
    }
}
