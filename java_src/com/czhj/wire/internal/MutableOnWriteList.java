package com.czhj.wire.internal;

import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes9.dex */
final class MutableOnWriteList<T> extends AbstractList<T> implements Serializable, RandomAccess {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    List<T> f25899a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<T> f25900b;

    MutableOnWriteList(List<T> list) {
        this.f25900b = list;
        this.f25899a = list;
    }

    private Object writeReplace() throws ObjectStreamException {
        return new ArrayList(this.f25899a);
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i10, T t10) {
        if (this.f25899a == this.f25900b) {
            this.f25899a = new ArrayList(this.f25900b);
        }
        this.f25899a.add(i10, t10);
    }

    @Override // java.util.AbstractList, java.util.List
    public T get(int i10) {
        return this.f25899a.get(i10);
    }

    @Override // java.util.AbstractList, java.util.List
    public T remove(int i10) {
        if (this.f25899a == this.f25900b) {
            this.f25899a = new ArrayList(this.f25900b);
        }
        return this.f25899a.remove(i10);
    }

    @Override // java.util.AbstractList, java.util.List
    public T set(int i10, T t10) {
        if (this.f25899a == this.f25900b) {
            this.f25899a = new ArrayList(this.f25900b);
        }
        return this.f25899a.set(i10, t10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f25899a.size();
    }
}
