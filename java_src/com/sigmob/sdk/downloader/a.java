package com.sigmob.sdk.downloader;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f80325c = "DownloadContext";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Executor f80326d = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 30, TimeUnit.SECONDS, new SynchronousQueue(), com.sigmob.sdk.downloader.core.c.a("FileDownload Serial", false));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    volatile boolean f80327a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final com.sigmob.sdk.downloader.b f80328b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final f[] f80329e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final d f80330f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Handler f80331g;

    /* JADX INFO: renamed from: com.sigmob.sdk.downloader.a$a, reason: collision with other inner class name */
    public static class C1024a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final a f80336a;

        C1024a(a context) {
            this.f80336a = context;
        }

        public C1024a a(f oldTask, f newTask) {
            f[] fVarArr = this.f80336a.f80329e;
            for (int i10 = 0; i10 < fVarArr.length; i10++) {
                if (fVarArr[i10] == oldTask) {
                    fVarArr[i10] = newTask;
                }
            }
            return this;
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final ArrayList<f> f80337a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final d f80338b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private com.sigmob.sdk.downloader.b f80339c;

        public b() {
            this(new d());
        }

        public b a(com.sigmob.sdk.downloader.b listener) {
            this.f80339c = listener;
            return this;
        }

        public void b(f task) {
            this.f80337a.remove(task);
        }

        public b(d set) {
            this(set, new ArrayList());
        }

        public b a(f task) {
            int iIndexOf = this.f80337a.indexOf(task);
            if (iIndexOf >= 0) {
                this.f80337a.set(iIndexOf, task);
            } else {
                this.f80337a.add(task);
            }
            return this;
        }

        public b(d set, ArrayList<f> taskArrayList) {
            this.f80338b = set;
            this.f80337a = taskArrayList;
        }

        public a a() {
            return new a((f[]) this.f80337a.toArray(new f[this.f80337a.size()]), this.f80339c, this.f80338b);
        }

        public f a(f.a taskBuilder) {
            if (this.f80338b.f80343a != null) {
                taskBuilder.a(this.f80338b.f80343a);
            }
            if (this.f80338b.f80345c != null) {
                taskBuilder.d(this.f80338b.f80345c.intValue());
            }
            if (this.f80338b.f80346d != null) {
                taskBuilder.e(this.f80338b.f80346d.intValue());
            }
            if (this.f80338b.f80347e != null) {
                taskBuilder.f(this.f80338b.f80347e.intValue());
            }
            if (this.f80338b.f80352j != null) {
                taskBuilder.d(this.f80338b.f80352j.booleanValue());
            }
            if (this.f80338b.f80348f != null) {
                taskBuilder.g(this.f80338b.f80348f.intValue());
            }
            if (this.f80338b.f80349g != null) {
                taskBuilder.b(this.f80338b.f80349g.booleanValue());
            }
            if (this.f80338b.f80350h != null) {
                taskBuilder.b(this.f80338b.f80350h.intValue());
            }
            if (this.f80338b.f80351i != null) {
                taskBuilder.c(this.f80338b.f80351i.booleanValue());
            }
            f fVarA = taskBuilder.a();
            if (this.f80338b.f80353k != null) {
                fVarA.a(this.f80338b.f80353k);
            }
            this.f80337a.add(fVarA);
            return fVarA;
        }

        public f a(String url) {
            if (this.f80338b.f80344b != null) {
                return a(new f.a(url, this.f80338b.f80344b).a(Boolean.TRUE));
            }
            throw new IllegalArgumentException("If you want to bind only with url, you have to provide parentPath on QueueSet!");
        }

        public void a(int id2) {
            for (f fVar : (List) this.f80337a.clone()) {
                if (fVar.c() == id2) {
                    this.f80337a.remove(fVar);
                }
            }
        }
    }

    static class c extends com.sigmob.sdk.downloader.core.listener.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final AtomicInteger f80340a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final com.sigmob.sdk.downloader.b f80341b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final a f80342c;

        c(a context, com.sigmob.sdk.downloader.b contextListener, int taskCount) {
            this.f80340a = new AtomicInteger(taskCount);
            this.f80341b = contextListener;
            this.f80342c = context;
        }

        @Override // com.sigmob.sdk.downloader.c
        public void a(f task, com.sigmob.sdk.downloader.core.cause.a cause, Exception realCause) {
            int iDecrementAndGet = this.f80340a.decrementAndGet();
            this.f80341b.a(this.f80342c, task, cause, realCause, iDecrementAndGet);
            if (iDecrementAndGet <= 0) {
                this.f80341b.a(this.f80342c);
                com.sigmob.sdk.downloader.core.c.b(a.f80325c, "taskEnd and remainCount " + iDecrementAndGet);
            }
        }

        @Override // com.sigmob.sdk.downloader.c
        public void a_(f task) {
        }
    }

    public static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Map<String, List<String>> f80343a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Uri f80344b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Integer f80345c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Integer f80346d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Integer f80347e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private Integer f80348f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private Boolean f80349g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private Integer f80350h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private Boolean f80351i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private Boolean f80352j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private Object f80353k;

        public Uri b() {
            return this.f80344b;
        }

        public int c() {
            Integer num = this.f80345c;
            if (num == null) {
                return 4096;
            }
            return num.intValue();
        }

        public d d(int syncBufferIntervalMillis) {
            this.f80348f = Integer.valueOf(syncBufferIntervalMillis);
            return this;
        }

        public int e() {
            Integer num = this.f80346d;
            if (num == null) {
                return 16384;
            }
            return num.intValue();
        }

        public int f() {
            Integer num = this.f80347e;
            if (num == null) {
                return 65536;
            }
            return num.intValue();
        }

        public int g() {
            Integer num = this.f80348f;
            if (num == null) {
                return 2000;
            }
            return num.intValue();
        }

        public int i() {
            Integer num = this.f80350h;
            if (num == null) {
                return 1000;
            }
            return num.intValue();
        }

        public b l() {
            return new b(this);
        }

        public d a(int readBufferSize) {
            this.f80345c = Integer.valueOf(readBufferSize);
            return this;
        }

        public d b(int flushBufferSize) {
            this.f80346d = Integer.valueOf(flushBufferSize);
            return this;
        }

        public d c(int syncBufferSize) {
            this.f80347e = Integer.valueOf(syncBufferSize);
            return this;
        }

        public boolean h() {
            Boolean bool = this.f80349g;
            if (bool == null) {
                return true;
            }
            return bool.booleanValue();
        }

        public Object j() {
            return this.f80353k;
        }

        public boolean k() {
            Boolean bool = this.f80351i;
            if (bool == null) {
                return true;
            }
            return bool.booleanValue();
        }

        public d a(Uri uri) {
            this.f80344b = uri;
            return this;
        }

        public d b(Boolean autoCallbackToUIThread) {
            this.f80349g = autoCallbackToUIThread;
            return this;
        }

        public boolean d() {
            Boolean bool = this.f80352j;
            if (bool == null) {
                return false;
            }
            return bool.booleanValue();
        }

        public d a(File parentPathFile) {
            if (parentPathFile.isFile()) {
                throw new IllegalArgumentException("parent path only accept directory path");
            }
            this.f80344b = Uri.fromFile(parentPathFile);
            return this;
        }

        public d a(Boolean wifiRequired) {
            this.f80352j = wifiRequired;
            return this;
        }

        public d a(Integer minIntervalMillisCallbackProcess) {
            this.f80350h = minIntervalMillisCallbackProcess;
            return this;
        }

        public d a(Object tag) {
            this.f80353k = tag;
            return this;
        }

        public d a(String parentPath) {
            return a(new File(parentPath));
        }

        public d a(boolean passIfAlreadyCompleted) {
            this.f80351i = Boolean.valueOf(passIfAlreadyCompleted);
            return this;
        }

        public Map<String, List<String>> a() {
            return this.f80343a;
        }

        public void a(Map<String, List<String>> headerMapFields) {
            this.f80343a = headerMapFields;
        }
    }

    a(f[] tasks, com.sigmob.sdk.downloader.b contextListener, d set) {
        this.f80327a = false;
        this.f80329e = tasks;
        this.f80328b = contextListener;
        this.f80330f = set;
    }

    public void b(com.sigmob.sdk.downloader.c listener) {
        a(listener, false);
    }

    public C1024a c() {
        return new C1024a(this);
    }

    public void d() {
        if (this.f80327a) {
            g.j().a().a((com.sigmob.sdk.downloader.core.a[]) this.f80329e);
        }
        this.f80327a = false;
    }

    public b e() {
        return new b(this.f80330f, new ArrayList(Arrays.asList(this.f80329e))).a(this.f80328b);
    }

    a(f[] tasks, com.sigmob.sdk.downloader.b contextListener, d set, Handler uiHandler) {
        this(tasks, contextListener, set);
        this.f80331g = uiHandler;
    }

    public void a(com.sigmob.sdk.downloader.c listener) {
        a(listener, true);
    }

    public f[] b() {
        return this.f80329e;
    }

    public void a(final com.sigmob.sdk.downloader.c listener, boolean isSerial) {
        long jUptimeMillis = SystemClock.uptimeMillis();
        com.sigmob.sdk.downloader.core.c.b(f80325c, "start " + isSerial);
        this.f80327a = true;
        if (this.f80328b != null) {
            listener = new com.sigmob.sdk.downloader.core.listener.f.a().a(listener).a(new c(this, this.f80328b, this.f80329e.length)).a();
        }
        if (isSerial) {
            final ArrayList arrayList = new ArrayList();
            Collections.addAll(arrayList, this.f80329e);
            Collections.sort(arrayList);
            a(new Runnable() { // from class: com.sigmob.sdk.downloader.a.1
                @Override // java.lang.Runnable
                public void run() {
                    for (f fVar : arrayList) {
                        if (!a.this.a()) {
                            a.this.a(fVar.s());
                            return;
                        }
                        fVar.c(listener);
                    }
                }
            });
        } else {
            f.a(this.f80329e, listener);
        }
        com.sigmob.sdk.downloader.core.c.b(f80325c, "start finish " + isSerial + " " + (SystemClock.uptimeMillis() - jUptimeMillis) + "ms");
    }

    void a(Runnable runnable) {
        f80326d.execute(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean isAutoCallbackToUIThread) {
        com.sigmob.sdk.downloader.b bVar = this.f80328b;
        if (bVar == null) {
            return;
        }
        if (!isAutoCallbackToUIThread) {
            bVar.a(this);
            return;
        }
        if (this.f80331g == null) {
            this.f80331g = new Handler(Looper.getMainLooper());
        }
        this.f80331g.post(new Runnable() { // from class: com.sigmob.sdk.downloader.a.2
            @Override // java.lang.Runnable
            public void run() {
                a aVar = a.this;
                aVar.f80328b.a(aVar);
            }
        });
    }

    public boolean a() {
        return this.f80327a;
    }
}
