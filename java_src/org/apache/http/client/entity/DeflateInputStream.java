package org.apache.http.client.entity;

import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;

/* JADX INFO: loaded from: classes.dex */
public class DeflateInputStream extends InputStream {
    private InputStream sourceStream;

    static class DeflateStream extends InflaterInputStream {
        private boolean closed;

        public DeflateStream(InputStream inputStream, Inflater inflater) {
            super(inputStream, inflater);
            this.closed = false;
        }

        @Override // java.util.zip.InflaterInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.closed) {
                return;
            }
            this.closed = true;
            ((InflaterInputStream) this).inf.end();
            super.close();
        }
    }

    public DeflateInputStream(InputStream inputStream) throws IOException {
        int iInflate;
        byte[] bArr = new byte[6];
        PushbackInputStream pushbackInputStream = new PushbackInputStream(inputStream, 6);
        int i10 = pushbackInputStream.read(bArr);
        if (i10 == -1) {
            throw new IOException("Unable to read the response");
        }
        byte[] bArr2 = new byte[1];
        Inflater inflater = new Inflater();
        while (true) {
            try {
                try {
                    iInflate = inflater.inflate(bArr2);
                    if (iInflate != 0) {
                        break;
                    }
                    if (inflater.finished()) {
                        throw new IOException("Unable to read the response");
                    }
                    if (inflater.needsDictionary()) {
                        break;
                    } else if (inflater.needsInput()) {
                        inflater.setInput(bArr);
                    }
                } catch (DataFormatException unused) {
                    pushbackInputStream.unread(bArr, 0, i10);
                    this.sourceStream = new DeflateStream(pushbackInputStream, new Inflater(true));
                }
            } catch (Throwable th) {
                inflater.end();
                throw th;
            }
        }
        if (iInflate == -1) {
            throw new IOException("Unable to read the response");
        }
        pushbackInputStream.unread(bArr, 0, i10);
        this.sourceStream = new DeflateStream(pushbackInputStream, new Inflater());
        inflater.end();
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.sourceStream.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.sourceStream.close();
    }

    @Override // java.io.InputStream
    public void mark(int i10) {
        this.sourceStream.mark(i10);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.sourceStream.markSupported();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        return this.sourceStream.read();
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        this.sourceStream.reset();
    }

    @Override // java.io.InputStream
    public long skip(long j10) throws IOException {
        return this.sourceStream.skip(j10);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return this.sourceStream.read(bArr);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        return this.sourceStream.read(bArr, i10, i11);
    }
}
