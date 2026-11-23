package net.lingala.zip4j.io;

import java.io.EOFException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: classes.dex */
public class e extends f {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Inflater f94635l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private byte[] f94636m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private byte[] f94637n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private net.lingala.zip4j.unzip.d f94638o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f94639p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f94640q;

    public e(RandomAccessFile randomAccessFile, long j10, long j11, net.lingala.zip4j.unzip.d dVar) {
        super(randomAccessFile, j10, j11, dVar);
        this.f94637n = new byte[1];
        this.f94635l = new Inflater(true);
        this.f94636m = new byte[4096];
        this.f94638o = dVar;
        this.f94639p = 0L;
        this.f94640q = dVar.j().x();
    }

    private void e() throws IOException {
        byte[] bArr = this.f94636m;
        int i10 = super.read(bArr, 0, bArr.length);
        if (i10 == -1) {
            throw new EOFException("Unexpected end of ZLIB input stream");
        }
        this.f94635l.setInput(this.f94636m, 0, i10);
    }

    private void f() throws IOException {
        while (super.read(new byte[1024], 0, 1024) != -1) {
        }
        d();
    }

    @Override // net.lingala.zip4j.io.f, net.lingala.zip4j.io.a, java.io.InputStream
    public int available() {
        return !this.f94635l.finished() ? 1 : 0;
    }

    @Override // net.lingala.zip4j.io.f, net.lingala.zip4j.io.a
    public net.lingala.zip4j.unzip.d b() {
        return super.b();
    }

    @Override // net.lingala.zip4j.io.f, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f94635l.end();
        super.close();
    }

    @Override // net.lingala.zip4j.io.f, net.lingala.zip4j.io.a, java.io.InputStream
    public int read() throws IOException {
        if (read(this.f94637n, 0, 1) == -1) {
            return -1;
        }
        return this.f94637n[0] & 255;
    }

    @Override // net.lingala.zip4j.io.f, net.lingala.zip4j.io.a
    public void seek(long j10) throws IOException {
        super.seek(j10);
    }

    @Override // net.lingala.zip4j.io.f, java.io.InputStream
    public long skip(long j10) throws IOException {
        if (j10 < 0) {
            throw new IllegalArgumentException("negative skip length");
        }
        int iMin = (int) Math.min(j10, 2147483647L);
        byte[] bArr = new byte[512];
        int i10 = 0;
        while (i10 < iMin) {
            int i11 = iMin - i10;
            if (i11 > 512) {
                i11 = 512;
            }
            int i12 = read(bArr, 0, i11);
            if (i12 == -1) {
                break;
            }
            i10 += i12;
        }
        return i10;
    }

    @Override // net.lingala.zip4j.io.f, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        if (bArr != null) {
            return read(bArr, 0, bArr.length);
        }
        throw new NullPointerException("input buffer is null");
    }

    @Override // net.lingala.zip4j.io.f, java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        if (bArr != null) {
            if (i10 < 0 || i11 < 0 || i11 > bArr.length - i10) {
                throw new IndexOutOfBoundsException();
            }
            if (i11 == 0) {
                return 0;
            }
            try {
                if (this.f94639p >= this.f94640q) {
                    f();
                    return -1;
                }
                while (true) {
                    int iInflate = this.f94635l.inflate(bArr, i10, i11);
                    if (iInflate != 0) {
                        this.f94639p += (long) iInflate;
                        return iInflate;
                    }
                    if (!this.f94635l.finished() && !this.f94635l.needsDictionary()) {
                        if (this.f94635l.needsInput()) {
                            e();
                        }
                    }
                    f();
                    return -1;
                }
            } catch (DataFormatException e10) {
                String message = e10.getMessage() != null ? e10.getMessage() : "Invalid ZLIB data format";
                net.lingala.zip4j.unzip.d dVar = this.f94638o;
                if (dVar != null && dVar.l().u() && this.f94638o.l().f() == 0) {
                    StringBuffer stringBuffer = new StringBuffer(String.valueOf(message));
                    stringBuffer.append(" - Wrong Password?");
                    message = stringBuffer.toString();
                }
                throw new IOException(message);
            }
        }
        throw new NullPointerException("input buffer is null");
    }
}
