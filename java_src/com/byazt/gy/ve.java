package com.byazt.gy;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 2085, 54})
public class ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[] f14805c = new int[32];
    public int tt;
    public int ve;

    private void sp() {
        int[] iArr = this.f14805c;
        int length = iArr.length;
        int i10 = this.tt;
        int i11 = length - i10;
        if (i11 <= 2) {
            int[] iArr2 = new int[(iArr.length + i11) * 2];
            System.arraycopy(iArr, 0, iArr2, 0, i10);
            this.f14805c = iArr2;
        }
    }

    public final void a() {
        int i10 = this.tt;
        if (i10 != 0) {
            int i11 = i10 - 1;
            int i12 = this.f14805c[i11] * 2;
            if ((i11 - 1) - i12 != 0) {
                this.tt = i10 - (i12 + 2);
                this.ve--;
            }
        }
    }

    public final void c() {
        this.tt = 0;
        this.ve = 0;
    }

    public final void n() {
        sp();
        int i10 = this.tt;
        int[] iArr = this.f14805c;
        iArr[i10] = 0;
        iArr[i10 + 1] = 0;
        this.tt = i10 + 2;
        this.ve++;
    }

    public final int tt() {
        int i10 = this.tt;
        if (i10 == 0) {
            return 0;
        }
        return this.f14805c[i10 - 1];
    }

    public final int uj() {
        return this.ve;
    }

    public final void ve() {
        int i10;
        int[] iArr;
        int i11;
        int i12 = this.tt;
        if (i12 == 0 || (i11 = (iArr = this.f14805c)[(i10 = i12 - 1)]) == 0) {
            return;
        }
        int i13 = i11 - 1;
        int i14 = i10 - 2;
        iArr[i14] = i13;
        iArr[i14 - ((i13 * 2) + 1)] = i13;
        this.tt = i12 - 2;
    }

    public final void c(int i10, int i11) {
        if (this.ve == 0) {
            n();
        }
        sp();
        int i12 = this.tt;
        int i13 = i12 - 1;
        int[] iArr = this.f14805c;
        int i14 = iArr[i13];
        int i15 = (i13 - 1) - (i14 * 2);
        int i16 = i14 + 1;
        iArr[i15] = i16;
        iArr[i13] = i10;
        iArr[i13 + 1] = i11;
        iArr[i13 + 2] = i16;
        this.tt = i12 + 2;
    }
}
