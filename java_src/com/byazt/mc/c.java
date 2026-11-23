package com.byazt.mc;

import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1001, 20})
public final class c<T> implements BlockingQueue<T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BlockingQueue<T> f16854c;

    public c(BlockingQueue blockingQueue) {
        if (blockingQueue == null) {
            this.f16854c = new SynchronousQueue();
        } else {
            this.f16854c = blockingQueue;
        }
    }

    @Override // java.util.concurrent.BlockingQueue, java.util.Queue, java.util.Collection
    public boolean add(T t10) {
        return this.f16854c.add(t10);
    }

    @Override // java.util.Collection
    public boolean addAll(Collection collection) {
        return this.f16854c.addAll(collection);
    }

    public final String c() {
        return this.f16854c.getClass().getName();
    }

    @Override // java.util.Collection
    public void clear() {
        this.f16854c.clear();
    }

    @Override // java.util.concurrent.BlockingQueue, java.util.Collection
    public boolean contains(Object obj) {
        return this.f16854c.contains(obj);
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection collection) {
        return this.f16854c.containsAll(collection);
    }

    @Override // java.util.concurrent.BlockingQueue
    public int drainTo(Collection collection) {
        return this.f16854c.drainTo(collection);
    }

    @Override // java.util.Queue
    public T element() {
        return this.f16854c.element();
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return this.f16854c.isEmpty();
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        return this.f16854c.iterator();
    }

    @Override // java.util.concurrent.BlockingQueue, java.util.Queue
    public boolean offer(T t10) {
        return this.f16854c.offer(t10);
    }

    @Override // java.util.Queue
    public T peek() {
        return this.f16854c.peek();
    }

    @Override // java.util.concurrent.BlockingQueue
    public T poll(long j10, TimeUnit timeUnit) throws InterruptedException {
        try {
            return this.f16854c.poll(j10, timeUnit);
        } catch (IllegalMonitorStateException unused) {
            return null;
        }
    }

    @Override // java.util.concurrent.BlockingQueue
    public void put(T t10) throws InterruptedException {
        this.f16854c.put(t10);
    }

    @Override // java.util.concurrent.BlockingQueue
    public int remainingCapacity() {
        return this.f16854c.remainingCapacity();
    }

    @Override // java.util.Queue
    public T remove() {
        return this.f16854c.remove();
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection collection) {
        return this.f16854c.removeAll(collection);
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection collection) {
        return this.f16854c.retainAll(collection);
    }

    @Override // java.util.Collection
    public final int size() {
        return ve();
    }

    @Override // java.util.concurrent.BlockingQueue
    public T take() throws InterruptedException {
        return this.f16854c.take();
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        return new Object[0];
    }

    public final BlockingQueue tt() {
        return this.f16854c;
    }

    public int ve() {
        return this.f16854c.size();
    }

    @Override // java.util.concurrent.BlockingQueue
    public int drainTo(Collection collection, int i10) {
        return this.f16854c.drainTo(collection, i10);
    }

    @Override // java.util.concurrent.BlockingQueue
    public boolean offer(T t10, long j10, TimeUnit timeUnit) throws InterruptedException {
        return this.f16854c.offer(t10, j10, timeUnit);
    }

    @Override // java.util.Queue
    public T poll() {
        return this.f16854c.poll();
    }

    @Override // java.util.concurrent.BlockingQueue, java.util.Collection
    public boolean remove(Object obj) {
        return this.f16854c.remove(obj);
    }

    @Override // java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        if (tArr.length > 0) {
            tArr[0] = null;
        }
        return tArr;
    }
}
