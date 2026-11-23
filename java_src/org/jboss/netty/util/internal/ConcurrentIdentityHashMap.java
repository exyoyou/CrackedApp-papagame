package org.jboss.netty.util.internal;

import com.j256.ormlite.stmt.query.SimpleComparison;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes10.dex */
public final class ConcurrentIdentityHashMap<K, V> extends AbstractMap<K, V> implements ConcurrentMap<K, V> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static final int f95772h = 16;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    static final float f95773i = 0.75f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    static final int f95774j = 16;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    static final int f95775k = 1073741824;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    static final int f95776l = 65536;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    static final int f95777m = 2;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final int f95778b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final int f95779c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final Segment<K, V>[] f95780d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Set<K> f95781e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    Set<Map.Entry<K, V>> f95782f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    Collection<V> f95783g;

    static final class Segment<K, V> extends ReentrantLock {
        private static final long serialVersionUID = 5207829234977119743L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        volatile transient int f95784b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f95785c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f95786d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        volatile transient c<K, V>[] f95787e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final float f95788f;

        Segment(int i10, float f10) {
            this.f95788f = f10;
            n(c.b(i10));
        }

        private static boolean e(Object obj, Object obj2) {
            return obj == obj2;
        }

        static <K, V> Segment<K, V>[] f(int i10) {
            return new Segment[i10];
        }

        boolean a(Object obj, int i10) {
            if (this.f95784b == 0) {
                return false;
            }
            c<K, V>[] cVarArr = this.f95787e;
            if (cVarArr != this.f95787e) {
                return a(obj, i10);
            }
            for (c<K, V> cVar = cVarArr[(cVarArr.length - 1) & i10]; cVar != null; cVar = cVar.f95794d) {
                if (cVar.f95792b == i10 && e(obj, cVar.a())) {
                    return true;
                }
            }
            return false;
        }

        boolean b(Object obj) {
            if (this.f95784b != 0) {
                c<K, V>[] cVarArr = this.f95787e;
                for (c<K, V> cVar : cVarArr) {
                    for (; cVar != null; cVar = cVar.f95794d) {
                        V vD = cVar.d();
                        if (vD == null) {
                            vD = i(cVar);
                        }
                        if (obj.equals(vD)) {
                            return true;
                        }
                    }
                }
                if (this.f95787e != cVarArr) {
                    return b(obj);
                }
            }
            return false;
        }

        V c(Object obj, int i10) {
            if (this.f95784b == 0) {
                return null;
            }
            c<K, V>[] cVarArr = this.f95787e;
            if (cVarArr != this.f95787e) {
                return c(obj, i10);
            }
            for (c<K, V> cVar = cVarArr[(cVarArr.length - 1) & i10]; cVar != null; cVar = cVar.f95794d) {
                if (cVar.f95792b == i10 && e(obj, cVar.a())) {
                    V vD = cVar.d();
                    return vD != null ? vD : i(cVar);
                }
            }
            return null;
        }

        void clear() {
            if (this.f95784b != 0) {
                lock();
                try {
                    c<K, V>[] cVarArr = this.f95787e;
                    for (int i10 = 0; i10 < cVarArr.length; i10++) {
                        cVarArr[i10] = null;
                    }
                    this.f95785c++;
                    this.f95784b = 0;
                } finally {
                    unlock();
                }
            }
        }

        c<K, V> d(int i10) {
            c<K, V>[] cVarArr = this.f95787e;
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
                int i11 = this.f95784b;
                int i12 = i11 + 1;
                if (i11 > this.f95786d && (iJ = j()) > 0) {
                    i12 -= iJ;
                    this.f95784b = i12 - 1;
                }
                c<K, V>[] cVarArr = this.f95787e;
                int length = (cVarArr.length - 1) & i10;
                c<K, V> cVar = cVarArr[length];
                c<K, V> cVar2 = cVar;
                while (cVar2 != null && (cVar2.f95792b != i10 || !e(k10, cVar2.a()))) {
                    cVar2 = cVar2.f95794d;
                }
                if (cVar2 != null) {
                    vD = cVar2.d();
                    if (!z10) {
                        cVar2.c(v10);
                    }
                } else {
                    this.f95785c++;
                    cVarArr[length] = g(k10, i10, cVar, v10);
                    this.f95784b = i12;
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
            c<K, V>[] cVarArr = this.f95787e;
            int length = cVarArr.length;
            if (length >= 1073741824) {
                return 0;
            }
            c<K, V>[] cVarArrB = c.b(length << 1);
            this.f95786d = (int) (cVarArrB.length * this.f95788f);
            int length2 = cVarArrB.length - 1;
            int i10 = 0;
            for (c<K, V> cVar : cVarArr) {
                if (cVar != null) {
                    c<K, V> cVar2 = cVar.f95794d;
                    int i11 = cVar.f95792b & length2;
                    if (cVar2 == null) {
                        cVarArrB[i11] = cVar;
                    } else {
                        c<K, V> cVar3 = cVar;
                        while (cVar2 != null) {
                            int i12 = cVar2.f95792b & length2;
                            if (i12 != i11) {
                                cVar3 = cVar2;
                                i11 = i12;
                            }
                            cVar2 = cVar2.f95794d;
                        }
                        cVarArrB[i11] = cVar3;
                        while (cVar != cVar3) {
                            K kA = cVar.a();
                            if (kA == null) {
                                i10++;
                            } else {
                                int i13 = cVar.f95792b;
                                int i14 = i13 & length2;
                                cVarArrB[i14] = g(kA, i13, cVarArrB[i14], cVar.d());
                            }
                            cVar = cVar.f95794d;
                        }
                    }
                }
            }
            this.f95787e = cVarArrB;
            Arrays.fill(cVarArr, (Object) null);
            return i10;
        }

        /* JADX WARN: Code duplicated, block: B:27:0x005c  */
        V k(Object obj, int i10, Object obj2, boolean z10) {
            V vD;
            lock();
            try {
                int i11 = this.f95784b - 1;
                c<K, V>[] cVarArr = this.f95787e;
                int length = (cVarArr.length - 1) & i10;
                c<K, V> cVar = cVarArr[length];
                c<K, V> cVar2 = cVar;
                while (cVar2 != null && obj != cVar2.f95791a && (z10 || i10 != cVar2.f95792b || !e(obj, cVar2.a()))) {
                    cVar2 = cVar2.f95794d;
                }
                if (cVar2 != null) {
                    vD = cVar2.d();
                    if (obj2 == null || obj2.equals(vD)) {
                        this.f95785c++;
                        c<K, V> cVarG = cVar2.f95794d;
                        while (cVar != cVar2) {
                            K kA = cVar.a();
                            if (kA == null) {
                                i11--;
                            } else {
                                cVarG = g(kA, cVar.f95792b, cVarG, cVar.d());
                            }
                            cVar = cVar.f95794d;
                        }
                        cVarArr[length] = cVarG;
                        this.f95784b = i11;
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
                while (cVarD != null && (cVarD.f95792b != i10 || !e(k10, cVarD.a()))) {
                    cVarD = cVarD.f95794d;
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
                while (cVarD != null && (cVarD.f95792b != i10 || !e(k10, cVarD.a()))) {
                    cVarD = cVarD.f95794d;
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
            this.f95786d = (int) (cVarArr.length * this.f95788f);
            this.f95787e = cVarArr;
        }
    }

    final class a extends ConcurrentIdentityHashMap<K, V>.d implements org.jboss.netty.util.internal.f<Map.Entry<K, V>> {
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
            ConcurrentIdentityHashMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = ConcurrentIdentityHashMap.this.get(entry.getKey());
            return obj2 != null && obj2.equals(entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return ConcurrentIdentityHashMap.this.isEmpty();
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
            return ConcurrentIdentityHashMap.this.remove(entry.getKey(), entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return ConcurrentIdentityHashMap.this.size();
        }
    }

    static final class c<K, V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Object f95791a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f95792b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        volatile Object f95793c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final c<K, V> f95794d;

        c(K k10, int i10, c<K, V> cVar, V v10) {
            this.f95792b = i10;
            this.f95794d = cVar;
            this.f95791a = k10;
            this.f95793c = v10;
        }

        static <K, V> c<K, V>[] b(int i10) {
            return new c[i10];
        }

        K a() {
            return (K) this.f95791a;
        }

        void c(V v10) {
            this.f95793c = v10;
        }

        V d() {
            return (V) this.f95793c;
        }
    }

    abstract class d {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f95795b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f95796c = -1;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        c<K, V>[] f95797d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        c<K, V> f95798e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        c<K, V> f95799f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        K f95800g;

        d() {
            this.f95795b = ConcurrentIdentityHashMap.this.f95780d.length - 1;
            a();
        }

        final void a() {
            c<K, V> cVar;
            c<K, V> cVar2 = this.f95798e;
            if (cVar2 != null) {
                c<K, V> cVar3 = cVar2.f95794d;
                this.f95798e = cVar3;
                if (cVar3 != null) {
                    return;
                }
            }
            do {
                int i10 = this.f95796c;
                if (i10 >= 0) {
                    c<K, V>[] cVarArr = this.f95797d;
                    this.f95796c = i10 - 1;
                    cVar = cVarArr[i10];
                    this.f95798e = cVar;
                } else {
                    while (true) {
                        int i11 = this.f95795b;
                        if (i11 < 0) {
                            return;
                        }
                        Segment<K, V>[] segmentArr = ConcurrentIdentityHashMap.this.f95780d;
                        this.f95795b = i11 - 1;
                        Segment<K, V> segment = segmentArr[i11];
                        if (segment.f95784b != 0) {
                            c<K, V>[] cVarArr2 = segment.f95787e;
                            this.f95797d = cVarArr2;
                            for (int length = cVarArr2.length - 1; length >= 0; length--) {
                                c<K, V> cVar4 = this.f95797d[length];
                                this.f95798e = cVar4;
                                if (cVar4 != null) {
                                    this.f95796c = length - 1;
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
                c<K, V> cVar = this.f95798e;
                if (cVar == null) {
                    throw new NoSuchElementException();
                }
                this.f95799f = cVar;
                this.f95800g = cVar.a();
                a();
            } while (this.f95800g == null);
            return this.f95799f;
        }

        public boolean hasMoreElements() {
            return hasNext();
        }

        public boolean hasNext() {
            while (true) {
                c<K, V> cVar = this.f95798e;
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
            if (this.f95799f == null) {
                throw new IllegalStateException();
            }
            ConcurrentIdentityHashMap.this.remove(this.f95800g);
            this.f95799f = null;
        }

        public void rewind() {
            this.f95795b = ConcurrentIdentityHashMap.this.f95780d.length - 1;
            this.f95796c = -1;
            this.f95797d = null;
            this.f95798e = null;
            this.f95799f = null;
            this.f95800g = null;
            a();
        }
    }

    final class e extends ConcurrentIdentityHashMap<K, V>.d implements org.jboss.netty.util.internal.f<K>, Enumeration<K> {
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
            ConcurrentIdentityHashMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return ConcurrentIdentityHashMap.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return ConcurrentIdentityHashMap.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new e();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return ConcurrentIdentityHashMap.this.remove(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return ConcurrentIdentityHashMap.this.size();
        }
    }

    final class h extends ConcurrentIdentityHashMap<K, V>.d implements org.jboss.netty.util.internal.f<V>, Enumeration<V> {
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
            ConcurrentIdentityHashMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return ConcurrentIdentityHashMap.this.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return ConcurrentIdentityHashMap.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new h();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return ConcurrentIdentityHashMap.this.size();
        }
    }

    final class j extends g<K, V> {
        j(K k10, V v10) {
            super(k10, v10);
        }

        @Override // org.jboss.netty.util.internal.ConcurrentIdentityHashMap.g, java.util.Map.Entry
        public V setValue(V v10) {
            v10.getClass();
            V v11 = (V) super.setValue(v10);
            ConcurrentIdentityHashMap.this.put(getKey(), v10);
            return v11;
        }
    }

    public ConcurrentIdentityHashMap(int i10, float f10, int i11) {
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
        this.f95779c = 32 - i15;
        this.f95778b = i14 - 1;
        this.f95780d = Segment.f(i14);
        i10 = i10 > 1073741824 ? 1073741824 : i10;
        int i16 = i10 / i14;
        while (i13 < (i14 * i16 < i10 ? i16 + 1 : i16)) {
            i13 <<= 1;
        }
        while (true) {
            Segment<K, V>[] segmentArr = this.f95780d;
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
        return c(System.identityHashCode(obj));
    }

    public boolean a(Object obj) {
        return containsValue(obj);
    }

    public Enumeration<V> b() {
        return new h();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        for (Segment<K, V> segment : this.f95780d) {
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
        Segment<K, V>[] segmentArr = this.f95780d;
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
                int i15 = segment2.f95785c;
                iArr[i14] = i15;
                i13 += i15;
                if (segment2.b(obj)) {
                    return true;
                }
            }
            if (i13 != 0) {
                for (int i16 = 0; i16 < segmentArr.length; i16++) {
                    if (iArr[i16] != segmentArr[i16].f95785c) {
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
        Set<Map.Entry<K, V>> set = this.f95782f;
        if (set != null) {
            return set;
        }
        b bVar = new b();
        this.f95782f = bVar;
        return bVar;
    }

    Segment<K, V> f(int i10) {
        return this.f95780d[(i10 >>> this.f95779c) & this.f95778b];
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        int iD = d(obj);
        return f(iD).c(obj, iD);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        Segment<K, V>[] segmentArr = this.f95780d;
        int[] iArr = new int[segmentArr.length];
        int i10 = 0;
        for (int i11 = 0; i11 < segmentArr.length; i11++) {
            if (segmentArr[i11].f95784b != 0) {
                return false;
            }
            int i12 = segmentArr[i11].f95785c;
            iArr[i11] = i12;
            i10 += i12;
        }
        if (i10 == 0) {
            return true;
        }
        for (int i13 = 0; i13 < segmentArr.length; i13++) {
            if (segmentArr[i13].f95784b != 0 || iArr[i13] != segmentArr[i13].f95785c) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        Set<K> set = this.f95781e;
        if (set != null) {
            return set;
        }
        f fVar = new f();
        this.f95781e = fVar;
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
        Segment<K, V>[] segmentArr = this.f95780d;
        int[] iArr = new int[segmentArr.length];
        long j10 = 0;
        long j11 = 0;
        long j12 = 0;
        for (int i10 = 0; i10 < 2; i10++) {
            j11 = 0;
            int i11 = 0;
            for (int i12 = 0; i12 < segmentArr.length; i12++) {
                j11 += (long) segmentArr[i12].f95784b;
                int i13 = segmentArr[i12].f95785c;
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
                    j13 += (long) segmentArr[i14].f95784b;
                    if (iArr[i14] != segmentArr[i14].f95785c) {
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
                j10 += (long) segment2.f95784b;
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
        Collection<V> collection = this.f95783g;
        if (collection != null) {
            return collection;
        }
        i iVar = new i();
        this.f95783g = iVar;
        return iVar;
    }

    static class g<K, V> implements Map.Entry<K, V> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final K f95804b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private V f95805c;

        public g(K k10, V v10) {
            this.f95804b = k10;
            this.f95805c = v10;
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
            return a(this.f95804b, entry.getKey()) && a(this.f95805c, entry.getValue());
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f95804b;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f95805c;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            K k10 = this.f95804b;
            int iHashCode = k10 == null ? 0 : k10.hashCode();
            V v10 = this.f95805c;
            return iHashCode ^ (v10 != null ? v10.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public V setValue(V v10) {
            V v11 = this.f95805c;
            this.f95805c = v10;
            return v11;
        }

        public String toString() {
            return this.f95804b + SimpleComparison.EQUAL_TO_OPERATION + this.f95805c;
        }

        public g(Map.Entry<? extends K, ? extends V> entry) {
            this.f95804b = entry.getKey();
            this.f95805c = entry.getValue();
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

    public ConcurrentIdentityHashMap(int i10, float f10) {
        this(i10, f10, 16);
    }

    public ConcurrentIdentityHashMap(int i10) {
        this(i10, 0.75f, 16);
    }

    public ConcurrentIdentityHashMap() {
        this(16, 0.75f, 16);
    }

    public ConcurrentIdentityHashMap(Map<? extends K, ? extends V> map) {
        this(Math.max(((int) (map.size() / 0.75f)) + 1, 16), 0.75f, 16);
        putAll(map);
    }
}
