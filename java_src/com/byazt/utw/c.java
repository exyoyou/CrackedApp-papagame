package com.byazt.utw;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_MPD_SOCKET_CONNECT_TIME, 20})
public abstract class c implements sp {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final AtomicLong f21001t = new AtomicLong();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile List<a.tt> f21002a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile com.byazt.byh.c f21003c;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile x f21005i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public com.byazt.hsq.c f21006n;
    public volatile String sp;
    public final com.byazt.emg.ve tt;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public volatile String f21008x;
    public final AtomicInteger ve = new AtomicInteger();
    public final AtomicLong uj = new AtomicLong();

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public volatile boolean f21004da = false;
    public final long sl = f21001t.incrementAndGet();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final AtomicInteger f21007u = new AtomicInteger(0);
    public int yp = -1;

    public c(com.byazt.byh.c cVar, com.byazt.emg.ve veVar) {
        this.f21003c = cVar;
        this.tt = veVar;
    }

    public boolean a() {
        return n() == 1;
    }

    public int n() {
        return this.f21003c instanceof com.byazt.byh.tt ? 1 : 0;
    }

    public boolean tt() {
        return this.f21007u.get() == 1;
    }

    public void uj() throws com.byazt.ju.c {
        if (tt()) {
            throw new com.byazt.ju.c();
        }
    }

    public void ve() {
        this.f21007u.compareAndSet(0, 2);
    }

    public void c() {
        this.f21007u.compareAndSet(0, 1);
    }

    public com.byazt.ydv.c c(x.c cVar, int i10, int i11, String str) throws IOException {
        com.byazt.ydv.tt ttVarTt = com.byazt.ydv.ve.c().tt();
        com.byazt.ydv.n nVar = new com.byazt.ydv.n();
        HashMap map = new HashMap();
        nVar.tt = cVar.f21044c;
        nVar.f22167c = 0;
        if ("HEAD".equalsIgnoreCase(str)) {
            nVar.f22167c = 4;
        }
        List<a.tt> list = this.f21002a;
        if (list != null && !list.isEmpty()) {
            for (a.tt ttVar : list) {
                if (!"Range".equalsIgnoreCase(ttVar.f20999c) && !"Connection".equalsIgnoreCase(ttVar.f20999c) && !"Proxy-Connection".equalsIgnoreCase(ttVar.f20999c) && !"Host".equalsIgnoreCase(ttVar.f20999c)) {
                    map.put(ttVar.f20999c, ttVar.tt);
                }
            }
        }
        String strC = com.byazt.nxx.c.c(i10, i11);
        if (strC != null) {
            map.put("Range", strC);
        }
        if (uj.f21024x) {
            map.put("Cache-Control", "no-cache");
        }
        nVar.f22168n = map;
        if (this.f21004da) {
            this.f21004da = false;
            return null;
        }
        return ttVarTt.c(nVar);
    }

    public void c(int i10, int i11) {
        if (i10 <= 0 || i11 < 0) {
            return;
        }
        int i12 = uj.f21022i;
        int iN = n();
        if (i12 == 1 || (i12 == 2 && iN == 1)) {
            int i13 = (int) ((i11 / i10) * 100.0f);
            if (i13 > 100) {
                i13 = 100;
            }
            synchronized (this) {
                if (i13 <= this.yp) {
                    return;
                }
                this.yp = i13;
                com.byazt.nxx.c.tt(new Runnable() { // from class: com.byazt.utw.c.1
                    @Override // java.lang.Runnable
                    public void run() {
                        c cVar = c.this;
                        if (cVar.f21006n != null) {
                            x xVar = cVar.f21005i;
                            int unused = c.this.yp;
                        }
                    }
                });
            }
        }
    }
}
