package com.byazt.ns;

import android.text.TextUtils;
import com.byazt.byh.ve;
import com.byazt.jzl.a;
import com.byazt.nr.m;
import com.byazt.nr.sp;
import com.byazt.utw.uj;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Queue;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RANGE_SIZE, 20})
public final class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final boolean f17628c = com.byazt.lt.tt.tt();
    public HashMap<String, Boolean> tt;
    public C0389c ve;

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RANGE_SIZE, 175})
    private static class tt {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final c f17634c = new c();
    }

    public static c c() {
        return tt.f17634c;
    }

    private static ve ve() {
        ve veVar = null;
        File file = new File(sp.tt(com.byazt.oy.tt.getContext(), false, null), "proxy_cache");
        if (!file.exists()) {
            file.mkdirs();
        }
        try {
            ve veVar2 = new ve(file);
            try {
                veVar2.c(104857600L);
                return veVar2;
            } catch (IOException e10) {
                e = e10;
                veVar = veVar2;
                m.c(e);
                return veVar;
            }
        } catch (IOException e11) {
            e = e11;
        }
    }

    public boolean tt() {
        if (this.ve != null) {
            return true;
        }
        ve veVarVe = ve();
        if (veVarVe == null) {
            return false;
        }
        uj.c(true);
        uj.c(1);
        try {
            C0389c c0389c = new C0389c();
            this.ve = c0389c;
            c0389c.setName("csj_v_c_preloader");
            this.ve.start();
            uj.c(veVarVe, com.byazt.oy.tt.getContext());
            com.byazt.utw.ve.c();
            com.byazt.utw.ve.c().c(10485759);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    private c() {
        this.tt = new HashMap<>();
        tt();
    }

    public boolean c(a aVar) {
        if (!tt()) {
            return false;
        }
        this.ve.c(aVar);
        return true;
    }

    /* JADX INFO: renamed from: com.byazt.ns.c$c, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RANGE_SIZE, 44})
    class C0389c extends com.byazt.jtc.ve {

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public Queue<C0390c> f17630n;
        public Queue<C0390c> tt;
        public final Queue<C0390c> uj;
        public boolean ve;

        /* JADX INFO: renamed from: com.byazt.ns.c$c$c, reason: collision with other inner class name */
        @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RANGE_SIZE, 810})
        private class C0390c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public a f17631a;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f17632c;

            /* JADX INFO: renamed from: n, reason: collision with root package name */
            public String f17633n;
            public String tt;
            public int uj;
            public String[] ve;

            public C0390c() {
            }
        }

        public C0389c() {
            super("VideoCachePreloader$PreLoadThread");
            this.uj = new ArrayBlockingQueue(10);
            this.tt = new LinkedBlockingQueue();
            this.ve = true;
            this.f17630n = new LinkedBlockingQueue();
        }

        private C0390c c(int i10, a aVar) {
            this.uj.size();
            C0390c c0390cPoll = this.uj.poll();
            if (c0390cPoll == null) {
                c0390cPoll = new C0390c();
            }
            c0390cPoll.f17632c = i10;
            c0390cPoll.f17631a = aVar;
            return c0390cPoll;
        }

        private synchronized void tt(C0390c c0390c) {
            this.f17630n.add(c0390c);
            notify();
        }

        private void ve(C0390c c0390c) {
            if (c0390c == null) {
                return;
            }
            this.tt.offer(c0390c);
            notify();
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (this.ve) {
                synchronized (this) {
                    if (!this.f17630n.isEmpty()) {
                        c();
                    }
                    while (!this.tt.isEmpty()) {
                        C0390c c0390cPoll = this.tt.poll();
                        if (c0390cPoll != null) {
                            int i10 = c0390cPoll.f17632c;
                            if (i10 == 0) {
                                String[] strArr = c0390cPoll.ve;
                                if (strArr != null && strArr.length > 0) {
                                    ArrayList arrayList = new ArrayList();
                                    for (String str : c0390cPoll.ve) {
                                        if (com.byazt.nxx.c.c(str)) {
                                            arrayList.add(str);
                                        }
                                    }
                                    com.byazt.utw.ve.c().c(false, !TextUtils.isEmpty(c0390cPoll.f17633n), c0390cPoll.uj, c0390cPoll.tt, (String[]) arrayList.toArray(new String[arrayList.size()]));
                                }
                            } else if (i10 == 1) {
                                com.byazt.utw.ve.c().c(c0390cPoll.tt);
                            } else if (i10 == 2) {
                                com.byazt.utw.ve.c().tt();
                            } else if (i10 == 3) {
                                com.byazt.utw.ve.c().tt();
                                if (uj.tt() != null) {
                                    uj.tt().c();
                                }
                                if (uj.c() != null) {
                                    uj.c().c();
                                }
                            } else if (i10 == 4) {
                                com.byazt.utw.ve.c().tt();
                                this.ve = false;
                            }
                            c(c0390cPoll);
                        }
                    }
                    try {
                        wait();
                    } catch (InterruptedException e10) {
                        m.c(e10);
                    }
                }
            }
        }

        private void c(C0390c c0390c) {
            c0390c.ve = null;
            c0390c.tt = null;
            c0390c.f17632c = -1;
            c0390c.f17631a = null;
            this.uj.offer(c0390c);
        }

        private void c() {
            while (true) {
                C0390c c0390cPoll = this.f17630n.poll();
                if (c0390cPoll == null) {
                    return;
                }
                c0390cPoll.tt = c0390cPoll.f17631a.getUrl();
                c0390cPoll.ve = new String[]{c0390cPoll.f17631a.getUrl()};
                int pitayaCacheSize = c0390cPoll.f17631a.getPitayaCacheSize();
                if (pitayaCacheSize <= 0) {
                    pitayaCacheSize = c0390cPoll.f17631a.getPreloadSize();
                }
                c0390cPoll.uj = pitayaCacheSize;
                c0390cPoll.f17633n = c0390cPoll.f17631a.getFileNameKey();
                if (!TextUtils.isEmpty(c0390cPoll.f17631a.getFileNameKey())) {
                    c0390cPoll.tt = c0390cPoll.f17631a.getFileNameKey();
                }
                c0390cPoll.f17631a = null;
                ve(c0390cPoll);
            }
        }

        public void c(a aVar) {
            tt(c(0, aVar));
        }
    }
}
