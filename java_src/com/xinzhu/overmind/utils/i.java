package com.xinzhu.overmind.utils;

import java.util.AbstractSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes8.dex */
public final class i<T> extends AbstractSet<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    a<T> f90078b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    T[] f90079c;

    private static final class a<T> implements Iterator<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final T[] f90080b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f90081c;

        public a(T[] tArr) {
            this.f90080b = tArr;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f90081c != this.f90080b.length;
        }

        @Override // java.util.Iterator
        public T next() {
            T[] tArr = this.f90080b;
            int i10 = this.f90081c;
            this.f90081c = i10 + 1;
            return tArr[i10];
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public i(T[] tArr) {
        this.f90079c = tArr;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<T> iterator() {
        a<T> aVar = this.f90078b;
        if (aVar != null) {
            aVar.f90081c = 0;
            return aVar;
        }
        a<T> aVar2 = new a<>(this.f90079c);
        this.f90078b = aVar2;
        return aVar2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f90079c.length;
    }
}
