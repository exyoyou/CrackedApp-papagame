package com.byazt.na;

import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 662, 71})
public final class x extends uj {
    public final transient byte[][] sp;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final transient int[] f17056x;

    public x(c cVar, int i10) {
        super(null);
        da.c(cVar.tt, 0L, i10);
        a aVar = cVar.f17050c;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i12 < i10) {
            int i14 = aVar.ve;
            int i15 = aVar.tt;
            if (i14 == i15) {
                throw new AssertionError("s.limit == s.pos");
            }
            i12 += i14 - i15;
            i13++;
            aVar = aVar.f17047a;
        }
        this.sp = new byte[i13][];
        this.f17056x = new int[i13 * 2];
        a aVar2 = cVar.f17050c;
        int i16 = 0;
        while (i11 < i10) {
            byte[][] bArr = this.sp;
            bArr[i16] = aVar2.f17048c;
            int i17 = aVar2.ve;
            int i18 = aVar2.tt;
            i11 += i17 - i18;
            if (i11 > i10) {
                i11 = i10;
            }
            int[] iArr = this.f17056x;
            iArr[i16] = i11;
            iArr[bArr.length + i16] = i18;
            aVar2.uj = true;
            i16++;
            aVar2 = aVar2.f17047a;
        }
    }

    private uj n() {
        return new uj(uj());
    }

    @Override // com.byazt.na.uj
    public String c() {
        return n().c();
    }

    @Override // com.byazt.na.uj
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof uj) {
            uj ujVar = (uj) obj;
            if (ujVar.ve() == ve() && c(0, ujVar, 0, ve())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.byazt.na.uj
    public int hashCode() {
        int i10 = this.f17055n;
        if (i10 != 0) {
            return i10;
        }
        int length = this.sp.length;
        int i11 = 0;
        int i12 = 0;
        int i13 = 1;
        while (i11 < length) {
            byte[] bArr = this.sp[i11];
            int[] iArr = this.f17056x;
            int i14 = iArr[length + i11];
            int i15 = iArr[i11];
            int i16 = (i15 - i12) + i14;
            while (i14 < i16) {
                i13 = (i13 * 31) + bArr[i14];
                i14++;
            }
            i11++;
            i12 = i15;
        }
        this.f17055n = i13;
        return i13;
    }

    @Override // com.byazt.na.uj
    public String toString() {
        return n().toString();
    }

    @Override // com.byazt.na.uj
    public String tt() {
        return n().tt();
    }

    @Override // com.byazt.na.uj
    public byte[] uj() {
        int[] iArr = this.f17056x;
        byte[][] bArr = this.sp;
        byte[] bArr2 = new byte[iArr[bArr.length - 1]];
        int length = bArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            int[] iArr2 = this.f17056x;
            int i12 = iArr2[length + i10];
            int i13 = iArr2[i10];
            System.arraycopy(this.sp[i10], i12, bArr2, i11, i13 - i11);
            i10++;
            i11 = i13;
        }
        return bArr2;
    }

    @Override // com.byazt.na.uj
    public int ve() {
        return this.f17056x[this.sp.length - 1];
    }

    private int tt(int i10) {
        int iBinarySearch = Arrays.binarySearch(this.f17056x, 0, this.sp.length, i10 + 1);
        return iBinarySearch >= 0 ? iBinarySearch : ~iBinarySearch;
    }

    @Override // com.byazt.na.uj
    public uj c(int i10, int i11) {
        return n().c(i10, i11);
    }

    @Override // com.byazt.na.uj
    public byte c(int i10) {
        da.c(this.f17056x[this.sp.length - 1], i10, 1L);
        int iTt = tt(i10);
        int i11 = iTt == 0 ? 0 : this.f17056x[iTt - 1];
        int[] iArr = this.f17056x;
        byte[][] bArr = this.sp;
        return bArr[iTt][(i10 - i11) + iArr[bArr.length + iTt]];
    }

    @Override // com.byazt.na.uj
    public boolean c(int i10, uj ujVar, int i11, int i12) {
        if (i10 < 0 || i10 > ve() - i12) {
            return false;
        }
        int iTt = tt(i10);
        while (i12 > 0) {
            int i13 = iTt == 0 ? 0 : this.f17056x[iTt - 1];
            int iMin = Math.min(i12, ((this.f17056x[iTt] - i13) + i13) - i10);
            int[] iArr = this.f17056x;
            byte[][] bArr = this.sp;
            if (!ujVar.c(i11, bArr[iTt], (i10 - i13) + iArr[bArr.length + iTt], iMin)) {
                return false;
            }
            i10 += iMin;
            i11 += iMin;
            i12 -= iMin;
            iTt++;
        }
        return true;
    }

    @Override // com.byazt.na.uj
    public boolean c(int i10, byte[] bArr, int i11, int i12) {
        if (i10 < 0 || i10 > ve() - i12 || i11 < 0 || i11 > bArr.length - i12) {
            return false;
        }
        int iTt = tt(i10);
        while (i12 > 0) {
            int i13 = iTt == 0 ? 0 : this.f17056x[iTt - 1];
            int iMin = Math.min(i12, ((this.f17056x[iTt] - i13) + i13) - i10);
            int[] iArr = this.f17056x;
            byte[][] bArr2 = this.sp;
            if (!da.c(bArr2[iTt], (i10 - i13) + iArr[bArr2.length + iTt], bArr, i11, iMin)) {
                return false;
            }
            i10 += iMin;
            i11 += iMin;
            i12 -= iMin;
            iTt++;
        }
        return true;
    }
}
