package com.facebook.cache.disk;

import androidx.annotation.VisibleForTesting;
import com.facebook.cache.common.CacheErrorLogger;
import com.facebook.cache.common.CacheEventListener;
import com.facebook.cache.common.k;
import com.facebook.common.statfs.StatFsHelper;
import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: loaded from: classes9.dex */
@ThreadSafe
@Nullsafe(Nullsafe.Mode.STRICT)
public class d implements h, f3.a {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final int f26787s = 1;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final double f26790v = 0.02d;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final long f26791w = -1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f26792a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f26793b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final CountDownLatch f26794c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f26795d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final CacheEventListener f26796e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @GuardedBy("mLock")
    @VisibleForTesting
    final Set<String> f26797f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f26798g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final long f26799h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final StatFsHelper f26800i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final com.facebook.cache.disk.c f26801j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final g f26802k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final CacheErrorLogger f26803l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final boolean f26804m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final b f26805n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final l3.a f26806o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Object f26807p = new Object();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f26808q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final Class<?> f26786r = d.class;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final long f26788t = TimeUnit.HOURS.toMillis(2);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final long f26789u = TimeUnit.MINUTES.toMillis(30);

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (d.this.f26807p) {
                d.this.t();
            }
            d.this.f26808q = true;
            d.this.f26794c.countDown();
        }
    }

    @VisibleForTesting
    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f26810a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f26811b = -1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f26812c = -1;

        b() {
        }

        public synchronized long a() {
            return this.f26812c;
        }

        public synchronized long b() {
            return this.f26811b;
        }

        public synchronized void c(long sizeIncrement, long countIncrement) {
            if (this.f26810a) {
                this.f26811b += sizeIncrement;
                this.f26812c += countIncrement;
            }
        }

        public synchronized boolean d() {
            return this.f26810a;
        }

        public synchronized void e() {
            this.f26810a = false;
            this.f26812c = -1L;
            this.f26811b = -1L;
        }

        public synchronized void f(long size, long count) {
            this.f26812c = count;
            this.f26811b = size;
            this.f26810a = true;
        }
    }

    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f26813a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f26814b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f26815c;

        public c(long cacheSizeLimitMinimum, long lowDiskSpaceCacheSizeLimit, long defaultCacheSizeLimit) {
            this.f26813a = cacheSizeLimitMinimum;
            this.f26814b = lowDiskSpaceCacheSizeLimit;
            this.f26815c = defaultCacheSizeLimit;
        }
    }

    public d(com.facebook.cache.disk.c diskStorage, g entryEvictionComparatorSupplier, c params, CacheEventListener cacheEventListener, CacheErrorLogger cacheErrorLogger, @Nullable f3.b diskTrimmableRegistry, final Executor executorForBackgrountInit, boolean indexPopulateAtStartupEnabled) {
        this.f26792a = params.f26814b;
        long j10 = params.f26815c;
        this.f26793b = j10;
        this.f26795d = j10;
        this.f26800i = StatFsHelper.e();
        this.f26801j = diskStorage;
        this.f26802k = entryEvictionComparatorSupplier;
        this.f26798g = -1L;
        this.f26796e = cacheEventListener;
        this.f26799h = params.f26813a;
        this.f26803l = cacheErrorLogger;
        this.f26805n = new b();
        this.f26806o = l3.e.a();
        this.f26804m = indexPopulateAtStartupEnabled;
        this.f26797f = new HashSet();
        if (diskTrimmableRegistry != null) {
            diskTrimmableRegistry.b(this);
        }
        if (!indexPopulateAtStartupEnabled) {
            this.f26794c = new CountDownLatch(0);
        } else {
            this.f26794c = new CountDownLatch(1);
            executorForBackgrountInit.execute(new a());
        }
    }

    private d3.a o(final com.facebook.cache.disk.c.d inserter, final com.facebook.cache.common.c key, String resourceId) throws IOException {
        d3.a aVarD;
        synchronized (this.f26807p) {
            aVarD = inserter.d(key);
            this.f26797f.add(resourceId);
            this.f26805n.c(aVarD.size(), 1L);
        }
        return aVarD;
    }

    @GuardedBy("mLock")
    private void p(long desiredSize, CacheEventListener.EvictionReason reason) throws IOException {
        try {
            Collection<com.facebook.cache.disk.c.InterfaceC0556c> collectionQ = q(this.f26801j.getEntries());
            long jB = this.f26805n.b();
            long j10 = jB - desiredSize;
            int i10 = 0;
            long j11 = 0;
            for (com.facebook.cache.disk.c.InterfaceC0556c interfaceC0556c : collectionQ) {
                if (j11 > j10) {
                    break;
                }
                long jB2 = this.f26801j.b(interfaceC0556c);
                this.f26797f.remove(interfaceC0556c.getId());
                if (jB2 > 0) {
                    i10++;
                    j11 += jB2;
                    j jVarJ = j.f().o(interfaceC0556c.getId()).l(reason).n(jB2).k(jB - j11).j(desiredSize);
                    this.f26796e.d(jVarJ);
                    jVarJ.g();
                }
            }
            this.f26805n.c(-j11, -i10);
            this.f26801j.e();
        } catch (IOException e10) {
            this.f26803l.a(CacheErrorLogger.CacheErrorCategory.EVICTION, f26786r, "evictAboveSize: " + e10.getMessage(), e10);
            throw e10;
        }
    }

    private Collection<com.facebook.cache.disk.c.InterfaceC0556c> q(Collection<com.facebook.cache.disk.c.InterfaceC0556c> allEntries) {
        long jNow = this.f26806o.now() + f26788t;
        ArrayList arrayList = new ArrayList(allEntries.size());
        ArrayList arrayList2 = new ArrayList(allEntries.size());
        for (com.facebook.cache.disk.c.InterfaceC0556c interfaceC0556c : allEntries) {
            if (interfaceC0556c.getTimestamp() > jNow) {
                arrayList.add(interfaceC0556c);
            } else {
                arrayList2.add(interfaceC0556c);
            }
        }
        Collections.sort(arrayList2, this.f26802k.get());
        arrayList.addAll(arrayList2);
        return arrayList;
    }

    private void s() throws IOException {
        synchronized (this.f26807p) {
            boolean zT = t();
            x();
            long jB = this.f26805n.b();
            if (jB > this.f26795d && !zT) {
                this.f26805n.e();
                t();
            }
            long j10 = this.f26795d;
            if (jB > j10) {
                p((j10 * 9) / 10, CacheEventListener.EvictionReason.CACHE_FULL);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @GuardedBy("mLock")
    public boolean t() {
        long jNow = this.f26806o.now();
        if (this.f26805n.d()) {
            long j10 = this.f26798g;
            if (j10 != -1 && jNow - j10 <= f26789u) {
                return false;
            }
        }
        return u();
    }

    @GuardedBy("mLock")
    private boolean u() {
        long j10;
        long jNow = this.f26806o.now();
        long j11 = f26788t + jNow;
        Set<String> hashSet = (this.f26804m && this.f26797f.isEmpty()) ? this.f26797f : this.f26804m ? new HashSet<>() : null;
        try {
            long size = 0;
            long jMax = -1;
            int size2 = 0;
            boolean z10 = false;
            int i10 = 0;
            int i11 = 0;
            for (com.facebook.cache.disk.c.InterfaceC0556c interfaceC0556c : this.f26801j.getEntries()) {
                i10++;
                size += interfaceC0556c.getSize();
                if (interfaceC0556c.getTimestamp() > j11) {
                    i11++;
                    size2 = (int) (((long) size2) + interfaceC0556c.getSize());
                    j10 = j11;
                    jMax = Math.max(interfaceC0556c.getTimestamp() - jNow, jMax);
                    z10 = true;
                } else {
                    j10 = j11;
                    if (this.f26804m) {
                        com.facebook.common.internal.i.i(hashSet);
                        hashSet.add(interfaceC0556c.getId());
                    }
                }
                j11 = j10;
            }
            if (z10) {
                this.f26803l.a(CacheErrorLogger.CacheErrorCategory.READ_INVALID_ENTRY, f26786r, "Future timestamp found in " + i11 + " files , with a total size of " + size2 + " bytes, and a maximum time delta of " + jMax + "ms", null);
            }
            long j12 = i10;
            if (this.f26805n.a() != j12 || this.f26805n.b() != size) {
                if (this.f26804m && this.f26797f != hashSet) {
                    com.facebook.common.internal.i.i(hashSet);
                    this.f26797f.clear();
                    this.f26797f.addAll(hashSet);
                }
                this.f26805n.f(size, j12);
            }
            this.f26798g = jNow;
            return true;
        } catch (IOException e10) {
            this.f26803l.a(CacheErrorLogger.CacheErrorCategory.GENERIC_IO, f26786r, "calcFileCacheSize: " + e10.getMessage(), e10);
            return false;
        }
    }

    private com.facebook.cache.disk.c.d v(final String resourceId, final com.facebook.cache.common.c key) throws IOException {
        s();
        return this.f26801j.insert(resourceId, key);
    }

    private void w(final double trimRatio) {
        synchronized (this.f26807p) {
            try {
                this.f26805n.e();
                t();
                long jB = this.f26805n.b();
                p(jB - ((long) (trimRatio * jB)), CacheEventListener.EvictionReason.CACHE_MANAGER_TRIMMED);
            } catch (IOException e10) {
                this.f26803l.a(CacheErrorLogger.CacheErrorCategory.EVICTION, f26786r, "trimBy: " + e10.getMessage(), e10);
            }
        }
    }

    @GuardedBy("mLock")
    private void x() {
        if (this.f26800i.l(this.f26801j.isExternal() ? StatFsHelper.StorageType.EXTERNAL : StatFsHelper.StorageType.INTERNAL, this.f26793b - this.f26805n.b())) {
            this.f26795d = this.f26792a;
        } else {
            this.f26795d = this.f26793b;
        }
    }

    @Override // com.facebook.cache.disk.h
    public com.facebook.cache.disk.c.a a() throws IOException {
        return this.f26801j.a();
    }

    @Override // com.facebook.cache.disk.h
    public boolean b(final com.facebook.cache.common.c key) throws Throwable {
        String str;
        IOException e10;
        String str2 = null;
        try {
            try {
                synchronized (this.f26807p) {
                    try {
                        List<String> listB = com.facebook.cache.common.d.b(key);
                        int i10 = 0;
                        while (i10 < listB.size()) {
                            String str3 = listB.get(i10);
                            if (this.f26801j.f(str3, key)) {
                                this.f26797f.add(str3);
                                return true;
                            }
                            i10++;
                            str2 = str3;
                        }
                        return false;
                    } catch (Throwable th) {
                        str = str2;
                        th = th;
                        try {
                            throw th;
                        } catch (IOException e11) {
                            e10 = e11;
                            j jVarM = j.f().i(key).o(str).m(e10);
                            this.f26796e.b(jVarM);
                            jVarM.g();
                            return false;
                        }
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e12) {
            str = null;
            e10 = e12;
        }
    }

    @Override // com.facebook.cache.disk.h
    @Nullable
    public d3.a c(final com.facebook.cache.common.c key) {
        d3.a aVarG;
        j jVarI = j.f().i(key);
        try {
            try {
                synchronized (this.f26807p) {
                    List<String> listB = com.facebook.cache.common.d.b(key);
                    String str = null;
                    aVarG = null;
                    for (int i10 = 0; i10 < listB.size(); i10++) {
                        str = listB.get(i10);
                        jVarI.o(str);
                        aVarG = this.f26801j.g(str, key);
                        if (aVarG != null) {
                            break;
                        }
                    }
                    if (aVarG == null) {
                        this.f26796e.e(jVarI);
                        this.f26797f.remove(str);
                    } else {
                        com.facebook.common.internal.i.i(str);
                        this.f26796e.h(jVarI);
                        this.f26797f.add(str);
                    }
                }
                jVarI.g();
                return aVarG;
            } catch (IOException e10) {
                this.f26803l.a(CacheErrorLogger.CacheErrorCategory.GENERIC_IO, f26786r, "getResource", e10);
                jVarI.m(e10);
                this.f26796e.b(jVarI);
                jVarI.g();
                return null;
            }
        } catch (Throwable th) {
            jVarI.g();
            throw th;
        }
    }

    @Override // com.facebook.cache.disk.h
    public void clearAll() {
        synchronized (this.f26807p) {
            try {
                this.f26801j.clearAll();
                this.f26797f.clear();
                this.f26796e.a();
            } catch (IOException | NullPointerException e10) {
                this.f26803l.a(CacheErrorLogger.CacheErrorCategory.EVICTION, f26786r, "clearAll: " + e10.getMessage(), e10);
            }
            this.f26805n.e();
        }
    }

    @Override // f3.a
    public void d() {
        clearAll();
    }

    @Override // com.facebook.cache.disk.h
    public boolean e(com.facebook.cache.common.c key) {
        synchronized (this.f26807p) {
            List<String> listB = com.facebook.cache.common.d.b(key);
            for (int i10 = 0; i10 < listB.size(); i10++) {
                if (this.f26797f.contains(listB.get(i10))) {
                    return true;
                }
            }
            return false;
        }
    }

    @Override // f3.a
    public void f() {
        synchronized (this.f26807p) {
            t();
            long jB = this.f26805n.b();
            long j10 = this.f26799h;
            if (j10 > 0 && jB > 0 && jB >= j10) {
                double d10 = 1.0d - (j10 / jB);
                if (d10 > f26790v) {
                    w(d10);
                }
            }
        }
    }

    @Override // com.facebook.cache.disk.h
    public boolean g(final com.facebook.cache.common.c key) {
        synchronized (this.f26807p) {
            if (e(key)) {
                return true;
            }
            try {
                List<String> listB = com.facebook.cache.common.d.b(key);
                for (int i10 = 0; i10 < listB.size(); i10++) {
                    String str = listB.get(i10);
                    if (this.f26801j.c(str, key)) {
                        this.f26797f.add(str);
                        return true;
                    }
                }
                return false;
            } catch (IOException unused) {
                return false;
            }
        }
    }

    @Override // com.facebook.cache.disk.h
    public long getCount() {
        return this.f26805n.a();
    }

    @Override // com.facebook.cache.disk.h
    public long getSize() {
        return this.f26805n.b();
    }

    @Override // com.facebook.cache.disk.h
    public long h(long cacheExpirationMs) {
        long j10;
        long jMax;
        synchronized (this.f26807p) {
            try {
                long jNow = this.f26806o.now();
                Collection<com.facebook.cache.disk.c.InterfaceC0556c> entries = this.f26801j.getEntries();
                long jB = this.f26805n.b();
                int i10 = 0;
                long j11 = 0;
                jMax = 0;
                for (com.facebook.cache.disk.c.InterfaceC0556c interfaceC0556c : entries) {
                    try {
                        long j12 = jNow;
                        long jMax2 = Math.max(1L, Math.abs(jNow - interfaceC0556c.getTimestamp()));
                        if (jMax2 >= cacheExpirationMs) {
                            long jB2 = this.f26801j.b(interfaceC0556c);
                            this.f26797f.remove(interfaceC0556c.getId());
                            if (jB2 > 0) {
                                i10++;
                                j11 += jB2;
                                j jVarK = j.f().o(interfaceC0556c.getId()).l(CacheEventListener.EvictionReason.CONTENT_STALE).n(jB2).k(jB - j11);
                                this.f26796e.d(jVarK);
                                jVarK.g();
                            }
                        } else {
                            jMax = Math.max(jMax, jMax2);
                        }
                        jNow = j12;
                    } catch (IOException e10) {
                        e = e10;
                        j10 = jMax;
                        this.f26803l.a(CacheErrorLogger.CacheErrorCategory.EVICTION, f26786r, "clearOldEntries: " + e.getMessage(), e);
                        jMax = j10;
                    }
                }
                this.f26801j.e();
                if (i10 > 0) {
                    t();
                    this.f26805n.c(-j11, -i10);
                }
            } catch (IOException e11) {
                e = e11;
                j10 = 0;
            }
        }
        return jMax;
    }

    @Override // com.facebook.cache.disk.h
    public void i(com.facebook.cache.common.c key) {
        synchronized (this.f26807p) {
            try {
                List<String> listB = com.facebook.cache.common.d.b(key);
                for (int i10 = 0; i10 < listB.size(); i10++) {
                    String str = listB.get(i10);
                    this.f26801j.remove(str);
                    this.f26797f.remove(str);
                }
            } catch (IOException e10) {
                this.f26803l.a(CacheErrorLogger.CacheErrorCategory.DELETE_FILE, f26786r, "delete: " + e10.getMessage(), e10);
            }
        }
    }

    @Override // com.facebook.cache.disk.h
    public d3.a insert(com.facebook.cache.common.c key, k callback) throws IOException {
        String strA;
        j jVarI = j.f().i(key);
        this.f26796e.c(jVarI);
        synchronized (this.f26807p) {
            strA = com.facebook.cache.common.d.a(key);
        }
        jVarI.o(strA);
        try {
            try {
                com.facebook.cache.disk.c.d dVarV = v(strA, key);
                try {
                    dVarV.c(callback, key);
                    d3.a aVarO = o(dVarV, key, strA);
                    jVarI.n(aVarO.size()).k(this.f26805n.b());
                    this.f26796e.f(jVarI);
                    if (!dVarV.a()) {
                        i3.a.q(f26786r, "Failed to delete temp file");
                    }
                    jVarI.g();
                    return aVarO;
                } catch (Throwable th) {
                    if (!dVarV.a()) {
                        i3.a.q(f26786r, "Failed to delete temp file");
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                jVarI.g();
                throw th2;
            }
        } catch (IOException e10) {
            jVarI.m(e10);
            this.f26796e.g(jVarI);
            i3.a.r(f26786r, "Failed inserting a file into the cache", e10);
            throw e10;
        }
    }

    @Override // com.facebook.cache.disk.h
    public boolean isEnabled() {
        return this.f26801j.isEnabled();
    }

    @VisibleForTesting
    protected void n() {
        try {
            this.f26794c.await();
        } catch (InterruptedException unused) {
            i3.a.q(f26786r, "Memory Index is not ready yet. ");
        }
    }

    public boolean r() {
        return this.f26808q || !this.f26804m;
    }
}
