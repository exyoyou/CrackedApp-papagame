package com.czhj.wire.okio;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import kotlin.text.Typography;

/* JADX INFO: loaded from: classes9.dex */
final class RealBufferedSource implements BufferedSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f25988a;
    public final Buffer buffer = new Buffer();
    public final Source source;

    RealBufferedSource(Source source) {
        if (source == null) {
            throw new NullPointerException("source == null");
        }
        this.source = source;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public Buffer buffer() {
        return this.buffer;
    }

    @Override // com.czhj.wire.okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f25988a) {
            return;
        }
        this.f25988a = true;
        this.source.close();
        this.buffer.clear();
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public boolean exhausted() throws IOException {
        if (this.f25988a) {
            throw new IllegalStateException("closed");
        }
        return this.buffer.exhausted() && this.source.read(this.buffer, 8192L) == -1;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public Buffer getBuffer() {
        return this.buffer;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public long indexOf(byte b10) throws IOException {
        return indexOf(b10, 0L, Long.MAX_VALUE);
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public long indexOfElement(ByteString byteString) throws IOException {
        return indexOfElement(byteString, 0L);
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public InputStream inputStream() {
        return new InputStream() { // from class: com.czhj.wire.okio.RealBufferedSource.1
            @Override // java.io.InputStream
            public int available() throws IOException {
                RealBufferedSource realBufferedSource = RealBufferedSource.this;
                if (realBufferedSource.f25988a) {
                    throw new IOException("closed");
                }
                return (int) Math.min(realBufferedSource.buffer.f25917c, 2147483647L);
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                RealBufferedSource.this.close();
            }

            @Override // java.io.InputStream
            public int read() throws IOException {
                RealBufferedSource realBufferedSource = RealBufferedSource.this;
                if (realBufferedSource.f25988a) {
                    throw new IOException("closed");
                }
                Buffer buffer = realBufferedSource.buffer;
                if (buffer.f25917c == 0 && realBufferedSource.source.read(buffer, 8192L) == -1) {
                    return -1;
                }
                return RealBufferedSource.this.buffer.readByte() & 255;
            }

            public String toString() {
                return RealBufferedSource.this + ".inputStream()";
            }

            @Override // java.io.InputStream
            public int read(byte[] bArr, int i10, int i11) throws IOException {
                if (RealBufferedSource.this.f25988a) {
                    throw new IOException("closed");
                }
                Util.checkOffsetAndCount(bArr.length, i10, i11);
                RealBufferedSource realBufferedSource = RealBufferedSource.this;
                Buffer buffer = realBufferedSource.buffer;
                if (buffer.f25917c == 0 && realBufferedSource.source.read(buffer, 8192L) == -1) {
                    return -1;
                }
                return RealBufferedSource.this.buffer.read(bArr, i10, i11);
            }
        };
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.f25988a;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public BufferedSource peek() {
        return Okio.buffer(new PeekSource(this));
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public boolean rangeEquals(long j10, ByteString byteString) throws IOException {
        return rangeEquals(j10, byteString, 0, byteString.size());
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws IOException {
        Buffer buffer = this.buffer;
        if (buffer.f25917c == 0 && this.source.read(buffer, 8192L) == -1) {
            return -1;
        }
        return this.buffer.read(byteBuffer);
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public long readAll(Sink sink) throws IOException {
        Buffer buffer;
        if (sink == null) {
            throw new IllegalArgumentException("sink == null");
        }
        long j10 = 0;
        while (true) {
            long j11 = this.source.read(this.buffer, 8192L);
            buffer = this.buffer;
            if (j11 == -1) {
                break;
            }
            long jCompleteSegmentByteCount = buffer.completeSegmentByteCount();
            if (jCompleteSegmentByteCount > 0) {
                j10 += jCompleteSegmentByteCount;
                sink.write(this.buffer, jCompleteSegmentByteCount);
            }
        }
        if (buffer.size() <= 0) {
            return j10;
        }
        long size = j10 + this.buffer.size();
        Buffer buffer2 = this.buffer;
        sink.write(buffer2, buffer2.size());
        return size;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public byte readByte() throws IOException {
        require(1L);
        return this.buffer.readByte();
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public byte[] readByteArray() throws IOException {
        this.buffer.writeAll(this.source);
        return this.buffer.readByteArray();
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public ByteString readByteString() throws IOException {
        this.buffer.writeAll(this.source);
        return this.buffer.readByteString();
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public long readDecimalLong() throws IOException {
        require(1L);
        int i10 = 0;
        while (true) {
            int i11 = i10 + 1;
            if (!request(i11)) {
                break;
            }
            byte b10 = this.buffer.getByte(i10);
            if ((b10 < 48 || b10 > 57) && !(i10 == 0 && b10 == 45)) {
                if (i10 != 0) {
                    break;
                }
                throw new NumberFormatException(String.format("Expected leading [0-9] or '-' character but was %#x", Byte.valueOf(b10)));
            }
            i10 = i11;
        }
        return this.buffer.readDecimalLong();
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public void readFully(Buffer buffer, long j10) throws IOException {
        try {
            require(j10);
            this.buffer.readFully(buffer, j10);
        } catch (EOFException e10) {
            buffer.writeAll(this.buffer);
            throw e10;
        }
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public long readHexadecimalUnsignedLong() throws IOException {
        require(1L);
        int i10 = 0;
        while (true) {
            int i11 = i10 + 1;
            if (!request(i11)) {
                break;
            }
            byte b10 = this.buffer.getByte(i10);
            if ((b10 < 48 || b10 > 57) && ((b10 < 97 || b10 > 102) && (b10 < 65 || b10 > 70))) {
                if (i10 != 0) {
                    break;
                }
                throw new NumberFormatException(String.format("Expected leading [0-9a-fA-F] character but was %#x", Byte.valueOf(b10)));
            }
            i10 = i11;
        }
        return this.buffer.readHexadecimalUnsignedLong();
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public int readInt() throws IOException {
        require(4L);
        return this.buffer.readInt();
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public int readIntLe() throws IOException {
        require(4L);
        return this.buffer.readIntLe();
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public long readLong() throws IOException {
        require(8L);
        return this.buffer.readLong();
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public long readLongLe() throws IOException {
        require(8L);
        return this.buffer.readLongLe();
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public short readShort() throws IOException {
        require(2L);
        return this.buffer.readShort();
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public short readShortLe() throws IOException {
        require(2L);
        return this.buffer.readShortLe();
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public String readString(long j10, Charset charset) throws IOException {
        require(j10);
        if (charset != null) {
            return this.buffer.readString(j10, charset);
        }
        throw new IllegalArgumentException("charset == null");
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public String readUtf8() throws IOException {
        this.buffer.writeAll(this.source);
        return this.buffer.readUtf8();
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public int readUtf8CodePoint() throws IOException {
        long j10;
        require(1L);
        byte b10 = this.buffer.getByte(0L);
        if ((b10 & 224) == 192) {
            j10 = 2;
        } else {
            if ((b10 & 240) != 224) {
                if ((b10 & 248) == 240) {
                    j10 = 4;
                }
                return this.buffer.readUtf8CodePoint();
            }
            j10 = 3;
        }
        require(j10);
        return this.buffer.readUtf8CodePoint();
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public String readUtf8Line() throws IOException {
        long jIndexOf = indexOf((byte) 10);
        if (jIndexOf != -1) {
            return this.buffer.a(jIndexOf);
        }
        long j10 = this.buffer.f25917c;
        if (j10 != 0) {
            return readUtf8(j10);
        }
        return null;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public String readUtf8LineStrict() throws IOException {
        return readUtf8LineStrict(Long.MAX_VALUE);
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public boolean request(long j10) throws IOException {
        Buffer buffer;
        if (j10 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j10);
        }
        if (this.f25988a) {
            throw new IllegalStateException("closed");
        }
        do {
            buffer = this.buffer;
            if (buffer.f25917c >= j10) {
                return true;
            }
        } while (this.source.read(buffer, 8192L) != -1);
        return false;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public void require(long j10) throws IOException {
        if (!request(j10)) {
            throw new EOFException();
        }
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public int select(Options options) throws IOException {
        if (this.f25988a) {
            throw new IllegalStateException("closed");
        }
        do {
            int iA = this.buffer.a(options, true);
            if (iA == -1) {
                return -1;
            }
            if (iA != -2) {
                this.buffer.skip(options.f25963a[iA].size());
                return iA;
            }
        } while (this.source.read(this.buffer, 8192L) != -1);
        return -1;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public void skip(long j10) throws IOException {
        if (this.f25988a) {
            throw new IllegalStateException("closed");
        }
        while (j10 > 0) {
            Buffer buffer = this.buffer;
            if (buffer.f25917c == 0 && this.source.read(buffer, 8192L) == -1) {
                throw new EOFException();
            }
            long jMin = Math.min(j10, this.buffer.size());
            this.buffer.skip(jMin);
            j10 -= jMin;
        }
    }

    @Override // com.czhj.wire.okio.Source
    public Timeout timeout() {
        return this.source.timeout();
    }

    public String toString() {
        return "buffer(" + this.source + ")";
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public long indexOf(byte b10, long j10) throws IOException {
        return indexOf(b10, j10, Long.MAX_VALUE);
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public long indexOfElement(ByteString byteString, long j10) throws IOException {
        if (this.f25988a) {
            throw new IllegalStateException("closed");
        }
        while (true) {
            long jIndexOfElement = this.buffer.indexOfElement(byteString, j10);
            if (jIndexOfElement != -1) {
                return jIndexOfElement;
            }
            Buffer buffer = this.buffer;
            long j11 = buffer.f25917c;
            if (this.source.read(buffer, 8192L) == -1) {
                return -1L;
            }
            j10 = Math.max(j10, j11);
        }
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public boolean rangeEquals(long j10, ByteString byteString, int i10, int i11) throws IOException {
        if (this.f25988a) {
            throw new IllegalStateException("closed");
        }
        if (j10 < 0 || i10 < 0 || i11 < 0 || byteString.size() - i10 < i11) {
            return false;
        }
        for (int i12 = 0; i12 < i11; i12++) {
            long j11 = ((long) i12) + j10;
            if (!request(1 + j11) || this.buffer.getByte(j11) != byteString.getByte(i10 + i12)) {
                return false;
            }
        }
        return true;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public byte[] readByteArray(long j10) throws IOException {
        require(j10);
        return this.buffer.readByteArray(j10);
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public ByteString readByteString(long j10) throws IOException {
        require(j10);
        return this.buffer.readByteString(j10);
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public void readFully(byte[] bArr) throws IOException {
        try {
            require(bArr.length);
            this.buffer.readFully(bArr);
        } catch (EOFException e10) {
            int i10 = 0;
            while (true) {
                Buffer buffer = this.buffer;
                long j10 = buffer.f25917c;
                if (j10 <= 0) {
                    throw e10;
                }
                int i11 = buffer.read(bArr, i10, (int) j10);
                if (i11 == -1) {
                    throw new AssertionError();
                }
                i10 += i11;
            }
        }
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public String readString(Charset charset) throws IOException {
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        this.buffer.writeAll(this.source);
        return this.buffer.readString(charset);
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public String readUtf8(long j10) throws IOException {
        require(j10);
        return this.buffer.readUtf8(j10);
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public String readUtf8LineStrict(long j10) throws IOException {
        if (j10 < 0) {
            throw new IllegalArgumentException("limit < 0: " + j10);
        }
        long j11 = j10 == Long.MAX_VALUE ? Long.MAX_VALUE : j10 + 1;
        long jIndexOf = indexOf((byte) 10, 0L, j11);
        if (jIndexOf != -1) {
            return this.buffer.a(jIndexOf);
        }
        if (j11 < Long.MAX_VALUE && request(j11) && this.buffer.getByte(j11 - 1) == 13 && request(1 + j11) && this.buffer.getByte(j11) == 10) {
            return this.buffer.a(j11);
        }
        Buffer buffer = new Buffer();
        Buffer buffer2 = this.buffer;
        buffer2.copyTo(buffer, 0L, Math.min(32L, buffer2.size()));
        throw new EOFException("\\n not found: limit=" + Math.min(this.buffer.size(), j10) + " content=" + buffer.readByteString().hex() + Typography.ellipsis);
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public long indexOf(byte b10, long j10, long j11) throws IOException {
        if (this.f25988a) {
            throw new IllegalStateException("closed");
        }
        if (j10 < 0 || j11 < j10) {
            throw new IllegalArgumentException(String.format("fromIndex=%s toIndex=%s", Long.valueOf(j10), Long.valueOf(j11)));
        }
        while (j10 < j11) {
            long jIndexOf = this.buffer.indexOf(b10, j10, j11);
            if (jIndexOf != -1) {
                return jIndexOf;
            }
            Buffer buffer = this.buffer;
            long j12 = buffer.f25917c;
            if (j12 >= j11 || this.source.read(buffer, 8192L) == -1) {
                break;
            }
            j10 = Math.max(j10, j12);
        }
        return -1L;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        long j10 = i11;
        Util.checkOffsetAndCount(bArr.length, i10, j10);
        Buffer buffer = this.buffer;
        if (buffer.f25917c == 0 && this.source.read(buffer, 8192L) == -1) {
            return -1;
        }
        return this.buffer.read(bArr, i10, (int) Math.min(j10, this.buffer.f25917c));
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public long indexOf(ByteString byteString) throws IOException {
        return indexOf(byteString, 0L);
    }

    @Override // com.czhj.wire.okio.Source
    public long read(Buffer buffer, long j10) throws IOException {
        if (buffer == null) {
            throw new IllegalArgumentException("sink == null");
        }
        if (j10 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j10);
        }
        if (this.f25988a) {
            throw new IllegalStateException("closed");
        }
        Buffer buffer2 = this.buffer;
        if (buffer2.f25917c == 0 && this.source.read(buffer2, 8192L) == -1) {
            return -1L;
        }
        return this.buffer.read(buffer, Math.min(j10, this.buffer.f25917c));
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public long indexOf(ByteString byteString, long j10) throws IOException {
        if (this.f25988a) {
            throw new IllegalStateException("closed");
        }
        while (true) {
            long jIndexOf = this.buffer.indexOf(byteString, j10);
            if (jIndexOf != -1) {
                return jIndexOf;
            }
            Buffer buffer = this.buffer;
            long j11 = buffer.f25917c;
            if (this.source.read(buffer, 8192L) == -1) {
                return -1L;
            }
            j10 = Math.max(j10, (j11 - ((long) byteString.size())) + 1);
        }
    }
}
