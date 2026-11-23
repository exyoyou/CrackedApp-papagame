package com.byazt.mk;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_POSITION_UPDATE_INTERVAL, 137})
public final class nu extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final transient byte[][] f16925a;
    public final transient int[] sp;

    public nu(ve veVar, int i10) {
        super(null);
        rl.c(veVar.tt, 0L, i10);
        z zVar = veVar.f16934c;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i12 < i10) {
            int i14 = zVar.ve;
            int i15 = zVar.tt;
            if (i14 == i15) {
                throw new AssertionError("s.limit == s.pos");
            }
            i12 += i14 - i15;
            i13++;
            zVar = zVar.f16939a;
        }
        this.f16925a = new byte[i13][];
        this.sp = new int[i13 * 2];
        z zVar2 = veVar.f16934c;
        int i16 = 0;
        while (i11 < i10) {
            byte[][] bArr = this.f16925a;
            bArr[i16] = zVar2.f16940c;
            int i17 = zVar2.ve;
            int i18 = zVar2.tt;
            i11 += i17 - i18;
            if (i11 > i10) {
                i11 = i10;
            }
            int[] iArr = this.sp;
            iArr[i16] = i11;
            iArr[bArr.length + i16] = i18;
            zVar2.uj = true;
            i16++;
            zVar2 = zVar2.f16939a;
        }
    }

    private a i() {
        return new a(x());
    }

    @Override // com.byazt.mk.a
    public a a() {
        return i().a();
    }

    @Override // com.byazt.mk.a
    public String c() {
        return i().c();
    }

    @Override // com.byazt.mk.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (aVar.sp() == sp() && c(0, aVar, 0, sp())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.byazt.mk.a
    public int hashCode() {
        int i10 = this.uj;
        if (i10 != 0) {
            return i10;
        }
        int length = this.f16925a.length;
        int i11 = 0;
        int i12 = 0;
        int i13 = 1;
        while (i11 < length) {
            byte[] bArr = this.f16925a[i11];
            int[] iArr = this.sp;
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
        this.uj = i13;
        return i13;
    }

    @Override // com.byazt.mk.a
    public String n() {
        return i().n();
    }

    @Override // com.byazt.mk.a
    public int sp() {
        return this.sp[this.f16925a.length - 1];
    }

    @Override // com.byazt.mk.a
    public String toString() {
        return i().toString();
    }

    @Override // com.byazt.mk.a
    public String tt() {
        return i().tt();
    }

    @Override // com.byazt.mk.a
    public a uj() {
        return i().uj();
    }

    @Override // com.byazt.mk.a
    public a ve() {
        return i().ve();
    }

    @Override // com.byazt.mk.a
    public byte[] x() {
        int[] iArr = this.sp;
        byte[][] bArr = this.f16925a;
        byte[] bArr2 = new byte[iArr[bArr.length - 1]];
        int length = bArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            int[] iArr2 = this.sp;
            int i12 = iArr2[length + i10];
            int i13 = iArr2[i10];
            System.arraycopy(this.f16925a[i10], i12, bArr2, i11, i13 - i11);
            i10++;
            i11 = i13;
        }
        return bArr2;
    }

    private int tt(int i10) {
        int iBinarySearch = Arrays.binarySearch(this.sp, 0, this.f16925a.length, i10 + 1);
        return iBinarySearch >= 0 ? iBinarySearch : ~iBinarySearch;
    }

    @Override // com.byazt.mk.a
    public a c(int i10, int i11) {
        return i().c(i10, i11);
    }

    @Override // com.byazt.mk.a
    public byte c(int i10) {
        rl.c(this.sp[this.f16925a.length - 1], i10, 1L);
        int iTt = tt(i10);
        int i11 = iTt == 0 ? 0 : this.sp[iTt - 1];
        int[] iArr = this.sp;
        byte[][] bArr = this.f16925a;
        return bArr[iTt][(i10 - i11) + iArr[bArr.length + iTt]];
    }

    @Override // com.byazt.mk.a
    public void c(ve veVar) {
        int length = this.f16925a.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            int[] iArr = this.sp;
            int i12 = iArr[length + i10];
            int i13 = iArr[i10];
            z zVar = new z(this.f16925a[i10], i12, (i12 + i13) - i11, true, false);
            z zVar2 = veVar.f16934c;
            if (zVar2 == null) {
                zVar.sp = zVar;
                zVar.f16939a = zVar;
                veVar.f16934c = zVar;
            } else {
                zVar2.sp.c(zVar);
            }
            i10++;
            i11 = i13;
        }
        veVar.tt += (long) i11;
    }

    @Override // com.byazt.mk.a
    public boolean c(int i10, a aVar, int i11, int i12) {
        if (i10 < 0 || i10 > sp() - i12) {
            return false;
        }
        int iTt = tt(i10);
        while (i12 > 0) {
            int i13 = iTt == 0 ? 0 : this.sp[iTt - 1];
            int iMin = Math.min(i12, ((this.sp[iTt] - i13) + i13) - i10);
            int[] iArr = this.sp;
            byte[][] bArr = this.f16925a;
            if (!aVar.c(i11, bArr[iTt], (i10 - i13) + iArr[bArr.length + iTt], iMin)) {
                return false;
            }
            i10 += iMin;
            i11 += iMin;
            i12 -= iMin;
            iTt++;
        }
        return true;
    }

    @Override // com.byazt.mk.a
    public boolean c(int i10, byte[] bArr, int i11, int i12) {
        if (i10 < 0 || i10 > sp() - i12 || i11 < 0 || i11 > bArr.length - i12) {
            return false;
        }
        int iTt = tt(i10);
        while (i12 > 0) {
            int i13 = iTt == 0 ? 0 : this.sp[iTt - 1];
            int iMin = Math.min(i12, ((this.sp[iTt] - i13) + i13) - i10);
            int[] iArr = this.sp;
            byte[][] bArr2 = this.f16925a;
            if (!rl.c(bArr2[iTt], (i10 - i13) + iArr[bArr2.length + iTt], bArr, i11, iMin)) {
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
