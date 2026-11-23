package com.airbnb.lottie.parser.moshi;

import com.j256.ormlite.stmt.query.SimpleComparison;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/* JADX INFO: loaded from: classes7.dex */
final class LinkedHashTreeMap<K, V> extends AbstractMap<K, V> implements Serializable {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final Comparator<Comparable> f5987j = new a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    static final /* synthetic */ boolean f5988k = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Comparator<? super K> f5989b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    g<K, V>[] f5990c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final g<K, V> f5991d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f5992e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f5993f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f5994g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private LinkedHashTreeMap<K, V>.d f5995h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private LinkedHashTreeMap<K, V>.e f5996i;

    class a implements Comparator<Comparable> {
        a() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(Comparable comparable, Comparable comparable2) {
            return comparable.compareTo(comparable2);
        }
    }

    static final class b<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private g<K, V> f5997a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f5998b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f5999c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f6000d;

        b() {
        }

        void a(g<K, V> gVar) {
            gVar.f6012d = null;
            gVar.f6010b = null;
            gVar.f6011c = null;
            gVar.f6018j = 1;
            int i10 = this.f5998b;
            if (i10 > 0) {
                int i11 = this.f6000d;
                if ((i11 & 1) == 0) {
                    this.f6000d = i11 + 1;
                    this.f5998b = i10 - 1;
                    this.f5999c++;
                }
            }
            gVar.f6010b = this.f5997a;
            this.f5997a = gVar;
            int i12 = this.f6000d + 1;
            this.f6000d = i12;
            int i13 = this.f5998b;
            if (i13 > 0 && (i12 & 1) == 0) {
                this.f6000d = i12 + 1;
                this.f5998b = i13 - 1;
                this.f5999c++;
            }
            int i14 = 4;
            while (true) {
                int i15 = i14 - 1;
                if ((this.f6000d & i15) != i15) {
                    return;
                }
                int i16 = this.f5999c;
                if (i16 == 0) {
                    g<K, V> gVar2 = this.f5997a;
                    g<K, V> gVar3 = gVar2.f6010b;
                    g<K, V> gVar4 = gVar3.f6010b;
                    gVar3.f6010b = gVar4.f6010b;
                    this.f5997a = gVar3;
                    gVar3.f6011c = gVar4;
                    gVar3.f6012d = gVar2;
                    gVar3.f6018j = gVar2.f6018j + 1;
                    gVar4.f6010b = gVar3;
                    gVar2.f6010b = gVar3;
                } else if (i16 == 1) {
                    g<K, V> gVar5 = this.f5997a;
                    g<K, V> gVar6 = gVar5.f6010b;
                    this.f5997a = gVar6;
                    gVar6.f6012d = gVar5;
                    gVar6.f6018j = gVar5.f6018j + 1;
                    gVar5.f6010b = gVar6;
                    this.f5999c = 0;
                } else if (i16 == 2) {
                    this.f5999c = 0;
                }
                i14 *= 2;
            }
        }

        void b(int i10) {
            this.f5998b = ((Integer.highestOneBit(i10) * 2) - 1) - i10;
            this.f6000d = 0;
            this.f5999c = 0;
            this.f5997a = null;
        }

