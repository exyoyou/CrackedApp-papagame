package net.lingala.zip4j.crypto.PBKDF2;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected e f94575a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected f f94576b;

    public c() {
        this.f94575a = null;
        this.f94576b = null;
    }

    protected void a(byte[] bArr, int i10, int i11) {
        bArr[i10 + 0] = (byte) (i11 / 16777216);
        bArr[i10 + 1] = (byte) (i11 / 65536);
        bArr[i10 + 2] = (byte) (i11 / 256);
        bArr[i10 + 3] = (byte) i11;
    }

    protected byte[] b(f fVar, byte[] bArr, int i10, int i11) {
        byte[] bArr2 = bArr == null ? new byte[0] : bArr;
        int iA = fVar.a();
        int iE = e(i11, iA);
        int i12 = i11 - ((iE - 1) * iA);
        byte[] bArr3 = new byte[iE * iA];
        int i13 = 0;
        for (int i14 = 1; i14 <= iE; i14++) {
            c(bArr3, i13, fVar, bArr2, i10, i14);
            i13 += iA;
        }
        if (i12 >= iA) {
            return bArr3;
        }
        byte[] bArr4 = new byte[i11];
        System.arraycopy(bArr3, 0, bArr4, 0, i11);
        return bArr4;
    }

    protected void c(byte[] bArr, int i10, f fVar, byte[] bArr2, int i11, int i12) {
        int iA = fVar.a();
        byte[] bArr3 = new byte[iA];
        byte[] bArrC = new byte[bArr2.length + 4];
        System.arraycopy(bArr2, 0, bArrC, 0, bArr2.length);
        a(bArrC, bArr2.length, i12);
        for (int i13 = 0; i13 < i11; i13++) {
            bArrC = fVar.c(bArrC);
            m(bArr3, bArrC);
        }
        System.arraycopy(bArr3, 0, bArr, i10, iA);
    }

    protected void d(byte[] bArr) {
        if (this.f94576b == null) {
            this.f94576b = new b(this.f94575a.b());
        }
        this.f94576b.b(bArr);
    }

    protected int e(int i10, int i11) {
        return (i10 / i11) + (i10 % i11 > 0 ? 1 : 0);
    }

    public byte[] f(char[] cArr) {
        return g(cArr, 0);
    }

    public byte[] g(char[] cArr, int i10) {
        cArr.getClass();
        d(net.lingala.zip4j.util.f.c(cArr));
        if (i10 == 0) {
            i10 = this.f94576b.a();
        }
        return b(this.f94576b, this.f94575a.e(), this.f94575a.d(), i10);
    }

    public e h() {
        return this.f94575a;
    }

    public f i() {
        return this.f94576b;
    }

    public void j(e eVar) {
        this.f94575a = eVar;
    }

    public void k(f fVar) {
        this.f94576b = fVar;
    }

    public boolean l(char[] cArr) {
        byte[] bArrG;
        byte[] bArrA = h().a();
        if (bArrA == null || bArrA.length == 0 || (bArrG = g(cArr, bArrA.length)) == null || bArrG.length != bArrA.length) {
            return false;
        }
        for (int i10 = 0; i10 < bArrG.length; i10++) {
            if (bArrG[i10] != bArrA[i10]) {
                return false;
            }
        }
        return true;
    }

    protected void m(byte[] bArr, byte[] bArr2) {
        for (int i10 = 0; i10 < bArr.length; i10++) {
            bArr[i10] = (byte) (bArr[i10] ^ bArr2[i10]);
        }
    }

    public c(e eVar) {
        this.f94575a = eVar;
        this.f94576b = null;
    }

    public c(e eVar, f fVar) {
        this.f94575a = eVar;
        this.f94576b = fVar;
    }
}
