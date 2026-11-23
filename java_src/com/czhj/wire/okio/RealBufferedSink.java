package com.czhj.wire.okio;

import java.io.EOFException;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes9.dex */
final class RealBufferedSink implements BufferedSink {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f25986a;
    public final Buffer buffer = new Buffer();
    public final Sink sink;

    RealBufferedSink(Sink sink) {
        if (sink == null) {
            throw new NullPointerException("sink == null");
        }
        this.sink = sink;
    }

    @Override // com.czhj.wire.okio.BufferedSink, com.czhj.wire.okio.BufferedSource
    public Buffer buffer() {
        return this.buffer;
    }

    @Override // com.czhj.wire.okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws Throwable {
        if (this.f25986a) {
            return;
        }
        Buffer buffer = this.buffer;
        long j10 = buffer.f25917c;
        if (j10 > 0) {
            this.sink.write(buffer, j10);
        }
        th = null;
        try {
            this.sink.close();
        } catch (Throwable th) {
            if (th == null) {
                th = th;
            }
        }
        this.f25986a = true;
        if (th != null) {
            Util.sneakyRethrow(th);
        }
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public BufferedSink emit() throws IOException {
        if (this.f25986a) {
            throw new IllegalStateException("closed");
        }
        long size = this.buffer.size();
        if (size > 0) {
            this.sink.write(this.buffer, size);
        }
        return this;
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public BufferedSink emitCompleteSegments() throws IOException {
        if (this.f25986a) {
            throw new IllegalStateException("closed");
        }
        long jCompleteSegmentByteCount = this.buffer.completeSegmentByteCount();
        if (jCompleteSegmentByteCount > 0) {
            this.sink.write(this.buffer, jCompleteSegmentByteCount);
        }
        return this;
    }

    @Override // com.czhj.wire.okio.BufferedSink, com.czhj.wire.okio.Sink, java.io.Flushable
    public void flush() throws IOException {
        if (this.f25986a) {
            throw new IllegalStateException("closed");
        }
        Buffer buffer = this.buffer;
        long j10 = buffer.f25917c;
        if (j10 > 0) {
            this.sink.write(buffer, j10);
        }
        this.sink.flush();
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.f25986a;
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public OutputStream outputStream() {
        return new OutputStream() { // from class: com.czhj.wire.okio.RealBufferedSink.1
            @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws Throwable {
                RealBufferedSink.this.close();
            }

            @Override // java.io.OutputStream, java.io.Flushable
            public void flush() throws IOException {
                RealBufferedSink realBufferedSink = RealBufferedSink.this;
                if (realBufferedSink.f25986a) {
                    return;
                }
                realBufferedSink.flush();
            }

            public String toString() {
                return RealBufferedSink.this + ".outputStream()";
            }

            @Override // java.io.OutputStream
            public void write(int i10) throws IOException {
                RealBufferedSink realBufferedSink = RealBufferedSink.this;
                if (realBufferedSink.f25986a) {
                    throw new IOException("closed");
                }
                realBufferedSink.buffer.writeByte((int) ((byte) i10));
                RealBufferedSink.this.emitCompleteSegments();
            }

            @Override // java.io.OutputStream
            public void write(byte[] bArr, int i10, int i11) throws IOException {
                RealBufferedSink realBufferedSink = RealBufferedSink.this;
                if (realBufferedSink.f25986a) {
                    throw new IOException("closed");
                }
                realBufferedSink.buffer.write(bArr, i10, i11);
                RealBufferedSink.this.emitCompleteSegments();
            }
        };
    }

    @Override // com.czhj.wire.okio.Sink
    public Timeout timeout() {
        return this.sink.timeout();
    }

    public String toString() {
        return "buffer(" + this.sink + ")";
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws IOException {
        if (this.f25986a) {
            throw new IllegalStateException("closed");
        }
        int iWrite = this.buffer.write(byteBuffer);
        emitCompleteSegments();
        return iWrite;
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public long writeAll(Source source) throws IOException {
        if (source == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j10 = 0;
        while (true) {
            long j11 = source.read(this.buffer, 8192L);
            if (j11 == -1) {
                return j10;
            }
            j10 += j11;
            emitCompleteSegments();
        }
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public BufferedSink writeByte(int i10) throws IOException {
        if (this.f25986a) {
            throw new IllegalStateException("closed");
        }
        this.buffer.writeByte(i10);
        return emitCompleteSegments();
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public BufferedSink writeDecimalLong(long j10) throws IOException {
        if (this.f25986a) {
            throw new IllegalStateException("closed");
        }
        this.buffer.writeDecimalLong(j10);
        return emitCompleteSegments();
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public BufferedSink writeHexadecimalUnsignedLong(long j10) throws IOException {
        if (this.f25986a) {
            throw new IllegalStateException("closed");
        }
        this.buffer.writeHexadecimalUnsignedLong(j10);
        return emitCompleteSegments();
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public BufferedSink writeInt(int i10) throws IOException {
        if (this.f25986a) {
            throw new IllegalStateException("closed");
        }
        this.buffer.writeInt(i10);
        return emitCompleteSegments();
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public BufferedSink writeIntLe(int i10) throws IOException {
        if (this.f25986a) {
            throw new IllegalStateException("closed");
        }
        this.buffer.writeIntLe(i10);
        return emitCompleteSegments();
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public BufferedSink writeLong(long j10) throws IOException {
        if (this.f25986a) {
            throw new IllegalStateException("closed");
        }
        this.buffer.writeLong(j10);
        return emitCompleteSegments();
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public BufferedSink writeLongLe(long j10) throws IOException {
        if (this.f25986a) {
            throw new IllegalStateException("closed");
        }
        this.buffer.writeLongLe(j10);
        return emitCompleteSegments();
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public BufferedSink writeShort(int i10) throws IOException {
        if (this.f25986a) {
            throw new IllegalStateException("closed");
        }
        this.buffer.writeShort(i10);
        return emitCompleteSegments();
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public BufferedSink writeShortLe(int i10) throws IOException {
        if (this.f25986a) {
            throw new IllegalStateException("closed");
        }
        this.buffer.writeShortLe(i10);
        return emitCompleteSegments();
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public BufferedSink writeString(String str, int i10, int i11, Charset charset) throws IOException {
        if (this.f25986a) {
            throw new IllegalStateException("closed");
        }
        this.buffer.writeString(str, i10, i11, charset);
        return emitCompleteSegments();
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public BufferedSink writeUtf8(String str) throws IOException {
        if (this.f25986a) {
            throw new IllegalStateException("closed");
        }
        this.buffer.writeUtf8(str);
        return emitCompleteSegments();
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public BufferedSink writeUtf8CodePoint(int i10) throws IOException {
        if (this.f25986a) {
            throw new IllegalStateException("closed");
        }
        this.buffer.writeUtf8CodePoint(i10);
        return emitCompleteSegments();
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public BufferedSink write(ByteString byteString) throws IOException {
        if (this.f25986a) {
            throw new IllegalStateException("closed");
        }
        this.buffer.write(byteString);
        return emitCompleteSegments();
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public BufferedSink writeString(String str, Charset charset) throws IOException {
        if (this.f25986a) {
            throw new IllegalStateException("closed");
        }
        this.buffer.writeString(str, charset);
        return emitCompleteSegments();
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public BufferedSink writeUtf8(String str, int i10, int i11) throws IOException {
        if (this.f25986a) {
            throw new IllegalStateException("closed");
        }
        this.buffer.writeUtf8(str, i10, i11);
        return emitCompleteSegments();
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public BufferedSink write(Source source, long j10) throws IOException {
        while (j10 > 0) {
            long j11 = source.read(this.buffer, j10);
            if (j11 == -1) {
                throw new EOFException();
            }
            j10 -= j11;
            emitCompleteSegments();
        }
        return this;
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public BufferedSink write(byte[] bArr) throws IOException {
        if (this.f25986a) {
            throw new IllegalStateException("closed");
        }
        this.buffer.write(bArr);
        return emitCompleteSegments();
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public BufferedSink write(byte[] bArr, int i10, int i11) throws IOException {
        if (this.f25986a) {
            throw new IllegalStateException("closed");
        }
        this.buffer.write(bArr, i10, i11);
        return emitCompleteSegments();
    }

    @Override // com.czhj.wire.okio.Sink
    public void write(Buffer buffer, long j10) throws IOException {
        if (this.f25986a) {
            throw new IllegalStateException("closed");
        }
        this.buffer.write(buffer, j10);
        emitCompleteSegments();
    }
}
