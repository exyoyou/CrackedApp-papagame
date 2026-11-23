package com.byazt.utw;

import android.os.Process;
import android.text.TextUtils;
import android.util.SparseArray;
import com.byazt.nr.m;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_MPD_SOCKET_CONNECT_TIME, 54})
public final class ve {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static volatile ve f21025n;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile com.byazt.emg.ve f21026a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile int f21027c = 163840;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final com.byazt.utw.tt.InterfaceC0457tt f21028da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final HashSet<c> f21029i;
    public volatile String sl;
    public volatile com.byazt.byh.ve sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public volatile boolean f21030t;
    public final SparseArray<Map<String, com.byazt.utw.tt>> tt;
    public final ExecutorService uj;
    public final tt<Runnable> ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public volatile com.byazt.byh.tt f21031x;

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_MPD_SOCKET_CONNECT_TIME, 24})
    private static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String[] f21037a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f21038c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final Map<String, String> f21039n;
        public final boolean tt;
        public final String uj;
        public final int ve;

        public c(boolean z10, boolean z11, int i10, String str, Map<String, String> map, String[] strArr) {
            this.f21038c = z10;
            this.tt = z11;
            this.ve = i10;
            this.uj = str;
            this.f21039n = map;
            this.f21037a = strArr;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || c.class != obj.getClass()) {
                return false;
            }
            c cVar = (c) obj;
            if (this.f21038c == cVar.f21038c && this.tt == cVar.tt && this.ve == cVar.ve) {
                return this.uj.equals(cVar.uj);
            }
            return false;
        }

        public int hashCode() {
            return ((((((this.f21038c ? 1 : 0) * 31) + (this.tt ? 1 : 0)) * 31) + this.ve) * 31) + this.uj.hashCode();
        }
    }

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_MPD_SOCKET_CONNECT_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_NON_KEY_FRAME_SWITCH_BUFFER_THRESHOLD})
    private static final class tt<T> extends LinkedBlockingDeque<T> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ThreadPoolExecutor f21040c;

        private tt() {
        }

        public void c(ThreadPoolExecutor threadPoolExecutor) {
            synchronized (this) {
                if (this.f21040c != null) {
                    throw new IllegalStateException("You can only call setExecutor() once!");
                }
                if (threadPoolExecutor == null) {
                    throw new NullPointerException("executor argument can't be null!");
                }
                this.f21040c = threadPoolExecutor;
            }
        }

        @Override // java.util.concurrent.LinkedBlockingDeque, java.util.Queue, java.util.concurrent.BlockingDeque, java.util.concurrent.BlockingQueue, java.util.Deque
        public boolean offer(T t10) {
            synchronized (this) {
                int poolSize = this.f21040c.getPoolSize();
                int activeCount = this.f21040c.getActiveCount();
                int maximumPoolSize = this.f21040c.getMaximumPoolSize();
                if (activeCount < poolSize || poolSize >= maximumPoolSize) {
                    return offerFirst(t10);
                }
                if (uj.f21023n) {
                    m.c("TAG_PROXY_TT", "create new preloader thread");
                }
                return false;
            }
        }
    }

    private ve() {
        SparseArray<Map<String, com.byazt.utw.tt>> sparseArray = new SparseArray<>(2);
        this.tt = sparseArray;
        this.f21029i = new HashSet<>();
        this.f21028da = new com.byazt.utw.tt.InterfaceC0457tt() { // from class: com.byazt.utw.ve.1
            @Override // com.byazt.utw.tt.InterfaceC0457tt
            public void c(com.byazt.utw.tt ttVar) {
                int iN = ttVar.n();
                synchronized (ve.this.tt) {
                    Map map = (Map) ve.this.tt.get(iN);
                    if (map != null) {
                        map.remove(ttVar.f21008x);
                    }
                }
                boolean z10 = uj.f21023n;
            }
        };
        tt<Runnable> ttVar = new tt<>();
        this.ve = ttVar;
        ExecutorService executorServiceC = c(ttVar);
        this.uj = executorServiceC;
        ttVar.c((ThreadPoolExecutor) executorServiceC);
        sparseArray.put(0, new HashMap());
        sparseArray.put(1, new HashMap());
    }

    public void c(com.byazt.byh.ve veVar) {
        this.sp = veVar;
    }

    public void tt() {
        com.byazt.nxx.c.c(new Runnable() { // from class: com.byazt.utw.ve.3
            @Override // java.lang.Runnable
            public void run() {
                ArrayList<com.byazt.utw.tt> arrayList = new ArrayList();
                synchronized (ve.this.tt) {
                    int size = ve.this.tt.size();
                    for (int i10 = 0; i10 < size; i10++) {
                        Map map = (Map) ve.this.tt.get(ve.this.tt.keyAt(i10));
                        if (map != null) {
                            arrayList.addAll(map.values());
                            map.clear();
                        }
                    }
                    ve.this.ve.clear();
                }
                for (com.byazt.utw.tt ttVar : arrayList) {
                    ttVar.c();
                    if (uj.f21023n) {
                        m.tt("TAG_PROXY_Preloader", "PreloadTask: " + ttVar + ", canceled!!!");
                    }
                }
            }
        });
    }

    public void c(com.byazt.emg.ve veVar) {
        this.f21026a = veVar;
    }

    public void c(int i10) {
        if (i10 > 0) {
            this.f21027c = i10;
        }
        if (uj.f21023n) {
            m.c("TAG_PROXY_Preloader", "MaxPreloadSize: ".concat(String.valueOf(i10)));
        }
    }

    public static ve c() {
        if (f21025n == null) {
            synchronized (ve.class) {
                if (f21025n == null) {
                    f21025n = new ve();
                }
            }
        }
        return f21025n;
    }

    public void c(boolean z10, boolean z11, int i10, String str, String... strArr) throws Throwable {
        c(z10, z11, i10, str, null, strArr);
    }

    public void c(boolean z10, boolean z11, int i10, String str, Map<String, String> map, String... strArr) throws Throwable {
        SparseArray<Map<String, com.byazt.utw.tt>> sparseArray;
        ArrayList arrayList;
        boolean z12 = uj.f21023n;
        com.byazt.byh.c cVar = z10 ? this.f21031x : this.sp;
        com.byazt.emg.ve veVar = this.f21026a;
        if (cVar == null || veVar == null) {
            if (z12) {
                m.uj("TAG_PROXY_Preloader", "cache or videoProxyDB null in Preloader!!!");
                return;
            }
            return;
        }
        if (TextUtils.isEmpty(str) || strArr == null || strArr.length <= 0) {
            return;
        }
        int i11 = i10 <= 0 ? this.f21027c : i10;
        String strC = z11 ? str : com.byazt.lt.c.c(str);
        File fileUj = cVar.uj(strC);
        if (fileUj != null && fileUj.length() >= i11) {
            if (z12) {
                m.c("TAG_PROXY_Preloader", "no need preload, file size: " + fileUj.length() + ", need preload size: " + i11);
                return;
            }
            return;
        }
        SparseArray<Map<String, com.byazt.utw.tt>> sparseArray2 = this.tt;
        synchronized (sparseArray2) {
            try {
                try {
                    Map<String, com.byazt.utw.tt> map2 = this.tt.get(z10 ? 1 : 0);
                    if (!map2.containsKey(strC)) {
                        int i12 = i11;
                        sparseArray = sparseArray2;
                        c cVar2 = new c(z10, z11, i11, str, map, strArr);
                        String str2 = this.sl;
                        if (str2 != null) {
                            int i13 = uj.ve;
                            if (i13 == 3) {
                                synchronized (this.f21029i) {
                                    this.f21029i.add(cVar2);
                                }
                                if (z12) {
                                    m.tt("TAG_PROXY_Preloader", "cancel preload: " + str + ", add to pending queue");
                                }
                                return;
                            }
                            if (i13 == 2) {
                                if (z12) {
                                    m.tt("TAG_PROXY_Preloader", "cancel preload: ".concat(String.valueOf(str)));
                                }
                                return;
                            } else if (i13 == 1 && this.f21030t == z10 && str2.equals(strC)) {
                                if (z12) {
                                    m.tt("TAG_PROXY_Preloader", "cancel preload: " + str + ", it is playing");
                                }
                                return;
                            }
                        }
                        List<a.tt> listC = com.byazt.nxx.c.c(com.byazt.nxx.c.c(map));
                        if (listC != null) {
                            arrayList = new ArrayList(listC.size());
                            int size = listC.size();
                            for (int i14 = 0; i14 < size; i14++) {
                                a.tt ttVar = listC.get(i14);
                                if (ttVar != null) {
                                    arrayList.add(new a.tt(ttVar.f20999c, ttVar.tt));
                                }
                            }
                        } else {
                            arrayList = null;
                        }
                        com.byazt.utw.tt ttVarC = new com.byazt.utw.tt.c().c(cVar).c(veVar).c(str).tt(strC).c(new x(com.byazt.nxx.c.c(strArr))).c((List<a.tt>) arrayList).c(i12).c(this.f21028da).c(cVar2).c();
                        map2.put(strC, ttVarC);
                        this.uj.execute(ttVarC);
                        return;
                    }
                } catch (Throwable th) {
                    th = th;
                    sparseArray = sparseArray2;
                }
            } catch (Throwable th2) {
                th = th2;
            }
            throw th;
        }
    }

    public void c(String str) {
        c(false, false, str);
    }

    public void c(final boolean z10, final boolean z11, final String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.byazt.nxx.c.c(new Runnable() { // from class: com.byazt.utw.ve.2
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.utw.tt ttVar;
                synchronized (ve.this.tt) {
                    Map map = (Map) ve.this.tt.get(com.byazt.emg.tt.c(z10));
                    if (map != null) {
                        ttVar = (com.byazt.utw.tt) map.remove(z11 ? str : com.byazt.lt.c.c(str));
                    } else {
                        ttVar = null;
                    }
                }
                if (ttVar != null) {
                    ttVar.c();
                }
            }
        });
    }

    private static ExecutorService c(final tt<Runnable> ttVar) {
        int i10;
        int iC = com.byazt.nxx.c.c();
        if (iC <= 0) {
            i10 = 1;
        } else {
            i10 = iC > 4 ? 4 : iC;
        }
        return new com.byazt.jtc.uj(0, i10, 60L, TimeUnit.SECONDS, ttVar, new ThreadFactory() { // from class: com.byazt.utw.ve.4
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                com.byazt.jtc.ve veVar = new com.byazt.jtc.ve(runnable) { // from class: com.byazt.utw.ve.4.1
                    @Override // java.lang.Thread, java.lang.Runnable
                    public void run() {
                        try {
                            Process.setThreadPriority(10);
                        } catch (Throwable th) {
                            m.c(th);
                        }
                        super.run();
                    }
                };
                veVar.setName("csj_video_preload_" + veVar.getId());
                veVar.setDaemon(true);
                if (uj.f21023n) {
                    m.c("TAG_PROXY_Preloader", "new preload thead: " + veVar.getName());
                }
                return veVar;
            }
        }, new RejectedExecutionHandler() { // from class: com.byazt.utw.ve.5
            @Override // java.util.concurrent.RejectedExecutionHandler
            public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
                try {
                    ttVar.offerFirst(runnable);
                    if (uj.f21023n) {
                        m.c("TAG_PROXY_TT", "task rejected in preloader, put first!!!");
                    }
                } catch (Throwable th) {
                    m.c(th);
                }
            }
        });
    }
}
