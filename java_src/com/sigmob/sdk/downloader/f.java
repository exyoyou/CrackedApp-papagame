package com.sigmob.sdk.downloader;

import android.net.Uri;
import android.util.SparseArray;
import com.sigmob.sdk.base.common.aj;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes3.dex */
public class f extends com.sigmob.sdk.downloader.core.a implements Comparable<f> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f80717a = 3;
    private final File A;
    private final File B;
    private File C;
    private String D;
    private File E;
    private int F;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f80718b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile long f80719c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f80720d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Uri f80721e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Map<String, List<String>> f80722h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private com.sigmob.sdk.downloader.core.breakpoint.c f80723i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f80724j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final int f80725k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final int f80726l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final int f80727m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final int f80728n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Integer f80729o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Boolean f80730p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final boolean f80731q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final boolean f80732r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final int f80733s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private volatile com.sigmob.sdk.downloader.c f80734t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private volatile SparseArray<Object> f80735u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private Object f80736v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final boolean f80737w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final AtomicLong f80738x = new AtomicLong();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final boolean f80739y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final com.sigmob.sdk.downloader.core.download.g.a f80740z;

    public static class a {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final int f80741c = 4096;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final int f80742d = 16384;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final int f80743e = 65536;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final int f80744f = 2000;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public static final boolean f80745g = true;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final int f80746h = 1000;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final boolean f80747i = true;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final boolean f80748j = false;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final String f80749a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Uri f80750b;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private volatile Map<String, List<String>> f80751k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private int f80752l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private int f80753m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private int f80754n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private int f80755o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private int f80756p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private boolean f80757q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private int f80758r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private String f80759s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private boolean f80760t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private boolean f80761u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        private Boolean f80762v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        private Integer f80763w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        private Boolean f80764x;

        public a(String url, Uri uri) {
            this.f80753m = 4096;
            this.f80754n = 16384;
            this.f80755o = 65536;
            this.f80756p = 2000;
            this.f80757q = true;
            this.f80758r = 1000;
            this.f80760t = true;
            this.f80761u = false;
            this.f80749a = url;
            this.f80750b = uri;
        }

        public a a(int connectionCount) {
            this.f80763w = Integer.valueOf(connectionCount);
            return this;
        }

        public a b(int minIntervalMillisCallbackProcess) {
            this.f80758r = minIntervalMillisCallbackProcess;
            return this;
        }

        public a c(int priority) {
            this.f80752l = priority;
            return this;
        }

        public a d(int readBufferSize) {
            if (readBufferSize < 0) {
                throw new IllegalArgumentException("Value must be positive!");
            }
            this.f80753m = readBufferSize;
            return this;
        }

        public a e(int flushBufferSize) {
            if (flushBufferSize < 0) {
                throw new IllegalArgumentException("Value must be positive!");
            }
            this.f80754n = flushBufferSize;
            return this;
        }

        public a f(int syncBufferSize) {
            if (syncBufferSize < 0) {
                throw new IllegalArgumentException("Value must be positive!");
            }
            this.f80755o = syncBufferSize;
            return this;
        }

        public a g(int syncBufferIntervalMillis) {
            if (syncBufferIntervalMillis < 0) {
                throw new IllegalArgumentException("Value must be positive!");
            }
            this.f80756p = syncBufferIntervalMillis;
            return this;
        }

        public a(String url, File file) {
            this.f80753m = 4096;
            this.f80754n = 16384;
            this.f80755o = 65536;
            this.f80756p = 2000;
            this.f80757q = true;
            this.f80758r = 1000;
            this.f80760t = true;
            this.f80761u = false;
            this.f80749a = url;
            this.f80750b = Uri.fromFile(file);
        }

        public a a(Boolean filenameFromResponse) {
            if (!com.sigmob.sdk.downloader.core.c.b(this.f80750b)) {
                throw new IllegalArgumentException("Uri isn't file scheme we can't let filename from response");
            }
            this.f80762v = filenameFromResponse;
            return this;
        }

        public a b(boolean autoCallbackToUIThread) {
            this.f80757q = autoCallbackToUIThread;
            return this;
        }

        public a c(boolean passIfAlreadyCompleted) {
            this.f80760t = passIfAlreadyCompleted;
            return this;
        }

        public a d(boolean wifiRequired) {
            this.f80761u = wifiRequired;
            return this;
        }

        public a(String url, String parentPath, String filename) {
            this(url, Uri.fromFile(new File(parentPath)));
            if (com.sigmob.sdk.downloader.core.c.a((CharSequence) filename)) {
                this.f80762v = Boolean.TRUE;
            } else {
                this.f80759s = filename;
            }
        }

        public a a(String filename) {
            this.f80759s = filename;
            return this;
        }

        public a a(Map<String, List<String>> headerMapFields) {
            this.f80751k = headerMapFields;
            return this;
        }

        public a a(boolean preAllocateLength) {
            this.f80764x = Boolean.valueOf(preAllocateLength);
            return this;
        }

        public f a() {
            return new f(this.f80749a, this.f80750b, this.f80752l, this.f80753m, this.f80754n, this.f80755o, this.f80756p, this.f80757q, this.f80758r, this.f80751k, this.f80759s, this.f80760t, this.f80761u, this.f80762v, this.f80763w, this.f80764x);
        }

        public synchronized void a(String key, String value) {
            if (this.f80751k == null) {
                this.f80751k = new HashMap();
            }
            List<String> arrayList = this.f80751k.get(key);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.f80751k.put(key, arrayList);
            }
            arrayList.add(value);
        }
    }

    public static class b extends com.sigmob.sdk.downloader.core.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int f80765a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final String f80766b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final File f80767c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final String f80768d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final File f80769e;

        public b(int id2) {
            this.f80765a = id2;
            this.f80766b = "";
            File file = com.sigmob.sdk.downloader.core.a.f80355g;
            this.f80767c = file;
            this.f80768d = null;
            this.f80769e = file;
        }

        @Override // com.sigmob.sdk.downloader.core.a
        public int c() {
            return this.f80765a;
        }

        @Override // com.sigmob.sdk.downloader.core.a
        public String d() {
            return this.f80768d;
        }

        @Override // com.sigmob.sdk.downloader.core.a
        public String i() {
            return this.f80766b;
        }

        @Override // com.sigmob.sdk.downloader.core.a
        protected File k() {
            return this.f80767c;
        }

        @Override // com.sigmob.sdk.downloader.core.a
        public File l() {
            return this.f80769e;
        }

        public b(int id2, f task) {
            this.f80765a = id2;
            this.f80766b = task.f80720d;
            this.f80769e = task.l();
            this.f80767c = task.A;
            this.f80768d = task.d();
        }
    }

    public static class c {
        public static long a(f task) {
            return task.z();
        }

        public static void a(f task, long lastCallbackProcessTimestamp) {
            task.a(lastCallbackProcessTimestamp);
        }

        public static void a(f task, com.sigmob.sdk.downloader.core.breakpoint.c info) {
            task.a(info);
        }
    }

    public f(String url, Uri uri, int priority, int readBufferSize, int flushBufferSize, int syncBufferSize, int syncBufferIntervalMills, boolean autoCallbackToUIThread, int minIntervalMillisCallbackProcess, Map<String, List<String>> headerMapFields, String filename, boolean passIfAlreadyCompleted, boolean wifiRequired, Boolean filenameFromResponse, Integer connectionCount, Boolean isPreAllocateLength) {
        Boolean bool;
        String name = filename;
        this.f80720d = url;
        this.f80721e = uri;
        this.f80724j = priority;
        this.f80725k = readBufferSize;
        this.f80726l = flushBufferSize;
        this.f80727m = syncBufferSize;
        this.f80728n = syncBufferIntervalMills;
        this.f80732r = autoCallbackToUIThread;
        this.f80733s = minIntervalMillisCallbackProcess;
        this.f80722h = headerMapFields;
        this.f80731q = passIfAlreadyCompleted;
        this.f80737w = wifiRequired;
        this.f80729o = connectionCount;
        this.f80730p = isPreAllocateLength;
        if (com.sigmob.sdk.downloader.core.c.b(uri)) {
            File file = new File(uri.getPath());
            if (filenameFromResponse != null) {
                if (filenameFromResponse.booleanValue()) {
                    if (file.exists() && file.isFile()) {
                        throw new IllegalArgumentException("If you want filename from response please make sure you provide path is directory " + file.getPath());
                    }
                    if (!com.sigmob.sdk.downloader.core.c.a((CharSequence) filename)) {
                        com.sigmob.sdk.downloader.core.c.a("DownloadTask", "Discard filename[" + name + "] because you set filenameFromResponse=true");
                        name = null;
                    }
                } else {
                    if (file.exists() && file.isDirectory() && com.sigmob.sdk.downloader.core.c.a((CharSequence) filename)) {
                        throw new IllegalArgumentException("If you don't want filename from response please make sure you have already provided valid filename or not directory path " + file.getPath());
                    }
                    if (com.sigmob.sdk.downloader.core.c.a((CharSequence) filename)) {
                        name = file.getName();
                        this.B = com.sigmob.sdk.downloader.core.c.a(file);
                    }
                    bool = filenameFromResponse;
                }
                this.B = file;
                bool = filenameFromResponse;
            } else {
                if (file.exists() && file.isDirectory()) {
                    bool = Boolean.TRUE;
                } else {
                    bool = Boolean.FALSE;
                    if (file.exists()) {
                        if (!com.sigmob.sdk.downloader.core.c.a((CharSequence) filename) && !file.getName().equals(name)) {
                            throw new IllegalArgumentException("Uri already provided filename!");
                        }
                    } else if (com.sigmob.sdk.downloader.core.c.a((CharSequence) filename)) {
                    }
                    name = file.getName();
                    file = com.sigmob.sdk.downloader.core.c.a(file);
                }
                this.B = file;
            }
            this.f80739y = bool.booleanValue();
        } else {
            this.f80739y = false;
            this.B = new File(uri.getPath());
        }
        if (com.sigmob.sdk.downloader.core.c.a((CharSequence) name)) {
            this.f80740z = new com.sigmob.sdk.downloader.core.download.g.a();
            this.A = this.B;
        } else {
            this.f80740z = new com.sigmob.sdk.downloader.core.download.g.a(name);
            File file2 = new File(this.B, name);
            this.C = file2;
            this.A = file2;
        }
        this.f80718b = g.j().c().b(this);
    }

    public synchronized void A() {
        this.f80736v = null;
    }

    public void B() {
        if (System.currentTimeMillis() - this.f80719c < 500) {
            aj.a(com.sigmob.sdk.b.e(), "操作太频繁", 0).show();
        } else {
            this.f80719c = System.currentTimeMillis();
            g.j().a().a(this);
        }
    }

    public boolean C() {
        int i10 = this.F;
        this.F = i10 + 1;
        if (i10 >= 3) {
            return false;
        }
        g.j().a().a(this);
        return true;
    }

    public void D() {
        g.j().a().b(this);
    }

    public void E() {
        if (System.currentTimeMillis() - this.f80719c < 500) {
            aj.a(com.sigmob.sdk.b.e(), "操作太频繁", 0).show();
        } else {
            this.f80719c = System.currentTimeMillis();
            g.j().a().a((com.sigmob.sdk.downloader.core.a) this);
        }
    }

    public com.sigmob.sdk.downloader.c F() {
        return this.f80734t;
    }

    public int G() {
        return this.f80724j;
    }

    public a H() {
        return a(this.f80720d, this.f80721e);
    }

    public a a(String anotherUrl, Uri anotherUri) {
        a aVarC = new a(anotherUrl, anotherUri).c(this.f80724j).d(this.f80725k).e(this.f80726l).f(this.f80727m).g(this.f80728n).b(this.f80732r).b(this.f80733s).a(this.f80722h).c(this.f80731q);
        if (com.sigmob.sdk.downloader.core.c.b(anotherUri) && !new File(anotherUri.getPath()).isFile() && com.sigmob.sdk.downloader.core.c.b(this.f80721e) && this.f80740z.a() != null && !new File(this.f80721e.getPath()).getName().equals(this.f80740z.a())) {
            aVarC.a(this.f80740z.a());
        }
        return aVarC;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public int compareTo(f o10) {
        return o10.G() - G();
    }

    @Override // com.sigmob.sdk.downloader.core.a
    public int c() {
        return this.f80718b;
    }

    public b d(int id2) {
        return new b(id2, this);
    }

    public boolean e() {
        return this.f80731q;
    }

    public boolean equals(Object obj) {
        if (super.equals(obj)) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        if (fVar.f80718b == this.f80718b) {
            return true;
        }
        return a((com.sigmob.sdk.downloader.core.a) fVar);
    }

    public boolean f() {
        return this.f80737w;
    }

    public com.sigmob.sdk.downloader.core.download.g.a g() {
        return this.f80740z;
    }

    public Uri h() {
        return this.f80721e;
    }

    public int hashCode() {
        return (this.f80720d + this.A.toString() + this.f80740z.a()).hashCode();
    }

    @Override // com.sigmob.sdk.downloader.core.a
    public String i() {
        return this.f80720d;
    }

    public String j() {
        return this.D;
    }

    @Override // com.sigmob.sdk.downloader.core.a
    protected File k() {
        return this.A;
    }

    @Override // com.sigmob.sdk.downloader.core.a
    public File l() {
        return this.B;
    }

    public File m() {
        String str = this.f80740z.a() + ".tmp";
        if (str == null) {
            return null;
        }
        if (this.E == null) {
            this.E = new File(this.B, str);
        }
        return this.E;
    }

    public File n() {
        String strA = this.f80740z.a();
        if (strA == null) {
            return null;
        }
        if (this.C == null) {
            this.C = new File(this.B, strA);
        }
        return this.C;
    }

    public int o() {
        return this.f80725k;
    }

    public int p() {
        return this.f80726l;
    }

    public int q() {
        return this.f80727m;
    }

    public int r() {
        return this.f80728n;
    }

    public boolean s() {
        return this.f80732r;
    }

    public int t() {
        return this.f80733s;
    }

    public String toString() {
        return super.toString() + "@" + this.f80718b + "@" + this.f80720d + "@" + this.B.toString() + net.lingala.zip4j.util.e.F0 + this.f80740z.a();
    }

    public Integer u() {
        return this.f80729o;
    }

    public Boolean v() {
        return this.f80730p;
    }

    public int w() {
        com.sigmob.sdk.downloader.core.breakpoint.c cVar = this.f80723i;
        if (cVar == null) {
            return 0;
        }
        return cVar.g();
    }

    public Object x() {
        return this.f80736v;
    }

    public com.sigmob.sdk.downloader.core.breakpoint.c y() {
        if (this.f80723i == null) {
            this.f80723i = g.j().c().a(this.f80718b);
        }
        return this.f80723i;
    }

    long z() {
        return this.f80738x.get();
    }

    public static b c(int id2) {
        return new b(id2);
    }

    public synchronized f a(int key, Object value) {
        if (this.f80735u == null) {
            synchronized (this) {
                if (this.f80735u == null) {
                    this.f80735u = new SparseArray<>();
                }
            }
        }
        this.f80735u.put(key, value);
        return this;
    }

    public Map<String, List<String>> b() {
        return this.f80722h;
    }

    public Object a(int key) {
        if (this.f80735u == null) {
            return null;
        }
        return this.f80735u.get(key);
    }

    public synchronized void b(int key) {
        if (this.f80735u != null) {
            this.f80735u.remove(key);
        }
    }

    @Override // com.sigmob.sdk.downloader.core.a
    public String d() {
        return this.f80740z.a() + ".tmp";
    }

    void a(long lastCallbackProcessTimestamp) {
        this.f80738x.set(lastCallbackProcessTimestamp);
    }

    public void b(com.sigmob.sdk.downloader.c listener) {
        this.f80734t = listener;
        g.j().a().a(this);
    }

    public void c(com.sigmob.sdk.downloader.c listener) {
        this.f80734t = listener;
        g.j().a().b(this);
    }

    public void a(com.sigmob.sdk.downloader.c listener) {
        this.f80734t = listener;
    }

    void a(com.sigmob.sdk.downloader.core.breakpoint.c info) {
        this.f80723i = info;
    }

    public void a(f oldTask) {
        this.f80736v = oldTask.f80736v;
        this.f80735u = oldTask.f80735u;
    }

    public void a(Object tag) {
        this.f80736v = tag;
    }

    public void a(String redirectUrl) {
        this.D = redirectUrl;
    }

    public static void a(f[] tasks) {
        g.j().a().a((com.sigmob.sdk.downloader.core.a[]) tasks);
    }

    public static void a(f[] tasks, com.sigmob.sdk.downloader.c listener) {
        for (f fVar : tasks) {
            fVar.f80734t = listener;
        }
        g.j().a().a(tasks);
    }

    public boolean a() {
        return this.f80739y;
    }
}
