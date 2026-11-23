package net.lingala.zip4j.crypto;

import java.util.Random;
import net.lingala.zip4j.exception.ZipException;

/* JADX INFO: loaded from: classes.dex */
public class f implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private nc.b f94617a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private byte[] f94618b;

    public f(char[] cArr, int i10) throws ZipException {
        if (cArr == null || cArr.length <= 0) {
            throw new ZipException("input password is null or empty in standard encrpyter constructor");
        }
        this.f94617a = new nc.b();
        this.f94618b = new byte[12];
        f(cArr, i10);
    }

    private void f(char[] cArr, int i10) throws ZipException {
        if (cArr == null || cArr.length <= 0) {
            throw new ZipException("input password is null or empty, cannot initialize standard encrypter");
        }
        this.f94617a.c(cArr);
        this.f94618b = d(12);
        this.f94617a.c(cArr);
        byte[] bArr = this.f94618b;
        bArr[11] = (byte) (i10 >>> 24);
        bArr[10] = (byte) (i10 >>> 16);
        if (bArr.length < 12) {
            throw new ZipException("invalid header bytes generated, cannot perform standard encryption");
        }
        b(bArr);
    }

    @Override // net.lingala.zip4j.crypto.d
    public int a(byte[] bArr, int i10, int i11) throws ZipException {
        if (i11 < 0) {
            throw new ZipException("invalid length specified to decrpyt data");
        }
        for (int i12 = i10; i12 < i10 + i11; i12++) {
            try {
                bArr[i12] = c(bArr[i12]);
            } catch (Exception e10) {
                throw new ZipException(e10);
            }
        }
        return i11;
    }

    @Override // net.lingala.zip4j.crypto.d
    public int b(byte[] bArr) throws ZipException {
        bArr.getClass();
        return a(bArr, 0, bArr.length);
    }

    protected byte c(byte b10) {
        byte b11 = (byte) ((this.f94617a.b() & 255) ^ b10);
        this.f94617a.d(b10);
        return b11;
    }

    protected byte[] d(int i10) throws ZipException {
        if (i10 <= 0) {
            throw new ZipException("size is either 0 or less than 0, cannot generate header for standard encryptor");
        }
        byte[] bArr = new byte[i10];
        Random random = new Random();
        for (int i11 = 0; i11 < i10; i11++) {
            bArr[i11] = c((byte) random.nextInt(256));
        }
        return bArr;
    }

    public byte[] e() {
        return this.f94618b;
    }
}
