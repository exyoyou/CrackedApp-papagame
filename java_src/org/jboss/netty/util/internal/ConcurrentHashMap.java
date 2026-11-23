package org.jboss.netty.util.internal;

import com.j256.ormlite.stmt.query.SimpleComparison;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes10.dex */
public final class ConcurrentHashMap<K, V> extends AbstractMap<K, V> implements ConcurrentMap<K, V> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static final int f95735h = 16;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    static final float f95736i = 0.75f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    static final int f95737j = 16;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    static final int f95738k = 1073741824;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    static final int f95739l = 65536;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    static final int f95740m = 2;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final int f95741b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final int f95742c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final Segment<K, V>[] f95743d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Set<K> f95744e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    Set<Map.Entry<K, V>> f95745f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    Collection<V> f95746g;

    static final class Segment<K, V> extends ReentrantLock {
        private static final long serialVersionUID = -2001752926705396395L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        volatile transient int f95747b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f95748c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f95749d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        volatile transient c<K, V>[] f95750e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final float f95751f;

        Segment(int i10, float f10) {
            this.f95751f = f10;
            n(c.b(i10));
        }

        private static boolean e(Object obj, Object obj2) {
            return obj.equals(obj2);
        }

        static <K, V> Segment<K, V>[] f(int i10) {
            return new Segment[i10];
        }

        boolean a(Object obj, int i10) {
            if (this.f95747b == 0) {
                return false;
            }
            for (c<K, V> cVarD = d(i10); cVarD != null; cVarD = cVarD.f95757d) {
                if (cVarD.f95755b == i10 && e(obj, cVarD.a())) {
                    return true;
                }
            }
            return false;
        }

        boolean b(Object obj) {
            if (this.f95747b != 0) {
                for (c<K, V> cVar : this.f95750e) {
                    for (; cVar != null; cVar = cVar.f95757d) {
                        V vD = cVar.d();
                        if (vD == null) {
                            vD = i(cVar);
                        }
                        if (obj.equals(vD)) {
                            return true;
                        }
                    }
                }
            }
            return false;
        }

        V c(Object obj, int i10) {
            if (this.f95747b == 0) {
                return null;
            }
            for (c<K, V> cVarD = d(i10); cVarD != null; cVarD = cVarD.f95757d) {
                if (cVarD.f95755b == i10 && e(obj, cVarD.a())) {
                    V vD = cVarD.d();
                    return vD != null ? vD : i(cVarD);
                }
            }
            return null;
        }

        void clear() {
            if (this.f95747b != 0) {
                lock();
                try {
                    c<K, V>[] cVarArr = this.f95750e;
                    for (int i10 = 0; i10 < cVarArr.length; i10++) {
                        cVarArr[i10] = null;
                    }
                    this.f95748c++;
                    this.f95747b = 0;
                } finally {
                    unlock();
                }
            }
        }

        c<K, V> d(int i10) {
            c<K, V>[] cVarArr = this.f95750e;
            return cVarArr[i10 & (cVarArr.length - 1)];
        }

        c<K, V> g(K k10, int i10, c<K, V> cVar, V v10) {
            return new c<>(k10, i10, cVar, v10);
        }

        V h(K k10, int i10, V v10, boolean z10) {
            V vD;
            int iJ;
            lock();
            try {
                int i11 = this.f95747b;
                int i12 = i11 + 1;
                if (i11 > this.f95749d && (iJ = j()) > 0) {
                    i12 -= iJ;
                    this.f95747b = i12 - 1;
                }
                c<K, V>[] cVarArr = this.f95750e;
                int length = (cVarArr.length - 1) & i10;
                c<K, V> cVar = cVarArr[length];
                c<K, V> cVar2 = cVar;
                while (cVar2 != null && (cVar2.f95755b != i10 || !e(k10, cVar2.a()))) {
                    cVar2 = cVar2.f95757d;
                }
                if (cVar2 != null) {
                    vD = cVar2.d();
                    if (!z10) {
                        cVar2.c(v10);
                    }
                } else {
                    this.f95748c++;
                    cVarArr[length] = g(k10, i10, cVar, v10);
                    this.f95747b = i12;
                    vD = null;
                }
                return vD;
            } finally {
                unlock();
            }
        }

        V i(c<K, V> cVar) {
            lock();
            try {
                return cVar.d();
            } finally {
                unlock();
            }
        }

        int j() {
            c<K, V>[] cVarArr = this.f95750e;
            int length = cVarArr.length;
            if (length >= 1073741824) {
                return 0;
            }
            c<K, V>[] cVarArrB = c.b(length << 1);
            this.f95749d = (int) (cVarArrB.length * this.f95751f);
            int length2 = cVarArrB.length - 1;
            int i10 = 0;
            for (c<K, V> cVar : cVarArr) {
                if (cVar != null) {
                    c<K, V> cVar2 = cVar.f95757d;
                    int i11 = cVar.f95755b & length2;
                    if (cVar2 == null) {
                        cVarArrB[i11] = cVar;
                    } else {
                        c<K, V> cVar3 = cVar;
                        while (cVar2 != null) {
                            int i12 = cVar2.f95755b & length2;
                            if (i12 != i11) {
                                cVar3 = cVar2;
                                i11 = i12;
                            }
                            cVar2 = cVar2.f95757d;
                        }
                        cVarArrB[i11] = cVar3;
                        while (cVar != cVar3) {
                            K kA = cVar.a();
                            if (kA == null) {
                                i10++;
                            } else {
                                int i13 = cVar.f95755b;
                                int i14 = i13 & length2;
                                cVarArrB[i14] = g(kA, i13, cVarArrB[i14], cVar.d());
                            }
                            cVar = cVar.f95757d;
                        }
                    }
                }
            }
            this.f95750e = cVarArrB;
            return i10;
        }

        /* JADX WARN: Code duplicated, block: B:27:0x005c  */
        V k(Object obj, int i10, Object obj2, boolean z10) {
            V vD;
            lock();
            try {
                int i11 = this.f95747b - 1;
                c<K, V>[] cVarArr = this.f95750e;
                int length = (cVarArr.length - 1) & i10;
                c<K, V> cVar = cVarArr[length];
                c<K, V> cVar2 = cVar;
                while (cVar2 != null && obj != cVar2.f95754a && (z10 || i10 != cVar2.f95755b || !e(obj, cVar2.a()))) {
                    cVar2 = cVar2.f95757d;
                }
                if (cVar2 != null) {
                    vD = cVar2.d();
                    if (obj2 == null || obj2.equals(vD)) {
                        this.f95748c++;
                        c<K, V> cVarG = cVar2.f95757d;
                        while (cVar != cVar2) {
                            K kA = cVar.a();
                            if (kA == null) {
                                i11--;
                            } else {
                                cVarG = g(kA, cVar.f95755b, cVarG, cVar.d());
                            }
                            cVar = cVar.f95757d;
                        }
                        cVarArr[length] = cVarG;
                        this.f95747b = i11;
                    } else {
                        vD = null;
                    }
                } else {
                    vD = null;
                }
                return vD;
            } finally {
                unlock();
            }
        }

        V l(K k10, int i10, V v10) {
            V vD;
            lock();
            try {
                c<K, V> cVarD = d(i10);
                while (cVarD != null && (cVarD.f95755b != i10 || !e(k10, cVarD.a()))) {
                    cVarD = cVarD.f95757d;
                }
                if (cVarD != null) {
                    vD = cVarD.d();
                    cVarD.c(v10);
                } else {
                    vD = null;
                }
                return vD;
            } finally {
                unlock();
            }
        }

        boolean m(K k10, int i10, V v10, V v11) {
            boolean z10;
            lock();
            try {
                c<K, V> cVarD = d(i10);
                while (cVarD != null && (cVarD.f95755b != i10 || !e(k10, cVarD.a()))) {
                    cVarD = cVarD.f95757d;
                }
                if (cVarD == null || !v10.equals(cVarD.d())) {
                    z10 = false;
                } else {
                    cVarD.c(v11);
                    z10 = true;
                }
                return z10;
            } finally {
                unlock();
            }
        }

        void n(c<K, V>[] cVarArr) {
            this.f95749d = (int) (cVarArr.length * this.f95751f);
            this.f95750e = cVarArr;
        }
    }

    final class a extends ConcurrentHashMap<K, V>.d implements org.jboss.netty.util.internal.f<Map.Entry<K, V>> {
        a() {
            super();
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            c<K, V> cVarB = b();
            return new j(cVarB.a(), cVarB.d());
        }
    }

    final class b extends AbstractSet<Map.Entry<K, V>> {
        b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            ConcurrentHashMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = ConcurrentHashMap.this.get(entry.getKey());
            return obj2 != null && obj2.equals(entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return ConcurrentHashMap.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return ConcurrentHashMap.this.remove(entry.getKey(), entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return ConcurrentHashMap.this.size();
        }
    }

    static final class c<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Object f95754a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f95755b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        volatile Object f95756c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final c<K, V> f95757d;

        c(K k10, int i10, c<K, V> cVar, V v10) {
            this.f95755b = i10;
            this.f95757d = cVar;
            this.f95754a = k10;
            this.f95756c = v10;
        }

        static <K, V> c<K, V>[] b(int i10) {
            return new c[i10];
        }

        K a() {
            return (K) this.f95754a;
        }

        void c(V v10) {
            this.f95756c = v10;
        }

        V d() {
            return (V) this.f95756c;
        }
    }

    abstract class d {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f95758b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f95759c = -1;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        c<K, V>[] f95760d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        c<K, V> f95761e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        c<K, V> f95762f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        K f95763g;

        d() {
            this.f95758b = ConcurrentHashMap.this.f95743d.length - 1;
            a();
        }

        final void a() {
            c<K, V> cVar;
            c<K, V> cVar2 = this.f95761e;
            if (cVar2 != null) {
                c<K, V> cVar3 = cVar2.f95757d;
                this.f95761e = cVar3;
                if (cVar3 != null) {
                    return;
                }
            }
            do {
                int i10 = this.f95759c;
                if (i10 >= 0) {
                    c<K, V>[] cVarArr = this.f95760d;
                    this.f95759c = i10 - 1;
                    cVar = cVarArr[i10];
                    this.f95761e = cVar;
                } else {
                    while (true) {
                        int i11 = this.f95758b;
                        if (i11 < 0) {
                            return;
                        }
                        Segment<K, V>[] segmentArr = ConcurrentHashMap.this.f95743d;
                        this.f95758b = i11 - 1;
                        Segment<K, V> segment = segmentArr[i11];
                        if (segment.f95747b != 0) {
                            c<K, V>[] cVarArr2 = segment.f95750e;
                            this.f95760d = cVarArr2;
                            for (int length = cVarArr2.length - 1; length >= 0; length--) {
                                c<K, V> cVar4 = this.f95760d[length];
                                this.f95761e = cVar4;
                                if (cVar4 != null) {
                                    this.f95759c = length - 1;
                                    return;
                                }
                            }
                        }
                    }
                }
            } while (cVar == null);
        }

        c<K, V> b() {
            do {
                c<K, V> cVar = this.f95761e;
                if (cVar == null) {
                    throw new NoSuchElementException();
                }
                this.f95762f = cVar;
                this.f95763g = cVar.a();
                a();
            } while (this.f95763g == null);
            return this.f95762f;
        }

        public boolean hasMoreElements() {
            return hasNext();
        }

        public boolean hasNext() {
            while (true) {
                c<K, V> cVar = this.f95761e;
                if (cVar == null) {
                    return false;
                }
                if (cVar.a() != null) {
                    return true;
                }
                a();
            }
        }

        public void remove() {
            if (this.f95762f == null) {
                throw new IllegalStateException();
            }
            ConcurrentHashMap.this.remove(this.f95763g);
            this.f95762f = null;
        }

        public void rewind() {
            this.f95758b = ConcurrentHashMap.this.f95743d.length - 1;
            this.f95759c = -1;
            this.f95760d = null;
            this.f95761e = null;
            this.f95762f = null;
            this.f95763g = null;
            a();
        }
    }

    final class e extends ConcurrentHashMap<K, V>.d implements org.jboss.netty.util.internal.f<K>, Enumeration<K> {
        e() {
            super();
        }

        @Override // java.util.Iterator
        public K next() {
            return b().a();
        }

        @Override // java.util.Enumeration
        public K nextElement() {
            return b().a();
        }
    }

    final class f extends AbstractSet<K> {
        f() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            ConcurrentHashMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return ConcurrentHashMap.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return ConcurrentHashMap.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new e();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return ConcurrentHashMap.this.remove(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return ConcurrentHashMap.this.size();
        }
    }

    final class h extends ConcurrentHashMap<K, V>.d implements org.jboss.netty.util.internal.f<V>, Enumeration<V> {
        h() {
            super();
        }

        @Override // java.util.Iterator
        public V next() {
            return b().d();
        }

        @Override // java.util.Enumeration
        public V nextElement() {
            return b().d();
        }
    }

    final class i extends AbstractCollection<V> {
        i() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            ConcurrentHashMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return ConcurrentHashMap.this.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return ConcurrentHashMap.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new h();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return ConcurrentHashMap.this.size();
        }
    }

    final class j extends g<K, V> {
        j(K k10, V v10) {
            super(k10, v10);
        }

        @Override // org.jboss.netty.util.internal.ConcurrentHashMap.g, java.util.Map.Entry
        public V setValue(V v10) {
            v10.getClass();
            V v11 = (V) super.setValue(v10);
            ConcurrentHashMap.this.put(getKey(), v10);
            return v11;
        }
    }

    public ConcurrentHashMap(int i10, float f10, int i11) {
        if (f10 <= 0.0f || i10 < 0 || i11 <= 0) {
            throw new IllegalArgumentException();
        }
        int i12 = 0;
        int i13 = 1;
        int i14 = 1;
        int i15 = 0;
        while (i14 < (i11 > 65536 ? 65536 : i11)) {
            i15++;
            i14 <<= 1;
        }
        this.f95742c = 32 - i15;
        this.f95741b = i14 - 1;
        this.f95743d = Segment.f(i14);
        i10 = i10 > 1073741824 ? 1073741824 : i10;
        int i16 = i10 / i14;
        while (i13 < (i14 * i16 < i10 ? i16 + 1 : i16)) {
            i13 <<= 1;
        }
        while (true) {
            Segment<K, V>[] segmentArr = this.f95743d;
            if (i12 >= segmentArr.length) {
                return;
            }
            segmentArr[i12] = new Segment<>(i13, f10);
            i12++;
        }
    }

    private static int c(int i10) {
        int i11 = i10 + ((i10 << 15) ^ (-12931));
        int i12 = i11 ^ (i11 >>> 10);
        int i13 = i12 + (i12 << 3);
        int i14 = i13 ^ (i13 >>> 6);
        int i15 = i14 + (i14 << 2) + (i14 << 14);
        return i15 ^ (i15 >>> 16);
    }

    private static int d(Object obj) {
        return c(obj.hashCode());
    }

    public boolean a(Object obj) {
        return containsValue(obj);
    }

    public Enumeration<V> b() {
        return new h();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        for (Segment<K, V> segment : this.f95743d) {
            segment.clear();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        int iD = d(obj);
        return f(iD).a(obj, iD);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsValue(Object obj) {
        obj.getClass();
        Segment<K, V>[] segmentArr = this.f95743d;
        int[] iArr = new int[segmentArr.length];
        int i10 = 0;
        int i11 = 0;
        while (true) {
            boolean z10 = true;
            if (i11 >= 2) {
                for (Segment<K, V> segment : segmentArr) {
                    segment.lock();
                }
                try {
                    int length = segmentArr.length;
                    int i12 = 0;
                    while (true) {
                        if (i12 >= length) {
                            z10 = false;
                            break;
                        }
                        if (segmentArr[i12].b(obj)) {
                            break;
                        }
                        i12++;
                    }
                    return z10;
                } finally {
                    int length2 = segmentArr.length;
                    while (i10 < length2) {
                        segmentArr[i10].unlock();
                        i10++;
                    }
                }
            }
            int i13 = 0;
            for (int i14 = 0; i14 < segmentArr.length; i14++) {
                Segment<K, V> segment2 = segmentArr[i14];
                int i15 = segment2.f95748c;
                iArr[i14] = i15;
                i13 += i15;
                if (segment2.b(obj)) {
                    return true;
                }
            }
            if (i13 != 0) {
                for (int i16 = 0; i16 < segmentArr.length; i16++) {
                    if (iArr[i16] != segmentArr[i16].f95748c) {
                        z10 = false;
                        break;
                    }
                }
            }
            if (z10) {
                return false;
            }
            i11++;
        }
    }

    public Enumeration<K> e() {
        return new e();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.f95745f;
        if (set != null) {
            return set;
        }
        b bVar = new b();
        this.f95745f = bVar;
        return bVar;
    }

    Segment<K, V> f(int i10) {
        return this.f95743d[(i10 >>> this.f95742c) & this.f95741b];
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        int iD = d(obj);
        return f(iD).c(obj, iD);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        Segment<K, V>[] segmentArr = this.f95743d;
        int[] iArr = new int[segmentArr.length];
        int i10 = 0;
        for (int i11 = 0; i11 < segmentArr.length; i11++) {
            if (segmentArr[i11].f95747b != 0) {
                return false;
            }
            int i12 = segmentArr[i11].f95748c;
            iArr[i11] = i12;
            i10 += i12;
        }
        if (i10 == 0) {
            return true;
        }
        for (int i13 = 0; i13 < segmentArr.length; i13++) {
            if (segmentArr[i13].f95747b != 0 || iArr[i13] != segmentArr[i13].f95748c) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        Set<K> set = this.f95744e;
        if (set != null) {
            return set;
        }
        f fVar = new f();
        this.f95744e = fVar;
        return fVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k10, V v10) {
        v10.getClass();
        int iD = d(k10);
        return f(iD).h(k10, iD, v10, false);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V putIfAbsent(K k10, V v10) {
        v10.getClass();
        int iD = d(k10);
        return f(iD).h(k10, iD, v10, true);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        int iD = d(obj);
        return f(iD).k(obj, iD, null, false);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public boolean replace(K k10, V v10, V v11) {
        if (v10 == null || v11 == null) {
            throw null;
        }
        int iD = d(k10);
        return f(iD).m(k10, iD, v10, v11);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        Segment<K, V>[] segmentArr = this.f95743d;
        int[] iArr = new int[segmentArr.length];
        long j10 = 0;
        long j11 = 0;
        long j12 = 0;
        for (int i10 = 0; i10 < 2; i10++) {
            j11 = 0;
            int i11 = 0;
            for (int i12 = 0; i12 < segmentArr.length; i12++) {
                j11 += (long) segmentArr[i12].f95747b;
                int i13 = segmentArr[i12].f95748c;
                iArr[i12] = i13;
                i11 += i13;
            }
            if (i11 != 0) {
                long j13 = 0;
                int i14 = 0;
                while (true) {
                    if (i14 >= segmentArr.length) {
                        j12 = j13;
                        break;
                    }
                    j13 += (long) segmentArr[i14].f95747b;
                    if (iArr[i14] != segmentArr[i14].f95748c) {
                        j12 = -1;
                        break;
                    }
                    i14++;
                }
            } else {
                j12 = 0;
            }
            if (j12 == j11) {
                break;
            }
        }
        if (j12 != j11) {
            for (Segment<K, V> segment : segmentArr) {
                segment.lock();
            }
            for (Segment<K, V> segment2 : segmentArr) {
                j10 += (long) segment2.f95747b;
            }
            for (Segment<K, V> segment3 : segmentArr) {
                segment3.unlock();
            }
            j11 = j10;
        }
        if (j11 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) j11;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection<V> values() {
        Collection<V> collection = this.f95746g;
        if (collection != null) {
            return collection;
        }
        i iVar = new i();
        this.f95746g = iVar;
        return iVar;
    }

    static class g<K, V> implements Map.Entry<K, V> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final K f95767b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private V f95768c;

        public g(K k10, V v10) {
            this.f95767b = k10;
            this.f95768c = v10;
        }

        private static boolean a(Object obj, Object obj2) {
            if (obj == null) {
                return obj2 == null;
            }
            return obj.equals(obj2);
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return a(this.f95767b, entry.getKey()) && a(this.f95768c, entry.getValue());
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f95767b;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f95768c;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            K k10 = this.f95767b;
            int iHashCode = k10 == null ? 0 : k10.hashCode();
            V v10 = this.f95768c;
            return iHashCode ^ (v10 != null ? v10.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public V setValue(V v10) {
            V v11 = this.f95768c;
            this.f95768c = v10;
            return v11;
        }

        public String toString() {
            return this.f95767b + SimpleComparison.EQUAL_TO_OPERATION + this.f95768c;
        }

        public g(Map.Entry<? extends K, ? extends V> entry) {
            this.f95767b = entry.getKey();
            this.f95768c = entry.getValue();
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public boolean remove(Object obj, Object obj2) {
        int iD = d(obj);
        return (obj2 == null || f(iD).k(obj, iD, obj2, false) == null) ? false : true;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V replace(K k10, V v10) {
        v10.getClass();
        int iD = d(k10);
        return f(iD).l(k10, iD, v10);
    }

    public ConcurrentHashMap(int i10, float f10) {
        this(i10, f10, 16);
    }

    public ConcurrentHashMap(int i10) {
        this(i10, 0.75f, 16);
    }

    public ConcurrentHashMap() {
        this(16, 0.75f, 16);
    }

    public ConcurrentHashMap(Map<? extends K, ? extends V> map) {
        this(Math.max(((int) (map.size() / 0.75f)) + 1, 16), 0.75f, 16);
        putAll(map);
    }
}
