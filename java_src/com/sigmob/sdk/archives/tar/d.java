package com.sigmob.sdk.archives.tar;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Arrays;

/* JADX INFO: loaded from: classes9.dex */
class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f78731a = 512;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f78732b = 10240;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private InputStream f78733c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private OutputStream f78734d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private byte[] f78735e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f78736f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f78737g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f78738h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f78739i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f78740j;

    public d(InputStream inStream) {
        this(inStream, f78732b);
    }

    private boolean i() throws IOException {
        if (this.f78733c == null) {
            throw new IOException("reading from an output buffer");
        }
        this.f78737g = 0;
        int i10 = this.f78738h;
        int i11 = 0;
        while (i10 > 0) {
            long j10 = this.f78733c.read(this.f78735e, i11, i10);
            if (j10 == -1) {
                if (i11 != 0) {
                    Arrays.fill(this.f78735e, i11, i10 + i11, (byte) 0);
                    break;
                }
                return false;
            }
            i11 = (int) (((long) i11) + j10);
            i10 = (int) (((long) i10) - j10);
        }
        this.f78736f++;
        return true;
    }

    private void j() throws IOException {
        OutputStream outputStream = this.f78734d;
        if (outputStream == null) {
            throw new IOException("writing to an input buffer");
        }
        outputStream.write(this.f78735e, 0, this.f78738h);
        this.f78734d.flush();
        this.f78737g = 0;
        this.f78736f++;
        Arrays.fill(this.f78735e, (byte) 0);
    }

    public int a() {
        return this.f78738h;
    }

    public int b() {
        return this.f78739i;
    }

    public void c() throws IOException {
        if (this.f78733c == null) {
            throw new IOException("reading (via skip) from an output buffer");
        }
        if (this.f78737g < this.f78740j || i()) {
            this.f78737g++;
        }
    }

    public byte[] d() throws IOException {
        if (this.f78733c == null) {
            if (this.f78734d == null) {
                throw new IOException("input buffer is closed");
            }
            throw new IOException("reading from an output buffer");
        }
        if (this.f78737g >= this.f78740j && !i()) {
            return null;
        }
        int i10 = this.f78739i;
        byte[] bArr = new byte[i10];
        System.arraycopy(this.f78735e, this.f78737g * i10, bArr, 0, i10);
        this.f78737g++;
        return bArr;
    }

    public int e() {
        return this.f78736f;
    }

    public int f() {
        return this.f78737g - 1;
    }

    void g() throws IOException {
        if (this.f78734d == null) {
            throw new IOException("writing to an input buffer");
        }
        if (this.f78737g > 0) {
            j();
        }
    }

    public void h() throws IOException {
        if (this.f78734d == null) {
            InputStream inputStream = this.f78733c;
            if (inputStream != null) {
                if (inputStream != System.in) {
                    inputStream.close();
                }
                this.f78733c = null;
                return;
            }
            return;
        }
        g();
        OutputStream outputStream = this.f78734d;
        if (outputStream == System.out || outputStream == System.err) {
            return;
        }
        outputStream.close();
        this.f78734d = null;
    }

    public d(InputStream inStream, int blockSize) {
        this(inStream, blockSize, 512);
    }

    private void a(int blockSize, int recordSize) {
        this.f78738h = blockSize;
        this.f78739i = recordSize;
        int i10 = blockSize / recordSize;
        this.f78740j = i10;
        this.f78735e = new byte[blockSize];
        if (this.f78733c != null) {
            this.f78736f = -1;
            this.f78737g = i10;
        } else {
            this.f78736f = 0;
            this.f78737g = 0;
        }
    }

    public void b(byte[] record) throws IOException {
        if (this.f78734d == null) {
            if (this.f78733c != null) {
                throw new IOException("writing to an input buffer");
            }
            throw new IOException("Output buffer is closed");
        }
        if (record.length != this.f78739i) {
            throw new IOException("record to write has length '" + record.length + "' which is not the record size of '" + this.f78739i + "'");
        }
        if (this.f78737g >= this.f78740j) {
            j();
        }
        byte[] bArr = this.f78735e;
        int i10 = this.f78737g;
        int i11 = this.f78739i;
        System.arraycopy(record, 0, bArr, i10 * i11, i11);
        this.f78737g++;
    }

    public d(InputStream inStream, int blockSize, int recordSize) {
        this.f78733c = inStream;
        this.f78734d = null;
        a(blockSize, recordSize);
    }

    public void a(byte[] buf, int offset) throws IOException {
        if (this.f78734d == null) {
            if (this.f78733c != null) {
                throw new IOException("writing to an input buffer");
            }
            throw new IOException("Output buffer is closed");
        }
        if (this.f78739i + offset <= buf.length) {
            if (this.f78737g >= this.f78740j) {
                j();
            }
            byte[] bArr = this.f78735e;
            int i10 = this.f78737g;
            int i11 = this.f78739i;
            System.arraycopy(buf, offset, bArr, i10 * i11, i11);
            this.f78737g++;
            return;
        }
        throw new IOException("record has length '" + buf.length + "' with offset '" + offset + "' which is less than the record size of '" + this.f78739i + "'");
    }

    public d(OutputStream outStream) {
        this(outStream, f78732b);
    }

    public boolean a(byte[] record) {
        int iB = b();
        for (int i10 = 0; i10 < iB; i10++) {
            if (record[i10] != 0) {
                return false;
            }
        }
        return true;
    }

    public d(OutputStream outStream, int blockSize) {
        this(outStream, blockSize, 512);
    }

    public d(OutputStream outStream, int blockSize, int recordSize) {
        this.f78733c = null;
        this.f78734d = outStream;
        a(blockSize, recordSize);
    }
}
