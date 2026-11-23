package com.tencent.stat.common;

/* JADX INFO: loaded from: classes2.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final /* synthetic */ boolean f83898a = true;

    private g() {
    }

    public static byte[] a(byte[] bArr, int i10) {
        return a(bArr, 0, bArr.length, i10);
    }

    public static byte[] b(byte[] bArr, int i10) {
        return b(bArr, 0, bArr.length, i10);
    }

    public static byte[] a(byte[] bArr, int i10, int i11, int i12) {
        i iVar = new i(i12, new byte[(i11 * 3) / 4]);
        if (!iVar.a(bArr, i10, i11, true)) {
            throw new IllegalArgumentException("bad base-64");
        }
        int i13 = iVar.f83900b;
        byte[] bArr2 = iVar.f83899a;
        if (i13 == bArr2.length) {
            return bArr2;
        }
        byte[] bArr3 = new byte[i13];
        System.arraycopy(bArr2, 0, bArr3, 0, i13);
        return bArr3;
    }

    public static byte[] b(byte[] bArr, int i10, int i11, int i12) {
        j jVar = new j(i12, null);
        int i13 = (i11 / 3) * 4;
        if (!jVar.f83910d) {
            int i14 = i11 % 3;
            if (i14 == 1) {
                i13 += 2;
            } else if (i14 == 2) {
                i13 += 3;
            }
        } else if (i11 % 3 > 0) {
            i13 += 4;
        }
        if (jVar.f83911e && i11 > 0) {
            i13 += (((i11 - 1) / 57) + 1) * (jVar.f83912f ? 2 : 1);
        }
        jVar.f83899a = new byte[i13];
        jVar.a(bArr, i10, i11, true);
        if (f83898a || jVar.f83900b == i13) {
            return jVar.f83899a;
        }
        throw new AssertionError();
    }
}
