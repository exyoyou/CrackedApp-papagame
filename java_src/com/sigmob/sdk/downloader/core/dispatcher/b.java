package com.sigmob.sdk.downloader.core.dispatcher;

import android.os.SystemClock;
import com.sigmob.sdk.downloader.core.breakpoint.j;
import com.sigmob.sdk.downloader.core.c;
import com.sigmob.sdk.downloader.core.download.e;
import com.sigmob.sdk.downloader.f;
import com.sigmob.sdk.downloader.g;
import com.sigmob.sdk.downloader.l;
import java.io.File;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f80540b = "DownloadDispatcher";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f80541a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<e> f80542c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<e> f80543d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<e> f80544e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List<e> f80545f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final AtomicInteger f80546g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private volatile ExecutorService f80547h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final AtomicInteger f80548i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private j f80549j;

    public b() {
        this(new ArrayList(), new ArrayList(), new ArrayList(), new ArrayList());
    }

    private int d() {
        return this.f80543d.size() - this.f80546g.get();
    }

    private synchronized void i(f task) {
        c.b(f80540b, "enqueueLocked for single task: " + task);
        if (h(task)) {
            return;
        }
        if (k(task)) {
            return;
        }
        int size = this.f80542c.size();
        j(task);
        if (size != this.f80542c.size()) {
            Collections.sort(this.f80542c);
        }
    }

    private synchronized void j(f task) {
        e eVarA = e.a(task, true, this.f80549j);
        if (d() < this.f80541a) {
            this.f80543d.add(eVarA);
            a().execute(eVarA);
        } else {
            this.f80542c.add(eVarA);
        }
    }

    private boolean k(f task) {
        return a(task, (Collection<f>) null, (Collection<f>) null);
    }

    synchronized ExecutorService a() {
        if (this.f80547h == null) {
            this.f80547h = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), c.a("FileDownload Download", false));
        }
        return this.f80547h;
    }

    public void b() {
        this.f80548i.incrementAndGet();
        ArrayList arrayList = new ArrayList();
        Iterator<e> it2 = this.f80542c.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().f80585c);
        }
        Iterator<e> it3 = this.f80543d.iterator();
        while (it3.hasNext()) {
            arrayList.add(it3.next().f80585c);
        }
        Iterator<e> it4 = this.f80544e.iterator();
        while (it4.hasNext()) {
            arrayList.add(it4.next().f80585c);
        }
        if (!arrayList.isEmpty()) {
            b((com.sigmob.sdk.downloader.core.a[]) arrayList.toArray(new f[arrayList.size()]));
        }
        this.f80548i.decrementAndGet();
    }

    public synchronized f c(f task) {
        c.b(f80540b, "findSameTask: " + task.c());
        for (e eVar : this.f80542c) {
            if (!eVar.d() && eVar.a(task)) {
                return eVar.f80585c;
            }
        }
        for (e eVar2 : this.f80543d) {
            if (!eVar2.d() && eVar2.a(task)) {
                return eVar2.f80585c;
            }
        }
        for (e eVar3 : this.f80544e) {
            if (!eVar3.d() && eVar3.a(task)) {
                return eVar3.f80585c;
            }
        }
        return null;
    }

    public synchronized boolean e(f task) {
        c.b(f80540b, "isCanceled: " + task.c());
        for (e eVar : this.f80544e) {
            if (eVar.d() && eVar.a(task)) {
                return true;
            }
        }
        for (e eVar2 : this.f80543d) {
            if (eVar2.d() && eVar2.a(task)) {
                return true;
            }
        }
        for (e eVar3 : this.f80542c) {
            if (eVar3.d() && eVar3.a(task)) {
                return true;
            }
        }
        return false;
    }

    public synchronized boolean f(f task) {
        c.b(f80540b, "isPending: " + task.c());
        for (e eVar : this.f80542c) {
            if (!eVar.d() && eVar.a(task)) {
                return true;
            }
        }
        return false;
    }

    public synchronized boolean g(f task) {
        f fVar;
        File fileM;
        f fVar2;
        File fileM2;
        c.b(f80540b, "is file conflict after run: " + task.c());
        File fileM3 = task.m();
        if (fileM3 == null) {
            return false;
        }
        for (e eVar : this.f80544e) {
            if (!eVar.d() && (fVar2 = eVar.f80585c) != task && (fileM2 = fVar2.m()) != null && fileM3.equals(fileM2)) {
                return true;
            }
        }
        for (e eVar2 : this.f80543d) {
            if (!eVar2.d() && (fVar = eVar2.f80585c) != task && (fileM = fVar.m()) != null && fileM3.equals(fileM)) {
                return true;
            }
        }
        return false;
    }

    boolean h(f task) {
        return a(task, (Collection<f>) null);
    }

    b(List<e> readyAsyncCalls, List<e> runningAsyncCalls, List<e> runningSyncCalls, List<e> finishingCalls) {
        this.f80541a = 5;
        this.f80546g = new AtomicInteger();
        this.f80548i = new AtomicInteger();
        this.f80542c = readyAsyncCalls;
        this.f80543d = runningAsyncCalls;
        this.f80544e = runningSyncCalls;
        this.f80545f = finishingCalls;
    }

    private synchronized void a(com.sigmob.sdk.downloader.core.a task, List<e> needCallbackCalls, List<e> needCancelCalls) {
        Iterator<e> it2 = this.f80542c.iterator();
        while (it2.hasNext()) {
            e next = it2.next();
            f fVar = next.f80585c;
            if (fVar == task || fVar.c() == task.c()) {
                if (!next.d() && !next.e()) {
                    it2.remove();
                    needCallbackCalls.add(next);
                }
            }
        }
        for (e eVar : this.f80543d) {
            f fVar2 = eVar.f80585c;
            if (fVar2 == task || fVar2.c() == task.c()) {
                needCallbackCalls.add(eVar);
                needCancelCalls.add(eVar);
            }
        }
        for (e eVar2 : this.f80544e) {
            f fVar3 = eVar2.f80585c;
            if (fVar3 == task || fVar3.c() == task.c()) {
                needCallbackCalls.add(eVar2);
                needCancelCalls.add(eVar2);
            }
        }
    }

    public static void b(int maxParallelRunningCount) {
        b bVarA = g.j().a();
        if (bVarA.getClass() == b.class) {
            bVarA.f80541a = Math.max(1, maxParallelRunningCount);
            return;
        }
        throw new IllegalStateException("The current dispatcher is " + bVarA + " not DownloadDispatcher exactly!");
    }

    private synchronized void c() {
        if (this.f80548i.get() > 0) {
            return;
        }
        if (d() >= this.f80541a) {
            return;
        }
        if (this.f80542c.isEmpty()) {
            return;
        }
        Iterator<e> it2 = this.f80542c.iterator();
        while (it2.hasNext()) {
            e next = it2.next();
            it2.remove();
            f fVar = next.f80585c;
            if (g(fVar)) {
                g.j().b().a().a(fVar, com.sigmob.sdk.downloader.core.cause.a.FILE_BUSY, (Exception) null);
            } else {
                this.f80543d.add(next);
                a().execute(next);
                if (d() >= this.f80541a) {
                    return;
                }
            }
        }
    }

    public synchronized boolean d(f task) {
        c.b(f80540b, "isRunning: " + task.c());
        for (e eVar : this.f80544e) {
            if (!eVar.d() && eVar.a(task)) {
                return true;
            }
        }
        for (e eVar2 : this.f80543d) {
            if (!eVar2.d() && eVar2.a(task)) {
                return true;
            }
        }
        return false;
    }

    public void a(j store) {
        this.f80549j = store;
    }

    public synchronized void b(e call) {
        c.b(f80540b, "flying canceled: " + call.f80585c.c());
        if (call.f80586d) {
            this.f80546g.incrementAndGet();
        }
    }

    public synchronized void c(e call) {
        List<e> list;
        boolean z10 = call.f80586d;
        if (this.f80545f.contains(call)) {
            list = this.f80545f;
        } else {
            list = z10 ? this.f80543d : this.f80544e;
        }
        if (!list.remove(call)) {
            throw new AssertionError("Call wasn't in-flight!");
        }
        if (z10 && call.d()) {
            this.f80546g.decrementAndGet();
        }
        if (z10) {
            c();
        }
    }

    void a(e call) {
        call.run();
    }

    public void b(f task) {
        c.b(f80540b, "execute: " + task);
        synchronized (this) {
            if (h(task)) {
                return;
            }
            if (k(task)) {
                return;
            }
            e eVarA = e.a(task, false, this.f80549j);
            this.f80544e.add(eVarA);
            a(eVarA);
        }
    }

    private synchronized void b(com.sigmob.sdk.downloader.core.a[] tasks) {
        long jUptimeMillis = SystemClock.uptimeMillis();
        c.b(f80540b, "start cancel bunch task manually: " + tasks.length);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        try {
            for (com.sigmob.sdk.downloader.core.a aVar : tasks) {
                a(aVar, arrayList, arrayList2);
            }
            a(arrayList, arrayList2);
            c.b(f80540b, "finish cancel bunch task manually: " + tasks.length + " consume " + (SystemClock.uptimeMillis() - jUptimeMillis) + "ms");
        } catch (Throwable th) {
            a(arrayList, arrayList2);
            c.b(f80540b, "finish cancel bunch task manually: " + tasks.length + " consume " + (SystemClock.uptimeMillis() - jUptimeMillis) + "ms");
            throw th;
        }
    }

    public void a(f task) {
        this.f80548i.incrementAndGet();
        i(task);
        this.f80548i.decrementAndGet();
    }

    private synchronized void a(List<e> needCallbackCalls, List<e> needCancelCalls) {
        c.b(f80540b, "handle cancel calls, cancel calls: " + needCancelCalls.size());
        if (!needCancelCalls.isEmpty()) {
            for (e eVar : needCancelCalls) {
                if (!eVar.c()) {
                    needCallbackCalls.remove(eVar);
                }
            }
        }
        c.b(f80540b, "handle cancel calls, callback cancel event: " + needCallbackCalls.size());
        if (!needCallbackCalls.isEmpty()) {
            if (needCallbackCalls.size() <= 1) {
                g.j().b().a().a(needCallbackCalls.get(0).f80585c, com.sigmob.sdk.downloader.core.cause.a.CANCELED, (Exception) null);
            } else {
                ArrayList arrayList = new ArrayList();
                Iterator<e> it2 = needCallbackCalls.iterator();
                while (it2.hasNext()) {
                    arrayList.add(it2.next().f80585c);
                }
                g.j().b().a(arrayList);
            }
        }
    }

    private synchronized void b(f[] tasks) {
        long jUptimeMillis = SystemClock.uptimeMillis();
        c.b(f80540b, "start enqueueLocked for bunch task: " + tasks.length);
        ArrayList<f> arrayList = new ArrayList();
        Collections.addAll(arrayList, tasks);
        if (arrayList.size() > 1) {
            Collections.sort(arrayList);
        }
        int size = this.f80542c.size();
        try {
            g.j().g().b();
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            ArrayList arrayList4 = new ArrayList();
            for (f fVar : arrayList) {
                if (!a(fVar, arrayList2) && !a(fVar, (Collection<f>) arrayList3, (Collection<f>) arrayList4)) {
                    j(fVar);
                }
            }
            g.j().b().a(arrayList2, arrayList3, arrayList4);
        } catch (UnknownHostException e10) {
            g.j().b().a(new ArrayList(arrayList), e10);
        }
        if (size != this.f80542c.size()) {
            Collections.sort(this.f80542c);
        }
        c.b(f80540b, "end enqueueLocked for bunch task: " + tasks.length + " consume " + (SystemClock.uptimeMillis() - jUptimeMillis) + "ms");
    }

    public void a(com.sigmob.sdk.downloader.core.a[] tasks) {
        this.f80548i.incrementAndGet();
        b(tasks);
        this.f80548i.decrementAndGet();
        c();
    }

    synchronized boolean b(com.sigmob.sdk.downloader.core.a task) {
        ArrayList arrayList;
        ArrayList arrayList2;
        c.b(f80540b, "cancel manually: " + task.c());
        arrayList = new ArrayList();
        arrayList2 = new ArrayList();
        try {
            a(task, arrayList, arrayList2);
            a(arrayList, arrayList2);
        } catch (Throwable th) {
            a(arrayList, arrayList2);
            throw th;
        }
        return arrayList.size() > 0 || arrayList2.size() > 0;
    }

    public void a(f[] tasks) {
        this.f80548i.incrementAndGet();
        b(tasks);
        this.f80548i.decrementAndGet();
    }

    public boolean a(int id2) {
        this.f80548i.incrementAndGet();
        boolean zB = b(f.c(id2));
        this.f80548i.decrementAndGet();
        c();
        return zB;
    }

    public boolean a(com.sigmob.sdk.downloader.core.a task) {
        this.f80548i.incrementAndGet();
        boolean zB = b(task);
        this.f80548i.decrementAndGet();
        c();
        return zB;
    }

    boolean a(f task, Collection<f> completedCollection) {
        if (!task.e() || !l.c(task)) {
            return false;
        }
        if (task.d() == null && !g.j().g().a(task)) {
            return false;
        }
        g.j().g().a(task, this.f80549j);
        if (completedCollection != null) {
            completedCollection.add(task);
            return true;
        }
        g.j().b().a().a(task, com.sigmob.sdk.downloader.core.cause.a.COMPLETED, (Exception) null);
        return true;
    }

    private boolean a(f task, Collection<f> sameTaskList, Collection<f> fileBusyList) {
        return a(task, this.f80542c, sameTaskList, fileBusyList) || a(task, this.f80543d, sameTaskList, fileBusyList) || a(task, this.f80544e, sameTaskList, fileBusyList);
    }

    boolean a(f task, Collection<e> calls, Collection<f> sameTaskList, Collection<f> fileBusyList) {
        a aVarB = g.j().b();
        Iterator<e> it2 = calls.iterator();
        while (it2.hasNext()) {
            e next = it2.next();
            if (!next.d()) {
                if (next.a(task)) {
                    if (!next.e()) {
                        if (sameTaskList != null) {
                            sameTaskList.add(task);
                        } else {
                            aVarB.a().a(task, com.sigmob.sdk.downloader.core.cause.a.SAME_TASK_BUSY, (Exception) null);
                        }
                        return true;
                    }
                    c.b(f80540b, "task: " + task.c() + " is finishing, move it to finishing list");
                    this.f80545f.add(next);
                    it2.remove();
                    return false;
                }
                File fileG = next.g();
                File fileM = task.m();
                if (fileG != null && fileM != null && fileG.equals(fileM)) {
                    if (fileBusyList != null) {
                        fileBusyList.add(task);
                    } else {
                        aVarB.a().a(task, com.sigmob.sdk.downloader.core.cause.a.FILE_BUSY, (Exception) null);
                    }
                    return true;
                }
            }
        }
        return false;
    }
}
