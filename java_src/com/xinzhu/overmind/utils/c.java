package com.xinzhu.overmind.utils;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes8.dex */
public final class c<E> implements Collection<E>, Set<E> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final boolean f90050f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f90051g = "ArraySet";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f90052h = 4;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int f90053i = 10;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    static Object[] f90054j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    static int f90055k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    static Object[] f90056l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    static int f90057m;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int[] f90058b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Object[] f90059c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f90060d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    r<E, E> f90061e;

    class a extends r<E, E> {
        a() {
        }

        @Override // com.xinzhu.overmind.utils.r
        protected void a() {
            c.this.clear();
        }

        @Override // com.xinzhu.overmind.utils.r
        protected Object b(int i10, int i11) {
            return c.this.f90059c[i10];
        }

        @Override // com.xinzhu.overmind.utils.r
        protected Map<E, E> c() {
            throw new UnsupportedOperationException("not a map");
        }

        @Override // com.xinzhu.overmind.utils.r
        protected int d() {
            return c.this.f90060d;
        }

        @Override // com.xinzhu.overmind.utils.r
        protected int e(Object obj) {
            return c.this.indexOf(obj);
        }

        @Override // com.xinzhu.overmind.utils.r
        protected int f(Object obj) {
            return c.this.indexOf(obj);
        }

        @Override // com.xinzhu.overmind.utils.r
        protected void g(E e10, E e11) {
            c.this.add(e10);
        }

        @Override // com.xinzhu.overmind.utils.r
        protected void h(int i10) {
            c.this.k(i10);
        }

        @Override // com.xinzhu.overmind.utils.r
        protected E i(int i10, E e10) {
            throw new UnsupportedOperationException("not a map");
        }
    }

    public c() {
        this.f90058b = new int[0];
        this.f90059c = new Object[0];
        this.f90060d = 0;
    }

    private void b(int i10) {
        if (i10 == 8) {
            synchronized (c.class) {
                Object[] objArr = f90056l;
                if (objArr != null) {
                    this.f90059c = objArr;
                    f90056l = (Object[]) objArr[0];
                    this.f90058b = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    f90057m--;
                    return;
                }
            }
        } else if (i10 == 4) {
            synchronized (c.class) {
                Object[] objArr2 = f90054j;
                if (objArr2 != null) {
                    this.f90059c = objArr2;
                    f90054j = (Object[]) objArr2[0];
                    this.f90058b = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    f90055k--;
                    return;
                }
            }
        }
        this.f90058b = new int[i10];
        this.f90059c = new Object[i10];
    }

    private static void f(int[] iArr, Object[] objArr, int i10) {
        if (iArr.length == 8) {
            synchronized (c.class) {
                if (f90057m < 10) {
                    objArr[0] = f90056l;
                    objArr[1] = iArr;
                    for (int i11 = i10 - 1; i11 >= 2; i11--) {
                        objArr[i11] = null;
                    }
                    f90056l = objArr;
                    f90057m++;
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (c.class) {
                if (f90055k < 10) {
                    objArr[0] = f90054j;
                    objArr[1] = iArr;
                    for (int i12 = i10 - 1; i12 >= 2; i12--) {
                        objArr[i12] = null;
                    }
                    f90054j = objArr;
                    f90055k++;
                }
            }
        }
    }

    private r<E, E> h() {
        if (this.f90061e == null) {
            this.f90061e = new a();
        }
        return this.f90061e;
    }

    private int i(Object obj, int i10) {
        int i11 = this.f90060d;
        if (i11 == 0) {
            return -1;
        }
        int iA = f.a(this.f90058b, i11, i10);
        if (iA < 0 || obj.equals(this.f90059c[iA])) {
            return iA;
        }
        int i12 = iA + 1;
        while (i12 < i11 && this.f90058b[i12] == i10) {
            if (obj.equals(this.f90059c[i12])) {
                return i12;
            }
            i12++;
        }
        for (int i13 = iA - 1; i13 >= 0 && this.f90058b[i13] == i10; i13--) {
            if (obj.equals(this.f90059c[i13])) {
                return i13;
            }
        }
        return ~i12;
    }

    private int j() {
        int i10 = this.f90060d;
        if (i10 == 0) {
            return -1;
        }
        int iA = f.a(this.f90058b, i10, 0);
        if (iA < 0 || this.f90059c[iA] == null) {
            return iA;
        }
        int i11 = iA + 1;
        while (i11 < i10 && this.f90058b[i11] == 0) {
            if (this.f90059c[i11] == null) {
                return i11;
            }
            i11++;
        }
        for (int i12 = iA - 1; i12 >= 0 && this.f90058b[i12] == 0; i12--) {
            if (this.f90059c[i12] == null) {
                return i12;
            }
        }
        return ~i11;
    }

    public void a(c<? extends E> cVar) {
        int i10 = cVar.f90060d;
        d(this.f90060d + i10);
        if (this.f90060d != 0) {
            for (int i11 = 0; i11 < i10; i11++) {
                add(cVar.l(i11));
            }
        } else if (i10 > 0) {
            System.arraycopy(cVar.f90058b, 0, this.f90058b, 0, i10);
            System.arraycopy(cVar.f90059c, 0, this.f90059c, 0, i10);
            this.f90060d = i10;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean add(E e10) {
        int i10;
        int i11;
        if (e10 == null) {
            i11 = j();
            i10 = 0;
        } else {
            int iHashCode = e10.hashCode();
            i10 = iHashCode;
            i11 = i(e10, iHashCode);
        }
        if (i11 >= 0) {
            return false;
        }
        int i12 = ~i11;
        int i13 = this.f90060d;
        int[] iArr = this.f90058b;
        if (i13 >= iArr.length) {
            int i14 = 8;
            if (i13 >= 8) {
                i14 = (i13 >> 1) + i13;
            } else if (i13 < 4) {
                i14 = 4;
            }
            Object[] objArr = this.f90059c;
            b(i14);
            int[] iArr2 = this.f90058b;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr, 0, this.f90059c, 0, objArr.length);
            }
            f(iArr, objArr, this.f90060d);
        }
        int i15 = this.f90060d;
        if (i12 < i15) {
            int[] iArr3 = this.f90058b;
            int i16 = i12 + 1;
            System.arraycopy(iArr3, i12, iArr3, i16, i15 - i12);
            Object[] objArr2 = this.f90059c;
            System.arraycopy(objArr2, i12, objArr2, i16, this.f90060d - i12);
        }
        this.f90058b[i12] = i10;
        this.f90059c[i12] = e10;
        this.f90060d++;
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean addAll(Collection<? extends E> collection) {
        d(this.f90060d + collection.size());
        Iterator<? extends E> it2 = collection.iterator();
        boolean zAdd = false;
        while (it2.hasNext()) {
            zAdd |= add(it2.next());
        }
        return zAdd;
    }

    @Override // java.util.Collection, java.util.Set
    public void clear() {
        int i10 = this.f90060d;
        if (i10 != 0) {
            f(this.f90058b, this.f90059c, i10);
            this.f90058b = new int[0];
            this.f90059c = new Object[0];
            this.f90060d = 0;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean containsAll(Collection<?> collection) {
        Iterator<?> it2 = collection.iterator();
        while (it2.hasNext()) {
            if (!contains(it2.next())) {
                return false;
            }
        }
        return true;
    }

    public void d(int i10) {
        int[] iArr = this.f90058b;
        if (iArr.length < i10) {
            Object[] objArr = this.f90059c;
            b(i10);
            int i11 = this.f90060d;
            if (i11 > 0) {
                System.arraycopy(iArr, 0, this.f90058b, 0, i11);
                System.arraycopy(objArr, 0, this.f90059c, 0, this.f90060d);
            }
            f(iArr, objArr, this.f90060d);
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            if (size() != set.size()) {
                return false;
            }
            for (int i10 = 0; i10 < this.f90060d; i10++) {
                try {
                    if (!set.contains(l(i10))) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        int[] iArr = this.f90058b;
        int i10 = this.f90060d;
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            i11 += iArr[i12];
        }
        return i11;
    }

    public int indexOf(Object obj) {
        return obj == null ? j() : i(obj, obj.hashCode());
    }

    @Override // java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.f90060d <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return h().m().iterator();
    }

    public E k(int i10) {
        Object[] objArr = this.f90059c;
        E e10 = (E) objArr[i10];
        int i11 = this.f90060d;
        if (i11 <= 1) {
            f(this.f90058b, objArr, i11);
            this.f90058b = new int[0];
            this.f90059c = new Object[0];
            this.f90060d = 0;
        } else {
            int[] iArr = this.f90058b;
            if (iArr.length <= 8 || i11 >= iArr.length / 3) {
                int i12 = i11 - 1;
                this.f90060d = i12;
                if (i10 < i12) {
                    int i13 = i10 + 1;
                    System.arraycopy(iArr, i13, iArr, i10, i12 - i10);
                    Object[] objArr2 = this.f90059c;
                    System.arraycopy(objArr2, i13, objArr2, i10, this.f90060d - i10);
                }
                this.f90059c[this.f90060d] = null;
            } else {
                b(i11 > 8 ? i11 + (i11 >> 1) : 8);
                this.f90060d--;
                if (i10 > 0) {
                    System.arraycopy(iArr, 0, this.f90058b, 0, i10);
                    System.arraycopy(objArr, 0, this.f90059c, 0, i10);
                }
                int i14 = this.f90060d;
                if (i10 < i14) {
                    int i15 = i10 + 1;
                    System.arraycopy(iArr, i15, this.f90058b, i10, i14 - i10);
                    System.arraycopy(objArr, i15, this.f90059c, i10, this.f90060d - i10);
                }
            }
        }
        return e10;
    }

    public E l(int i10) {
        return (E) this.f90059c[i10];
    }

    @Override // java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        int iIndexOf = indexOf(obj);
        if (iIndexOf < 0) {
            return false;
        }
        k(iIndexOf);
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean removeAll(Collection<?> collection) {
        Iterator<?> it2 = collection.iterator();
        boolean zRemove = false;
        while (it2.hasNext()) {
            zRemove |= remove(it2.next());
        }
        return zRemove;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean retainAll(Collection<?> collection) {
        boolean z10 = false;
        for (int i10 = this.f90060d - 1; i10 >= 0; i10--) {
            if (!collection.contains(this.f90059c[i10])) {
                k(i10);
                z10 = true;
            }
        }
        return z10;
    }

    @Override // java.util.Collection, java.util.Set
    public int size() {
        return this.f90060d;
    }

    @Override // java.util.Collection, java.util.Set
    public Object[] toArray() {
        int i10 = this.f90060d;
        Object[] objArr = new Object[i10];
        System.arraycopy(this.f90059c, 0, objArr, 0, i10);
        return objArr;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb2 = new StringBuilder(this.f90060d * 14);
        sb2.append('{');
        for (int i10 = 0; i10 < this.f90060d; i10++) {
            if (i10 > 0) {
                sb2.append(", ");
            }
            E eL = l(i10);
            if (eL != this) {
                sb2.append(eL);
            } else {
                sb2.append("(this Set)");
            }
        }
        sb2.append('}');
        return sb2.toString();
    }

    @Override // java.util.Collection, java.util.Set
    public <T> T[] toArray(T[] tArr) {
        if (tArr.length < this.f90060d) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), this.f90060d));
        }
        System.arraycopy(this.f90059c, 0, tArr, 0, this.f90060d);
        int length = tArr.length;
        int i10 = this.f90060d;
        if (length > i10) {
            tArr[i10] = null;
        }
        return tArr;
    }

    public c(int i10) {
        if (i10 == 0) {
            this.f90058b = new int[0];
            this.f90059c = new Object[0];
        } else {
            b(i10);
        }
        this.f90060d = 0;
    }

    public c(c cVar) {
        this();
        if (cVar != null) {
            a(cVar);
        }
    }
}
