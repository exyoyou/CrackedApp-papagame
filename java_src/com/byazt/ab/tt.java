package com.byazt.ab;

import android.os.SystemClock;
import android.text.TextUtils;
import android.util.LruCache;
import com.byazt.bwm.n;
import com.byazt.bwm.sp;
import com.byazt.ete.ic;
import com.byazt.omf.gt;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 757, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile tt f11521c;
    public LruCache<String, com.byazt.ehu.c> tt;
    public int uj;
    public final long ve;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public CopyOnWriteArrayList<String> f11524n = new CopyOnWriteArrayList<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public CopyOnWriteArrayList<String> f11522a = new CopyOnWriteArrayList<>();
    public ConcurrentHashMap<String, WeakReference<com.byazt.at.uj>> sp = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public ConcurrentHashMap<String, Long> f11525x = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Object f11523i = new Object();

    private tt() {
        int iPb = gt.tt().pb();
        this.uj = iPb;
        if (iPb > 30) {
            this.uj = 30;
        } else if (iPb < 0) {
            this.uj = 5;
        }
        this.ve = gt.tt().sy() * 1000;
        this.tt = new LruCache<String, com.byazt.ehu.c>(this.uj) { // from class: com.byazt.ab.tt.1
            @Override // android.util.LruCache
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public int sizeOf(String str, com.byazt.ehu.c cVar) {
                return 1;
            }
        };
    }

    public static /* synthetic */ void c(tt ttVar, String str) {
    }

    private void uj(final ic icVar) {
        if (TextUtils.isEmpty(icVar.wo())) {
            return;
        }
        final String strWo = icVar.wo();
        if (this.f11524n.contains(strWo) || this.f11522a.contains(strWo) || this.tt.get(strWo) != null) {
            return;
        }
        this.f11524n.add(strWo);
        this.f11525x.put(strWo, Long.valueOf(System.currentTimeMillis()));
        n.tt(new sp("playable_prefetch") { // from class: com.byazt.ab.tt.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    tt.this.c(icVar, strWo);
                } catch (Throwable unused) {
                }
            }
        });
    }

    public void tt(ic icVar) {
        if (icVar != null) {
            try {
                if (TextUtils.isEmpty(icVar.wo())) {
                    return;
                }
                String strWo = icVar.wo();
                this.f11522a.add(strWo);
                this.tt.remove(strWo);
                this.f11524n.remove(strWo);
                this.sp.remove(strWo);
                this.f11525x.remove(strWo);
                this.tt.size();
                this.f11524n.size();
                this.f11522a.size();
            } catch (Exception unused) {
            }
        }
    }

    public long ve(ic icVar) {
        try {
            if (this.f11525x == null || icVar == null || TextUtils.isEmpty(icVar.wo())) {
                return 0L;
            }
            return this.f11525x.get(icVar.wo()).longValue();
        } catch (Exception unused) {
            return 0L;
        }
    }

    public static tt c() {
        if (f11521c == null) {
            synchronized (tt.class) {
                if (f11521c == null) {
                    f11521c = new tt();
                }
            }
        }
        return f11521c;
    }

    public void c(ic icVar) {
        if (icVar != null) {
            try {
                if (icVar.cj() == 3) {
                    uj(icVar);
                }
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(ic icVar, final String str) {
        com.byazt.hy.tt.c(icVar, icVar == null ? null : icVar.jm(), new com.byazt.at.uj() { // from class: com.byazt.ab.tt.3
            @Override // com.byazt.at.uj
            public void c(boolean z10, List<ic> list, boolean z11) {
                try {
                    if (tt.this.f11522a != null && tt.this.f11522a.contains(str)) {
                        tt.c(tt.this, "prefetchCache-onAdLoaded.. discardTask. key: " + str);
                        return;
                    }
                    tt.c(tt.this, "prefetchCache-onAdLoaded.. success: ".concat(String.valueOf(z10)));
                    synchronized (tt.this.f11523i) {
                        if (!z10 || list == null) {
                            tt.this.f11524n.remove(str);
                        } else {
                            if (list.size() > 0) {
                                com.byazt.ehu.c cVar = new com.byazt.ehu.c();
                                cVar.f13455c = list;
                                cVar.tt = z10;
                                cVar.ve = SystemClock.elapsedRealtime();
                                tt.this.tt.put(str, cVar);
                                tt.c(tt.this, "prefetchCache-onAdLoaded.. 缓存save  key: " + str);
                            }
                            tt.this.f11524n.remove(str);
                        }
                        throw th;
                    }
                    WeakReference weakReference = (WeakReference) tt.this.sp.get(str);
                    com.byazt.at.uj ujVar = weakReference == null ? null : (com.byazt.at.uj) weakReference.get();
                    if (ujVar != null) {
                        ujVar.c(z10, list, true);
                        tt.this.sp.remove(str);
                        tt.c(tt.this, "prefetchCache-onAdLoaded..callback invoke key: " + str);
                    }
                } catch (Exception unused) {
                }
            }
        }, (com.byazt.dj.tt) null);
    }

    public boolean c(ic icVar, com.byazt.at.uj ujVar) {
        if (icVar != null && !TextUtils.isEmpty(icVar.wo())) {
            String strWo = icVar.wo();
            try {
                synchronized (this.f11523i) {
                    if (this.f11524n.contains(strWo)) {
                        this.sp.put(strWo, new WeakReference<>(ujVar));
                        return true;
                    }
                    com.byazt.ehu.c cVar = this.tt.get(strWo);
                    if (cVar == null) {
                        return false;
                    }
                    if (c(cVar)) {
                        tt(icVar);
                        return false;
                    }
                    if (ujVar != null) {
                        ujVar.c(cVar.tt, cVar.f13455c, true);
                        return true;
                    }
                }
            } catch (Exception unused) {
            }
        }
        return false;
    }

    private boolean c(com.byazt.ehu.c cVar) {
        return this.ve > 0 && cVar != null && SystemClock.elapsedRealtime() - cVar.ve > this.ve;
    }
}
