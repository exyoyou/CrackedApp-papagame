package net.lingala.zip4j.crypto;

import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import net.lingala.zip4j.exception.ZipException;
import pc.h;

/* JADX INFO: loaded from: classes.dex */
public class e implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private h f94614a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private byte[] f94615b = new byte[4];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private nc.b f94616c;

    public e(h hVar, byte[] bArr) throws ZipException {
        if (hVar == null) {
            throw new ZipException("one of more of the input parameters were null in StandardDecryptor");
        }
        this.f94614a = hVar;
        this.f94616c = new nc.b();
        c(bArr);
    }

    @Override // net.lingala.zip4j.crypto.c
    public int a(byte[] bArr) throws ZipException {
        return b(bArr, 0, bArr.length);
    }

    @Override // net.lingala.zip4j.crypto.c
    public int b(byte[] bArr, int i10, int i11) throws ZipException {
        if (i10 < 0 || i11 < 0) {
            throw new ZipException("one of the input parameters were null in standard decrpyt data");
        }
        for (int i12 = i10; i12 < i10 + i11; i12++) {
            try {
                byte b10 = (byte) (((bArr[i12] & 255) ^ this.f94616c.b()) & 255);
                this.f94616c.d(b10);
                bArr[i12] = b10;
            } catch (Exception e10) {
                throw new ZipException(e10);
            }
        }
        return i11;
    }

    public void c(byte[] bArr) throws ZipException {
        byte[] bArrH = this.f94614a.h();
        byte[] bArr2 = this.f94615b;
        bArr2[3] = (byte) (bArrH[3] & 255);
        byte b10 = bArrH[3];
        byte b11 = (byte) ((b10 >> 8) & 255);
        bArr2[2] = b11;
        byte b12 = (byte) ((b10 >> 16) & 255);
        bArr2[1] = b12;
        byte b13 = (byte) ((b10 >> BinaryMemcacheOpcodes.FLUSHQ) & 255);
        int i10 = 0;
        bArr2[0] = b13;
        if (b11 > 0 || b12 > 0 || b13 > 0) {
            throw new IllegalStateException("Invalid CRC in File Header");
        }
        if (this.f94614a.v() == null || this.f94614a.v().length <= 0) {
            throw new ZipException("Wrong password!", 5);
        }
        this.f94616c.c(this.f94614a.v());
        try {
            byte b14 = bArr[0];
            while (i10 < 12) {
                nc.b bVar = this.f94616c;
                bVar.d((byte) (bVar.b() ^ b14));
                i10++;
                if (i10 != 12) {
                    b14 = bArr[i10];
                }
            }
        } catch (Exception e10) {
            throw new ZipException(e10);
        }
    }
}
