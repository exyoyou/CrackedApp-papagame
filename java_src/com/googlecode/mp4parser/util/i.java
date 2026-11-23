package com.googlecode.mp4parser.util;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes5.dex */
public class i<E> extends AbstractList<E> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final j f33789d = j.a(i.class);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    List<E> f33790b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Iterator<E> f33791c;

    class a implements Iterator<E> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f33792b = 0;

        a() {
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f33792b < i.this.f33790b.size() || i.this.f33791c.hasNext();
        }

        @Override // java.util.Iterator
        public E next() {
            if (this.f33792b >= i.this.f33790b.size()) {
                i iVar = i.this;
                iVar.f33790b.add(iVar.f33791c.next());
                return (E) next();
            }
            List<E> list = i.this.f33790b;
            int i10 = this.f33792b;
            this.f33792b = i10 + 1;
            return list.get(i10);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public i(List<E> list, Iterator<E> it2) {
        this.f33790b = list;
        this.f33791c = it2;
    }

    private void a() {
        f33789d.b("blowup running");
        while (this.f33791c.hasNext()) {
            this.f33790b.add(this.f33791c.next());
        }
    }

    public List<E> b() {
        return this.f33790b;
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i10) {
        if (this.f33790b.size() > i10) {
            return this.f33790b.get(i10);
        }
        if (!this.f33791c.hasNext()) {
            throw new NoSuchElementException();
        }
        this.f33790b.add(this.f33791c.next());
        return get(i10);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<E> iterator() {
        return new a();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        f33789d.b("potentially expensive size() call");
        a();
        return this.f33790b.size();
    }
}
