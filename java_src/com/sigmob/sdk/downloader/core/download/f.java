package com.sigmob.sdk.downloader.core.download;

import com.sigmob.sdk.downloader.core.breakpoint.j;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes3.dex */
public class f implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final ExecutorService f80593h = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), com.sigmob.sdk.downloader.core.c.a("FileDownload Cancel Block", false));

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f80594i = "DownloadChain";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    long f80599e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    volatile Thread f80600f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f80602j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final com.sigmob.sdk.downloader.f f80603k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final com.sigmob.sdk.downloader.core.breakpoint.c f80604l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final d f80605m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f80606n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private volatile com.sigmob.sdk.downloader.core.connection.a f80607o;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final j f80609q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final List<com.sigmob.sdk.downloader.core.interceptor.c.a> f80595a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final List<com.sigmob.sdk.downloader.core.interceptor.c.b> f80596b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f80597c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f80598d = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final AtomicBoolean f80601g = new AtomicBoolean(false);

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final Runnable f80610r = new Runnable() { // from class: com.sigmob.sdk.downloader.core.download.f.1
        @Override // java.lang.Runnable
        public void run() {
            f.this.m();
        }
    };

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final com.sigmob.sdk.downloader.core.dispatcher.a f80608p = com.sigmob.sdk.downloader.g.j().b();

    private f(int blockIndex, com.sigmob.sdk.downloader.f task, com.sigmob.sdk.downloader.core.breakpoint.c info, d cache, j store) {
        this.f80602j = blockIndex;
        this.f80603k = task;
        this.f80605m = cache;
        this.f80604l = info;
        this.f80609q = store;
    }

    public long a() {
        return this.f80606n;
    }

    public void b() {
        if (this.f80601g.get() || this.f80600f == null) {
            return;
        }
        this.f80600f.interrupt();
    }

    public com.sigmob.sdk.downloader.f c() {
        return this.f80603k;
    }

    public com.sigmob.sdk.downloader.core.breakpoint.c d() {
        return this.f80604l;
    }

    public int e() {
        return this.f80602j;
    }

    public d f() {
        return this.f80605m;
    }

    public com.sigmob.sdk.downloader.core.file.d g() {
        return this.f80605m.a();
    }

    public synchronized com.sigmob.sdk.downloader.core.connection.a h() {
        return this.f80607o;
    }

    public synchronized com.sigmob.sdk.downloader.core.connection.a i() throws IOException {
        if (this.f80605m.k()) {
            throw com.sigmob.sdk.downloader.core.exception.c.f80626a;
        }
        if (this.f80607o == null) {
            String strB = this.f80605m.b();
            if (strB == null) {
                strB = this.f80604l.l();
            }
            com.sigmob.sdk.downloader.core.c.b(f80594i, "create connection on url: " + strB);
            this.f80607o = com.sigmob.sdk.downloader.g.j().d().a(strB);
        }
        return this.f80607o;
    }

    public void j() {
        if (this.f80599e == 0) {
            return;
        }
        this.f80608p.a().b(this.f80603k, this.f80602j, this.f80599e);
        this.f80599e = 0L;
    }

    void k() throws IOException {
        com.sigmob.sdk.downloader.core.dispatcher.a aVarB = com.sigmob.sdk.downloader.g.j().b();
        com.sigmob.sdk.downloader.core.interceptor.d dVar = new com.sigmob.sdk.downloader.core.interceptor.d();
        com.sigmob.sdk.downloader.core.interceptor.a aVar = new com.sigmob.sdk.downloader.core.interceptor.a();
        this.f80595a.add(dVar);
        this.f80595a.add(aVar);
        this.f80595a.add(new com.sigmob.sdk.downloader.core.interceptor.connect.b());
        this.f80595a.add(new com.sigmob.sdk.downloader.core.interceptor.connect.a());
        this.f80597c = 0;
        com.sigmob.sdk.downloader.core.connection.a.InterfaceC1025a interfaceC1025aN = n();
        if (this.f80605m.k()) {
            throw com.sigmob.sdk.downloader.core.exception.c.f80626a;
        }
        aVarB.a().a(this.f80603k, this.f80602j, a());
        com.sigmob.sdk.downloader.core.interceptor.b bVar = new com.sigmob.sdk.downloader.core.interceptor.b(this.f80602j, interfaceC1025aN.e(), g(), this.f80603k);
        this.f80596b.add(dVar);
        this.f80596b.add(aVar);
        this.f80596b.add(bVar);
        this.f80598d = 0;
        aVarB.a().c(this.f80603k, this.f80602j, o());
    }

    public void l() {
        this.f80597c = 1;
        m();
    }

    public synchronized void m() {
        if (this.f80607o != null) {
            this.f80607o.b();
            com.sigmob.sdk.downloader.core.c.b(f80594i, "release connection " + this.f80607o + " task[" + this.f80603k.c() + "] block[" + this.f80602j + "]");
        }
        this.f80607o = null;
    }

    public com.sigmob.sdk.downloader.core.connection.a.InterfaceC1025a n() throws IOException {
        if (this.f80605m.k()) {
            throw com.sigmob.sdk.downloader.core.exception.c.f80626a;
        }
        List<com.sigmob.sdk.downloader.core.interceptor.c.a> list = this.f80595a;
        int i10 = this.f80597c;
        this.f80597c = i10 + 1;
        return list.get(i10).a(this);
    }

    public long o() throws IOException {
        if (this.f80605m.k()) {
            throw com.sigmob.sdk.downloader.core.exception.c.f80626a;
        }
        List<com.sigmob.sdk.downloader.core.interceptor.c.b> list = this.f80596b;
        int i10 = this.f80598d;
        this.f80598d = i10 + 1;
        return list.get(i10).b(this);
    }

    public long p() throws IOException {
        if (this.f80598d == this.f80596b.size()) {
            this.f80598d--;
        }
        return o();
    }

    boolean q() {
        return this.f80601g.get();
    }

    public j r() {
        return this.f80609q;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (q()) {
            throw new IllegalAccessError("The chain has been finished!");
        }
        this.f80600f = Thread.currentThread();
        try {
            k();
        } catch (IOException unused) {
        } finally {
            this.f80601g.set(true);
            s();
        }
    }

    void s() {
        f80593h.execute(this.f80610r);
    }

    static f a(int blockIndex, com.sigmob.sdk.downloader.f task, com.sigmob.sdk.downloader.core.breakpoint.c info, d cache, j store) {
        return new f(blockIndex, task, info, cache, store);
    }

    public void b(long increaseBytes) {
        this.f80599e += increaseBytes;
    }

    public void a(long responseContentLength) {
        this.f80606n = responseContentLength;
    }

    public synchronized void a(com.sigmob.sdk.downloader.core.connection.a connection) {
        this.f80607o = connection;
    }

    public void a(String location) {
        this.f80605m.a(location);
    }
}
