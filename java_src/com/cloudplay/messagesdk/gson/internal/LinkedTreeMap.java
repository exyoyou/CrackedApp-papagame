package com.cloudplay.messagesdk.gson.internal;

import com.j256.ormlite.stmt.query.SimpleComparison;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/* JADX INFO: loaded from: classes9.dex */
public final class LinkedTreeMap<K, V> extends AbstractMap<K, V> implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Comparator<Comparable> f23758a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final /* synthetic */ boolean f23759b = true;
    Comparator<? super K> comparator;
    private LinkedTreeMap<K, V>.b entrySet;
    final e<K, V> header;
    private LinkedTreeMap<K, V>.c keySet;
    int modCount;
    e<K, V> root;
    int size;

    static class a implements Comparator<Comparable> {
        a() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(Comparable comparable, Comparable comparable2) {
            return comparable.compareTo(comparable2);
        }
    }

    class b extends AbstractSet<Map.Entry<K, V>> {

        class a extends LinkedTreeMap<K, V>.d<Map.Entry<K, V>> {
            a(b bVar) {
                super();
            }

            @Override // java.util.Iterator
            public Map.Entry<K, V> next() {
                return a();
            }
        }

        b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            LinkedTreeMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return (obj instanceof Map.Entry) && LinkedTreeMap.this.a((Map.Entry<?, ?>) obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new a(this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            e<K, V> eVarA;
            if (!(obj instanceof Map.Entry) || (eVarA = LinkedTreeMap.this.a((Map.Entry<?, ?>) obj)) == null) {
                return false;
            }
            LinkedTreeMap.this.a((e) eVarA, true);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return LinkedTreeMap.this.size;
        }
    }

    final class c extends AbstractSet<K> {

        class a extends LinkedTreeMap<K, V>.d<K> {
            a(c cVar) {
                super();
            }

            @Override // java.util.Iterator
            public K next() {
                return a().f23771f;
            }
        }

        c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            LinkedTreeMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return LinkedTreeMap.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new a(this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return LinkedTreeMap.this.b(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return LinkedTreeMap.this.size;
        }
    }

    private abstract class d<T> implements Iterator<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        e<K, V> f23762a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        e<K, V> f23763b = null;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f23764c;

        d() {
            this.f23762a = LinkedTreeMap.this.header.f23769d;
            this.f23764c = LinkedTreeMap.this.modCount;
        }

        final e<K, V> a() {
            e<K, V> eVar = this.f23762a;
            LinkedTreeMap linkedTreeMap = LinkedTreeMap.this;
            if (eVar == linkedTreeMap.header) {
                throw new NoSuchElementException();
            }
            if (linkedTreeMap.modCount != this.f23764c) {
                throw new ConcurrentModificationException();
            }
            this.f23762a = eVar.f23769d;
            this.f23763b = eVar;
            return eVar;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f23762a != LinkedTreeMap.this.header;
        }

        @Override // java.util.Iterator
        public final void remove() {
            e<K, V> eVar = this.f23763b;
            if (eVar == null) {
                throw new IllegalStateException();
            }
            LinkedTreeMap.this.a((e) eVar, true);
            this.f23763b = null;
            this.f23764c = LinkedTreeMap.this.modCount;
        }
    }

    public LinkedTreeMap() {
        this(f23758a);
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException {
        throw new InvalidObjectException("Deserialization is unsupported");
    }

    private Object writeReplace() throws ObjectStreamException {
        return new LinkedHashMap(this);
    }

    e<K, V> a(K k10, boolean z10) {
        int iCompareTo;
        e<K, V> eVar;
        Comparator<? super K> comparator = this.comparator;
        e<K, V> eVar2 = this.root;
        if (eVar2 != null) {
            Comparable comparable = comparator == f23758a ? (Comparable) k10 : null;
            while (true) {
                iCompareTo = comparable != null ? comparable.compareTo(eVar2.f23771f) : comparator.compare(k10, eVar2.f23771f);
                if (iCompareTo == 0) {
                    return eVar2;
                }
                e<K, V> eVar3 = iCompareTo < 0 ? eVar2.f23767b : eVar2.f23768c;
                if (eVar3 == null) {
                    break;
                }
                eVar2 = eVar3;
            }
        } else {
            iCompareTo = 0;
        }
        if (!z10) {
            return null;
        }
        e<K, V> eVar4 = this.header;
        if (eVar2 != null) {
            eVar = new e<>(eVar2, k10, eVar4, eVar4.f23770e);
            if (iCompareTo < 0) {
                eVar2.f23767b = eVar;
            } else {
                eVar2.f23768c = eVar;
            }
            b(eVar2, true);
        } else {
            if (comparator == f23758a && !(k10 instanceof Comparable)) {
                throw new ClassCastException(k10.getClass().getName() + " is not Comparable");
            }
            eVar = new e<>(eVar2, k10, eVar4, eVar4.f23770e);
            this.root = eVar;
        }
        this.size++;
        this.modCount++;
        return eVar;
    }

    e<K, V> b(Object obj) {
        e<K, V> eVarA = a(obj);
        if (eVarA != null) {
            a((e) eVarA, true);
        }
        return eVarA;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        this.root = null;
        this.size = 0;
        this.modCount++;
        e<K, V> eVar = this.header;
        eVar.f23770e = eVar;
        eVar.f23769d = eVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return a(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        LinkedTreeMap<K, V>.b bVar = this.entrySet;
        if (bVar != null) {
            return bVar;
        }
        LinkedTreeMap<K, V>.b bVar2 = new b();
        this.entrySet = bVar2;
        return bVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        e<K, V> eVarA = a(obj);
        if (eVarA != null) {
            return eVarA.f23772g;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        LinkedTreeMap<K, V>.c cVar = this.keySet;
        if (cVar != null) {
            return cVar;
        }
        LinkedTreeMap<K, V>.c cVar2 = new c();
        this.keySet = cVar2;
        return cVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k10, V v10) {
        if (k10 == null) {
            throw new NullPointerException("key == null");
        }
        e<K, V> eVarA = a((Object) k10, true);
        V v11 = eVarA.f23772g;
        eVarA.f23772g = v10;
        return v11;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        e<K, V> eVarB = b(obj);
        if (eVarB != null) {
            return eVarB.f23772g;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.size;
    }

    public LinkedTreeMap(Comparator<? super K> comparator) {
        this.size = 0;
        this.modCount = 0;
        this.header = new e<>();
        this.comparator = comparator == null ? f23758a : comparator;
    }

    static final class e<K, V> implements Map.Entry<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        e<K, V> f23766a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        e<K, V> f23767b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        e<K, V> f23768c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        e<K, V> f23769d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        e<K, V> f23770e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final K f23771f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        V f23772g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        int f23773h;

        e() {
            this.f23771f = null;
            this.f23770e = this;
            this.f23769d = this;
        }

        public e<K, V> a() {
            e<K, V> eVar = this;
            for (e<K, V> eVar2 = this.f23767b; eVar2 != null; eVar2 = eVar2.f23767b) {
                eVar = eVar2;
            }
            return eVar;
        }

        public e<K, V> b() {
            e<K, V> eVar = this;
            for (e<K, V> eVar2 = this.f23768c; eVar2 != null; eVar2 = eVar2.f23768c) {
                eVar = eVar2;
            }
            return eVar;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            K k10 = this.f23771f;
            if (k10 == null) {
                if (entry.getKey() != null) {
                    return false;
                }
            } else if (!k10.equals(entry.getKey())) {
                return false;
            }
            V v10 = this.f23772g;
            if (v10 == null) {
                if (entry.getValue() != null) {
                    return false;
                }
            } else if (!v10.equals(entry.getValue())) {
                return false;
            }
            return true;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f23771f;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f23772g;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            K k10 = this.f23771f;
            int iHashCode = k10 == null ? 0 : k10.hashCode();
            V v10 = this.f23772g;
            return iHashCode ^ (v10 != null ? v10.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public V setValue(V v10) {
            V v11 = this.f23772g;
            this.f23772g = v10;
            return v11;
        }

        public String toString() {
            return this.f23771f + SimpleComparison.EQUAL_TO_OPERATION + this.f23772g;
        }

        e(e<K, V> eVar, K k10, e<K, V> eVar2, e<K, V> eVar3) {
            this.f23766a = eVar;
            this.f23771f = k10;
            this.f23773h = 1;
            this.f23769d = eVar2;
            this.f23770e = eVar3;
            eVar3.f23769d = this;
            eVar2.f23770e = this;
        }
    }

    private void b(e<K, V> eVar, boolean z10) {
        while (eVar != null) {
            e<K, V> eVar2 = eVar.f23767b;
            e<K, V> eVar3 = eVar.f23768c;
            int i10 = eVar2 != null ? eVar2.f23773h : 0;
            int i11 = eVar3 != null ? eVar3.f23773h : 0;
            int i12 = i10 - i11;
            if (i12 == -2) {
                e<K, V> eVar4 = eVar3.f23767b;
                e<K, V> eVar5 = eVar3.f23768c;
                int i13 = (eVar4 != null ? eVar4.f23773h : 0) - (eVar5 != null ? eVar5.f23773h : 0);
                if (i13 != -1 && (i13 != 0 || z10)) {
                    if (!f23759b && i13 != 1) {
                        throw new AssertionError();
                    }
                    b((e) eVar3);
                    a((e) eVar);
                } else {
                    a((e) eVar);
                }
                if (z10) {
                    return;
                }
            } else if (i12 == 2) {
                e<K, V> eVar6 = eVar2.f23767b;
                e<K, V> eVar7 = eVar2.f23768c;
                int i14 = (eVar6 != null ? eVar6.f23773h : 0) - (eVar7 != null ? eVar7.f23773h : 0);
                if (i14 != 1 && (i14 != 0 || z10)) {
                    if (!f23759b && i14 != -1) {
                        throw new AssertionError();
                    }
                    a((e) eVar2);
                    b((e) eVar);
                } else {
                    b((e) eVar);
                }
                if (z10) {
                    return;
                }
            } else if (i12 == 0) {
                eVar.f23773h = i10 + 1;
                if (z10) {
                    return;
                }
            } else {
                if (!f23759b && i12 != -1 && i12 != 1) {
                    throw new AssertionError();
                }
                eVar.f23773h = Math.max(i10, i11) + 1;
                if (!z10) {
                    return;
                }
            }
            eVar = eVar.f23766a;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    e<K, V> a(Object obj) {
        if (obj == 0) {
            return null;
        }
        try {
            return a(obj, false);
        } catch (ClassCastException unused) {
            return null;
        }
    }

    e<K, V> a(Map.Entry<?, ?> entry) {
        e<K, V> eVarA = a(entry.getKey());
        if (eVarA != null && a(eVarA.f23772g, entry.getValue())) {
            return eVarA;
        }
        return null;
    }

    private boolean a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    void a(e<K, V> eVar, boolean z10) {
        int i10;
        if (z10) {
            e<K, V> eVar2 = eVar.f23770e;
            eVar2.f23769d = eVar.f23769d;
            eVar.f23769d.f23770e = eVar2;
        }
        e<K, V> eVar3 = eVar.f23767b;
        e<K, V> eVar4 = eVar.f23768c;
        e<K, V> eVar5 = eVar.f23766a;
        int i11 = 0;
        if (eVar3 != null && eVar4 != null) {
            e<K, V> eVarB = eVar3.f23773h > eVar4.f23773h ? eVar3.b() : eVar4.a();
            a((e) eVarB, false);
            e<K, V> eVar6 = eVar.f23767b;
            if (eVar6 != null) {
                i10 = eVar6.f23773h;
                eVarB.f23767b = eVar6;
                eVar6.f23766a = eVarB;
                eVar.f23767b = null;
            } else {
                i10 = 0;
            }
            e<K, V> eVar7 = eVar.f23768c;
            if (eVar7 != null) {
                i11 = eVar7.f23773h;
                eVarB.f23768c = eVar7;
                eVar7.f23766a = eVarB;
                eVar.f23768c = null;
            }
            eVarB.f23773h = Math.max(i10, i11) + 1;
            a((e) eVar, (e) eVarB);
            return;
        }
        if (eVar3 != null) {
            a((e) eVar, (e) eVar3);
            eVar.f23767b = null;
        } else if (eVar4 != null) {
            a((e) eVar, (e) eVar4);
            eVar.f23768c = null;
        } else {
            a((e) eVar, (e) null);
        }
        b(eVar5, false);
        this.size--;
        this.modCount++;
    }

    private void b(e<K, V> eVar) {
        e<K, V> eVar2 = eVar.f23767b;
        e<K, V> eVar3 = eVar.f23768c;
        e<K, V> eVar4 = eVar2.f23767b;
        e<K, V> eVar5 = eVar2.f23768c;
        eVar.f23767b = eVar5;
        if (eVar5 != null) {
            eVar5.f23766a = eVar;
        }
        a((e) eVar, (e) eVar2);
        eVar2.f23768c = eVar;
        eVar.f23766a = eVar2;
        int iMax = Math.max(eVar3 != null ? eVar3.f23773h : 0, eVar5 != null ? eVar5.f23773h : 0) + 1;
        eVar.f23773h = iMax;
        eVar2.f23773h = Math.max(iMax, eVar4 != null ? eVar4.f23773h : 0) + 1;
    }

    private void a(e<K, V> eVar, e<K, V> eVar2) {
        e<K, V> eVar3 = eVar.f23766a;
        eVar.f23766a = null;
        if (eVar2 != null) {
            eVar2.f23766a = eVar3;
        }
        if (eVar3 != null) {
            if (eVar3.f23767b == eVar) {
                eVar3.f23767b = eVar2;
                return;
            } else {
                if (!f23759b && eVar3.f23768c != eVar) {
                    throw new AssertionError();
                }
                eVar3.f23768c = eVar2;
                return;
            }
        }
        this.root = eVar2;
    }

    private void a(e<K, V> eVar) {
        e<K, V> eVar2 = eVar.f23767b;
        e<K, V> eVar3 = eVar.f23768c;
        e<K, V> eVar4 = eVar3.f23767b;
        e<K, V> eVar5 = eVar3.f23768c;
        eVar.f23768c = eVar4;
        if (eVar4 != null) {
            eVar4.f23766a = eVar;
        }
        a((e) eVar, (e) eVar3);
        eVar3.f23767b = eVar;
        eVar.f23766a = eVar3;
        int iMax = Math.max(eVar2 != null ? eVar2.f23773h : 0, eVar4 != null ? eVar4.f23773h : 0) + 1;
        eVar.f23773h = iMax;
        eVar3.f23773h = Math.max(iMax, eVar5 != null ? eVar5.f23773h : 0) + 1;
    }
}
