package org.apache.http.impl.io;

import java.io.IOException;
import java.io.OutputStream;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.io.SessionOutputBuffer;

/* JADX INFO: loaded from: classes.dex */
@NotThreadSafe
public class ChunkedOutputStreamHC4 extends OutputStream {
    private final byte[] cache;
    private int cachePosition;
    private boolean closed;
    private final SessionOutputBuffer out;
    private boolean wroteLastChunk;

    @Deprecated
    public ChunkedOutputStreamHC4(SessionOutputBuffer sessionOutputBuffer, int i10) throws IOException {
        this(i10, sessionOutputBuffer);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.closed) {
            return;
        }
        this.closed = true;
        finish();
        this.out.flush();
    }

    public void finish() throws IOException {
        if (this.wroteLastChunk) {
            return;
        }
        flushCache();
        writeClosingChunk();
        this.wroteLastChunk = true;
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        flushCache();
        this.out.flush();
    }

    protected void flushCache() throws IOException {
        int i10 = this.cachePosition;
        if (i10 > 0) {
            this.out.writeLine(Integer.toHexString(i10));
            this.out.write(this.cache, 0, this.cachePosition);
            this.out.writeLine("");
            this.cachePosition = 0;
        }
    }

    protected void flushCacheWithAppend(byte[] bArr, int i10, int i11) throws IOException {
        this.out.writeLine(Integer.toHexString(this.cachePosition + i11));
        this.out.write(this.cache, 0, this.cachePosition);
        this.out.write(bArr, i10, i11);
        this.out.writeLine("");
        this.cachePosition = 0;
    }

    @Override // java.io.OutputStream
    public void write(int i10) throws IOException {
        if (this.closed) {
            throw new IOException("Attempted write to closed stream.");
        }
        byte[] bArr = this.cache;
        int i11 = this.cachePosition;
        bArr[i11] = (byte) i10;
        int i12 = i11 + 1;
        this.cachePosition = i12;
        if (i12 == bArr.length) {
            flushCache();
        }
    }

    protected void writeClosingChunk() throws IOException {
        this.out.writeLine("0");
        this.out.writeLine("");
    }

    @Deprecated
    public ChunkedOutputStreamHC4(SessionOutputBuffer sessionOutputBuffer) throws IOException {
        this(2048, sessionOutputBuffer);
    }

    public ChunkedOutputStreamHC4(int i10, SessionOutputBuffer sessionOutputBuffer) {
        this.cachePosition = 0;
        this.wroteLastChunk = false;
        this.closed = false;
        this.cache = new byte[i10];
        this.out = sessionOutputBuffer;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        if (!this.closed) {
            byte[] bArr2 = this.cache;
            int length = bArr2.length;
            int i12 = this.cachePosition;
            if (i11 >= length - i12) {
                flushCacheWithAppend(bArr, i10, i11);
                return;
            } else {
                System.arraycopy(bArr, i10, bArr2, i12, i11);
                this.cachePosition += i11;
                return;
            }
        }
        throw new IOException("Attempted write to closed stream.");
    }
}