        g<K, V> c() {
            g<K, V> gVar = this.f5997a;
            if (gVar.f6010b == null) {
                return gVar;
            }
            throw new IllegalStateException();
        }
    }

    static class c<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private g<K, V> f6001a;

        c() {
        }

        public g<K, V> a() {
            g<K, V> gVar = this.f6001a;
            if (gVar == null) {
                return null;
            }
            g<K, V> gVar2 = gVar.f6010b;
            gVar.f6010b = null;
            g<K, V> gVar3 = gVar.f6012d;
            while (true) {
                g<K, V> gVar4 = gVar2;
                gVar2 = gVar3;
                if (gVar2 == null) {
                    this.f6001a = gVar4;
                    return gVar;
                }
                gVar2.f6010b = gVar4;
                gVar3 = gVar2.f6011c;
            }
        }

        void b(g<K, V> gVar) {
            g<K, V> gVar2 = null;
            while (gVar != null) {
                gVar.f6010b = gVar2;
                gVar2 = gVar;
                gVar = gVar.f6011c;
            }
            this.f6001a = gVar2;
        }
    }

    final class d extends AbstractSet<Map.Entry<K, V>> {

        class a extends LinkedHashTreeMap<K, V>.f<Map.Entry<K, V>> {
            a() {
                super();
            }

            @Override // java.util.Iterator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public Map.Entry<K, V> next() {
                return a();
            }
        }

        d() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            LinkedHashTreeMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return (obj instanceof Map.Entry) && LinkedHashTreeMap.this.e((Map.Entry) obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            g<K, V> gVarE;
            if (!(obj instanceof Map.Entry) || (gVarE = LinkedHashTreeMap.this.e((Map.Entry) obj)) == null) {
                return false;
            }
            LinkedHashTreeMap.this.h(gVarE, true);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return LinkedHashTreeMap.this.f5992e;
        }
    }

    final class e extends AbstractSet<K> {

        class a extends LinkedHashTreeMap<K, V>.f<K> {
            a() {
                super();
            }

            @Override // java.util.Iterator
            public K next() {
                return a().f6015g;
            }
        }

        e() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            LinkedHashTreeMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return LinkedHashTreeMap.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return LinkedHashTreeMap.this.i(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return LinkedHashTreeMap.this.f5992e;
        }
    }

    abstract class f<T> implements Iterator<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        g<K, V> f6006b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        g<K, V> f6007c = null;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f6008d;

        f() {
            this.f6006b = LinkedHashTreeMap.this.f5991d.f6013e;
            this.f6008d = LinkedHashTreeMap.this.f5993f;
        }

        final g<K, V> a() {
            g<K, V> gVar = this.f6006b;
            LinkedHashTreeMap linkedHashTreeMap = LinkedHashTreeMap.this;
            if (gVar == linkedHashTreeMap.f5991d) {
                throw new NoSuchElementException();
            }
            if (linkedHashTreeMap.f5993f != this.f6008d) {
                throw new ConcurrentModificationException();
            }
            this.f6006b = gVar.f6013e;
            this.f6007c = gVar;
            return gVar;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f6006b != LinkedHashTreeMap.this.f5991d;
        }

        @Override // java.util.Iterator
        public final void remove() {
            g<K, V> gVar = this.f6007c;
            if (gVar == null) {
                throw new IllegalStateException();
            }
            LinkedHashTreeMap.this.h(gVar, true);
            this.f6007c = null;
            this.f6008d = LinkedHashTreeMap.this.f5993f;
        }
    }

    LinkedHashTreeMap() {
        this(null);
    }

    private void a() {
        g<K, V>[] gVarArrB = b(this.f5990c);
        this.f5990c = gVarArrB;
        this.f5994g = (gVarArrB.length / 2) + (gVarArrB.length / 4);
    }

    static <K, V> g<K, V>[] b(g<K, V>[] gVarArr) {
        int length = gVarArr.length;
        g<K, V>[] gVarArr2 = new g[length * 2];
        c cVar = new c();
        b bVar = new b();
        b bVar2 = new b();
        for (int i10 = 0; i10 < length; i10++) {
            g<K, V> gVar = gVarArr[i10];
            if (gVar != null) {
                cVar.b(gVar);
                int i11 = 0;
                int i12 = 0;
                while (true) {
                    g<K, V> gVarA = cVar.a();
                    if (gVarA == null) {
                        break;
                    }
                    if ((gVarA.f6016h & length) == 0) {
                        i11++;
                    } else {
                        i12++;
                    }
                }
                bVar.b(i11);
                bVar2.b(i12);
                cVar.b(gVar);
                while (true) {
                    g<K, V> gVarA2 = cVar.a();
                    if (gVarA2 == null) {
                        break;
                    }
                    if ((gVarA2.f6016h & length) == 0) {
                        bVar.a(gVarA2);
                    } else {
                        bVar2.a(gVarA2);
                    }
                }
                gVarArr2[i10] = i11 > 0 ? bVar.c() : null;
                gVarArr2[i10 + length] = i12 > 0 ? bVar2.c() : null;
            }
        }
        return gVarArr2;
    }

    private boolean c(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    private void g(g<K, V> gVar, boolean z10) {
        while (gVar != null) {
            g<K, V> gVar2 = gVar.f6011c;
            g<K, V> gVar3 = gVar.f6012d;
            int i10 = gVar2 != null ? gVar2.f6018j : 0;
            int i11 = gVar3 != null ? gVar3.f6018j : 0;
            int i12 = i10 - i11;
            if (i12 == -2) {
                g<K, V> gVar4 = gVar3.f6011c;
                g<K, V> gVar5 = gVar3.f6012d;
                int i13 = (gVar4 != null ? gVar4.f6018j : 0) - (gVar5 != null ? gVar5.f6018j : 0);
                if (i13 == -1 || (i13 == 0 && !z10)) {
                    k(gVar);
                } else {
                    l(gVar3);
                    k(gVar);
                }
                if (z10) {
                    return;
                }
            } else if (i12 == 2) {
                g<K, V> gVar6 = gVar2.f6011c;
                g<K, V> gVar7 = gVar2.f6012d;
                int i14 = (gVar6 != null ? gVar6.f6018j : 0) - (gVar7 != null ? gVar7.f6018j : 0);
                if (i14 == 1 || (i14 == 0 && !z10)) {
                    l(gVar);
                } else {
                    k(gVar2);
                    l(gVar);
                }
                if (z10) {
                    return;
                }
            } else if (i12 == 0) {
                gVar.f6018j = i10 + 1;
                if (z10) {
                    return;
                }
            } else {
                gVar.f6018j = Math.max(i10, i11) + 1;
                if (!z10) {
                    return;
                }
            }
            gVar = gVar.f6010b;
        }
    }

    private void j(g<K, V> gVar, g<K, V> gVar2) {
        g<K, V> gVar3 = gVar.f6010b;
        gVar.f6010b = null;
        if (gVar2 != null) {
            gVar2.f6010b = gVar3;
        }
        if (gVar3 == null) {
            int i10 = gVar.f6016h;
            g<K, V>[] gVarArr = this.f5990c;
            gVarArr[i10 & (gVarArr.length - 1)] = gVar2;
        } else if (gVar3.f6011c == gVar) {
            gVar3.f6011c = gVar2;
        } else {
            gVar3.f6012d = gVar2;
        }
    }

    private void k(g<K, V> gVar) {
        g<K, V> gVar2 = gVar.f6011c;
        g<K, V> gVar3 = gVar.f6012d;
        g<K, V> gVar4 = gVar3.f6011c;
        g<K, V> gVar5 = gVar3.f6012d;
        gVar.f6012d = gVar4;
        if (gVar4 != null) {
            gVar4.f6010b = gVar;
        }
        j(gVar, gVar3);
        gVar3.f6011c = gVar;
        gVar.f6010b = gVar3;
        int iMax = Math.max(gVar2 != null ? gVar2.f6018j : 0, gVar4 != null ? gVar4.f6018j : 0) + 1;
        gVar.f6018j = iMax;
        gVar3.f6018j = Math.max(iMax, gVar5 != null ? gVar5.f6018j : 0) + 1;
    }

    private void l(g<K, V> gVar) {
        g<K, V> gVar2 = gVar.f6011c;
        g<K, V> gVar3 = gVar.f6012d;
        g<K, V> gVar4 = gVar2.f6011c;
        g<K, V> gVar5 = gVar2.f6012d;
        gVar.f6011c = gVar5;
        if (gVar5 != null) {
            gVar5.f6010b = gVar;
        }
        j(gVar, gVar2);
        gVar2.f6012d = gVar;
        gVar.f6010b = gVar2;
        int iMax = Math.max(gVar3 != null ? gVar3.f6018j : 0, gVar5 != null ? gVar5.f6018j : 0) + 1;
        gVar.f6018j = iMax;
        gVar2.f6018j = Math.max(iMax, gVar4 != null ? gVar4.f6018j : 0) + 1;
    }

    private static int m(int i10) {
        int i11 = i10 ^ ((i10 >>> 20) ^ (i10 >>> 12));
        return (i11 >>> 4) ^ ((i11 >>> 7) ^ i11);
    }

    private Object writeReplace() throws ObjectStreamException {
        return new LinkedHashMap(this);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        Arrays.fill(this.f5990c, (Object) null);
        this.f5992e = 0;
        this.f5993f++;
        g<K, V> gVar = this.f5991d;
        g<K, V> gVar2 = gVar.f6013e;
        while (gVar2 != gVar) {
            g<K, V> gVar3 = gVar2.f6013e;
            gVar2.f6014f = null;
            gVar2.f6013e = null;
            gVar2 = gVar3;
        }
        gVar.f6014f = gVar;
        gVar.f6013e = gVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return f(obj) != null;
    }

    g<K, V> d(K k10, boolean z10) {
        g<K, V> gVar;
        int i10;
        g<K, V> gVar2;
        Comparator<? super K> comparator = this.f5989b;
        g<K, V>[] gVarArr = this.f5990c;
        int iM = m(k10.hashCode());
        int length = (gVarArr.length - 1) & iM;
        g<K, V> gVar3 = gVarArr[length];
        if (gVar3 != null) {
            Comparable comparable = comparator == f5987j ? (Comparable) k10 : null;
            while (true) {
                int iCompareTo = comparable != null ? comparable.compareTo(gVar3.f6015g) : comparator.compare(k10, gVar3.f6015g);
                if (iCompareTo == 0) {
                    return gVar3;
                }
                g<K, V> gVar4 = iCompareTo < 0 ? gVar3.f6011c : gVar3.f6012d;
                if (gVar4 == null) {
                    gVar = gVar3;
                    i10 = iCompareTo;
                    break;
                }
                gVar3 = gVar4;
            }
        } else {
            gVar = gVar3;
            i10 = 0;
        }
        if (!z10) {
            return null;
        }
        g<K, V> gVar5 = this.f5991d;
        if (gVar != null) {
            gVar2 = new g<>(gVar, k10, iM, gVar5, gVar5.f6014f);
            if (i10 < 0) {
                gVar.f6011c = gVar2;
            } else {
                gVar.f6012d = gVar2;
            }
            g(gVar, true);
        } else {
            if (comparator == f5987j && !(k10 instanceof Comparable)) {
                throw new ClassCastException(k10.getClass().getName() + " is not Comparable");
            }
            gVar2 = new g<>(gVar, k10, iM, gVar5, gVar5.f6014f);
            gVarArr[length] = gVar2;
        }
        int i11 = this.f5992e;
        this.f5992e = i11 + 1;
        if (i11 > this.f5994g) {
            a();
        }
        this.f5993f++;
        return gVar2;
    }

    g<K, V> e(Map.Entry<?, ?> entry) {
        g<K, V> gVarF = f(entry.getKey());
        if (gVarF != null && c(gVarF.f6017i, entry.getValue())) {
            return gVarF;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        LinkedHashTreeMap<K, V>.d dVar = this.f5995h;
        if (dVar != null) {
            return dVar;
        }
        LinkedHashTreeMap<K, V>.d dVar2 = new d();
        this.f5995h = dVar2;
        return dVar2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    g<K, V> f(Object obj) {
        if (obj == 0) {
            return null;
        }
        try {
            return d(obj, false);
        } catch (ClassCastException unused) {
            return null;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        g<K, V> gVarF = f(obj);
        if (gVarF != null) {
            return gVarF.f6017i;
        }
        return null;
    }

    void h(g<K, V> gVar, boolean z10) {
        int i10;
        if (z10) {
            g<K, V> gVar2 = gVar.f6014f;
            gVar2.f6013e = gVar.f6013e;
            gVar.f6013e.f6014f = gVar2;
            gVar.f6014f = null;
            gVar.f6013e = null;
        }
        g<K, V> gVar3 = gVar.f6011c;
        g<K, V> gVar4 = gVar.f6012d;
        g<K, V> gVar5 = gVar.f6010b;
        int i11 = 0;
        if (gVar3 == null || gVar4 == null) {
            if (gVar3 != null) {
                j(gVar, gVar3);
                gVar.f6011c = null;
            } else if (gVar4 != null) {
                j(gVar, gVar4);
                gVar.f6012d = null;
            } else {
                j(gVar, null);
            }
            g(gVar5, false);
            this.f5992e--;
            this.f5993f++;
            return;
        }
        g<K, V> gVarB = gVar3.f6018j > gVar4.f6018j ? gVar3.b() : gVar4.a();
        h(gVarB, false);
        g<K, V> gVar6 = gVar.f6011c;
        if (gVar6 != null) {
            i10 = gVar6.f6018j;
            gVarB.f6011c = gVar6;
            gVar6.f6010b = gVarB;
            gVar.f6011c = null;
        } else {
            i10 = 0;
        }
        g<K, V> gVar7 = gVar.f6012d;
        if (gVar7 != null) {
            i11 = gVar7.f6018j;
            gVarB.f6012d = gVar7;
            gVar7.f6010b = gVarB;
            gVar.f6012d = null;
        }
        gVarB.f6018j = Math.max(i10, i11) + 1;
        j(gVar, gVarB);
    }

    g<K, V> i(Object obj) {
        g<K, V> gVarF = f(obj);
        if (gVarF != null) {
            h(gVarF, true);
        }
        return gVarF;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        LinkedHashTreeMap<K, V>.e eVar = this.f5996i;
        if (eVar != null) {
            return eVar;
        }
        LinkedHashTreeMap<K, V>.e eVar2 = new e();
        this.f5996i = eVar2;
        return eVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k10, V v10) {
        if (k10 == null) {
            throw new NullPointerException("key == null");
        }
        g<K, V> gVarD = d(k10, true);
        V v11 = gVarD.f6017i;
        gVarD.f6017i = v10;
        return v11;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        g<K, V> gVarI = i(obj);
        if (gVarI != null) {
            return gVarI.f6017i;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f5992e;
    }

    LinkedHashTreeMap(Comparator<? super K> comparator) {
        this.f5992e = 0;
        this.f5993f = 0;
        this.f5989b = comparator == null ? f5987j : comparator;
        this.f5991d = new g<>();
        g<K, V>[] gVarArr = new g[16];
        this.f5990c = gVarArr;
        this.f5994g = (gVarArr.length / 2) + (gVarArr.length / 4);
    }

    static final class g<K, V> implements Map.Entry<K, V> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        g<K, V> f6010b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        g<K, V> f6011c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        g<K, V> f6012d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        g<K, V> f6013e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        g<K, V> f6014f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final K f6015g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final int f6016h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        V f6017i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        int f6018j;

        g() {
            this.f6015g = null;
            this.f6016h = -1;
            this.f6014f = this;
            this.f6013e = this;
        }

        public g<K, V> a() {
            g<K, V> gVar = this;
            for (g<K, V> gVar2 = this.f6011c; gVar2 != null; gVar2 = gVar2.f6011c) {
                gVar = gVar2;
            }
            return gVar;
        }

        public g<K, V> b() {
            g<K, V> gVar = this;
            for (g<K, V> gVar2 = this.f6012d; gVar2 != null; gVar2 = gVar2.f6012d) {
                gVar = gVar2;
            }
            return gVar;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            K k10 = this.f6015g;
            if (k10 == null) {
                if (entry.getKey() != null) {
                    return false;
                }
            } else if (!k10.equals(entry.getKey())) {
                return false;
            }
            V v10 = this.f6017i;
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
            return this.f6015g;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f6017i;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            K k10 = this.f6015g;
            int iHashCode = k10 == null ? 0 : k10.hashCode();
            V v10 = this.f6017i;
            return iHashCode ^ (v10 != null ? v10.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public V setValue(V v10) {
            V v11 = this.f6017i;
            this.f6017i = v10;
            return v11;
        }

        public String toString() {
            return this.f6015g + SimpleComparison.EQUAL_TO_OPERATION + this.f6017i;
        }

        g(g<K, V> gVar, K k10, int i10, g<K, V> gVar2, g<K, V> gVar3) {
            this.f6010b = gVar;
            this.f6015g = k10;
            this.f6016h = i10;
            this.f6018j = 1;
            this.f6013e = gVar2;
            this.f6014f = gVar3;
            gVar3.f6013e = this;
            gVar2.f6014f = this;
        }
    }
}
