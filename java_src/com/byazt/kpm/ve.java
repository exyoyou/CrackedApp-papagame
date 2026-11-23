package com.byazt.kpm;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_CMAF_OPTIMIZE_RETRY, 54})
public class ve<E> implements Cloneable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Object f16319c = new Object();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f16320n;
    public boolean tt;
    public Object[] uj;
    public long[] ve;

    public ve() {
        this(10);
    }

    private void uj() {
        int i10 = this.f16320n;
        long[] jArr = this.ve;
        Object[] objArr = this.uj;
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            Object obj = objArr[i12];
            if (obj != f16319c) {
                if (i12 != i11) {
                    jArr[i11] = jArr[i12];
                    objArr[i11] = obj;
                    objArr[i12] = null;
                }
                i11++;
            }
        }
        this.tt = false;
        this.f16320n = i11;
    }

    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public ve<E> clone() {
        try {
            ve<E> veVar = (ve) super.clone();
            veVar.ve = (long[]) this.ve.clone();
            veVar.uj = (Object[]) this.uj.clone();
            return veVar;
        } catch (CloneNotSupportedException e10) {
            throw new AssertionError(e10);
        }
    }

    public void delete(long j10) {
        int iC = tt.c(this.ve, this.f16320n, j10);
        if (iC >= 0) {
            Object[] objArr = this.uj;
            Object obj = objArr[iC];
            Object obj2 = f16319c;
            if (obj != obj2) {
                objArr[iC] = obj2;
                this.tt = true;
            }
        }
    }

    public String toString() {
        if (tt() <= 0) {
            return "{}";
        }
        StringBuilder sb2 = new StringBuilder(this.f16320n * 28);
        sb2.append('{');
        for (int i10 = 0; i10 < this.f16320n; i10++) {
            if (i10 > 0) {
                sb2.append(", ");
            }
            sb2.append(tt(i10));
            sb2.append('=');
            E eVe = ve(i10);
            if (eVe != this) {
                sb2.append(eVe);
            } else {
                sb2.append("(this Map)");
            }
        }
        sb2.append('}');
        return sb2.toString();
    }

    public void tt(long j10, E e10) {
        int iC = tt.c(this.ve, this.f16320n, j10);
        if (iC >= 0) {
            this.uj[iC] = e10;
            return;
        }
        int i10 = ~iC;
        int i11 = this.f16320n;
        if (i10 < i11) {
            Object[] objArr = this.uj;
            if (objArr[i10] == f16319c) {
                this.ve[i10] = j10;
                objArr[i10] = e10;
                return;
            }
        }
        if (this.tt && i11 >= this.ve.length) {
            uj();
            i10 = ~tt.c(this.ve, this.f16320n, j10);
        }
        int i12 = this.f16320n;
        if (i12 >= this.ve.length) {
            int iC2 = tt.c(i12 + 1);
            long[] jArr = new long[iC2];
            Object[] objArr2 = new Object[iC2];
            long[] jArr2 = this.ve;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr3 = this.uj;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.ve = jArr;
            this.uj = objArr2;
        }
        int i13 = this.f16320n;
        if (i13 - i10 != 0) {
            long[] jArr3 = this.ve;
            int i14 = i10 + 1;
            System.arraycopy(jArr3, i10, jArr3, i14, i13 - i10);
            Object[] objArr4 = this.uj;
            System.arraycopy(objArr4, i10, objArr4, i14, this.f16320n - i10);
        }
        this.ve[i10] = j10;
        this.uj[i10] = e10;
        this.f16320n++;
    }

    public E ve(int i10) {
        if (this.tt) {
            uj();
        }
        return (E) this.uj[i10];
    }

    public ve(int i10) {
        this.tt = false;
        if (i10 == 0) {
            this.ve = tt.tt;
            this.uj = tt.ve;
        } else {
            int iC = tt.c(i10);
            this.ve = new long[iC];
            this.uj = new Object[iC];
        }
        this.f16320n = 0;
    }

    public void ve() {
        int i10 = this.f16320n;
        Object[] objArr = this.uj;
        for (int i11 = 0; i11 < i10; i11++) {
            objArr[i11] = null;
        }
        this.f16320n = 0;
        this.tt = false;
    }

    public E c(long j10) {
        return c(j10, null);
    }

    public E c(long j10, E e10) {
        E e11;
        int iC = tt.c(this.ve, this.f16320n, j10);
        return (iC < 0 || (e11 = (E) this.uj[iC]) == f16319c) ? e10 : e11;
    }

    public void c(int i10) {
        Object[] objArr = this.uj;
        Object obj = objArr[i10];
        Object obj2 = f16319c;
        if (obj != obj2) {
            objArr[i10] = obj2;
            this.tt = true;
        }
    }

    public int tt() {
        if (this.tt) {
            uj();
        }
        return this.f16320n;
    }

    public long tt(int i10) {
        if (this.tt) {
            uj();
        }
        return this.ve[i10];
    }
}
