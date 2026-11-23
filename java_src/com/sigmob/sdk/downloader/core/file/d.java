package com.sigmob.sdk.downloader.core.file;

import android.net.Uri;
import android.os.StatFs;
import android.os.SystemClock;
import android.util.SparseArray;
import com.sigmob.sdk.downloader.core.breakpoint.j;
import com.sigmob.sdk.downloader.f;
import com.sigmob.sdk.downloader.g;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.LockSupport;

/* JADX INFO: loaded from: classes3.dex */
public class d {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final String f80639n = "MultiPointOutputStream";

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final ExecutorService f80640o = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), com.sigmob.sdk.downloader.core.c.a("FileDownload file io", false));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final SparseArray<com.sigmob.sdk.downloader.core.file.a> f80641a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final SparseArray<AtomicLong> f80642b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final AtomicLong f80643c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final AtomicLong f80644d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f80645e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    volatile Future f80646f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    volatile Thread f80647g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final SparseArray<Thread> f80648h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    IOException f80649i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    ArrayList<Integer> f80650j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    List<Integer> f80651k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    final a f80652l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    a f80653m;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final int f80654p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final int f80655q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final int f80656r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final com.sigmob.sdk.downloader.core.breakpoint.c f80657s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final f f80658t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final j f80659u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final boolean f80660v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final boolean f80661w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final Runnable f80662x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private String f80663y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private volatile boolean f80664z;

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f80667a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        List<Integer> f80668b = new ArrayList();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        List<Integer> f80669c = new ArrayList();

        a() {
        }

        boolean a() {
            return this.f80667a || this.f80669c.size() > 0;
        }
    }

    public d(f task, com.sigmob.sdk.downloader.core.breakpoint.c info, j store) {
        this(task, info, store, null);
    }

    private void m() {
        if (this.f80663y != null || this.f80658t.m() == null) {
            return;
        }
        this.f80663y = this.f80658t.m().getAbsolutePath();
    }

    public void a() {
        f80640o.execute(new Runnable() { // from class: com.sigmob.sdk.downloader.core.file.d.2
            @Override // java.lang.Runnable
            public void run() {
                d.this.b();
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00ce A[Catch: all -> 0x0170, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:7:0x0007, B:12:0x000e, B:17:0x0022, B:18:0x0028, B:20:0x002e, B:21:0x0034, B:24:0x003d, B:25:0x006a, B:39:0x00c2, B:40:0x00c8, B:42:0x00ce, B:43:0x00d4, B:46:0x00dd, B:47:0x010a, B:51:0x011a, B:52:0x0120, B:54:0x0126, B:55:0x012c, B:58:0x0135, B:59:0x0162, B:60:0x016f, B:14:0x0016, B:28:0x0079, B:30:0x007d, B:32:0x0085, B:35:0x009d, B:37:0x00b0, B:38:0x00c1), top: B:64:0x0001, inners: #1, #2, #3, #5 }] */
    public synchronized void b() {
        List<Integer> list = this.f80651k;
        if (list == null) {
            return;
        }
        if (this.f80645e) {
            return;
        }
        this.f80645e = true;
        this.f80650j.addAll(list);
        try {
            if (this.f80643c.get() <= 0) {
                for (Integer num : this.f80651k) {
                    try {
                        c(num.intValue());
                    } catch (IOException e10) {
                        com.sigmob.sdk.downloader.core.c.b(f80639n, "OutputStream close failed task[" + this.f80658t.c() + "] block[" + num + "]" + e10);
                    }
                }
                this.f80659u.a(this.f80658t.c(), com.sigmob.sdk.downloader.core.cause.a.CANCELED, (Exception) null);
                return;
            }
            if (this.f80646f != null && !this.f80646f.isDone()) {
                m();
                g.j().f().a().a(this.f80663y);
                try {
                    a(true, -1);
                    g.j().f().a().b(this.f80663y);
                    while (r1.hasNext()) {
                        c(num.intValue());
                    }
                    this.f80659u.a(this.f80658t.c(), com.sigmob.sdk.downloader.core.cause.a.CANCELED, (Exception) null);
                    return;
                } catch (Throwable th) {
                    g.j().f().a().b(this.f80663y);
                    throw th;
                }
            }
            for (Integer num2 : this.f80651k) {
                try {
                    c(num2.intValue());
                } catch (IOException e11) {
                    com.sigmob.sdk.downloader.core.c.b(f80639n, "OutputStream close failed task[" + this.f80658t.c() + "] block[" + num2 + "]" + e11);
                }
            }
            this.f80659u.a(this.f80658t.c(), com.sigmob.sdk.downloader.core.cause.a.CANCELED, (Exception) null);
            return;
        } catch (Throwable th2) {
            for (Integer num3 : this.f80651k) {
                try {
                    c(num3.intValue());
                } catch (IOException e12) {
                    com.sigmob.sdk.downloader.core.c.b(f80639n, "OutputStream close failed task[" + this.f80658t.c() + "] block[" + num3 + "]" + e12);
                }
            }
            this.f80659u.a(this.f80658t.c(), com.sigmob.sdk.downloader.core.cause.a.CANCELED, (Exception) null);
            throw th2;
        }
        throw th;
    }

    synchronized void c(int blockIndex) throws IOException {
        com.sigmob.sdk.downloader.core.file.a aVar = this.f80641a.get(blockIndex);
        if (aVar != null) {
            aVar.a();
            synchronized (this.f80642b) {
                this.f80641a.remove(blockIndex);
                this.f80642b.remove(blockIndex);
            }
            com.sigmob.sdk.downloader.core.c.b(f80639n, "OutputStream close task[" + this.f80658t.c() + "] block[" + blockIndex + "]");
        }
    }

    void d() throws IOException {
        IOException iOException = this.f80649i;
        if (iOException != null) {
            throw iOException;
        }
        if (this.f80646f == null) {
            synchronized (this.f80662x) {
                if (this.f80646f == null) {
                    this.f80646f = f();
                }
            }
        }
    }

    synchronized com.sigmob.sdk.downloader.core.file.a e(int blockIndex) throws IOException {
        com.sigmob.sdk.downloader.core.file.a aVar;
        Uri uriH;
        aVar = this.f80641a.get(blockIndex);
        if (aVar == null) {
            boolean zB = com.sigmob.sdk.downloader.core.c.b(this.f80658t.h());
            if (zB) {
                File fileM = this.f80658t.m();
                if (fileM == null) {
                    throw new FileNotFoundException("Filename is not ready!");
                }
                File fileL = this.f80658t.l();
                if (!fileL.exists() && !fileL.mkdirs()) {
                    throw new IOException("Create parent folder failed!");
                }
                if (fileM.createNewFile()) {
                    com.sigmob.sdk.downloader.core.c.b(f80639n, "Create new file: " + fileM.getName());
                }
                uriH = Uri.fromFile(fileM);
            } else {
                uriH = this.f80658t.h();
            }
            com.sigmob.sdk.downloader.core.file.a aVarA = g.j().e().a(g.j().h(), uriH, this.f80654p);
            if (this.f80660v) {
                long jC = this.f80657s.b(blockIndex).c();
                if (jC > 0) {
                    aVarA.a(jC);
                    com.sigmob.sdk.downloader.core.c.b(f80639n, "Create output stream write from (" + this.f80658t.c() + ") block(" + blockIndex + ") " + jC);
                }
            }
            if (this.f80664z) {
                this.f80659u.f(this.f80658t.c());
            }
            if (!this.f80657s.b() && this.f80664z && this.f80661w) {
                long j10 = this.f80657s.j();
                if (zB) {
                    File fileM2 = this.f80658t.m();
                    long length = j10 - fileM2.length();
                    if (length > 0) {
                        a(new StatFs(fileM2.getAbsolutePath()), length);
                        aVarA.b(j10);
                    }
                    throw th;
                }
                aVarA.b(j10);
            }
            synchronized (this.f80642b) {
                this.f80641a.put(blockIndex, aVarA);
                this.f80642b.put(blockIndex, new AtomicLong());
            }
            this.f80664z = false;
            aVar = aVarA;
        }
        return aVar;
    }

    Future f() {
        return f80640o.submit(this.f80662x);
    }

    void g() {
        try {
            h();
        } catch (IOException e10) {
            this.f80649i = e10;
            com.sigmob.sdk.downloader.core.c.a(f80639n, "Sync to breakpoint-store for task[" + this.f80658t.c() + "] failed with cause: " + e10);
        }
    }

    void h() throws IOException {
        com.sigmob.sdk.downloader.core.c.b(f80639n, "OutputStream start flush looper task[" + this.f80658t.c() + "] with syncBufferIntervalMills[" + this.f80656r + "] syncBufferSize[" + this.f80655q + "]");
        this.f80647g = Thread.currentThread();
        long j10 = (long) this.f80656r;
        l();
        while (true) {
            a(j10);
            a(this.f80653m);
            if (this.f80653m.a()) {
                com.sigmob.sdk.downloader.core.c.b(f80639n, "runSync state change isNoMoreStream[" + this.f80653m.f80667a + "] newNoMoreStreamBlockList[" + this.f80653m.f80669c + "]");
                if (this.f80643c.get() > 0) {
                    l();
                }
                for (Integer num : this.f80653m.f80669c) {
                    Thread thread = this.f80648h.get(num.intValue());
                    this.f80648h.remove(num.intValue());
                    if (thread != null) {
                        a(thread);
                    }
                }
                if (this.f80653m.f80667a) {
                    break;
                }
            } else {
                if (!i()) {
                    j10 = j();
                    if (j10 <= 0) {
                        l();
                    }
                }
                j10 = this.f80656r;
            }
        }
        int size = this.f80648h.size();
        for (int i10 = 0; i10 < size; i10++) {
            Thread threadValueAt = this.f80648h.valueAt(i10);
            if (threadValueAt != null) {
                a(threadValueAt);
            }
        }
        this.f80648h.clear();
        com.sigmob.sdk.downloader.core.c.b(f80639n, "OutputStream stop flush looper task[" + this.f80658t.c() + "]");
    }

    boolean i() {
        return this.f80643c.get() < ((long) this.f80655q);
    }

    long j() {
        return ((long) this.f80656r) - (k() - this.f80644d.get());
    }

    long k() {
        return SystemClock.uptimeMillis();
    }

    /* JADX WARN: Code duplicated, block: B:16:0x005b A[Catch: all -> 0x00da, TryCatch #1 {, blocks: (B:4:0x0003, B:8:0x0014, B:10:0x002a, B:16:0x005b, B:18:0x0061, B:19:0x00c9, B:20:0x00d8, B:13:0x0040), top: B:27:0x0003, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:18:0x0061 A[Catch: all -> 0x00da, LOOP:1: B:17:0x005f->B:18:0x0061, LOOP_END, TryCatch #1 {, blocks: (B:4:0x0003, B:8:0x0014, B:10:0x002a, B:16:0x005b, B:18:0x0061, B:19:0x00c9, B:20:0x00d8, B:13:0x0040), top: B:27:0x0003, inners: #0 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:18:0x0061, please report this as an issue */
    void l() throws IOException {
        long j10;
        boolean z10;
        int size;
        synchronized (this.f80642b) {
            int size2 = this.f80642b.size();
            SparseArray sparseArray = new SparseArray(size2);
            int i10 = 0;
            while (true) {
                j10 = 0;
                if (i10 >= size2) {
                    break;
                }
                try {
                    int iKeyAt = this.f80642b.keyAt(i10);
                    long j11 = this.f80642b.get(iKeyAt).get();
                    if (j11 > 0) {
                        sparseArray.put(iKeyAt, Long.valueOf(j11));
                        this.f80641a.get(iKeyAt).b();
                    }
                    i10++;
                } catch (IOException e10) {
                    com.sigmob.sdk.downloader.core.c.a(f80639n, "OutputStream flush and sync data to filesystem failed " + e10);
                    z10 = false;
                    if (z10) {
                        size = sparseArray.size();
                        for (int i11 = 0; i11 < size; i11++) {
                            int iKeyAt2 = sparseArray.keyAt(i11);
                            long jLongValue = ((Long) sparseArray.valueAt(i11)).longValue();
                            this.f80659u.a(this.f80657s, iKeyAt2, jLongValue);
                            j10 += jLongValue;
                            this.f80642b.get(iKeyAt2).addAndGet(-jLongValue);
                            com.sigmob.sdk.downloader.core.c.b(f80639n, "OutputStream sync success (" + this.f80658t.c() + ") block(" + iKeyAt2 + ")  syncLength(" + jLongValue + ") currentOffset(" + this.f80657s.b(iKeyAt2).a() + ")");
                        }
                        this.f80643c.addAndGet(-j10);
                        this.f80644d.set(SystemClock.uptimeMillis());
                    }
                }
                if (z10) {
                    size = sparseArray.size();
                    while (i11 < size) {
                        int iKeyAt3 = sparseArray.keyAt(i11);
                        long jLongValue2 = ((Long) sparseArray.valueAt(i11)).longValue();
                        this.f80659u.a(this.f80657s, iKeyAt3, jLongValue2);
                        j10 += jLongValue2;
                        this.f80642b.get(iKeyAt3).addAndGet(-jLongValue2);
                        com.sigmob.sdk.downloader.core.c.b(f80639n, "OutputStream sync success (" + this.f80658t.c() + ") block(" + iKeyAt3 + ")  syncLength(" + jLongValue2 + ") currentOffset(" + this.f80657s.b(iKeyAt3).a() + ")");
                    }
                    this.f80643c.addAndGet(-j10);
                    this.f80644d.set(SystemClock.uptimeMillis());
                }
            }
            z10 = true;
            if (z10) {
                size = sparseArray.size();
                while (i11 < size) {
                    int iKeyAt4 = sparseArray.keyAt(i11);
                    long jLongValue3 = ((Long) sparseArray.valueAt(i11)).longValue();
                    this.f80659u.a(this.f80657s, iKeyAt4, jLongValue3);
                    j10 += jLongValue3;
                    this.f80642b.get(iKeyAt4).addAndGet(-jLongValue3);
                    com.sigmob.sdk.downloader.core.c.b(f80639n, "OutputStream sync success (" + this.f80658t.c() + ") block(" + iKeyAt4 + ")  syncLength(" + jLongValue3 + ") currentOffset(" + this.f80657s.b(iKeyAt4).a() + ")");
                }
                this.f80643c.addAndGet(-j10);
                this.f80644d.set(SystemClock.uptimeMillis());
            }
        }
    }

    d(final f task, com.sigmob.sdk.downloader.core.breakpoint.c info, j store, Runnable syncRunnable) {
        this.f80641a = new SparseArray<>();
        this.f80642b = new SparseArray<>();
        this.f80643c = new AtomicLong();
        this.f80644d = new AtomicLong();
        this.f80645e = false;
        this.f80648h = new SparseArray<>();
        this.f80652l = new a();
        this.f80653m = new a();
        this.f80664z = true;
        this.f80658t = task;
        this.f80654p = task.p();
        this.f80655q = task.q();
        this.f80656r = task.r();
        this.f80657s = info;
        this.f80659u = store;
        this.f80660v = g.j().e().a();
        this.f80661w = g.j().f().b(task);
        this.f80650j = new ArrayList<>();
        if (syncRunnable == null) {
            this.f80662x = new Runnable() { // from class: com.sigmob.sdk.downloader.core.file.d.1
                @Override // java.lang.Runnable
                public void run() {
                    d.this.g();
                }
            };
        } else {
            this.f80662x = syncRunnable;
        }
        File fileM = task.m();
        if (fileM != null) {
            this.f80663y = fileM.getAbsolutePath();
        }
    }

    public synchronized void a(int blockIndex) throws IOException {
        String str;
        String str2;
        this.f80650j.add(Integer.valueOf(blockIndex));
        try {
            IOException iOException = this.f80649i;
            if (iOException != null) {
                throw iOException;
            }
            if (this.f80646f == null || this.f80646f.isDone()) {
                if (this.f80646f == null) {
                    str = f80639n;
                    str2 = "OutputStream done but no need to ensure sync, because the sync job not run yet. task[" + this.f80658t.c() + "] block[" + blockIndex + "]";
                } else {
                    str = f80639n;
                    str2 = "OutputStream done but no need to ensure sync, because the syncFuture.isDone[" + this.f80646f.isDone() + "] task[" + this.f80658t.c() + "] block[" + blockIndex + "]";
                }
                com.sigmob.sdk.downloader.core.c.b(str, str2);
            } else {
                AtomicLong atomicLong = this.f80642b.get(blockIndex);
                if (atomicLong != null && atomicLong.get() > 0) {
                    a(this.f80652l);
                    a(this.f80652l.f80667a, blockIndex);
                }
            }
            c(blockIndex);
        } catch (Throwable th) {
            c(blockIndex);
            throw th;
        }
    }

    public void b(int blockIndex) throws IOException {
        com.sigmob.sdk.downloader.core.breakpoint.a aVarB = this.f80657s.b(blockIndex);
        if (aVarB.d() == -1 || com.sigmob.sdk.downloader.core.c.a(aVarB.a(), aVarB.d())) {
            return;
        }
        throw new IOException("The current offset on block-info isn't update correct, " + aVarB.a() + " != " + aVarB.d() + " on " + blockIndex);
    }

    boolean c() {
        return this.f80647g != null;
    }

    public void d(int blockIndex) {
        this.f80650j.add(Integer.valueOf(blockIndex));
    }

    void e() {
        LockSupport.park();
    }

    public synchronized void a(int blockIndex, byte[] bytes, int length) throws IOException {
        if (this.f80645e) {
            return;
        }
        e(blockIndex).a(bytes, 0, length);
        long j10 = length;
        this.f80643c.addAndGet(j10);
        this.f80642b.get(blockIndex).addAndGet(j10);
        d();
    }

    void a(long milliseconds) {
        LockSupport.parkNanos(TimeUnit.MILLISECONDS.toNanos(milliseconds));
    }

    void a(StatFs statFs, long requireSpace) throws com.sigmob.sdk.downloader.core.exception.e {
        long jA = com.sigmob.sdk.downloader.core.c.a(statFs);
        if (jA < requireSpace) {
            throw new com.sigmob.sdk.downloader.core.exception.e(requireSpace, jA);
        }
    }

    void a(a state) {
        state.f80669c.clear();
        int size = new HashSet((List) this.f80650j.clone()).size();
        if (size != this.f80651k.size()) {
            com.sigmob.sdk.downloader.core.c.b(f80639n, "task[" + this.f80658t.c() + "] current need fetching block count " + this.f80651k.size() + " is not equal to no more stream block count " + size);
            state.f80667a = false;
        } else {
            com.sigmob.sdk.downloader.core.c.b(f80639n, "task[" + this.f80658t.c() + "] current need fetching block count " + this.f80651k.size() + " is equal to no more stream block count " + size);
            state.f80667a = true;
        }
        SparseArray<com.sigmob.sdk.downloader.core.file.a> sparseArrayClone = this.f80641a.clone();
        int size2 = sparseArrayClone.size();
        for (int i10 = 0; i10 < size2; i10++) {
            int iKeyAt = sparseArrayClone.keyAt(i10);
            if (this.f80650j.contains(Integer.valueOf(iKeyAt)) && !state.f80668b.contains(Integer.valueOf(iKeyAt))) {
                state.f80668b.add(Integer.valueOf(iKeyAt));
                state.f80669c.add(Integer.valueOf(iKeyAt));
            }
        }
    }

    void a(Thread thread) {
        LockSupport.unpark(thread);
    }

    public void a(List<Integer> requireStreamBlocks) {
        this.f80651k = requireStreamBlocks;
    }

    void a(boolean isNoMoreStream, int blockIndex) {
        if (this.f80646f == null || this.f80646f.isDone()) {
            return;
        }
        if (!isNoMoreStream) {
            this.f80648h.put(blockIndex, Thread.currentThread());
        }
        if (this.f80647g == null) {
            while (!c()) {
                a(25L);
            }
        }
        a(this.f80647g);
        if (!isNoMoreStream) {
            e();
            return;
        }
        a(this.f80647g);
        try {
            this.f80646f.get();
        } catch (InterruptedException | ExecutionException unused) {
        }
    }
}
