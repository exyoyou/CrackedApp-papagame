package net.lingala.zip4j.io;

import java.io.IOException;
import java.io.RandomAccessFile;
import net.lingala.zip4j.exception.ZipException;

/* JADX INFO: loaded from: classes.dex */
public class f extends a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private RandomAccessFile f94641b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f94643d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private net.lingala.zip4j.unzip.d f94644e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private net.lingala.zip4j.crypto.c f94645f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f94649j;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private byte[] f94646g = new byte[1];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private byte[] f94647h = new byte[16];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f94648i = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f94650k = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f94642c = 0;

    public f(RandomAccessFile randomAccessFile, long j10, long j11, net.lingala.zip4j.unzip.d dVar) {
        this.f94649j = false;
        this.f94641b = randomAccessFile;
        this.f94644e = dVar;
        this.f94645f = dVar.i();
        this.f94643d = j11;
        this.f94649j = dVar.j().D() && dVar.j().j() == 99;
    }

    @Override // net.lingala.zip4j.io.a, java.io.InputStream
    public int available() {
        long j10 = this.f94643d - this.f94642c;
        if (j10 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) j10;
    }

    @Override // net.lingala.zip4j.io.a
    public net.lingala.zip4j.unzip.d b() {
        return this.f94644e;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f94641b.close();
    }

    protected void d() throws IOException {
        net.lingala.zip4j.crypto.c cVar;
        if (this.f94649j && (cVar = this.f94645f) != null && (cVar instanceof net.lingala.zip4j.crypto.a) && ((net.lingala.zip4j.crypto.a) cVar).g() == null) {
            byte[] bArr = new byte[10];
            int i10 = this.f94641b.read(bArr);
            if (i10 != 10) {
                if (!this.f94644e.p().p()) {
                    throw new IOException("Error occured while reading stored AES authentication bytes");
                }
                this.f94641b.close();
                RandomAccessFile randomAccessFileS = this.f94644e.s();
                this.f94641b = randomAccessFileS;
                randomAccessFileS.read(bArr, i10, 10 - i10);
            }
            ((net.lingala.zip4j.crypto.a) this.f94644e.i()).i(bArr);
        }
    }

    @Override // net.lingala.zip4j.io.a, java.io.InputStream
    public int read() throws IOException {
        if (this.f94642c >= this.f94643d) {
            return -1;
        }
        if (!this.f94649j) {
            if (read(this.f94646g, 0, 1) == -1) {
                return -1;
            }
            return this.f94646g[0] & 255;
        }
        int i10 = this.f94648i;
        if (i10 == 0 || i10 == 16) {
            if (read(this.f94647h) == -1) {
                return -1;
            }
            this.f94648i = 0;
        }
        byte[] bArr = this.f94647h;
        int i11 = this.f94648i;
        this.f94648i = i11 + 1;
        return bArr[i11] & 255;
    }

    @Override // net.lingala.zip4j.io.a
    public void seek(long j10) throws IOException {
        this.f94641b.seek(j10);
    }

    @Override // java.io.InputStream
    public long skip(long j10) throws IOException {
        if (j10 < 0) {
            throw new IllegalArgumentException();
        }
        long j11 = this.f94643d;
        long j12 = this.f94642c;
        if (j10 > j11 - j12) {
            j10 = j11 - j12;
        }
        this.f94642c = j12 + j10;
        return j10;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12;
        long j10 = i11;
        long j11 = this.f94643d;
        long j12 = this.f94642c;
        if (j10 > j11 - j12 && (i11 = (int) (j11 - j12)) == 0) {
            d();
            return -1;
        }
        if ((this.f94644e.i() instanceof net.lingala.zip4j.crypto.a) && this.f94642c + ((long) i11) < this.f94643d && (i12 = i11 % 16) != 0) {
            i11 -= i12;
        }
        synchronized (this.f94641b) {
            int i13 = this.f94641b.read(bArr, i10, i11);
            this.f94650k = i13;
            if (i13 < i11 && this.f94644e.p().p()) {
                this.f94641b.close();
                RandomAccessFile randomAccessFileS = this.f94644e.s();
                this.f94641b = randomAccessFileS;
                if (this.f94650k < 0) {
                    this.f94650k = 0;
                }
                int i14 = this.f94650k;
                int i15 = randomAccessFileS.read(bArr, i14, i11 - i14);
                if (i15 > 0) {
                    this.f94650k += i15;
                }
            }
        }
        int i16 = this.f94650k;
        if (i16 > 0) {
            net.lingala.zip4j.crypto.c cVar = this.f94645f;
            if (cVar != null) {
                try {
                    cVar.b(bArr, i10, i16);
                } catch (ZipException e10) {
                    throw new IOException(e10.getMessage());
                }
            }
            this.f94642c += (long) this.f94650k;
        }
        if (this.f94642c >= this.f94643d) {
            d();
        }
        return this.f94650k;
    }
}
