package org.apache.http.pool;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.concurrent.FutureCallback;
import org.apache.http.pool.PoolEntry;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;

/* JADX INFO: loaded from: classes.dex */
@ThreadSafe
public abstract class AbstractConnPool<T, C, E extends PoolEntry<T, C>> implements ConnPool<T, E>, ConnPoolControl<T> {
    private final ConnFactory<T, C> connFactory;
    private volatile int defaultMaxPerRoute;
    private volatile boolean isShutDown;
    private volatile int maxTotal;
    private final Lock lock = new ReentrantLock();
    private final Map<T, RouteSpecificPool<T, C, E>> routeToPool = new HashMap();
    private final Set<E> leased = new HashSet();
    private final LinkedList<E> available = new LinkedList<>();
    private final LinkedList<PoolEntryFuture<E>> pending = new LinkedList<>();
    private final Map<T, Integer> maxPerRoute = new HashMap();

    public AbstractConnPool(ConnFactory<T, C> connFactory, int i10, int i11) {
        this.connFactory = (ConnFactory) Args.notNull(connFactory, "Connection factory");
        this.defaultMaxPerRoute = Args.notNegative(i10, "Max per route value");
        this.maxTotal = Args.notNegative(i11, "Max total value");
    }

    private int getMax(T t10) {
        Integer num = this.maxPerRoute.get(t10);
        return num != null ? num.intValue() : this.defaultMaxPerRoute;
    }

