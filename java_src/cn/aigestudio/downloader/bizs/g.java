package cn.aigestudio.downloader.bizs;

import android.content.Context;
import android.text.TextUtils;
import com.github.snowdream.android.app.downloader.DownloadTask;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes7.dex */
public final class g {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f642c = "g";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f643d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f644e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f645f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final BlockingQueue<Runnable> f646g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final BlockingQueue<Runnable> f647h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final ThreadFactory f648i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final ThreadFactory f649j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final ExecutorService f650k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final ExecutorService f651l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final ConcurrentHashMap<String, f> f652m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final List<f> f653n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final ConcurrentHashMap<String, f> f654o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static g f655p;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f656a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f657b = 3;

    class a implements ThreadFactory {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final AtomicInteger f658b = new AtomicInteger(1);

        a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "DLTask #" + this.f658b.getAndIncrement());
        }
    }

    class b implements ThreadFactory {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final AtomicInteger f659b = new AtomicInteger(1);

        b() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "DLThread #" + this.f659b.getAndIncrement());
        }
    }

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        f643d = iAvailableProcessors;
        f644e = iAvailableProcessors + 1;
        f645f = (iAvailableProcessors * 2) + 1;
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue(56);
        f646g = linkedBlockingQueue;
        LinkedBlockingQueue linkedBlockingQueue2 = new LinkedBlockingQueue(256);
        f647h = linkedBlockingQueue2;
        a aVar = new a();
        f648i = aVar;
        b bVar = new b();
        f649j = bVar;
        TimeUnit timeUnit = TimeUnit.SECONDS;
        f650k = new ThreadPoolExecutor(3, 3, 3L, timeUnit, linkedBlockingQueue, aVar);
        f651l = new ThreadPoolExecutor(3, 3, 2L, timeUnit, linkedBlockingQueue2, bVar);
        f652m = new ConcurrentHashMap<>();
        f653n = Collections.synchronizedList(new ArrayList());
        f654o = new ConcurrentHashMap<>();
    }

    private g(Context context) {
        this.f656a = context;
    }

    public static g q(Context context) {
        if (f655p == null) {
            f655p = new g(context);
        }
        return f655p;
    }

    synchronized g a() {
        List<f> list = f653n;
        if (!list.isEmpty()) {
            ConcurrentHashMap<String, f> concurrentHashMap = f652m;
            if (concurrentHashMap.size() < this.f657b) {
                f fVarRemove = list.remove(0);
                concurrentHashMap.put(fVarRemove.f626e, fVarRemove);
                f650k.execute(new h(this.f656a, fVarRemove));
            }
        }
        return f655p;
    }

    public synchronized g b(i thread) {
        f651l.execute(thread);
        return f655p;
    }

    synchronized g c(f info) {
        f654o.put(info.f626e, info);
        return f655p;
    }

    public void d(String url) {
        ConcurrentHashMap<String, f> concurrentHashMap = f652m;
        f fVarRemove = concurrentHashMap.containsKey(url) ? concurrentHashMap.remove(url) : c.k(this.f656a).h(url);
        if (fVarRemove != null) {
            fVarRemove.f641t = true;
        }
        if (fVarRemove != null && fVarRemove.f625d != null) {
            File file = new File(fVarRemove.f625d);
            if (file.exists()) {
                file.delete();
            }
        }
        c.k(this.f656a).f(url);
        c.k(this.f656a).j(url);
        n(url);
    }

    public void e(String url) {
        f654o.remove(url);
    }

    public void f() {
        f653n.clear();
    }

    public void g() {
        Iterator<String> it2 = f652m.keySet().iterator();
        while (it2.hasNext()) {
            f fVar = f652m.get(it2.next());
            if (!fVar.f637p.isEmpty()) {
                for (j jVar : fVar.f637p) {
                    c.k(this.f656a).e(jVar);
                    jVar.f676g = true;
                    c.k(this.f656a).c(fVar);
                }
            }
        }
    }

    public void h(String url) {
        l(url, "", "", null, null);
    }

    public void i(String url, g.b listener) {
        l(url, "", "", null, listener);
    }

    public void j(String url, String dir, g.b listener) {
        l(url, dir, "", null, listener);
    }

    public void k(String url, String dir, String name, g.b listener) {
        l(url, dir, name, null, listener);
    }

    public synchronized void l(String url, String dir, String name, List<e> headers, g.b listener) {
        f fVarH;
        boolean z10 = false;
        boolean z11 = listener != null;
        if (TextUtils.isEmpty(url)) {
            if (z11) {
                listener.g(url, 2, "Url can not be null.");
            }
            return;
        }
        if (!k.d(this.f656a)) {
            if (z11) {
                listener.g(url, 0, "Network is not available.");
            }
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("TASK_DLING.size=");
        ConcurrentHashMap<String, f> concurrentHashMap = f652m;
        sb2.append(concurrentHashMap.size());
        sb2.append(";dlStart.url=");
        sb2.append(url);
        for (String str : concurrentHashMap.keySet()) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("key=");
            sb3.append(str);
        }
        ConcurrentHashMap<String, f> concurrentHashMap2 = f652m;
        if (concurrentHashMap2.get(url) != null) {
            return;
        }
        if (concurrentHashMap2.containsKey(url)) {
            return;
        }
        ConcurrentHashMap<String, f> concurrentHashMap3 = f654o;
        if (concurrentHashMap3.containsKey(url)) {
            boolean z12 = cn.aigestudio.downloader.bizs.a.f557a;
            fVarH = concurrentHashMap3.remove(url);
        } else {
            boolean z13 = cn.aigestudio.downloader.bizs.a.f557a;
            fVarH = c.k(this.f656a).h(url);
            if (fVarH != null) {
                boolean z14 = cn.aigestudio.downloader.bizs.a.f557a;
                fVarH.f637p.clear();
                fVarH.f637p.addAll(c.k(this.f656a).g(url));
                if (fVarH.f637p.size() == 0) {
                    fVarH = null;
                }
            }
        }
        if (fVarH == null) {
            boolean z15 = cn.aigestudio.downloader.bizs.a.f557a;
            fVarH = new f();
            fVarH.f626e = url;
            fVarH.f627f = url;
            if (TextUtils.isEmpty(dir)) {
                dir = this.f656a.getCacheDir().getAbsolutePath();
            }
            fVarH.f625d = dir.replace(".zip", "");
            fVarH.f624c = name;
        } else {
            fVarH.f631j = true;
            Iterator<j> it2 = fVarH.f637p.iterator();
            while (it2.hasNext()) {
                it2.next().f674e = false;
            }
        }
        fVarH.f629h = 0;
        fVarH.f636o = k.c(headers, fVarH);
        fVarH.f638q = listener;
        fVarH.f630i = z11;
        ConcurrentHashMap<String, f> concurrentHashMap4 = f652m;
        if (concurrentHashMap4.size() >= this.f657b) {
            boolean z16 = cn.aigestudio.downloader.bizs.a.f557a;
            Iterator<f> it3 = f653n.iterator();
            while (it3.hasNext()) {
                if (it3.next().f626e.equals(fVarH.f626e)) {
                    z10 = true;
                }
            }
            if (!z10) {
                f653n.add(fVarH);
            }
            if (z11) {
                listener.b(url);
            }
            if (cn.aigestudio.downloader.bizs.a.f557a) {
                StringBuilder sb4 = new StringBuilder();
                sb4.append("TASK_PREPARE size is ");
                sb4.append(f653n.size());
            }
        } else {
            if (cn.aigestudio.downloader.bizs.a.f557a) {
                StringBuilder sb5 = new StringBuilder();
                sb5.append("Prepare download from ");
                sb5.append(fVarH.f626e);
            }
            if (z11) {
                listener.onPrepare();
            }
            concurrentHashMap4.put(url, fVarH);
            f650k.execute(new h(this.f656a, fVarH));
        }
    }

    public synchronized boolean m(String url) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("mehtod dlStop() called.url=");
        sb2.append(url);
        Iterator<f> it2 = f653n.iterator();
        while (it2.hasNext()) {
            f next = it2.next();
            if (next.f626e.equals(url)) {
                it2.remove();
                if (next.f630i) {
                    next.f638q.e(url, -2L);
                    return true;
                }
            }
        }
        ConcurrentHashMap<String, f> concurrentHashMap = f652m;
        if (concurrentHashMap.containsKey(url)) {
            f fVar = concurrentHashMap.get(url);
            if (!fVar.f637p.isEmpty()) {
                Iterator<j> it3 = fVar.f637p.iterator();
                while (it3.hasNext()) {
                    it3.next().f674e = true;
                }
                return true;
            }
            fVar.f640s = true;
        }
        return false;
    }

    public synchronized void n(String url) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("mehtod dlStopDel() called.url=");
        sb2.append(url);
        Iterator<f> it2 = f653n.iterator();
        while (it2.hasNext()) {
            f next = it2.next();
            if (next.f626e.equals(url)) {
                it2.remove();
                if (next.f630i) {
                    next.f638q.e(url, -1L);
                }
            }
        }
        ConcurrentHashMap<String, f> concurrentHashMap = f652m;
        if (concurrentHashMap.containsKey(url)) {
            f fVar = concurrentHashMap.get(url);
            if (!fVar.f637p.isEmpty()) {
                Iterator<j> it3 = fVar.f637p.iterator();
                while (it3.hasNext()) {
                    it3.next().f674e = true;
                }
            }
        }
        f654o.remove(url);
    }

    @Deprecated
    public c o() {
        return c.k(this.f656a);
    }

    public f p(String url) {
        return c.k(this.f656a).h(url);
    }

    public void r(DownloadTask task) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("method recoveryTaskInfo() called.url=");
        sb2.append(task.getUrl());
        f652m.clear();
        f654o.clear();
        f fVarH = c.k(this.f656a).h(task.getUrl());
        if (fVarH == null) {
            c.k(this.f656a).j(task.getUrl());
            return;
        }
        List<j> listG = c.k(this.f656a).g(task.getUrl());
        File file = new File(fVarH.f625d);
        StringBuilder sb3 = new StringBuilder();
        sb3.append("check file :");
        sb3.append(fVarH.f625d);
        if (file.exists() && file.isFile()) {
            fVarH.f623b.set(file.length());
            c.k(this.f656a).c(fVarH);
        }
        if (listG == null || listG.size() <= 0) {
            return;
        }
        listG.get(0).f672c = fVarH.f623b.get();
        listG.get(0).f676g = true;
        c.k(this.f656a).e(listG.get(0));
    }

    synchronized g s(String url, int type) {
        List<j> list;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("removeDLTask() called.url=");
        sb2.append(url);
        sb2.append(";type=");
        sb2.append(type);
        f fVarRemove = f652m.remove(url);
        if (fVarRemove != null && (list = fVarRemove.f637p) != null && list.size() > 0) {
            Iterator<j> it2 = fVarRemove.f637p.iterator();
            while (it2.hasNext()) {
                it2.next().f674e = true;
            }
        }
        return f655p;
    }

    public g t(boolean isDebug) {
        cn.aigestudio.downloader.bizs.a.f557a = isDebug;
        return f655p;
    }

    public g u(int maxTask) {
        this.f657b = maxTask;
        return f655p;
    }
}
