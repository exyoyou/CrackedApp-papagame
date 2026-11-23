package com.sdk.d;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractQueue;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes2.dex */
public class f<E> extends AbstractQueue<E> implements BlockingQueue<E>, Serializable {
    private static final long serialVersionUID = -6903933977591709194L;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f78502a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicInteger f78503b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public transient com.sdk.d.a<E> f78504c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public transient com.sdk.d.a<E> f78505d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ReentrantLock f78506e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Condition f78507f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ReentrantLock f78508g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Condition f78509h;

    public class a implements Iterator<E> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public com.sdk.d.a<E> f78510a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public com.sdk.d.a<E> f78511b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public E f78512c;

        public a() {
            f.this.a();
            try {
                com.sdk.d.a<E> aVar = f.this.f78504c.f78474c;
                this.f78510a = aVar;
                if (aVar != null) {
                    this.f78512c = aVar.a();
                }
            } finally {
                f.this.b();
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f78510a != null;
        }

        @Override // java.util.Iterator
        public E next() {
            com.sdk.d.a aVar;
            f.this.a();
            try {
                com.sdk.d.a aVar2 = this.f78510a;
                if (aVar2 == null) {
                    throw new NoSuchElementException();
                }
                E e10 = this.f78512c;
                this.f78511b = aVar2;
                while (true) {
                    aVar = aVar2.f78474c;
                    if (aVar != aVar2) {
                        if (aVar == null || aVar.a() != null) {
                            break;
                            break;
                        }
                        aVar2 = aVar;
                    } else {
                        aVar = f.this.f78504c.f78474c;
                        break;
                    }
                }
                this.f78510a = aVar;
                this.f78512c = aVar == null ? null : (E) aVar.a();
                f.this.b();
                return e10;
            } catch (Throwable th) {
                f.this.b();
                throw th;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Iterator
        public void remove() {
            com.sdk.d.a aVar;
            if (this.f78511b == null) {
                throw new IllegalStateException();
            }
            f.this.a();
            try {
                com.sdk.d.a<E> aVar2 = this.f78511b;
                this.f78511b = null;
                com.sdk.d.a aVar3 = f.this.f78504c;
                do {
                    aVar = aVar3;
                    aVar3 = aVar3.f78474c;
                    if (aVar3 != null) {
                    }
                } while (aVar3 != aVar2);
                f.this.a(aVar3, aVar);
            } finally {
                f.this.b();
            }
        }
    }

    public f() {
        this(Integer.MAX_VALUE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.f78503b.set(0);
        com.sdk.d.a<E> aVar = new com.sdk.d.a<>(null);
        this.f78504c = aVar;
        this.f78505d = aVar;
        while (true) {
            Object object = objectInputStream.readObject();
            if (object == null) {
                return;
            } else {
                add(object);
            }
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        a();
        try {
            objectOutputStream.defaultWriteObject();
            com.sdk.d.a aVar = this.f78504c;
            while (true) {
                aVar = aVar.f78474c;
                if (aVar == null) {
                    objectOutputStream.writeObject(null);
                    return;
                }
                objectOutputStream.writeObject(aVar.a());
            }
        } finally {
            b();
        }
    }

    public void a() {
        this.f78508g.lock();
        this.f78506e.lock();
    }

    public void b() {
        this.f78506e.unlock();
        this.f78508g.unlock();
    }

    public final void c() {
        ReentrantLock reentrantLock = this.f78506e;
        reentrantLock.lock();
        try {
            this.f78507f.signal();
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v2, types: [com.sdk.d.a, com.sdk.d.a<T>] */
    @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        a();
        try {
            ?? r10 = this.f78504c;
            while (true) {
                com.sdk.d.a aVar = r10.f78474c;
                if (aVar == null) {
                    break;
                }
                r10.f78474c = r10;
                aVar.a(null);
                r10 = (com.sdk.d.a<E>) aVar;
            }
            this.f78504c = this.f78505d;
            if (this.f78503b.getAndSet(0) == this.f78502a) {
                this.f78509h.signal();
            }
        } finally {
            b();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.concurrent.BlockingQueue
    public boolean contains(Object obj) {
        if (obj == null) {
            return false;
        }
        a();
        try {
            com.sdk.d.a aVar = this.f78504c;
            do {
                aVar = aVar.f78474c;
                if (aVar == null) {
                    return false;
                }
            } while (!obj.equals(aVar.a()));
            return true;
        } finally {
            b();
        }
    }

    public final void d() {
        ReentrantLock reentrantLock = this.f78508g;
        reentrantLock.lock();
        try {
            this.f78509h.signal();
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // java.util.concurrent.BlockingQueue
    public int drainTo(Collection<? super E> collection) {
        return drainTo(collection, Integer.MAX_VALUE);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return new a();
    }

    @Override // java.util.Queue, java.util.concurrent.BlockingQueue
    public boolean offer(E e10) {
        int andIncrement;
        e10.getClass();
        AtomicInteger atomicInteger = this.f78503b;
        if (atomicInteger.get() == this.f78502a) {
            return false;
        }
        com.sdk.d.a<E> aVar = new com.sdk.d.a<>(e10);
        ReentrantLock reentrantLock = this.f78508g;
        reentrantLock.lock();
        try {
            if (atomicInteger.get() < this.f78502a) {
                a(aVar);
                andIncrement = atomicInteger.getAndIncrement();
                if (andIncrement + 1 < this.f78502a) {
                    this.f78509h.signal();
                }
            } else {
                andIncrement = -1;
            }
            reentrantLock.unlock();
            if (andIncrement == 0) {
                c();
            }
            return andIncrement >= 0;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @Override // java.util.Queue
    public E peek() {
        if (this.f78503b.get() == 0) {
            return null;
        }
        ReentrantLock reentrantLock = this.f78506e;
        reentrantLock.lock();
        try {
            com.sdk.d.a<E> aVar = this.f78504c.f78474c;
            if (aVar == null) {
                return null;
            }
            return aVar.a();
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // java.util.Queue
    public E poll() {
        int andDecrement;
        AtomicInteger atomicInteger = this.f78503b;
        E eA = null;
        if (atomicInteger.get() == 0) {
            return null;
        }
        ReentrantLock reentrantLock = this.f78506e;
        reentrantLock.lock();
        try {
            if (atomicInteger.get() > 0) {
                eA = a(null);
                andDecrement = atomicInteger.getAndDecrement();
                if (andDecrement > 1) {
                    this.f78507f.signal();
                }
            } else {
                andDecrement = -1;
            }
            reentrantLock.unlock();
            if (andDecrement == this.f78502a) {
                d();
            }
            return eA;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @Override // java.util.concurrent.BlockingQueue
    public void put(E e10) throws InterruptedException {
        e10.getClass();
        com.sdk.d.a<E> aVar = new com.sdk.d.a<>(e10);
        ReentrantLock reentrantLock = this.f78508g;
        AtomicInteger atomicInteger = this.f78503b;
        reentrantLock.lockInterruptibly();
        while (atomicInteger.get() == this.f78502a) {
            try {
                this.f78509h.await();
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        a(aVar);
        int andIncrement = atomicInteger.getAndIncrement();
        if (andIncrement + 1 < this.f78502a) {
            this.f78509h.signal();
        }
        reentrantLock.unlock();
        if (andIncrement == 0) {
            c();
        }
    }

    @Override // java.util.concurrent.BlockingQueue
    public int remainingCapacity() {
        return this.f78502a - this.f78503b.get();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.concurrent.BlockingQueue
    public boolean remove(Object obj) {
        com.sdk.d.a aVar;
        if (obj == null) {
            return false;
        }
        a();
        try {
            com.sdk.d.a aVar2 = this.f78504c;
            do {
                aVar = aVar2;
                aVar2 = aVar2.f78474c;
                if (aVar2 == null) {
                    return false;
                }
            } while (!obj.equals(aVar2.a()));
            a(aVar2, aVar);
            return true;
        } finally {
            b();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        return this.f78503b.get();
    }

    @Override // java.util.concurrent.BlockingQueue
    public E take() throws InterruptedException {
        AtomicInteger atomicInteger = this.f78503b;
        ReentrantLock reentrantLock = this.f78506e;
        reentrantLock.lockInterruptibly();
        while (atomicInteger.get() == 0) {
            try {
                this.f78507f.await();
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        E eA = a(null);
        int andDecrement = atomicInteger.getAndDecrement();
        if (andDecrement > 1) {
            this.f78507f.signal();
        }
        reentrantLock.unlock();
        if (andDecrement == this.f78502a) {
            d();
        }
        return eA;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public Object[] toArray() {
        a();
        try {
            Object[] objArr = new Object[this.f78503b.get()];
            com.sdk.d.a aVar = this.f78504c;
            int i10 = 0;
            while (true) {
                aVar = aVar.f78474c;
                if (aVar == null) {
                    b();
                    return objArr;
                }
                int i11 = i10 + 1;
                objArr[i10] = aVar.a();
                i10 = i11;
            }
        } catch (Throwable th) {
            b();
            throw th;
        }
    }

    public f(int i10) {
        this.f78503b = new AtomicInteger();
        ReentrantLock reentrantLock = new ReentrantLock();
        this.f78506e = reentrantLock;
        this.f78507f = reentrantLock.newCondition();
        ReentrantLock reentrantLock2 = new ReentrantLock();
        this.f78508g = reentrantLock2;
        this.f78509h = reentrantLock2.newCondition();
        if (i10 <= 0) {
            throw new IllegalArgumentException();
        }
        this.f78502a = i10;
        com.sdk.d.a<E> aVar = new com.sdk.d.a<>(null);
        this.f78504c = aVar;
        this.f78505d = aVar;
    }

    public void a(com.sdk.d.a<E> aVar, com.sdk.d.a<E> aVar2) {
        aVar.a(null);
        aVar2.f78474c = aVar.f78474c;
        if (this.f78505d == aVar) {
            this.f78505d = aVar2;
        }
        if (this.f78503b.getAndDecrement() == this.f78502a) {
            this.f78509h.signal();
        }
    }

    @Override // java.util.concurrent.BlockingQueue
    public int drainTo(Collection<? super E> collection, int i10) {
        collection.getClass();
        if (collection == this) {
            throw new IllegalArgumentException();
        }
        boolean z10 = false;
        if (i10 <= 0) {
            return 0;
        }
        ReentrantLock reentrantLock = this.f78506e;
        reentrantLock.lock();
        try {
            int iMin = Math.min(i10, this.f78503b.get());
            com.sdk.d.a<E> aVar = this.f78504c;
            int i11 = 0;
            while (i11 < iMin) {
                try {
                    com.sdk.d.a aVar2 = aVar.f78474c;
                    collection.add((Object) aVar2.a());
                    aVar2.a(null);
                    aVar.f78474c = (com.sdk.d.a<T>) aVar;
                    i11++;
                    aVar = (com.sdk.d.a<E>) aVar2;
                } catch (Throwable th) {
                    if (i11 > 0) {
                        this.f78504c = (com.sdk.d.a<E>) aVar;
                        if (this.f78503b.getAndAdd(-i11) == this.f78502a) {
                        }
                    }
                    throw th;
                }
            }
            if (i11 > 0) {
                this.f78504c = (com.sdk.d.a<E>) aVar;
                if (this.f78503b.getAndAdd(-i11) == this.f78502a) {
                    z10 = true;
                }
            }
            reentrantLock.unlock();
            if (z10) {
                d();
            }
            return iMin;
        } catch (Throwable th2) {
            reentrantLock.unlock();
            if (0 != 0) {
                d();
            }
            throw th2;
        }
    }

    @Override // java.util.concurrent.BlockingQueue
    public boolean offer(E e10, long j10, TimeUnit timeUnit) throws InterruptedException {
        e10.getClass();
        long nanos = timeUnit.toNanos(j10);
        ReentrantLock reentrantLock = this.f78508g;
        AtomicInteger atomicInteger = this.f78503b;
        reentrantLock.lockInterruptibly();
        while (atomicInteger.get() == this.f78502a) {
            try {
                if (nanos <= 0) {
                    reentrantLock.unlock();
                    return false;
                }
                nanos = this.f78509h.awaitNanos(nanos);
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        a(new com.sdk.d.a<>(e10));
        int andIncrement = atomicInteger.getAndIncrement();
        if (andIncrement + 1 < this.f78502a) {
            this.f78509h.signal();
        }
        reentrantLock.unlock();
        if (andIncrement != 0) {
            return true;
        }
        c();
        return true;
    }

    @Override // java.util.concurrent.BlockingQueue
    public E poll(long j10, TimeUnit timeUnit) throws InterruptedException {
        long nanos = timeUnit.toNanos(j10);
        AtomicInteger atomicInteger = this.f78503b;
        ReentrantLock reentrantLock = this.f78506e;
        reentrantLock.lockInterruptibly();
        while (atomicInteger.get() == 0) {
            try {
                if (nanos <= 0) {
                    reentrantLock.unlock();
                    return null;
                }
                nanos = this.f78507f.awaitNanos(nanos);
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        E eA = a(null);
        int andDecrement = atomicInteger.getAndDecrement();
        if (andDecrement > 1) {
            this.f78507f.signal();
        }
        reentrantLock.unlock();
        if (andDecrement == this.f78502a) {
            d();
        }
        return eA;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        a();
        try {
            int i10 = this.f78503b.get();
            if (tArr.length < i10) {
                tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), i10));
            }
            com.sdk.d.a aVar = this.f78504c;
            int i11 = 0;
            while (true) {
                aVar = aVar.f78474c;
                if (aVar == null) {
                    break;
                }
                tArr[i11] = aVar.a();
                i11++;
            }
            if (tArr.length > i11) {
                tArr[i11] = null;
            }
            return tArr;
        } finally {
            b();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final synchronized E a(com.sdk.d.a<E> aVar) {
        boolean z10;
        try {
            if (aVar == 0) {
                com.sdk.d.a<E> aVar2 = this.f78504c;
                com.sdk.d.a<E> aVar3 = (com.sdk.d.a<E>) aVar2.f78474c;
                aVar2.f78474c = aVar2;
                this.f78504c = aVar3;
                E eA = aVar3.a();
                aVar3.a(null);
                return eA;
            }
            com.sdk.d.a aVar4 = this.f78504c;
            while (true) {
                com.sdk.d.a<T> aVar5 = aVar4.f78474c;
                if (aVar5 == 0) {
                    z10 = false;
                    break;
                }
                if (aVar5.f78473b.f78500a.ordinal() > aVar.f78473b.f78500a.ordinal()) {
                    aVar4.f78474c = aVar;
                    aVar.f78474c = aVar5;
                    z10 = true;
                    break;
                }
                aVar4 = aVar4.f78474c;
            }
            if (!z10) {
                this.f78505d.f78474c = aVar;
                this.f78505d = aVar;
            }
            return null;
        } catch (Throwable th) {
            throw th;
        }
    }
}
