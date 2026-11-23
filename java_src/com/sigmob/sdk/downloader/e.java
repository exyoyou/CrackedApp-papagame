package com.sigmob.sdk.downloader;

import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.Executor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public class e extends com.sigmob.sdk.downloader.core.listener.b implements Runnable {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final int f80708e = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Executor f80709g = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 30, TimeUnit.SECONDS, new SynchronousQueue(), com.sigmob.sdk.downloader.core.c.a("FileDownload DynamicSerial", false));

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f80710i = "DownloadSerialQueue";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    volatile boolean f80711a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    volatile boolean f80712b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    volatile boolean f80713c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    volatile f f80714d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    com.sigmob.sdk.downloader.core.listener.f f80715f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final ArrayList<f> f80716h;

    public e() {
        this(null);
    }

    public synchronized void a() {
        if (this.f80713c) {
            com.sigmob.sdk.downloader.core.c.a(f80710i, "require pause this queue(remain " + this.f80716h.size() + "), butit has already been paused");
            return;
        }
        this.f80713c = true;
        if (this.f80714d != null) {
            this.f80714d.E();
            this.f80716h.add(0, this.f80714d);
            this.f80714d = null;
        }
    }

    @Override // com.sigmob.sdk.downloader.c
    public void a_(f task) {
        this.f80714d = task;
    }

    public synchronized void b() {
        if (this.f80713c) {
            this.f80713c = false;
            if (!this.f80716h.isEmpty() && !this.f80712b) {
                this.f80712b = true;
                f();
            }
            return;
        }
        com.sigmob.sdk.downloader.core.c.a(f80710i, "require resume this queue(remain " + this.f80716h.size() + "), but it is still running");
    }

    public int c() {
        if (this.f80714d != null) {
            return this.f80714d.c();
        }
        return 0;
    }

    public int d() {
        return this.f80716h.size();
    }

    public synchronized f[] e() {
        f[] fVarArr;
        this.f80711a = true;
        if (this.f80714d != null) {
            this.f80714d.E();
        }
        fVarArr = new f[this.f80716h.size()];
        this.f80716h.toArray(fVarArr);
        this.f80716h.clear();
        return fVarArr;
    }

    void f() {
        f80709g.execute(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        f fVarRemove;
        while (!this.f80711a) {
            synchronized (this) {
                if (!this.f80716h.isEmpty() && !this.f80713c) {
                    fVarRemove = this.f80716h.remove(0);
                }
                this.f80714d = null;
                this.f80712b = false;
                return;
            }
            fVarRemove.c(this.f80715f);
        }
    }

    public e(c listener) {
        this(listener, new ArrayList());
    }

    public void a(c listener) {
        this.f80715f = new com.sigmob.sdk.downloader.core.listener.f.a().a(this).a(listener).a();
    }

    public synchronized void b(f task) {
        this.f80716h.add(task);
        Collections.sort(this.f80716h);
        if (!this.f80713c && !this.f80712b) {
            this.f80712b = true;
            f();
        }
    }

    e(c listener, ArrayList<f> taskList) {
        this.f80711a = false;
        this.f80712b = false;
        this.f80713c = false;
        this.f80715f = new com.sigmob.sdk.downloader.core.listener.f.a().a(this).a(listener).a();
        this.f80716h = taskList;
    }

    @Override // com.sigmob.sdk.downloader.c
    public synchronized void a(f task, com.sigmob.sdk.downloader.core.cause.a cause, Exception realCause) {
        if (cause != com.sigmob.sdk.downloader.core.cause.a.CANCELED && task == this.f80714d) {
            this.f80714d = null;
        }
    }
}
