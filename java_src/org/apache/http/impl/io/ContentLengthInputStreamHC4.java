package org.apache.http.impl.io;

import java.io.IOException;
import java.io.InputStream;
import org.apache.http.ConnectionClosedException;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.io.BufferInfo;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.util.Args;

/* JADX INFO: loaded from: classes.dex */
@NotThreadSafe
public class ContentLengthInputStreamHC4 extends InputStream {
    private static final int BUFFER_SIZE = 2048;
    private final long contentLength;

    /* JADX INFO: renamed from: in, reason: collision with root package name */
    private SessionInputBuffer f95051in;
    private long pos = 0;
    private boolean closed = false;

    public ContentLengthInputStreamHC4(SessionInputBuffer sessionInputBuffer, long j10) {
        this.f95051in = null;
        this.f95051in = (SessionInputBuffer) Args.notNull(sessionInputBuffer, "Session input buffer");
        this.contentLength = Args.notNegative(j10, "Content length");
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        SessionInputBuffer sessionInputBuffer = this.f95051in;
        if (sessionInputBuffer instanceof BufferInfo) {
            return Math.min(((BufferInfo) sessionInputBuffer).length(), (int) (this.contentLength - this.pos));
        }
        return 0;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.closed) {
            return;
        }
        try {
            if (this.pos < this.contentLength) {
                do {
                } while (read(new byte[2048]) >= 0);
            }
        } finally {
            this.closed = true;
        }
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.closed) {
            throw new IOException("Attempted read from closed stream.");
        }
        if (this.pos >= this.contentLength) {
            return -1;
        }
        int i10 = this.f95051in.read();
        if (i10 != -1) {
            this.pos++;
        } else if (this.pos < this.contentLength) {
            throw new ConnectionClosedException("Premature end of Content-Length delimited message body (expected: " + this.contentLength + "; received: " + this.pos);
        }
        return i10;
    }

    @Override // java.io.InputStream
    public long skip(long j10) throws IOException {
        int i10;
        if (j10 <= 0) {
            return 0L;
        }
        byte[] bArr = new byte[2048];
        long jMin = Math.min(j10, this.contentLength - this.pos);
        long j11 = 0;
        while (jMin > 0 && (i10 = read(bArr, 0, (int) Math.min(2048L, jMin))) != -1) {
            long j12 = i10;
            j11 += j12;
            jMin -= j12;
        }
        return j11;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        if (!this.closed) {
            long j10 = this.pos;
            long j11 = this.contentLength;
            if (j10 >= j11) {
                return -1;
            }
            if (((long) i11) + j10 > j11) {
                i11 = (int) (j11 - j10);
            }
            int i12 = this.f95051in.read(bArr, i10, i11);
            if (i12 != -1 || this.pos >= this.contentLength) {
                if (i12 > 0) {
                    this.pos += (long) i12;
                }
                return i12;
            }
            throw new ConnectionClosedException("Premature end of Content-Length delimited message body (expected: " + this.contentLength + "; received: " + this.pos);
        }
        throw new IOException("Attempted read from closed stream.");
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }
}