    private RouteSpecificPool<T, C, E> getPool(final T t10) {
        RouteSpecificPool<T, C, E> routeSpecificPool = this.routeToPool.get(t10);
        if (routeSpecificPool != null) {
            return routeSpecificPool;
        }
        RouteSpecificPool<T, C, E> routeSpecificPool2 = (RouteSpecificPool<T, C, E>) new RouteSpecificPool<T, C, E>(t10) { // from class: org.apache.http.pool.AbstractConnPool.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // org.apache.http.pool.RouteSpecificPool
            protected E createEntry(C c10) {
                return (E) AbstractConnPool.this.createEntry(t10, c10);
            }
        };
        this.routeToPool.put(t10, routeSpecificPool2);
        return routeSpecificPool2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public E getPoolEntryBlocking(T t10, Object obj, long j10, TimeUnit timeUnit, PoolEntryFuture<E> poolEntryFuture) throws InterruptedException, TimeoutException, IOException {
        E e10 = null;
        Date date = j10 > 0 ? new Date(System.currentTimeMillis() + timeUnit.toMillis(j10)) : null;
        this.lock.lock();
        try {
            RouteSpecificPool pool = getPool(t10);
            while (e10 == null) {
                Asserts.check(!this.isShutDown, "Connection pool shut down");
                while (true) {
                    e10 = (E) pool.getFree(obj);
                    if (e10 == null) {
                        break;
                    }
                    if (!e10.isClosed() && !e10.isExpired(System.currentTimeMillis())) {
                        break;
                    }
                    e10.close();
                    this.available.remove(e10);
                    pool.free(e10, false);
                }
                if (e10 != null) {
                    this.available.remove(e10);
                    this.leased.add(e10);
                    this.lock.unlock();
                    return e10;
                }
                int max = getMax(t10);
                int iMax = Math.max(0, (pool.getAllocatedCount() + 1) - max);
                if (iMax > 0) {
                    for (int i10 = 0; i10 < iMax; i10++) {
                        PoolEntry lastUsed = pool.getLastUsed();
                        if (lastUsed == null) {
                            break;
                        }
                        lastUsed.close();
                        this.available.remove(lastUsed);
                        pool.remove(lastUsed);
                    }
                }
                if (pool.getAllocatedCount() < max) {
                    int iMax2 = Math.max(this.maxTotal - this.leased.size(), 0);
                    if (iMax2 > 0) {
                        if (this.available.size() > iMax2 - 1 && !this.available.isEmpty()) {
                            E eRemoveLast = this.available.removeLast();
                            eRemoveLast.close();
                            getPool(eRemoveLast.getRoute()).remove(eRemoveLast);
                        }
                        E e11 = (E) pool.add(this.connFactory.create(t10));
                        this.leased.add(e11);
                        this.lock.unlock();
                        return e11;
                    }
                }
                try {
                    pool.queue(poolEntryFuture);
                    this.pending.add(poolEntryFuture);
                    boolean zAwait = poolEntryFuture.await(date);
                    pool.unqueue(poolEntryFuture);
                    this.pending.remove(poolEntryFuture);
                    if (!zAwait && date != null && date.getTime() <= System.currentTimeMillis()) {
                        break;
                    }
                } catch (Throwable th) {
                    pool.unqueue(poolEntryFuture);
                    this.pending.remove(poolEntryFuture);
                    throw th;
                }
            }
            throw new TimeoutException("Timeout waiting for connection");
        } catch (Throwable th2) {
            this.lock.unlock();
            throw th2;
        }
    }

    private void purgePoolMap() {
        Iterator<Map.Entry<T, RouteSpecificPool<T, C, E>>> it2 = this.routeToPool.entrySet().iterator();
        while (it2.hasNext()) {
            RouteSpecificPool<T, C, E> value = it2.next().getValue();
            if (value.getPendingCount() + value.getAllocatedCount() == 0) {
                it2.remove();
            }
        }
    }

    public void closeExpired() {
        final long jCurrentTimeMillis = System.currentTimeMillis();
        enumAvailable(new PoolEntryCallback<T, C>() { // from class: org.apache.http.pool.AbstractConnPool.4
            @Override // org.apache.http.pool.PoolEntryCallback
            public void process(PoolEntry<T, C> poolEntry) {
                if (poolEntry.isExpired(jCurrentTimeMillis)) {
                    poolEntry.close();
                }
            }
        });
    }

    public void closeIdle(long j10, TimeUnit timeUnit) {
        Args.notNull(timeUnit, "Time unit");
        long millis = timeUnit.toMillis(j10);
        if (millis < 0) {
            millis = 0;
        }
        final long jCurrentTimeMillis = System.currentTimeMillis() - millis;
        enumAvailable(new PoolEntryCallback<T, C>() { // from class: org.apache.http.pool.AbstractConnPool.3
            @Override // org.apache.http.pool.PoolEntryCallback
            public void process(PoolEntry<T, C> poolEntry) {
                if (poolEntry.getUpdated() <= jCurrentTimeMillis) {
                    poolEntry.close();
                }
            }
        });
    }

    protected abstract E createEntry(T t10, C c10);

    protected void enumAvailable(PoolEntryCallback<T, C> poolEntryCallback) {
        this.lock.lock();
        try {
            Iterator<E> it2 = this.available.iterator();
            while (it2.hasNext()) {
                E next = it2.next();
                poolEntryCallback.process(next);
                if (next.isClosed()) {
                    getPool(next.getRoute()).remove(next);
                    it2.remove();
                }
            }
            purgePoolMap();
        } finally {
            this.lock.unlock();
        }
    }

    protected void enumLeased(PoolEntryCallback<T, C> poolEntryCallback) {
        this.lock.lock();
        try {
            Iterator<E> it2 = this.leased.iterator();
            while (it2.hasNext()) {
                poolEntryCallback.process(it2.next());
            }
            this.lock.unlock();
        } catch (Throwable th) {
            this.lock.unlock();
            throw th;
        }
    }

    @Override // org.apache.http.pool.ConnPoolControl
    public int getDefaultMaxPerRoute() {
        this.lock.lock();
        try {
            return this.defaultMaxPerRoute;
        } finally {
            this.lock.unlock();
        }
    }

    @Override // org.apache.http.pool.ConnPoolControl
    public int getMaxPerRoute(T t10) {
        Args.notNull(t10, "Route");
        this.lock.lock();
        try {
            return getMax(t10);
        } finally {
            this.lock.unlock();
        }
    }

    @Override // org.apache.http.pool.ConnPoolControl
    public int getMaxTotal() {
        this.lock.lock();
        try {
            return this.maxTotal;
        } finally {
            this.lock.unlock();
        }
    }

    @Override // org.apache.http.pool.ConnPoolControl
    public PoolStats getStats(T t10) {
        Args.notNull(t10, "Route");
        this.lock.lock();
        try {
            RouteSpecificPool<T, C, E> pool = getPool(t10);
            return new PoolStats(pool.getLeasedCount(), pool.getPendingCount(), pool.getAvailableCount(), getMax(t10));
        } finally {
            this.lock.unlock();
        }
    }

    @Override // org.apache.http.pool.ConnPoolControl
    public PoolStats getTotalStats() {
        this.lock.lock();
        try {
            return new PoolStats(this.leased.size(), this.pending.size(), this.available.size(), this.maxTotal);
        } finally {
            this.lock.unlock();
        }
    }

    public boolean isShutdown() {
        return this.isShutDown;
    }

    @Override // org.apache.http.pool.ConnPool
    public Future<E> lease(final T t10, final Object obj, FutureCallback<E> futureCallback) {
        Args.notNull(t10, "Route");
        Asserts.check(!this.isShutDown, "Connection pool shut down");
        return new PoolEntryFuture<E>(this.lock, futureCallback) { // from class: org.apache.http.pool.AbstractConnPool.2
            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // org.apache.http.pool.PoolEntryFuture
            public E getPoolEntry(long j10, TimeUnit timeUnit) throws InterruptedException, TimeoutException, IOException {
                E e10 = (E) AbstractConnPool.this.getPoolEntryBlocking(t10, obj, j10, timeUnit, this);
                AbstractConnPool.this.onLease(e10);
                return e10;
            }
        };
    }

    protected void onLease(E e10) {
    }

    protected void onRelease(E e10) {
    }

    @Override // org.apache.http.pool.ConnPoolControl
    public void setDefaultMaxPerRoute(int i10) {
        Args.notNegative(i10, "Max per route value");
        this.lock.lock();
        try {
            this.defaultMaxPerRoute = i10;
        } finally {
            this.lock.unlock();
        }
    }

    @Override // org.apache.http.pool.ConnPoolControl
    public void setMaxPerRoute(T t10, int i10) {
        Args.notNull(t10, "Route");
        Args.notNegative(i10, "Max per route value");
        this.lock.lock();
        try {
            this.maxPerRoute.put(t10, Integer.valueOf(i10));
        } finally {
            this.lock.unlock();
        }
    }

    @Override // org.apache.http.pool.ConnPoolControl
    public void setMaxTotal(int i10) {
        Args.notNegative(i10, "Max value");
        this.lock.lock();
        try {
            this.maxTotal = i10;
        } finally {
            this.lock.unlock();
        }
    }

    public void shutdown() throws IOException {
        if (this.isShutDown) {
            return;
        }
        this.isShutDown = true;
        this.lock.lock();
        try {
            Iterator<E> it2 = this.available.iterator();
            while (it2.hasNext()) {
                it2.next().close();
            }
            Iterator<E> it3 = this.leased.iterator();
            while (it3.hasNext()) {
                it3.next().close();
            }
            Iterator<RouteSpecificPool<T, C, E>> it4 = this.routeToPool.values().iterator();
            while (it4.hasNext()) {
                it4.next().shutdown();
            }
            this.routeToPool.clear();
            this.leased.clear();
            this.available.clear();
        } finally {
            this.lock.unlock();
        }
    }

    public String toString() {
        return "[leased: " + this.leased + "][available: " + this.available + "][pending: " + this.pending + "]";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.http.pool.ConnPool
    public void release(E e10, boolean z10) {
        this.lock.lock();
        try {
            if (this.leased.remove(e10)) {
                RouteSpecificPool pool = getPool(e10.getRoute());
                pool.free(e10, z10);
                if (!z10 || this.isShutDown) {
                    e10.close();
                } else {
                    this.available.addFirst(e10);
                    onRelease(e10);
                }
                PoolEntryFuture<E> poolEntryFutureNextPending = pool.nextPending();
                if (poolEntryFutureNextPending != null) {
                    this.pending.remove(poolEntryFutureNextPending);
                } else {
                    poolEntryFutureNextPending = this.pending.poll();
                }
                if (poolEntryFutureNextPending != null) {
                    poolEntryFutureNextPending.wakeup();
                }
            }
        } finally {
            this.lock.unlock();
        }
    }

    public Future<E> lease(T t10, Object obj) {
        return lease(t10, obj, null);
    }
}
