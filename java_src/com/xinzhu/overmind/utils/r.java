package com.xinzhu.overmind.utils;

import com.j256.ormlite.stmt.query.SimpleComparison;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes8.dex */
abstract class r<K, V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    r<K, V>.b f90120a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    r<K, V>.c f90121b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    r<K, V>.e f90122c;

    final class a<T> implements Iterator<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f90123b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f90124c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f90125d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        boolean f90126e = false;

        a(int i10) {
            this.f90123b = i10;
            this.f90124c = r.this.d();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f90125d < this.f90124c;
        }

        @Override // java.util.Iterator
        public T next() {
            T t10 = (T) r.this.b(this.f90125d, this.f90123b);
            this.f90125d++;
            this.f90126e = true;
            return t10;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.f90126e) {
                throw new IllegalStateException();
            }
            int i10 = this.f90125d - 1;
            this.f90125d = i10;
            this.f90124c--;
            this.f90126e = false;
            r.this.h(i10);
        }
    }

    final class b implements Set<Map.Entry<K, V>> {
        b() {
        }

        @Override // java.util.Set, java.util.Collection
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean add(Map.Entry<K, V> entry) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean addAll(Collection<? extends Map.Entry<K, V>> collection) {
            int iD = r.this.d();
            for (Map.Entry<K, V> entry : collection) {
                r.this.g(entry.getKey(), entry.getValue());
            }
            return iD != r.this.d();
        }

        @Override // java.util.Set, java.util.Collection
        public void clear() {
            r.this.a();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            int iE = r.this.e(entry.getKey());
            if (iE < 0) {
                return false;
            }
            return f.c(r.this.b(iE, 1), entry.getValue());
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            Iterator<?> it2 = collection.iterator();
            while (it2.hasNext()) {
                if (!contains(it2.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(Object obj) {
            return r.k(this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int iHashCode = 0;
            for (int iD = r.this.d() - 1; iD >= 0; iD--) {
                Object objB = r.this.b(iD, 0);
                Object objB2 = r.this.b(iD, 1);
                iHashCode += (objB == null ? 0 : objB.hashCode()) ^ (objB2 == null ? 0 : objB2.hashCode());
            }
            return iHashCode;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return r.this.d() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator<Map.Entry<K, V>> iterator() {
            return new d();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public int size() {
            return r.this.d();
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            throw new UnsupportedOperationException();
        }
    }

    final class c implements Set<K> {
        c() {
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
            r.this.a();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            return r.this.e(obj) >= 0;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            return r.j(r.this.c(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(Object obj) {
            return r.k(this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int iHashCode = 0;
            for (int iD = r.this.d() - 1; iD >= 0; iD--) {
                Object objB = r.this.b(iD, 0);
                iHashCode += objB == null ? 0 : objB.hashCode();
            }
            return iHashCode;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return r.this.d() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator<K> iterator() {
            return new a(0);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(Object obj) {
            int iE = r.this.e(obj);
            if (iE < 0) {
                return false;
            }
            r.this.h(iE);
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            return r.o(r.this.c(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            return r.p(r.this.c(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public int size() {
            return r.this.d();
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray() {
            return r.this.q(0);
        }

        @Override // java.util.Set, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) r.this.r(tArr, 0);
        }
    }

    final class d implements Iterator<Map.Entry<K, V>>, Map.Entry<K, V> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f90130b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f90132d = false;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f90131c = -1;

        d() {
            this.f90130b = r.this.d() - 1;
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            this.f90131c++;
            this.f90132d = true;
            return this;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (!this.f90132d) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return f.c(entry.getKey(), r.this.b(this.f90131c, 0)) && f.c(entry.getValue(), r.this.b(this.f90131c, 1));
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            if (this.f90132d) {
                return (K) r.this.b(this.f90131c, 0);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            if (this.f90132d) {
                return (V) r.this.b(this.f90131c, 1);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f90131c < this.f90130b;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            if (!this.f90132d) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            Object objB = r.this.b(this.f90131c, 0);
            Object objB2 = r.this.b(this.f90131c, 1);
            return (objB == null ? 0 : objB.hashCode()) ^ (objB2 != null ? objB2.hashCode() : 0);
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.f90132d) {
                throw new IllegalStateException();
            }
            r.this.h(this.f90131c);
            this.f90131c--;
            this.f90130b--;
            this.f90132d = false;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v10) {
            if (this.f90132d) {
                return (V) r.this.i(this.f90131c, v10);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public final String toString() {
            return getKey() + SimpleComparison.EQUAL_TO_OPERATION + getValue();
        }
    }

    final class e implements Collection<V> {
        e() {
        }

        @Override // java.util.Collection
        public boolean add(V v10) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public boolean addAll(Collection<? extends V> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public void clear() {
            r.this.a();
        }

        @Override // java.util.Collection
        public boolean contains(Object obj) {
            return r.this.f(obj) >= 0;
        }

        @Override // java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            Iterator<?> it2 = collection.iterator();
            while (it2.hasNext()) {
                if (!contains(it2.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Collection
        public boolean isEmpty() {
            return r.this.d() == 0;
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new a(1);
        }

        @Override // java.util.Collection
        public boolean remove(Object obj) {
            int iF = r.this.f(obj);
            if (iF < 0) {
                return false;
            }
            r.this.h(iF);
            return true;
        }

        @Override // java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            int iD = r.this.d();
            int i10 = 0;
            boolean z10 = false;
            while (i10 < iD) {
                if (collection.contains(r.this.b(i10, 1))) {
                    r.this.h(i10);
                    i10--;
                    iD--;
                    z10 = true;
                }
                i10++;
            }
            return z10;
        }

        @Override // java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            int iD = r.this.d();
            int i10 = 0;
            boolean z10 = false;
            while (i10 < iD) {
                if (!collection.contains(r.this.b(i10, 1))) {
                    r.this.h(i10);
                    i10--;
                    iD--;
                    z10 = true;
                }
                i10++;
            }
            return z10;
        }

        @Override // java.util.Collection
        public int size() {
            return r.this.d();
        }

        @Override // java.util.Collection
        public Object[] toArray() {
            return r.this.q(1);
        }

        @Override // java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) r.this.r(tArr, 1);
        }
    }

    r() {
    }

    public static <K, V> boolean j(Map<K, V> map, Collection<?> collection) {
        Iterator<?> it2 = collection.iterator();
        while (it2.hasNext()) {
            if (!map.containsKey(it2.next())) {
                return false;
            }
        }
        return true;
    }

    public static <T> boolean k(Set<T> set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                return set.size() == set2.size() && set.containsAll(set2);
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    public static <K, V> boolean o(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<?> it2 = collection.iterator();
        while (it2.hasNext()) {
            map.remove(it2.next());
        }
        return size != map.size();
    }

    public static <K, V> boolean p(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<K> it2 = map.keySet().iterator();
        while (it2.hasNext()) {
            if (!collection.contains(it2.next())) {
                it2.remove();
            }
        }
        return size != map.size();
    }

    protected abstract void a();

    protected abstract Object b(int i10, int i11);

    protected abstract Map<K, V> c();

    protected abstract int d();

    protected abstract int e(Object obj);

    protected abstract int f(Object obj);

    protected abstract void g(K k10, V v10);

    protected abstract void h(int i10);

    protected abstract V i(int i10, V v10);

    public Set<Map.Entry<K, V>> l() {
        if (this.f90120a == null) {
            this.f90120a = new b();
        }
        return this.f90120a;
    }

    public Set<K> m() {
        if (this.f90121b == null) {
            this.f90121b = new c();
        }
        return this.f90121b;
    }

    public Collection<V> n() {
        if (this.f90122c == null) {
            this.f90122c = new e();
        }
        return this.f90122c;
    }

    public Object[] q(int i10) {
        int iD = d();
        Object[] objArr = new Object[iD];
        for (int i11 = 0; i11 < iD; i11++) {
            objArr[i11] = b(i11, i10);
        }
        return objArr;
    }

    public <T> T[] r(T[] tArr, int i10) {
        int iD = d();
        if (tArr.length < iD) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), iD));
        }
        for (int i11 = 0; i11 < iD; i11++) {
            tArr[i11] = b(i11, i10);
        }
        if (tArr.length > iD) {
            tArr[iD] = null;
        }
        return tArr;
    }
}
