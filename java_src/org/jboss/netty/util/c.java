package org.jboss.netty.util;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import org.jboss.netty.util.internal.ConcurrentIdentityHashMap;

/* JADX INFO: loaded from: classes10.dex */
public class c implements g {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final AtomicInteger f95705k = new AtomicInteger();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final org.jboss.netty.util.internal.g f95706l = new org.jboss.netty.util.internal.g();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f95707a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Thread f95708b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final AtomicInteger f95709c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f95710d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final long f95711e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final Set<a>[] f95712f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final org.jboss.netty.util.internal.f<a>[] f95713g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final int f95714h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final ReadWriteLock f95715i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    volatile int f95716j;

    private final class a implements f {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final int f95717g = 0;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static final int f95718h = 1;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private static final int f95719i = 2;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final h f95720a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final long f95721b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        volatile int f95722c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        volatile long f95723d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final AtomicInteger f95724e = new AtomicInteger(0);

        a(h hVar, long j10) {
            this.f95720a = hVar;
            this.f95721b = j10;
        }

        @Override // org.jboss.netty.util.f
        public h a() {
            return this.f95720a;
        }

        @Override // org.jboss.netty.util.f
        public g b() {
            return c.this;
        }

        public void c() {
            if (this.f95724e.compareAndSet(0, 2)) {
                try {
                    this.f95720a.a(this);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }

        @Override // org.jboss.netty.util.f
        public void cancel() {
            if (this.f95724e.compareAndSet(0, 1)) {
                c.this.f95712f[this.f95722c].remove(this);
            }
        }

        @Override // org.jboss.netty.util.f
        public boolean isCancelled() {
            return this.f95724e.get() == 1;
        }

        @Override // org.jboss.netty.util.f
        public boolean isExpired() {
            return this.f95724e.get() != 0;
        }

        public String toString() {
            long jCurrentTimeMillis = this.f95721b - System.currentTimeMillis();
            StringBuilder sb2 = new StringBuilder(192);
            sb2.append(a.class.getSimpleName());
            sb2.append('(');
            sb2.append("deadline: ");
            if (jCurrentTimeMillis > 0) {
                sb2.append(jCurrentTimeMillis);
                sb2.append(" ms later, ");
            } else if (jCurrentTimeMillis < 0) {
                sb2.append(-jCurrentTimeMillis);
                sb2.append(" ms ago, ");
            } else {
                sb2.append("now, ");
            }
            if (isCancelled()) {
                sb2.append(", cancelled");
            }
            sb2.append(')');
            return sb2.toString();
        }
    }

    private final class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f95726b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f95727c;

        b() {
        }

        private void a(List<a> list, long j10) {
            c.this.f95715i.writeLock().lock();
            try {
                c cVar = c.this;
                int i10 = (cVar.f95716j + 1) & c.this.f95714h;
                cVar.f95716j = i10;
                b(list, c.this.f95713g[i10], j10);
            } finally {
                c.this.f95715i.writeLock().unlock();
            }
        }

        private void b(List<a> list, org.jboss.netty.util.internal.f<a> fVar, long j10) {
            fVar.rewind();
            ArrayList<a> arrayList = null;
            while (fVar.hasNext()) {
                a next = fVar.next();
                if (next.f95723d <= 0) {
                    fVar.remove();
                    if (next.f95721b <= j10) {
                        list.add(next);
                    } else {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(next);
                    }
                } else {
                    next.f95723d--;
                }
            }
            if (arrayList != null) {
                for (a aVar : arrayList) {
                    c.this.e(aVar, aVar.f95721b - j10);
                }
            }
        }

        private void c(List<a> list) {
            for (int size = list.size() - 1; size >= 0; size--) {
                list.get(size).c();
            }
            list.clear();
        }

        private long d() {
            long j10 = this.f95726b + (c.this.f95711e * this.f95727c);
            while (true) {
                long jCurrentTimeMillis = (c.this.f95711e * this.f95727c) - (System.currentTimeMillis() - this.f95726b);
                if (org.jboss.netty.util.internal.d.d()) {
                    jCurrentTimeMillis = (jCurrentTimeMillis / 10) * 10;
                }
                if (jCurrentTimeMillis <= 0) {
                    this.f95727c++;
                    return j10;
                }
                try {
                    Thread.sleep(jCurrentTimeMillis);
                } catch (InterruptedException unused) {
                    if (c.this.f95709c.get() != 1) {
                        return -1L;
                    }
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            ArrayList arrayList = new ArrayList();
            this.f95726b = System.currentTimeMillis();
            this.f95727c = 1L;
            while (c.this.f95709c.get() == 1) {
                long jD = d();
                if (jD > 0) {
                    a(arrayList, jD);
                    c(arrayList);
                }
            }
        }
    }

    public c() {
        this(Executors.defaultThreadFactory());
    }

    private static org.jboss.netty.util.internal.f<a>[] b(Set<a>[] setArr) {
        org.jboss.netty.util.internal.f<a>[] fVarArr = new org.jboss.netty.util.internal.f[setArr.length];
        for (int i10 = 0; i10 < setArr.length; i10++) {
            fVarArr[i10] = (org.jboss.netty.util.internal.f) setArr[i10].iterator();
        }
        return fVarArr;
    }

    private static Set<a>[] c(int i10) {
        if (i10 <= 0) {
            throw new IllegalArgumentException("ticksPerWheel must be greater than 0: " + i10);
        }
        if (i10 > 1073741824) {
            throw new IllegalArgumentException("ticksPerWheel may not be greater than 2^30: " + i10);
        }
        int iD = d(i10);
        Set<a>[] setArr = new Set[iD];
        for (int i11 = 0; i11 < iD; i11++) {
            setArr[i11] = new MapBackedSet(new ConcurrentIdentityHashMap(16, 0.95f, 4));
        }
        return setArr;
    }

    private static int d(int i10) {
        int i11 = 1;
        while (i11 < i10) {
            i11 <<= 1;
        }
        return i11;
    }

    @Override // org.jboss.netty.util.g
    public f a(h hVar, long j10, TimeUnit timeUnit) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (hVar == null) {
            throw new NullPointerException("task");
        }
        if (timeUnit == null) {
            throw new NullPointerException("unit");
        }
        f();
        long millis = timeUnit.toMillis(j10);
        a aVar = new a(hVar, jCurrentTimeMillis + millis);
        e(aVar, millis);
        return aVar;
    }

    void e(a aVar, long j10) {
        long j11 = this.f95711e;
        if (j10 < j11) {
            j10 = j11;
        }
        long j12 = this.f95710d;
        long j13 = ((j10 % j12) / j11) + ((long) (j10 % j11 != 0 ? 1 : 0));
        long j14 = (j10 / j12) - ((long) (j10 % j12 != 0 ? 0 : 1));
        this.f95715i.readLock().lock();
        try {
            int i10 = (int) ((((long) this.f95716j) + j13) & ((long) this.f95714h));
            aVar.f95722c = i10;
            aVar.f95723d = j14;
            this.f95712f[i10].add(aVar);
        } finally {
            this.f95715i.readLock().unlock();
        }
    }

    public void f() {
        int i10 = this.f95709c.get();
        if (i10 == 0) {
            if (this.f95709c.compareAndSet(0, 1)) {
                this.f95708b.start();
            }
        } else if (i10 != 1) {
            if (i10 == 2) {
                throw new IllegalStateException("cannot be started once stopped");
            }
            throw new Error();
        }
    }

    @Override // org.jboss.netty.util.g
    public Set<f> stop() {
        if (Thread.currentThread() == this.f95708b) {
            throw new IllegalStateException(c.class.getSimpleName() + ".stop() cannot be called from " + h.class.getSimpleName());
        }
        if (this.f95709c.getAndSet(2) != 1) {
            return Collections.emptySet();
        }
        boolean z10 = false;
        while (this.f95708b.isAlive()) {
            this.f95708b.interrupt();
            try {
                this.f95708b.join(100L);
            } catch (InterruptedException unused) {
                z10 = true;
            }
        }
        if (z10) {
            Thread.currentThread().interrupt();
        }
        f95706l.a();
        HashSet hashSet = new HashSet();
        for (Set<a> set : this.f95712f) {
            hashSet.addAll(set);
            set.clear();
        }
        return Collections.unmodifiableSet(hashSet);
    }

    public c(long j10, TimeUnit timeUnit) {
        this(Executors.defaultThreadFactory(), j10, timeUnit);
    }

    public c(long j10, TimeUnit timeUnit, int i10) {
        this(Executors.defaultThreadFactory(), j10, timeUnit, i10);
    }

    public c(ThreadFactory threadFactory) {
        this(threadFactory, 100L, TimeUnit.MILLISECONDS);
    }

    public c(ThreadFactory threadFactory, long j10, TimeUnit timeUnit) {
        this(threadFactory, j10, timeUnit, 512);
    }

    public c(ThreadFactory threadFactory, long j10, TimeUnit timeUnit, int i10) {
        b bVar = new b();
        this.f95707a = bVar;
        this.f95709c = new AtomicInteger();
        this.f95715i = new ReentrantReadWriteLock();
        if (threadFactory == null) {
            throw new NullPointerException("threadFactory");
        }
        if (timeUnit == null) {
            throw new NullPointerException("unit");
        }
        if (j10 <= 0) {
            throw new IllegalArgumentException("tickDuration must be greater than 0: " + j10);
        }
        if (i10 > 0) {
            Set<a>[] setArrC = c(i10);
            this.f95712f = setArrC;
            this.f95713g = b(setArrC);
            this.f95714h = setArrC.length - 1;
            long millis = timeUnit.toMillis(j10);
            this.f95711e = millis;
            if (millis != Long.MAX_VALUE && millis < Long.MAX_VALUE / ((long) setArrC.length)) {
                this.f95710d = millis * ((long) setArrC.length);
                this.f95708b = threadFactory.newThread(new e(bVar, "Hashed wheel timer #" + f95705k.incrementAndGet()));
                f95706l.b();
                return;
            }
            throw new IllegalArgumentException("tickDuration is too long: " + millis + ' ' + timeUnit);
        }
        throw new IllegalArgumentException("ticksPerWheel must be greater than 0: " + i10);
    }
}
