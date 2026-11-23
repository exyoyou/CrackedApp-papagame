package com.sigmob.sdk.downloader.core.download;

import android.os.SystemClock;
import com.sigmob.sdk.downloader.core.breakpoint.j;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public class e extends com.sigmob.sdk.downloader.core.b implements Comparable<e> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final int f80582b = 3;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final ExecutorService f80583j = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), com.sigmob.sdk.downloader.core.c.a("FileDownload Block", false));

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final String f80584k = "DownloadCall";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.sigmob.sdk.downloader.f f80585c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f80586d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final ArrayList<f> f80587e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    volatile d f80588f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    volatile boolean f80589g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    volatile boolean f80590h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    volatile Thread f80591i;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final j f80592l;

    private e(com.sigmob.sdk.downloader.f task, boolean asyncExecuted, j store) {
        this(task, asyncExecuted, new ArrayList(), store);
    }

    private void h() {
        this.f80592l.d(this.f80585c.c());
        com.sigmob.sdk.downloader.g.j().b().a().a_(this.f80585c);
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(e o10) {
        return o10.f() - f();
    }

    b b(com.sigmob.sdk.downloader.core.breakpoint.c info) {
        return new b(this.f80585c, info);
    }

    void c(com.sigmob.sdk.downloader.core.breakpoint.c info) {
        com.sigmob.sdk.downloader.f.c.a(this.f80585c, info);
    }

    public boolean d() {
        return this.f80589g;
    }

    public boolean e() {
        return this.f80590h;
    }

    int f() {
        return this.f80585c.G();
    }

    public File g() {
        return this.f80585c.m();
    }

    e(com.sigmob.sdk.downloader.f task, boolean asyncExecuted, ArrayList<f> runningBlockList, j store) {
        super("download call: " + task.c());
        this.f80585c = task;
        this.f80586d = asyncExecuted;
        this.f80587e = runningBlockList;
        this.f80592l = store;
    }

    a a(com.sigmob.sdk.downloader.core.breakpoint.c info, long responseInstanceLength) {
        return new a(this.f80585c, info, responseInstanceLength);
    }

    @Override // com.sigmob.sdk.downloader.core.b
    protected void b() {
        com.sigmob.sdk.downloader.g.j().a().c(this);
        com.sigmob.sdk.downloader.core.c.b(f80584k, "call is finished " + this.f80585c.c());
    }

    public boolean c() {
        synchronized (this) {
            if (this.f80589g) {
                return true;
            }
            if (this.f80590h) {
                return false;
            }
            this.f80589g = true;
            long jUptimeMillis = SystemClock.uptimeMillis();
            com.sigmob.sdk.downloader.g.j().a().b(this);
            d dVar = this.f80588f;
            if (dVar != null) {
                dVar.l();
            }
            Object[] array = this.f80587e.toArray();
            if (array != null && array.length != 0) {
                for (Object obj : array) {
                    if (obj instanceof f) {
                        ((f) obj).b();
                    }
                }
            } else if (this.f80591i != null) {
                com.sigmob.sdk.downloader.core.c.b(f80584k, "interrupt thread with cancel operation because of chains are not running " + this.f80585c.c());
                this.f80591i.interrupt();
            }
            if (dVar != null) {
                dVar.a().a();
            }
            com.sigmob.sdk.downloader.core.c.b(f80584k, "cancel task " + this.f80585c.c() + " consume: " + (SystemClock.uptimeMillis() - jUptimeMillis) + "ms");
            return true;
        }
    }

    d a(com.sigmob.sdk.downloader.core.breakpoint.c info) {
        return new d(com.sigmob.sdk.downloader.g.j().f().a(this.f80585c, info, this.f80592l));
    }

    public static e a(com.sigmob.sdk.downloader.f task, boolean asyncExecuted, j store) {
        return new e(task, asyncExecuted, store);
    }

    Future<?> a(f chain) {
        return f80583j.submit(chain);
    }

    /* JADX WARN: Code duplicated, block: B:34:0x010f  */
    /* JADX WARN: Code duplicated, block: B:36:0x0115  */
    /* JADX WARN: Code duplicated, block: B:38:0x011a  */
    /* JADX WARN: Code duplicated, block: B:39:0x0128  */
    /* JADX WARN: Code duplicated, block: B:40:0x0129 A[PHI: r3
      0x0129: PHI (r3v5 int) = (r3v1 int), (r3v7 int) binds: [B:35:0x0113, B:39:0x0128] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:82:0x0163 A[EDGE_INSN: B:82:0x0163->B:50:0x0163 BREAK  A[LOOP:0: B:3:0x0013->B:86:?], SYNTHETIC] */
    @Override // com.sigmob.sdk.downloader.core.b
    public void a() throws InterruptedException {
        com.sigmob.sdk.downloader.core.cause.a aVar;
        IOException iOExceptionI;
        com.sigmob.sdk.downloader.core.cause.b bVarB;
        boolean z10;
        int i10;
        this.f80591i = Thread.currentThread();
        com.sigmob.sdk.downloader.g gVarJ = com.sigmob.sdk.downloader.g.j();
        com.sigmob.sdk.downloader.core.file.e eVarF = gVarJ.f();
        h();
        int i11 = 0;
        do {
            if (this.f80585c.i() == null || this.f80585c.i().length() <= 0) {
                this.f80588f = new d.a(new IOException("unexpected url: " + this.f80585c.i()));
                break;
            }
            if (this.f80589g) {
                break;
            }
            try {
                com.sigmob.sdk.downloader.core.breakpoint.c cVarA = this.f80592l.a(this.f80585c.c());
                if (cVarA == null) {
                    cVarA = this.f80592l.a(this.f80585c);
                }
                c(cVarA);
                if (this.f80589g) {
                    break;
                }
                d dVarA = a(cVarA);
                this.f80588f = dVarA;
                b bVarB2 = b(cVarA);
                try {
                    bVarB2.f();
                    dVarA.a(this.f80585c.j());
                    eVarF.a().c(this.f80585c.m().getAbsolutePath());
                    com.sigmob.sdk.downloader.g.j().g().a(this.f80585c, cVarA, bVarB2.e());
                    try {
                        if (bVarB2.c()) {
                            a aVarA = a(cVarA, bVarB2.e());
                            aVarA.f();
                            if (aVarA.a()) {
                                com.sigmob.sdk.downloader.core.c.b(f80584k, "breakpoint invalid: download from beginning because of local check is dirty " + this.f80585c.c() + " " + aVarA);
                                eVarF.a(this.f80585c);
                                bVarB = aVarA.b();
                            } else {
                                gVarJ.b().a().a(this.f80585c, cVarA);
                            }
                            a(dVarA, cVarA);
                            if (!this.f80589g) {
                                break;
                            }
                            if (dVarA.c()) {
                                i10 = i11 + 1;
                                if (i11 < 3) {
                                    this.f80592l.b(this.f80585c.c());
                                    i11 = i10;
                                    z10 = true;
                                } else {
                                    i11 = i10;
                                    z10 = false;
                                }
                            } else {
                                z10 = false;
                            }
                        } else {
                            com.sigmob.sdk.downloader.core.c.b(f80584k, "breakpoint invalid: download from beginning because of remote check not resumable " + this.f80585c.c() + " " + bVarB2);
                            eVarF.a(this.f80585c);
                            bVarB = bVarB2.b();
                        }
                        a(cVarA, bVarB2, bVarB);
                        a(dVarA, cVarA);
                        if (!this.f80589g) {
                            break;
                            break;
                        }
                        if (dVarA.c()) {
                            i10 = i11 + 1;
                            if (i11 < 3) {
                                this.f80592l.b(this.f80585c.c());
                                i11 = i10;
                                z10 = true;
                            } else {
                                i11 = i10;
                                z10 = false;
                            }
                        } else {
                            z10 = false;
                        }
                    } catch (IOException e10) {
                        dVarA.c(e10);
                    }
                } catch (IOException e11) {
                    dVarA.e(e11);
                }
            } catch (IOException e12) {
                this.f80588f = new d.a(e12);
            }
        } while (z10);
        this.f80590h = true;
        this.f80587e.clear();
        d dVar = this.f80588f;
        if (this.f80589g || dVar == null) {
            return;
        }
        if (!dVar.e() && !dVar.f() && !dVar.c()) {
            iOExceptionI = null;
            if (dVar.g()) {
                aVar = com.sigmob.sdk.downloader.core.cause.a.FILE_BUSY;
            } else if (dVar.h()) {
                aVar = com.sigmob.sdk.downloader.core.cause.a.PRE_ALLOCATE_FAILED;
            } else {
                aVar = com.sigmob.sdk.downloader.core.cause.a.COMPLETED;
            }
            a(dVar, aVar, iOExceptionI);
        }
        aVar = com.sigmob.sdk.downloader.core.cause.a.ERROR;
        iOExceptionI = dVar.i();
        a(dVar, aVar, iOExceptionI);
    }

    void a(com.sigmob.sdk.downloader.core.breakpoint.c info, b remoteCheck, com.sigmob.sdk.downloader.core.cause.b failedCause) {
        com.sigmob.sdk.downloader.core.c.a(this.f80585c, info, remoteCheck.e(), remoteCheck.d());
        com.sigmob.sdk.downloader.g.j().b().a().a(this.f80585c, info, failedCause);
    }

    void a(final d cache, com.sigmob.sdk.downloader.core.breakpoint.c info) throws InterruptedException {
        int iG = info.g();
        ArrayList arrayList = new ArrayList(info.g());
        ArrayList arrayList2 = new ArrayList();
        for (int i10 = 0; i10 < iG; i10++) {
            com.sigmob.sdk.downloader.core.breakpoint.a aVarB = info.b(i10);
            if (!com.sigmob.sdk.downloader.core.c.a(aVarB.a(), aVarB.d())) {
                com.sigmob.sdk.downloader.core.c.a(aVarB);
                f fVarA = f.a(i10, this.f80585c, info, cache, this.f80592l);
                arrayList.add(fVarA);
                arrayList2.add(Integer.valueOf(fVarA.e()));
            }
        }
        if (this.f80589g) {
            return;
        }
        cache.a().a(arrayList2);
        a(arrayList);
    }

    private void a(d cache, com.sigmob.sdk.downloader.core.cause.a cause, Exception realCause) {
        if (cause == com.sigmob.sdk.downloader.core.cause.a.CANCELED) {
            throw new IllegalAccessError("can't recognize cancelled on here");
        }
        synchronized (this) {
            if (this.f80589g) {
                return;
            }
            this.f80590h = true;
            this.f80592l.a(this.f80585c.c(), cause, realCause);
            if (cause == com.sigmob.sdk.downloader.core.cause.a.COMPLETED) {
                this.f80592l.g(this.f80585c.c());
                com.sigmob.sdk.downloader.g.j().f().a(cache.a(), this.f80585c);
            }
            com.sigmob.sdk.downloader.g.j().b().a().a(this.f80585c, cause, realCause);
        }
    }

    @Override // com.sigmob.sdk.downloader.core.b
    protected void a(InterruptedException e10) {
    }

    void a(List<f> tasks) throws InterruptedException {
        ArrayList<Future> arrayList = new ArrayList(tasks.size());
        try {
            Iterator<f> it2 = tasks.iterator();
            while (it2.hasNext()) {
                arrayList.add(a(it2.next()));
            }
            this.f80587e.addAll(tasks);
            for (Future future : arrayList) {
                if (!future.isDone()) {
                    try {
                        future.get();
                    } catch (CancellationException | ExecutionException unused) {
                    }
                }
            }
            this.f80587e.removeAll(tasks);
        } catch (Throwable th) {
            try {
                Iterator it3 = arrayList.iterator();
                while (it3.hasNext()) {
                    ((Future) it3.next()).cancel(true);
                }
                throw th;
            } catch (Throwable th2) {
                this.f80587e.removeAll(tasks);
                throw th2;
            }
        }
    }

    public boolean a(com.sigmob.sdk.downloader.f task) {
        return this.f80585c.equals(task);
    }
}
