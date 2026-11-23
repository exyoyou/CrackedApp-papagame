package net.lingala.zip4j.crypto;

import java.util.Arrays;
import net.lingala.zip4j.exception.ZipException;
import pc.i;

/* JADX INFO: loaded from: classes.dex */
public class a implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private i f94582a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private nc.a f94583b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private net.lingala.zip4j.crypto.PBKDF2.b f94584c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f94586e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f94587f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f94588g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private byte[] f94589h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private byte[] f94590i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private byte[] f94591j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private byte[] f94592k;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private byte[] f94594m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private byte[] f94595n;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f94585d = 2;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f94593l = 1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f94596o = 0;

    public a(i iVar, byte[] bArr, byte[] bArr2) throws ZipException {
        if (iVar == null) {
            throw new ZipException("one of the input parameters is null in AESDecryptor Constructor");
        }
        this.f94582a = iVar;
        this.f94592k = null;
        this.f94594m = new byte[16];
        this.f94595n = new byte[16];
        h(bArr, bArr2);
    }

    private byte[] c(byte[] bArr, char[] cArr) throws ZipException {
        try {
            return new net.lingala.zip4j.crypto.PBKDF2.c(new net.lingala.zip4j.crypto.PBKDF2.e(com.alipay.security.mobile.module.commonutils.crypto.c.f7275a, "ISO-8859-1", bArr, 1000)).g(cArr, this.f94586e + this.f94587f + 2);
        } catch (Exception e10) {
            throw new ZipException(e10);
        }
    }

    private void h(byte[] bArr, byte[] bArr2) throws ZipException {
        i iVar = this.f94582a;
        if (iVar == null) {
            throw new ZipException("invalid file header in init method of AESDecryptor");
        }
        pc.a aVarA = iVar.a();
        if (aVarA == null) {
            throw new ZipException("invalid aes extra data record - in init method of AESDecryptor");
        }
        int iA = aVarA.a();
        if (iA == 1) {
            this.f94586e = 16;
            this.f94587f = 16;
            this.f94588g = 8;
        } else if (iA == 2) {
            this.f94586e = 24;
            this.f94587f = 24;
            this.f94588g = 12;
        } else {
            if (iA != 3) {
                StringBuffer stringBuffer = new StringBuffer("invalid aes key strength for file: ");
                stringBuffer.append(this.f94582a.j());
                throw new ZipException(stringBuffer.toString());
            }
            this.f94586e = 32;
            this.f94587f = 32;
            this.f94588g = 16;
        }
        if (this.f94582a.o() == null || this.f94582a.o().length <= 0) {
            throw new ZipException("empty or null password provided for AES Decryptor");
        }
        byte[] bArrC = c(bArr, this.f94582a.o());
        if (bArrC != null) {
            int length = bArrC.length;
            int i10 = this.f94586e;
            int i11 = this.f94587f;
            if (length == i10 + i11 + 2) {
                byte[] bArr3 = new byte[i10];
                this.f94589h = bArr3;
                this.f94590i = new byte[i11];
                this.f94591j = new byte[2];
                System.arraycopy(bArrC, 0, bArr3, 0, i10);
                System.arraycopy(bArrC, this.f94586e, this.f94590i, 0, this.f94587f);
                System.arraycopy(bArrC, this.f94586e + this.f94587f, this.f94591j, 0, 2);
                byte[] bArr4 = this.f94591j;
                if (bArr4 == null) {
                    throw new ZipException("invalid derived password verifier for AES");
                }
                if (!Arrays.equals(bArr2, bArr4)) {
                    StringBuffer stringBuffer2 = new StringBuffer("Wrong Password for file: ");
                    stringBuffer2.append(this.f94582a.j());
                    throw new ZipException(stringBuffer2.toString(), 5);
                }
                this.f94583b = new nc.a(this.f94589h);
                net.lingala.zip4j.crypto.PBKDF2.b bVar = new net.lingala.zip4j.crypto.PBKDF2.b(com.alipay.security.mobile.module.commonutils.crypto.c.f7275a);
                this.f94584c = bVar;
                bVar.b(this.f94590i);
                return;
            }
        }
        throw new ZipException("invalid derived key");
    }

    @Override // net.lingala.zip4j.crypto.c
    public int a(byte[] bArr) throws ZipException {
        return b(bArr, 0, bArr.length);
    }

    @Override // net.lingala.zip4j.crypto.c
    public int b(byte[] bArr, int i10, int i11) throws ZipException {
        if (this.f94583b == null) {
            throw new ZipException("AES not initialized properly");
        }
        int i12 = i10;
        while (true) {
            int i13 = i10 + i11;
            if (i12 >= i13) {
                return i11;
            }
            int i14 = i12 + 16;
            int i15 = i14 <= i13 ? 16 : i13 - i12;
            try {
                this.f94596o = i15;
                this.f94584c.update(bArr, i12, i15);
                net.lingala.zip4j.util.f.d(this.f94594m, this.f94593l, 16);
                this.f94583b.e(this.f94594m, this.f94595n);
                for (int i16 = 0; i16 < this.f94596o; i16++) {
                    int i17 = i12 + i16;
                    bArr[i17] = (byte) (bArr[i17] ^ this.f94595n[i16]);
                }
                this.f94593l++;
                i12 = i14;
            } catch (ZipException e10) {
                throw e10;
            } catch (Exception e11) {
                throw new ZipException(e11);
            }
        }
    }

    public byte[] d() {
        return this.f94584c.d();
    }

    public int e() {
        return 2;
    }

    public int f() {
        return this.f94588g;
    }

    public byte[] g() {
        return this.f94592k;
    }

    public void i(byte[] bArr) {
        this.f94592k = bArr;
    }
}
