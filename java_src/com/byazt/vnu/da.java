package com.byazt.vnu;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 699, 72})
public abstract class da extends FilterInputStream {
    public da(InputStream inputStream) {
        super(inputStream);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        try {
            return super.available();
        } catch (IOException e10) {
            c(e10);
            return 0;
        }
    }

    public void c(int i10) throws IOException {
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            ((FilterInputStream) this).in.close();
        } catch (IOException e10) {
            c(e10);
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i10) {
        ((FilterInputStream) this).in.mark(i10);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return ((FilterInputStream) this).in.markSupported();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        try {
            int i10 = ((FilterInputStream) this).in.read();
            c(i10 != -1 ? 1 : -1);
            return i10;
        } catch (IOException e10) {
            c(e10);
            return -1;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws IOException {
        try {
            ((FilterInputStream) this).in.reset();
        } catch (IOException e10) {
            c(e10);
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j10) throws IOException {
        try {
            return ((FilterInputStream) this).in.skip(j10);
        } catch (IOException e10) {
            c(e10);
            return 0L;
        }
    }

    public void c(IOException iOException) throws IOException {
        throw iOException;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        try {
            int i10 = ((FilterInputStream) this).in.read(bArr);
            c(i10);
            return i10;
        } catch (IOException e10) {
            c(e10);
            return -1;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        try {
            int i12 = ((FilterInputStream) this).in.read(bArr, i10, i11);
            c(i12);
            return i12;
        } catch (IOException e10) {
            c(e10);
            return -1;
        }
    }
}
