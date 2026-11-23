package com.byazt.ga;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 256, 133})
public abstract class z<K, V> {
    public z<K, V>.tt tt;

    @com.byazt.zqa.c(c = {0, 1, 256, 1205})
    final class c<T> implements Iterator<T> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f14458c;
        public int tt;
        public boolean uj = false;
        public int ve;

        public c(int i10) {
            this.f14458c = i10;
            this.tt = z.this.c();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.ve < this.tt;
        }

        @Override // java.util.Iterator
        public T next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            T t10 = (T) z.this.c(this.ve, this.f14458c);
            this.ve++;
            this.uj = true;
            return t10;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.uj) {
                throw new IllegalStateException();
            }
            int i10 = this.ve - 1;
            this.ve = i10;
            this.tt--;
            this.uj = false;
            z.this.c(i10);
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 256, 1876})
    final class tt implements Set<K> {
        public tt() {
        }

        @Override // java.util.Set, java.util.Collection
        public boolean add(K k10) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean addAll(Collection<? extends K> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public void clear() {
            z.this.ve();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            return z.this.c(obj) >= 0;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            return z.c(z.this.tt(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(Object obj) {
            return z.c(this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int iHashCode = 0;
            for (int iC = z.this.c() - 1; iC >= 0; iC--) {
                Object objC = z.this.c(iC, 0);
                iHashCode += objC == null ? 0 : objC.hashCode();
            }
            return iHashCode;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return z.this.c() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator<K> iterator() {
            return new c(0);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(Object obj) {
            int iC = z.this.c(obj);
            if (iC < 0) {
                return false;
            }
            z.this.c(iC);
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            return z.tt(z.this.tt(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            return z.ve(z.this.tt(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public int size() {
            return z.this.c();
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray() {
            return z.this.tt(0);
        }

        @Override // java.util.Set, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) z.this.c(tArr, 0);
        }
    }

    public static <K, V> boolean c(Map<K, V> map, Collection<?> collection) {
        Iterator<?> it2 = collection.iterator();
        while (it2.hasNext()) {
            if (!map.containsKey(it2.next())) {
                return false;
            }
        }
        return true;
    }

    public static <K, V> boolean tt(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<?> it2 = collection.iterator();
        while (it2.hasNext()) {
            map.remove(it2.next());
        }
        return size != map.size();
    }

    public static <K, V> boolean ve(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<K> it2 = map.keySet().iterator();
        while (it2.hasNext()) {
            if (!collection.contains(it2.next())) {
                it2.remove();
            }
        }
        return size != map.size();
    }

    public abstract int c();

    public abstract int c(Object obj);

    public abstract Object c(int i10, int i11);

    public abstract void c(int i10);

    public abstract Map<K, V> tt();

    public Set<K> uj() {
        if (this.tt == null) {
            this.tt = new tt();
        }
        return this.tt;
    }

    public abstract void ve();

    public <T> T[] c(T[] tArr, int i10) {
        int iC = c();
        if (tArr.length < iC) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), iC));
        }
        for (int i11 = 0; i11 < iC; i11++) {
            tArr[i11] = c(i11, i10);
        }
        if (tArr.length > iC) {
            tArr[iC] = null;
        }
        return tArr;
    }

    public Object[] tt(int i10) {
        int iC = c();
        Object[] objArr = new Object[iC];
        for (int i11 = 0; i11 < iC; i11++) {
            objArr[i11] = c(i11, i10);
        }
        return objArr;
    }

    public static <T> boolean c(Set<T> set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size() && set.containsAll(set2)) {
                    return true;
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }
}
