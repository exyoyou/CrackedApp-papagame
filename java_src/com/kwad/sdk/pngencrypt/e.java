package com.kwad.sdk.pngencrypt;

/* JADX INFO: loaded from: classes2.dex */
public final class e {
    int bkA;
    int bkB;
    int bkC;
    final k bkt;
    private int bkv;
    private int bkw;
    int bkx;
    int bky;
    int bkz;
    private int bku = 0;
    private int bkD = -1;
    private int bkE = -1;
    private int bkF = 0;
    private boolean bkH = false;
    int bkG = 0;

    public e(k kVar) {
        this.bkt = kVar;
        fm(1);
        fl(0);
    }

    private int Ta() {
        return SZ();
    }

    private void fl(int i10) {
        this.bkD = i10;
        int i11 = (i10 * this.bkx) + this.bkz;
        this.bkE = i11;
        if (i11 < 0 || i11 >= this.bkt.bkv) {
            throw new PngjException("bad row - this should not happen");
        }
    }

    private void fm(int i10) {
        if (this.bku == i10) {
            return;
        }
        this.bku = i10;
        byte[] bArrFn = fn(i10);
        byte b10 = bArrFn[0];
        this.bky = b10;
        byte b11 = bArrFn[1];
        this.bkx = b11;
        byte b12 = bArrFn[2];
        this.bkA = b12;
        byte b13 = bArrFn[3];
        this.bkz = b13;
        k kVar = this.bkt;
        int i11 = kVar.bkv;
        this.bkv = i11 > b13 ? (((i11 + b11) - 1) - b13) / b11 : 0;
        int i12 = kVar.bkw;
        int i13 = i12 > b12 ? (((i12 + b10) - 1) - b12) / b10 : 0;
        this.bkw = i13;
        if (i13 == 0) {
            this.bkv = 0;
        }
        int i14 = kVar.bkP;
        this.bkC = b10 * i14;
        this.bkB = b12 * i14;
    }

    private static byte[] fn(int i10) {
        switch (i10) {
            case 1:
                return new byte[]{8, 8, 0, 0};
            case 2:
                return new byte[]{8, 8, 4, 0};
            case 3:
                return new byte[]{4, 8, 0, 4};
            case 4:
                return new byte[]{4, 4, 2, 0};
            case 5:
                return new byte[]{2, 4, 0, 2};
            case 6:
                return new byte[]{2, 2, 1, 0};
            case 7:
                return new byte[]{1, 2, 0, 1};
            default:
                throw new PngjException("bad interlace pass" + i10);
        }
    }

    final boolean SU() {
        int i10;
        while (true) {
            this.bkF++;
            int i11 = this.bkv;
            if (i11 != 0 && (i10 = this.bkD) < i11 - 1) {
                fl(i10 + 1);
                break;
            }
            int i12 = this.bku;
            if (i12 != 7) {
                fm(i12 + 1);
                if (this.bkv != 0) {
                    fl(0);
                    break;
                }
                this.bkF--;
            } else {
                this.bkH = true;
                return false;
            }
        }
        return true;
    }

    final int SV() {
        return this.bkD;
    }

    final int SW() {
        return this.bkE;
    }

    final int SX() {
        return this.bku;
    }

    final int SY() {
        return this.bkv;
    }

    final int SZ() {
        return this.bkw;
    }

    public final int Tb() {
        return ((this.bkt.bkU * Ta()) + 7) / 8;
    }
}
