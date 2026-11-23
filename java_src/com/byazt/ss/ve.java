package com.byazt.ss;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 951, 54})
public class ve implements Closeable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final InputStream f19880c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f19881n;
    public final Charset tt;
    public int uj;
    public byte[] ve;

    public ve(InputStream inputStream, Charset charset) {
        this(inputStream, 8192, charset);
    }

    private void ve() throws IOException {
        InputStream inputStream = this.f19880c;
        byte[] bArr = this.ve;
        int i10 = inputStream.read(bArr, 0, bArr.length);
        if (i10 == -1) {
            throw new EOFException();
        }
        this.uj = 0;
        this.f19881n = i10;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this.f19880c) {
            if (this.ve != null) {
                this.ve = null;
                this.f19880c.close();
            }
        }
    }

    public boolean tt() {
        return this.f19881n == -1;
    }

    public ve(InputStream inputStream, int i10, Charset charset) {
        if (inputStream == null || charset == null) {
            throw null;
        }
        if (i10 < 0) {
            throw new IllegalArgumentException("capacity <= 0");
        }
        if (!charset.equals(uj.f19879c)) {
            throw new IllegalArgumentException("Unsupported encoding");
        }
        this.f19880c = inputStream;
        this.tt = charset;
        this.ve = new byte[i10];
    }

    /* JADX WARN: Code duplicated, block: B:19:0x002b  */
    public String c() throws IOException {
        int i10;
        byte[] bArr;
        int i11;
        synchronized (this.f19880c) {
            if (this.ve == null) {
                throw new IOException("LineReader is closed");
            }
            if (this.uj >= this.f19881n) {
                ve();
            }
            for (int i12 = this.uj; i12 != this.f19881n; i12++) {
                byte[] bArr2 = this.ve;
                if (bArr2[i12] == 10) {
                    int i13 = this.uj;
                    if (i12 != i13) {
                        i11 = i12 - 1;
                        if (bArr2[i11] != 13) {
                            i11 = i12;
                        }
                    } else {
                        i11 = i12;
                    }
                    String str = new String(bArr2, i13, i11 - i13, this.tt.name());
                    this.uj = i12 + 1;
                    return str;
                }
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream((this.f19881n - this.uj) + 80) { // from class: com.byazt.ss.ve.1
                @Override // java.io.ByteArrayOutputStream
                public String toString() {
                    int i14 = ((ByteArrayOutputStream) this).count;
                    if (i14 > 0 && ((ByteArrayOutputStream) this).buf[i14 - 1] == 13) {
                        i14--;
                    }
                    try {
                        return new String(((ByteArrayOutputStream) this).buf, 0, i14, ve.this.tt.name());
                    } catch (UnsupportedEncodingException e10) {
                        throw new AssertionError(e10);
                    }
                }
            };
            loop1: while (true) {
                byte[] bArr3 = this.ve;
                int i14 = this.uj;
                byteArrayOutputStream.write(bArr3, i14, this.f19881n - i14);
                this.f19881n = -1;
                ve();
                i10 = this.uj;
                while (i10 != this.f19881n) {
                    bArr = this.ve;
                    if (bArr[i10] == 10) {
                        break loop1;
                    }
                    i10++;
                }
            }
            int i15 = this.uj;
            if (i10 != i15) {
                byteArrayOutputStream.write(bArr, i15, i10 - i15);
            }
            this.uj = i10 + 1;
            return byteArrayOutputStream.toString();
        }
    }
}
