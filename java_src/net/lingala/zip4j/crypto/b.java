package net.lingala.zip4j.crypto;

import java.util.Random;
import net.lingala.zip4j.exception.ZipException;

/* JADX INFO: loaded from: classes.dex */
public class b implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private char[] f94597a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f94598b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private nc.a f94599c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private net.lingala.zip4j.crypto.PBKDF2.b f94600d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f94601e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f94602f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f94603g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private byte[] f94605i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private byte[] f94606j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private byte[] f94607k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private byte[] f94608l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f94609m;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private byte[] f94612p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private byte[] f94613q;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f94604h = 2;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f94610n = 1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f94611o = 0;

    public b(char[] cArr, int i10) throws ZipException {
        if (cArr == null || cArr.length == 0) {
            throw new ZipException("input password is empty or null in AES encrypter constructor");
        }
        if (i10 != 1 && i10 != 3) {
            throw new ZipException("Invalid key strength in AES encrypter constructor");
        }
        this.f94597a = cArr;
        this.f94598b = i10;
        this.f94609m = false;
        this.f94613q = new byte[16];
        this.f94612p = new byte[16];
        j();
    }

    private byte[] c(byte[] bArr, char[] cArr) throws ZipException {
        try {
            return new net.lingala.zip4j.crypto.PBKDF2.c(new net.lingala.zip4j.crypto.PBKDF2.e(com.alipay.security.mobile.module.commonutils.crypto.c.f7275a, "ISO-8859-1", bArr, 1000)).g(cArr, this.f94601e + this.f94602f + 2);
        } catch (Exception e10) {
            throw new ZipException(e10);
        }
    }

    private static byte[] d(int i10) throws ZipException {
        if (i10 != 8 && i10 != 16) {
            throw new ZipException("invalid salt size, cannot generate salt");
        }
        int i11 = i10 == 8 ? 2 : 0;
        if (i10 == 16) {
            i11 = 4;
        }
        byte[] bArr = new byte[i10];
        for (int i12 = 0; i12 < i11; i12++) {
            int iNextInt = new Random().nextInt();
            int i13 = i12 * 4;
            bArr[i13 + 0] = (byte) (iNextInt >> 24);
            bArr[i13 + 1] = (byte) (iNextInt >> 16);
            bArr[i13 + 2] = (byte) (iNextInt >> 8);
            bArr[i13 + 3] = (byte) iNextInt;
        }
        return bArr;
    }

    private void j() throws ZipException {
        int i10 = this.f94598b;
        if (i10 == 1) {
            this.f94601e = 16;
            this.f94602f = 16;
            this.f94603g = 8;
        } else {
            if (i10 != 3) {
                throw new ZipException("invalid aes key strength, cannot determine key sizes");
            }
            this.f94601e = 32;
            this.f94602f = 32;
            this.f94603g = 16;
        }
        byte[] bArrD = d(this.f94603g);
        this.f94608l = bArrD;
        byte[] bArrC = c(bArrD, this.f94597a);
        if (bArrC != null) {
            int length = bArrC.length;
            int i11 = this.f94601e;
            int i12 = this.f94602f;
            if (length == i11 + i12 + 2) {
                byte[] bArr = new byte[i11];
                this.f94605i = bArr;
                this.f94606j = new byte[i12];
                this.f94607k = new byte[2];
                System.arraycopy(bArrC, 0, bArr, 0, i11);
                System.arraycopy(bArrC, this.f94601e, this.f94606j, 0, this.f94602f);
                System.arraycopy(bArrC, this.f94601e + this.f94602f, this.f94607k, 0, 2);
                this.f94599c = new nc.a(this.f94605i);
                net.lingala.zip4j.crypto.PBKDF2.b bVar = new net.lingala.zip4j.crypto.PBKDF2.b(com.alipay.security.mobile.module.commonutils.crypto.c.f7275a);
                this.f94600d = bVar;
                bVar.b(this.f94606j);
                return;
            }
        }
        throw new ZipException("invalid key generated, cannot decrypt file");
    }

    @Override // net.lingala.zip4j.crypto.d
    public int a(byte[] bArr, int i10, int i11) throws ZipException {
        int i12;
        if (this.f94609m) {
            throw new ZipException("AES Encrypter is in finished state (A non 16 byte block has already been passed to encrypter)");
        }
        if (i11 % 16 != 0) {
            this.f94609m = true;
        }
        int i13 = i10;
        while (true) {
            int i14 = i10 + i11;
            if (i13 >= i14) {
                return i11;
            }
            int i15 = i13 + 16;
            this.f94611o = i15 <= i14 ? 16 : i14 - i13;
            net.lingala.zip4j.util.f.d(this.f94612p, this.f94610n, 16);
            this.f94599c.e(this.f94612p, this.f94613q);
            int i16 = 0;
            while (true) {
                i12 = this.f94611o;
                if (i16 >= i12) {
                    break;
                }
                int i17 = i13 + i16;
                bArr[i17] = (byte) (bArr[i17] ^ this.f94613q[i16]);
                i16++;
            }
            this.f94600d.update(bArr, i13, i12);
            this.f94610n++;
            i13 = i15;
        }
    }

    @Override // net.lingala.zip4j.crypto.d
    public int b(byte[] bArr) throws ZipException {
        if (bArr != null) {
            return a(bArr, 0, bArr.length);
        }
        throw new ZipException("input bytes are null, cannot perform AES encrpytion");
    }

    public byte[] e() {
        return this.f94607k;
    }

    public byte[] f() {
        byte[] bArr = new byte[10];
        System.arraycopy(this.f94600d.d(), 0, bArr, 0, 10);
        return bArr;
    }

    public int g() {
        return 2;
    }

    public byte[] h() {
        return this.f94608l;
    }

    public int i() {
        return this.f94603g;
    }

    public void k(byte[] bArr) {
        this.f94607k = bArr;
    }

    public void l(byte[] bArr) {
        this.f94608l = bArr;
    }
}
