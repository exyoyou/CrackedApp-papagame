package com.byazt.kpm;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ConcurrentModificationException;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_CMAF_OPTIMIZE_RETRY, 46})
public class n<K, V> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Object[] f16314c;
    public static int tt;
    public static int uj;
    public static Object[] ve;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int[] f16316n = tt.f16317c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object[] f16315a = tt.ve;
    public int sp = 0;

    private static int c(int[] iArr, int i10, int i11) {
        try {
            return tt.c(iArr, i10, i11);
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    private void uj(int i10) {
        if (i10 == 8) {
            synchronized (c.class) {
                Object[] objArr = ve;
                if (objArr != null) {
                    this.f16315a = objArr;
                    ve = (Object[]) objArr[0];
                    this.f16316n = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    uj--;
                    return;
                }
            }
        } else if (i10 == 4) {
            synchronized (c.class) {
                Object[] objArr2 = f16314c;
                if (objArr2 != null) {
                    this.f16315a = objArr2;
                    f16314c = (Object[]) objArr2[0];
                    this.f16316n = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    tt--;
                    return;
                }
            }
        }
        this.f16316n = new int[i10];
        this.f16315a = new Object[i10 << 1];
    }

    public void clear() {
        int i10 = this.sp;
        if (i10 > 0) {
            int[] iArr = this.f16316n;
            Object[] objArr = this.f16315a;
            this.f16316n = tt.f16317c;
            this.f16315a = tt.ve;
            this.sp = 0;
            c(iArr, objArr, i10);
        }
        if (this.sp > 0) {
            throw new ConcurrentModificationException();
        }
    }

    public boolean containsKey(Object obj) {
        return c(obj) >= 0;
    }

    public boolean containsValue(Object obj) {
        return tt(obj) >= 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof n) {
            n nVar = (n) obj;
            if (size() != nVar.size()) {
                return false;
            }
            for (int i10 = 0; i10 < this.sp; i10++) {
                try {
                    K kC = c(i10);
                    V vTt = tt(i10);
                    Object obj2 = nVar.get(kC);
                    if (vTt == null) {
                        if (obj2 != null || !nVar.containsKey(kC)) {
                            return false;
                        }
                    } else if (!vTt.equals(obj2)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                    return false;
                }
            }
            return true;
        }
        if (!(obj instanceof Map)) {
            return false;
        }
        Map map = (Map) obj;
        if (size() != map.size()) {
            return false;
        }
        for (int i11 = 0; i11 < this.sp; i11++) {
            try {
                K kC2 = c(i11);
                V vTt2 = tt(i11);
                Object obj3 = map.get(kC2);
                if (vTt2 == null) {
                    if (obj3 != null || !map.containsKey(kC2)) {
                        return false;
                    }
                } else if (!vTt2.equals(obj3)) {
                    return false;
                }
            } catch (ClassCastException | NullPointerException unused2) {
                return false;
            }
        }
        return true;
    }

    public V get(Object obj) {
        int iC = c(obj);
        if (iC >= 0) {
            return (V) this.f16315a[(iC << 1) + 1];
        }
        return null;
    }

    public int hashCode() {
        int[] iArr = this.f16316n;
        Object[] objArr = this.f16315a;
        int i10 = this.sp;
        int i11 = 1;
        int i12 = 0;
        int iHashCode = 0;
        while (i12 < i10) {
            Object obj = objArr[i11];
            iHashCode += (obj == null ? 0 : obj.hashCode()) ^ iArr[i12];
            i12++;
            i11 += 2;
        }
        return iHashCode;
    }

    public boolean isEmpty() {
        return this.sp <= 0;
    }

    public V put(K k10, V v10) {
        int i10;
        int iC;
        int i11 = this.sp;
        if (k10 == null) {
            iC = c();
            i10 = 0;
        } else {
            int iHashCode = k10.hashCode();
            i10 = iHashCode;
            iC = c(k10, iHashCode);
        }
        if (iC >= 0) {
            int i12 = (iC << 1) + 1;
            Object[] objArr = this.f16315a;
            V v11 = (V) objArr[i12];
            objArr[i12] = v10;
            return v11;
        }
        int i13 = ~iC;
        int[] iArr = this.f16316n;
        if (i11 >= iArr.length) {
            int i14 = 8;
            if (i11 >= 8) {
                i14 = (i11 >> 1) + i11;
            } else if (i11 < 4) {
                i14 = 4;
            }
            Object[] objArr2 = this.f16315a;
            uj(i14);
            if (i11 != this.sp) {
                throw new ConcurrentModificationException();
            }
            int[] iArr2 = this.f16316n;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr2, 0, this.f16315a, 0, objArr2.length);
            }
            c(iArr, objArr2, i11);
        }
        if (i13 < i11) {
            int[] iArr3 = this.f16316n;
            int i15 = i13 + 1;
            System.arraycopy(iArr3, i13, iArr3, i15, i11 - i13);
            Object[] objArr3 = this.f16315a;
            System.arraycopy(objArr3, i13 << 1, objArr3, i15 << 1, (this.sp - i13) << 1);
        }
        int i16 = this.sp;
        if (i11 == i16) {
            int[] iArr4 = this.f16316n;
            if (i13 < iArr4.length) {
                iArr4[i13] = i10;
                Object[] objArr4 = this.f16315a;
                int i17 = i13 << 1;
                objArr4[i17] = k10;
                objArr4[i17 + 1] = v10;
                this.sp = i16 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    public V remove(Object obj) {
        int iC = c(obj);
        if (iC >= 0) {
            return ve(iC);
        }
        return null;
    }

    public int size() {
        return this.sp;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb2 = new StringBuilder(this.sp * 28);
        sb2.append('{');
        for (int i10 = 0; i10 < this.sp; i10++) {
            if (i10 > 0) {
                sb2.append(", ");
            }
            K kC = c(i10);
            if (kC != this) {
                sb2.append(kC);
            } else {
                sb2.append("(this Map)");
            }
            sb2.append('=');
            V vTt = tt(i10);
            if (vTt != this) {
                sb2.append(vTt);
            } else {
                sb2.append("(this Map)");
            }
        }
        sb2.append('}');
        return sb2.toString();
    }

    public int tt(Object obj) {
        int i10 = this.sp * 2;
        Object[] objArr = this.f16315a;
        if (obj == null) {
            for (int i11 = 1; i11 < i10; i11 += 2) {
                if (objArr[i11] == null) {
                    return i11 >> 1;
                }
            }
            return -1;
        }
        for (int i12 = 1; i12 < i10; i12 += 2) {
            if (obj.equals(objArr[i12])) {
                return i12 >> 1;
            }
        }
        return -1;
    }

    public V ve(int i10) {
        Object[] objArr = this.f16315a;
        int i11 = i10 << 1;
        V v10 = (V) objArr[i11 + 1];
        int i12 = this.sp;
        int i13 = 0;
        if (i12 <= 1) {
            c(this.f16316n, objArr, i12);
            this.f16316n = tt.f16317c;
            this.f16315a = tt.ve;
        } else {
            int i14 = i12 - 1;
            int[] iArr = this.f16316n;
            if (iArr.length <= 8 || i12 >= iArr.length / 3) {
                if (i10 < i14) {
                    int i15 = i10 + 1;
                    int i16 = i14 - i10;
                    System.arraycopy(iArr, i15, iArr, i10, i16);
                    Object[] objArr2 = this.f16315a;
                    System.arraycopy(objArr2, i15 << 1, objArr2, i11, i16 << 1);
                }
                Object[] objArr3 = this.f16315a;
                int i17 = i14 << 1;
                objArr3[i17] = null;
                objArr3[i17 + 1] = null;
            } else {
                uj(i12 > 8 ? i12 + (i12 >> 1) : 8);
                if (i12 != this.sp) {
                    throw new ConcurrentModificationException();
                }
                if (i10 > 0) {
                    System.arraycopy(iArr, 0, this.f16316n, 0, i10);
                    System.arraycopy(objArr, 0, this.f16315a, 0, i11);
                }
                if (i10 < i14) {
                    int i18 = i10 + 1;
                    int i19 = i14 - i10;
                    System.arraycopy(iArr, i18, this.f16316n, i10, i19);
                    System.arraycopy(objArr, i18 << 1, this.f16315a, i11, i19 << 1);
                }
            }
            i13 = i14;
        }
        if (i12 != this.sp) {
            throw new ConcurrentModificationException();
        }
        this.sp = i13;
        return v10;
    }

    public int c(Object obj, int i10) {
        int i11 = this.sp;
        if (i11 == 0) {
            return -1;
        }
        int iC = c(this.f16316n, i11, i10);
        if (iC < 0 || obj.equals(this.f16315a[iC << 1])) {
            return iC;
        }
        int i12 = iC + 1;
        while (i12 < i11 && this.f16316n[i12] == i10) {
            if (obj.equals(this.f16315a[i12 << 1])) {
                return i12;
            }
            i12++;
        }
        for (int i13 = iC - 1; i13 >= 0 && this.f16316n[i13] == i10; i13--) {
            if (obj.equals(this.f16315a[i13 << 1])) {
                return i13;
            }
        }
        return ~i12;
    }

    public V tt(int i10) {
        return (V) this.f16315a[(i10 << 1) + 1];
    }

    public int c() {
        int i10 = this.sp;
        if (i10 == 0) {
            return -1;
        }
        int iC = c(this.f16316n, i10, 0);
        if (iC < 0 || this.f16315a[iC << 1] == null) {
            return iC;
        }
        int i11 = iC + 1;
        while (i11 < i10 && this.f16316n[i11] == 0) {
            if (this.f16315a[i11 << 1] == null) {
                return i11;
            }
            i11++;
        }
        for (int i12 = iC - 1; i12 >= 0 && this.f16316n[i12] == 0; i12--) {
            if (this.f16315a[i12 << 1] == null) {
                return i12;
            }
        }
        return ~i11;
    }

    private static void c(int[] iArr, Object[] objArr, int i10) {
        if (iArr.length == 8) {
            synchronized (c.class) {
                if (uj < 10) {
                    objArr[0] = ve;
                    objArr[1] = iArr;
                    for (int i11 = (i10 << 1) - 1; i11 >= 2; i11--) {
                        objArr[i11] = null;
                    }
                    ve = objArr;
                    uj++;
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (c.class) {
                if (tt < 10) {
                    objArr[0] = f16314c;
                    objArr[1] = iArr;
                    for (int i12 = (i10 << 1) - 1; i12 >= 2; i12--) {
                        objArr[i12] = null;
                    }
                    f16314c = objArr;
                    tt++;
                }
            }
        }
    }

    public int c(Object obj) {
        return obj == null ? c() : c(obj, obj.hashCode());
    }

    public K c(int i10) {
        return (K) this.f16315a[i10 << 1];
    }
}
