package com.xinzhu.overmind.server.pm;

import java.util.AbstractSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes8.dex */
public final class c<T> extends AbstractSet<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    a<T> f89894b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    T[] f89895c;

    private static final class a<T> implements Iterator<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final T[] f89896b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f89897c;

        public a(T[] tArr) {
            this.f89896b = tArr;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f89897c != this.f89896b.length;
        }

        @Override // java.util.Iterator
        public T next() {
            T[] tArr = this.f89896b;
            int i10 = this.f89897c;
            this.f89897c = i10 + 1;
            return tArr[i10];
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public c(T[] tArr) {
        this.f89895c = tArr;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<T> iterator() {
        a<T> aVar = this.f89894b;
        if (aVar != null) {
            aVar.f89897c = 0;
            return aVar;
        }
        a<T> aVar2 = new a<>(this.f89895c);
        this.f89894b = aVar2;
        return aVar2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f89895c.length;
    }
}
