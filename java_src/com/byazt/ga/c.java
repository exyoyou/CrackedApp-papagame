package com.byazt.ga;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 256, 20})
public final class c<E> implements Collection<E>, Set<E> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f14367a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static Object[] f14368n;
    public static Object[] sp;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static int f14369x;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object[] f14370c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public z<E, E> f14371da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[] f14372i;
    public int tt;
    public static final int[] ve = new int[0];
    public static final Object[] uj = new Object[0];

    public c() {
        this(0);
    }

    private int c(Object obj, int i10) {
        int i11 = this.tt;
        if (i11 == 0) {
            return -1;
        }
        int iC = tt.c(this.f14372i, i11, i10);
        if (iC < 0 || obj.equals(this.f14370c[iC])) {
            return iC;
        }
        int i12 = iC + 1;
        while (i12 < i11 && this.f14372i[i12] == i10) {
            if (obj.equals(this.f14370c[i12])) {
                return i12;
            }
            i12++;
        }
        for (int i13 = iC - 1; i13 >= 0 && this.f14372i[i13] == i10; i13--) {
            if (obj.equals(this.f14370c[i13])) {
                return i13;
            }
        }
        return ~i12;
    }

    private void uj(int i10) {
        if (i10 == 8) {
            synchronized (c.class) {
                Object[] objArr = sp;
                if (objArr != null) {
                    this.f14370c = objArr;
                    sp = (Object[]) objArr[0];
                    this.f14372i = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    f14369x--;
                    return;
                }
            }
        } else if (i10 == 4) {
            synchronized (c.class) {
                Object[] objArr2 = f14368n;
                if (objArr2 != null) {
                    this.f14370c = objArr2;
                    f14368n = (Object[]) objArr2[0];
                    this.f14372i = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    f14367a--;
                    return;
                }
            }
        }
        this.f14372i = new int[i10];
        this.f14370c = new Object[i10];
    }

    @Override // java.util.Collection, java.util.Set
    public boolean add(E e10) {
        int i10;
        int iC;
        if (e10 == null) {
            iC = c();
            i10 = 0;
        } else {
            int iHashCode = e10.hashCode();
            i10 = iHashCode;
            iC = c(e10, iHashCode);
        }
        if (iC >= 0) {
            return false;
        }
        int i11 = ~iC;
        int i12 = this.tt;
        int[] iArr = this.f14372i;
        if (i12 >= iArr.length) {
            int i13 = 8;
            if (i12 >= 8) {
                i13 = (i12 >> 1) + i12;
            } else if (i12 < 4) {
                i13 = 4;
            }
            Object[] objArr = this.f14370c;
            uj(i13);
            int[] iArr2 = this.f14372i;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr, 0, this.f14370c, 0, objArr.length);
            }
            c(iArr, objArr, this.tt);
        }
        int i14 = this.tt;
        if (i11 < i14) {
            int[] iArr3 = this.f14372i;
            int i15 = i11 + 1;
            System.arraycopy(iArr3, i11, iArr3, i15, i14 - i11);
            Object[] objArr2 = this.f14370c;
            System.arraycopy(objArr2, i11, objArr2, i15, this.tt - i11);
        }
        this.f14372i[i11] = i10;
        this.f14370c[i11] = e10;
        this.tt++;
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean addAll(Collection<? extends E> collection) {
        c(this.tt + collection.size());
        Iterator<? extends E> it2 = collection.iterator();
        boolean zAdd = false;
        while (it2.hasNext()) {
            zAdd |= add(it2.next());
        }
        return zAdd;
    }

    @Override // java.util.Collection, java.util.Set
    public void clear() {
        int i10 = this.tt;
        if (i10 != 0) {
            c(this.f14372i, this.f14370c, i10);
            this.f14372i = ve;
            this.f14370c = uj;
            this.tt = 0;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return c(obj) >= 0;
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
            for (int i10 = 0; i10 < this.tt; i10++) {
                try {
                    if (!set.contains(tt(i10))) {
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
        int[] iArr = this.f14372i;
        int i10 = this.tt;
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            i11 += iArr[i12];
        }
        return i11;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.tt <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return tt().uj().iterator();
    }

    @Override // java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        int iC = c(obj);
        if (iC < 0) {
            return false;
        }
        ve(iC);
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
        for (int i10 = this.tt - 1; i10 >= 0; i10--) {
            if (!collection.contains(this.f14370c[i10])) {
                ve(i10);
                z10 = true;
            }
        }
        return z10;
    }

    @Override // java.util.Collection, java.util.Set
    public int size() {
        return this.tt;
    }

    @Override // java.util.Collection, java.util.Set
    public Object[] toArray() {
        int i10 = this.tt;
        Object[] objArr = new Object[i10];
        System.arraycopy(this.f14370c, 0, objArr, 0, i10);
        return objArr;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb2 = new StringBuilder(this.tt * 14);
        sb2.append('{');
        for (int i10 = 0; i10 < this.tt; i10++) {
            if (i10 > 0) {
                sb2.append(", ");
            }
            E eTt = tt(i10);
            if (eTt != this) {
                sb2.append(eTt);
            } else {
                sb2.append("(this Set)");
            }
        }
        sb2.append('}');
        return sb2.toString();
    }

    public E tt(int i10) {
        return (E) this.f14370c[i10];
    }

    public E ve(int i10) {
        Object[] objArr = this.f14370c;
        E e10 = (E) objArr[i10];
        int i11 = this.tt;
        if (i11 <= 1) {
            c(this.f14372i, objArr, i11);
            this.f14372i = ve;
            this.f14370c = uj;
            this.tt = 0;
        } else {
            int[] iArr = this.f14372i;
            if (iArr.length <= 8 || i11 >= iArr.length / 3) {
                int i12 = i11 - 1;
                this.tt = i12;
                if (i10 < i12) {
                    int i13 = i10 + 1;
                    System.arraycopy(iArr, i13, iArr, i10, i12 - i10);
                    Object[] objArr2 = this.f14370c;
                    System.arraycopy(objArr2, i13, objArr2, i10, this.tt - i10);
                }
                this.f14370c[this.tt] = null;
            } else {
                uj(i11 > 8 ? i11 + (i11 >> 1) : 8);
                this.tt--;
                if (i10 > 0) {
                    System.arraycopy(iArr, 0, this.f14372i, 0, i10);
                    System.arraycopy(objArr, 0, this.f14370c, 0, i10);
                }
                int i14 = this.tt;
                if (i10 < i14) {
                    int i15 = i10 + 1;
                    System.arraycopy(iArr, i15, this.f14372i, i10, i14 - i10);
                    System.arraycopy(objArr, i15, this.f14370c, i10, this.tt - i10);
                }
            }
        }
        return e10;
    }

    public c(int i10) {
        if (i10 == 0) {
            this.f14372i = ve;
            this.f14370c = uj;
        } else {
            uj(i10);
        }
        this.tt = 0;
    }

    private z<E, E> tt() {
        if (this.f14371da == null) {
            this.f14371da = new z<E, E>() { // from class: com.byazt.ga.c.1
                @Override // com.byazt.ga.z
                public int c() {
                    return c.this.tt;
                }

                @Override // com.byazt.ga.z
                public Map<E, E> tt() {
                    throw new UnsupportedOperationException("not a map");
                }

                @Override // com.byazt.ga.z
                public void ve() {
                    c.this.clear();
                }

                @Override // com.byazt.ga.z
                public Object c(int i10, int i11) {
                    return c.this.f14370c[i10];
                }

                @Override // com.byazt.ga.z
                public int c(Object obj) {
                    return c.this.c(obj);
                }

                @Override // com.byazt.ga.z
                public void c(int i10) {
                    c.this.ve(i10);
                }
            };
        }
        return this.f14371da;
    }

    @Override // java.util.Collection, java.util.Set
    public <T> T[] toArray(T[] tArr) {
        if (tArr.length < this.tt) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), this.tt));
        }
        System.arraycopy(this.f14370c, 0, tArr, 0, this.tt);
        int length = tArr.length;
        int i10 = this.tt;
        if (length > i10) {
            tArr[i10] = null;
        }
        return tArr;
    }

    private int c() {
        int i10 = this.tt;
        if (i10 == 0) {
            return -1;
        }
        int iC = tt.c(this.f14372i, i10, 0);
        if (iC < 0 || this.f14370c[iC] == null) {
            return iC;
        }
        int i11 = iC + 1;
        while (i11 < i10 && this.f14372i[i11] == 0) {
            if (this.f14370c[i11] == null) {
                return i11;
            }
            i11++;
        }
        for (int i12 = iC - 1; i12 >= 0 && this.f14372i[i12] == 0; i12--) {
            if (this.f14370c[i12] == null) {
                return i12;
            }
        }
        return ~i11;
    }

    private static void c(int[] iArr, Object[] objArr, int i10) {
        if (iArr.length == 8) {
            synchronized (c.class) {
                if (f14369x < 10) {
                    objArr[0] = sp;
                    objArr[1] = iArr;
                    for (int i11 = i10 - 1; i11 >= 2; i11--) {
                        objArr[i11] = null;
                    }
                    sp = objArr;
                    f14369x++;
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (c.class) {
                if (f14367a < 10) {
                    objArr[0] = f14368n;
                    objArr[1] = iArr;
                    for (int i12 = i10 - 1; i12 >= 2; i12--) {
                        objArr[i12] = null;
                    }
                    f14368n = objArr;
                    f14367a++;
                }
            }
        }
    }

    public void c(int i10) {
        int[] iArr = this.f14372i;
        if (iArr.length < i10) {
            Object[] objArr = this.f14370c;
            uj(i10);
            int i11 = this.tt;
            if (i11 > 0) {
                System.arraycopy(iArr, 0, this.f14372i, 0, i11);
                System.arraycopy(objArr, 0, this.f14370c, 0, this.tt);
            }
            c(iArr, objArr, this.tt);
        }
    }

    public int c(Object obj) {
        return obj == null ? c() : c(obj, obj.hashCode());
    }
}
