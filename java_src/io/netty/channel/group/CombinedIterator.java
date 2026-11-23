package io.netty.channel.group;

import io.netty.util.internal.ObjectUtil;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
final class CombinedIterator<E> implements Iterator<E> {
    private Iterator<E> currentIterator;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    private final Iterator<E> f91617i1;

    /* JADX INFO: renamed from: i2, reason: collision with root package name */
    private final Iterator<E> f91618i2;

    CombinedIterator(Iterator<E> it2, Iterator<E> it3) {
        this.f91617i1 = (Iterator) ObjectUtil.checkNotNull(it2, "i1");
        this.f91618i2 = (Iterator) ObjectUtil.checkNotNull(it3, "i2");
        this.currentIterator = it2;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        while (!this.currentIterator.hasNext()) {
            if (this.currentIterator != this.f91617i1) {
                return false;
            }
            this.currentIterator = this.f91618i2;
        }
        return true;
    }

    @Override // java.util.Iterator
    public E next() {
        while (true) {
            try {
                return this.currentIterator.next();
            } catch (NoSuchElementException e10) {
                if (this.currentIterator != this.f91617i1) {
                    throw e10;
                }
                this.currentIterator = this.f91618i2;
            }
        }
    }

    @Override // java.util.Iterator
    public void remove() {
        this.currentIterator.remove();
    }
}
