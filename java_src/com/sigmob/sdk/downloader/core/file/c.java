package com.sigmob.sdk.downloader.core.file;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.LockSupport;

/* JADX INFO: loaded from: classes3.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f80635a = "FileLock";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final long f80636d = TimeUnit.MILLISECONDS.toNanos(100);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<String, AtomicInteger> f80637b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map<String, Thread> f80638c;

    c() {
        this(new HashMap(), new HashMap());
    }

    void a() {
        LockSupport.park(Long.valueOf(f80636d));
    }

    public void b(String path) {
        AtomicInteger atomicInteger;
        Thread thread;
        synchronized (this.f80637b) {
            atomicInteger = this.f80637b.get(path);
        }
        if (atomicInteger == null || atomicInteger.decrementAndGet() != 0) {
            return;
        }
        com.sigmob.sdk.downloader.core.c.b(f80635a, "decreaseLock decrease lock-count to 0 " + path);
        synchronized (this.f80638c) {
            thread = this.f80638c.get(path);
            if (thread != null) {
                this.f80638c.remove(path);
            }
        }
        if (thread != null) {
            com.sigmob.sdk.downloader.core.c.b(f80635a, "decreaseLock " + path + " unpark locked thread " + atomicInteger);
            a(thread);
        }
        synchronized (this.f80637b) {
            this.f80637b.remove(path);
        }
    }

    public void c(String filePath) {
        AtomicInteger atomicInteger;
        synchronized (this.f80637b) {
            atomicInteger = this.f80637b.get(filePath);
        }
        if (atomicInteger == null || atomicInteger.get() <= 0) {
            return;
        }
        synchronized (this.f80638c) {
            this.f80638c.put(filePath, Thread.currentThread());
        }
        com.sigmob.sdk.downloader.core.c.b(f80635a, "waitForRelease start " + filePath);
        while (!a(atomicInteger)) {
            a();
        }
        com.sigmob.sdk.downloader.core.c.b(f80635a, "waitForRelease finish " + filePath);
    }

    c(Map<String, AtomicInteger> fileLockCountMap, Map<String, Thread> waitThreadForFileLockMap) {
        this.f80637b = fileLockCountMap;
        this.f80638c = waitThreadForFileLockMap;
    }

    public void a(String path) {
        AtomicInteger atomicInteger;
        synchronized (this.f80637b) {
            atomicInteger = this.f80637b.get(path);
        }
        if (atomicInteger == null) {
            atomicInteger = new AtomicInteger(0);
            synchronized (this.f80637b) {
                this.f80637b.put(path, atomicInteger);
            }
        }
        com.sigmob.sdk.downloader.core.c.b(f80635a, "increaseLock increase lock-count to " + atomicInteger.incrementAndGet() + path);
    }

    void a(Thread lockedThread) {
        LockSupport.unpark(lockedThread);
    }

    boolean a(AtomicInteger lockCount) {
        return lockCount.get() <= 0;
    }
}
