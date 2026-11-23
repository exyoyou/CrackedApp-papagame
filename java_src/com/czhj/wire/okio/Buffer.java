package com.czhj.wire.okio;

import com.alipay.security.mobile.module.commonutils.crypto.c;
import com.android.dx.io.Opcodes;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.fasterxml.jackson.core.json.ByteSourceJsonBootstrapper;
import com.sigmob.sdk.archives.tar.e;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.text.Typography;
import okhttp3.internal.connection.RealConnection;

/* JADX INFO: loaded from: classes9.dex */
public final class Buffer implements BufferedSink, BufferedSource, Cloneable, ByteChannel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final int f25914a = 65533;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final byte[] f25915d = {e.H, e.I, e.J, e.K, e.L, e.M, e.N, e.O, 56, 57, 97, 98, 99, 100, 101, 102};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Segment f25916b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    long f25917c;

    public static final class UnsafeCursor implements Closeable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Segment f25920a;
        public Buffer buffer;
        public byte[] data;
        public boolean readWrite;
        public long offset = -1;
        public int start = -1;
        public int end = -1;

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.buffer == null) {
                throw new IllegalStateException("not attached to a buffer");
            }
            this.buffer = null;
            this.f25920a = null;
            this.offset = -1L;
            this.data = null;
            this.start = -1;
            this.end = -1;
        }

        public final long expandBuffer(int i10) {
            if (i10 <= 0) {
                throw new IllegalArgumentException("minByteCount <= 0: " + i10);
            }
            if (i10 > 8192) {
                throw new IllegalArgumentException("minByteCount > Segment.SIZE: " + i10);
            }
            Buffer buffer = this.buffer;
            if (buffer == null) {
                throw new IllegalStateException("not attached to a buffer");
            }
            if (!this.readWrite) {
                throw new IllegalStateException("expandBuffer() only permitted for read/write buffers");
            }
            long j10 = buffer.f25917c;
            Segment segmentA = buffer.a(i10);
            int i11 = 8192 - segmentA.f25994e;
            segmentA.f25994e = 8192;
            long j11 = i11;
            this.buffer.f25917c = j10 + j11;
            this.f25920a = segmentA;
            this.offset = j10;
            this.data = segmentA.f25992c;
            this.start = 8192 - i11;
            this.end = 8192;
            return j11;
        }

        public final int next() {
            long j10 = this.offset;
            if (j10 != this.buffer.f25917c) {
                return seek(j10 == -1 ? 0L : j10 + ((long) (this.end - this.start)));
            }
            throw new IllegalStateException();
        }

        public final long resizeBuffer(long j10) {
            Buffer buffer = this.buffer;
            if (buffer == null) {
                throw new IllegalStateException("not attached to a buffer");
            }
            if (!this.readWrite) {
                throw new IllegalStateException("resizeBuffer() only permitted for read/write buffers");
            }
            long j11 = buffer.f25917c;
            if (j10 <= j11) {
                if (j10 < 0) {
                    throw new IllegalArgumentException("newSize < 0: " + j10);
                }
                long j12 = j11 - j10;
                while (j12 > 0) {
                    Buffer buffer2 = this.buffer;
                    Segment segment = buffer2.f25916b.f25998i;
                    int i10 = segment.f25994e;
                    long j13 = i10 - segment.f25993d;
                    if (j13 > j12) {
                        segment.f25994e = (int) (((long) i10) - j12);
                        break;
                    }
                    buffer2.f25916b = segment.pop();
                    SegmentPool.a(segment);
                    j12 -= j13;
                }
                this.f25920a = null;
                this.offset = j10;
                this.data = null;
                this.start = -1;
                this.end = -1;
            } else if (j10 > j11) {
                long j14 = j10 - j11;
                boolean z10 = true;
                while (j14 > 0) {
                    Segment segmentA = this.buffer.a(1);
                    int iMin = (int) Math.min(j14, 8192 - segmentA.f25994e);
                    int i11 = segmentA.f25994e + iMin;
                    segmentA.f25994e = i11;
                    j14 -= (long) iMin;
                    if (z10) {
                        this.f25920a = segmentA;
                        this.offset = j11;
                        this.data = segmentA.f25992c;
                        this.start = i11 - iMin;
                        this.end = i11;
                        z10 = false;
                    }
                }
            }
            this.buffer.f25917c = j10;
            return j11;
        }

        public final int seek(long j10) {
            if (j10 >= -1) {
                Buffer buffer = this.buffer;
                long j11 = buffer.f25917c;
                if (j10 <= j11) {
                    if (j10 == -1 || j10 == j11) {
                        this.f25920a = null;
                        this.offset = j10;
                        this.data = null;
                        this.start = -1;
                        this.end = -1;
                        return -1;
                    }
                    Segment segment = buffer.f25916b;
                    Segment segmentPush = this.f25920a;
                    long j12 = 0;
                    if (segmentPush != null) {
                        long j13 = this.offset - ((long) (this.start - segmentPush.f25993d));
                        if (j13 > j10) {
                            j11 = j13;
                            segmentPush = segment;
                            segment = segmentPush;
                        } else {
                            j12 = j13;
                        }
                    } else {
                        segmentPush = segment;
                    }
                    if (j11 - j10 > j10 - j12) {
                        while (true) {
                            int i10 = segmentPush.f25994e;
                            int i11 = segmentPush.f25993d;
                            if (j10 < ((long) (i10 - i11)) + j12) {
                                break;
                            }
                            j12 += (long) (i10 - i11);
                            segmentPush = segmentPush.f25997h;
                        }
                    } else {
                        while (j11 > j10) {
                            segment = segment.f25998i;
                            j11 -= (long) (segment.f25994e - segment.f25993d);
                        }
                        segmentPush = segment;
                        j12 = j11;
                    }
                    if (this.readWrite && segmentPush.f25995f) {
                        Segment segmentB = segmentPush.b();
                        Buffer buffer2 = this.buffer;
                        if (buffer2.f25916b == segmentPush) {
                            buffer2.f25916b = segmentB;
                        }
                        segmentPush = segmentPush.push(segmentB);
                        segmentPush.f25998i.pop();
                    }
                    this.f25920a = segmentPush;
                    this.offset = j10;
                    this.data = segmentPush.f25992c;
                    int i12 = segmentPush.f25993d + ((int) (j10 - j12));
                    this.start = i12;
                    int i13 = segmentPush.f25994e;
                    this.end = i13;
                    return i13 - i12;
                }
            }
            throw new ArrayIndexOutOfBoundsException(String.format("offset=%s > size=%s", Long.valueOf(j10), Long.valueOf(this.buffer.f25917c)));
        }
    }

    int a(Options options, boolean z10) {
        int i10;
        int i11;
        int i12;
        int i13;
        Segment segment;
        Segment segment2 = this.f25916b;
        int i14 = -2;
        if (segment2 == null) {
            if (z10) {
                return -2;
            }
            return options.indexOf(ByteString.EMPTY);
        }
        byte[] bArr = segment2.f25992c;
        int i15 = segment2.f25993d;
        int i16 = segment2.f25994e;
        int[] iArr = options.f25964b;
        Segment segment3 = segment2;
        int i17 = 0;
        int i18 = -1;
        loop0: while (true) {
            int i19 = i17 + 1;
            int i20 = iArr[i17];
            int i21 = i19 + 1;
            int i22 = iArr[i19];
            if (i22 != -1) {
                i18 = i22;
            }
            if (segment3 == null) {
                break;
            }
            if (i20 >= 0) {
                int i23 = i15 + 1;
                int i24 = bArr[i15] & 255;
                int i25 = i21 + i20;
                while (i21 != i25) {
                    if (i24 == iArr[i21]) {
                        i10 = iArr[i21 + i20];
                        if (i23 == i16) {
                            segment3 = segment3.f25997h;
                            i11 = segment3.f25993d;
                            bArr = segment3.f25992c;
                            i16 = segment3.f25994e;
                            if (segment3 == segment2) {
                                segment3 = null;
                            }
                        } else {
                            i11 = i23;
                        }
                    } else {
                        i21++;
                    }
                }
                return i18;
            }
            int i26 = i21 + (i20 * (-1));
            while (true) {
                int i27 = i15 + 1;
                int i28 = i21 + 1;
                if ((bArr[i15] & 255) != iArr[i21]) {
                    return i18;
                }
                boolean z11 = i28 == i26;
                if (i27 == i16) {
                    Segment segment4 = segment3.f25997h;
                    i13 = segment4.f25993d;
                    byte[] bArr2 = segment4.f25992c;
                    i12 = segment4.f25994e;
                    if (segment4 != segment2) {
                        segment = segment4;
                        bArr = bArr2;
                    } else {
                        if (!z11) {
                            break loop0;
                        }
                        bArr = bArr2;
                        segment = null;
                    }
                } else {
                    Segment segment5 = segment3;
                    i12 = i16;
                    i13 = i27;
                    segment = segment5;
                }
                if (z11) {
                    i10 = iArr[i28];
                    i11 = i13;
                    i16 = i12;
                    segment3 = segment;
                    break;
                }
                i15 = i13;
                i16 = i12;
                i21 = i28;
                segment3 = segment;
            }
            if (i10 >= 0) {
                return i10;
            }
            i17 = -i10;
            i15 = i11;
            i14 = -2;
        }
        return z10 ? i14 : i18;
    }

    @Override // com.czhj.wire.okio.BufferedSink, com.czhj.wire.okio.BufferedSource
    public Buffer buffer() {
        return this;
    }

    public final void clear() {
        try {
            skip(this.f25917c);
        } catch (EOFException e10) {
            throw new AssertionError(e10);
        }
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public Buffer m22clone() {
        Buffer buffer = new Buffer();
        if (this.f25917c == 0) {
            return buffer;
        }
        Segment segmentA = this.f25916b.a();
        buffer.f25916b = segmentA;
        segmentA.f25998i = segmentA;
        segmentA.f25997h = segmentA;
        Segment segment = this.f25916b;
        while (true) {
            segment = segment.f25997h;
            if (segment == this.f25916b) {
                buffer.f25917c = this.f25917c;
                return buffer;
            }
            buffer.f25916b.f25998i.push(segment.a());
        }
    }

    @Override // com.czhj.wire.okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public final long completeSegmentByteCount() {
        long j10 = this.f25917c;
        if (j10 == 0) {
            return 0L;
        }
        Segment segment = this.f25916b.f25998i;
        int i10 = segment.f25994e;
        return (i10 >= 8192 || !segment.f25996g) ? j10 : j10 - ((long) (i10 - segment.f25993d));
    }

    public final Buffer copyTo(Buffer buffer, long j10, long j11) {
        if (buffer == null) {
            throw new IllegalArgumentException("out == null");
        }
        Util.checkOffsetAndCount(this.f25917c, j10, j11);
        if (j11 == 0) {
            return this;
        }
        buffer.f25917c += j11;
        Segment segment = this.f25916b;
        while (true) {
            int i10 = segment.f25994e;
            int i11 = segment.f25993d;
            if (j10 < i10 - i11) {
                break;
            }
            j10 -= (long) (i10 - i11);
            segment = segment.f25997h;
        }
        while (j11 > 0) {
            Segment segmentA = segment.a();
            int i12 = (int) (((long) segmentA.f25993d) + j10);
            segmentA.f25993d = i12;
            segmentA.f25994e = Math.min(i12 + ((int) j11), segmentA.f25994e);
            Segment segment2 = buffer.f25916b;
            if (segment2 == null) {
                segmentA.f25998i = segmentA;
                segmentA.f25997h = segmentA;
                buffer.f25916b = segmentA;
            } else {
                segment2.f25998i.push(segmentA);
            }
            j11 -= (long) (segmentA.f25994e - segmentA.f25993d);
            segment = segment.f25997h;
            j10 = 0;
        }
        return this;
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public BufferedSink emit() {
        return this;
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public Buffer emitCompleteSegments() {
        return this;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Buffer)) {
            return false;
        }
        Buffer buffer = (Buffer) obj;
        long j10 = this.f25917c;
        if (j10 != buffer.f25917c) {
            return false;
        }
        long j11 = 0;
        if (j10 == 0) {
            return true;
        }
        Segment segment = this.f25916b;
        Segment segment2 = buffer.f25916b;
        int i10 = segment.f25993d;
        int i11 = segment2.f25993d;
        while (j11 < this.f25917c) {
            long jMin = Math.min(segment.f25994e - i10, segment2.f25994e - i11);
            int i12 = 0;
            while (i12 < jMin) {
                int i13 = i10 + 1;
                int i14 = i11 + 1;
                if (segment.f25992c[i10] != segment2.f25992c[i11]) {
                    return false;
                }
                i12++;
                i10 = i13;
                i11 = i14;
            }
            if (i10 == segment.f25994e) {
                segment = segment.f25997h;
                i10 = segment.f25993d;
            }
            if (i11 == segment2.f25994e) {
                segment2 = segment2.f25997h;
                i11 = segment2.f25993d;
            }
            j11 += jMin;
        }
        return true;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public boolean exhausted() {
        return this.f25917c == 0;
    }

    @Override // com.czhj.wire.okio.BufferedSink, com.czhj.wire.okio.Sink, java.io.Flushable
    public void flush() {
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public Buffer getBuffer() {
        return this;
    }

    public final byte getByte(long j10) {
        int i10;
        Util.checkOffsetAndCount(this.f25917c, j10, 1L);
        long j11 = this.f25917c;
        if (j11 - j10 <= j10) {
            long j12 = j10 - j11;
            Segment segment = this.f25916b;
            do {
                segment = segment.f25998i;
                int i11 = segment.f25994e;
                i10 = segment.f25993d;
                j12 += (long) (i11 - i10);
            } while (j12 < 0);
            return segment.f25992c[i10 + ((int) j12)];
        }
        Segment segment2 = this.f25916b;
        while (true) {
            int i12 = segment2.f25994e;
            int i13 = segment2.f25993d;
            long j13 = i12 - i13;
            if (j10 < j13) {
                return segment2.f25992c[i13 + ((int) j10)];
            }
            j10 -= j13;
            segment2 = segment2.f25997h;
        }
    }

    public int hashCode() {
        Segment segment = this.f25916b;
        if (segment == null) {
            return 0;
        }
        int i10 = 1;
        do {
            int i11 = segment.f25994e;
            for (int i12 = segment.f25993d; i12 < i11; i12++) {
                i10 = (i10 * 31) + segment.f25992c[i12];
            }
            segment = segment.f25997h;
        } while (segment != this.f25916b);
        return i10;
    }

    public final ByteString hmacSha1(ByteString byteString) {
        return a(c.f7275a, byteString);
    }

    public final ByteString hmacSha256(ByteString byteString) {
        return a("HmacSHA256", byteString);
    }

    public final ByteString hmacSha512(ByteString byteString) {
        return a("HmacSHA512", byteString);
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public long indexOf(byte b10) {
        return indexOf(b10, 0L, Long.MAX_VALUE);
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public long indexOfElement(ByteString byteString) {
        return indexOfElement(byteString, 0L);
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public InputStream inputStream() {
        return new InputStream() { // from class: com.czhj.wire.okio.Buffer.2
            @Override // java.io.InputStream
            public int available() {
                return (int) Math.min(Buffer.this.f25917c, 2147483647L);
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // java.io.InputStream
            public int read() {
                Buffer buffer = Buffer.this;
                if (buffer.f25917c > 0) {
                    return buffer.readByte() & 255;
                }
                return -1;
            }

            public String toString() {
                return Buffer.this + ".inputStream()";
            }

            @Override // java.io.InputStream
            public int read(byte[] bArr, int i10, int i11) {
                return Buffer.this.read(bArr, i10, i11);
            }
        };
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return true;
    }

    public final ByteString md5() {
        return a("MD5");
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public OutputStream outputStream() {
        return new OutputStream() { // from class: com.czhj.wire.okio.Buffer.1
            @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // java.io.OutputStream, java.io.Flushable
            public void flush() {
            }

            public String toString() {
                return Buffer.this + ".outputStream()";
            }

            @Override // java.io.OutputStream
            public void write(int i10) {
                Buffer.this.writeByte((int) ((byte) i10));
            }

            @Override // java.io.OutputStream
            public void write(byte[] bArr, int i10, int i11) {
                Buffer.this.write(bArr, i10, i11);
            }
        };
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public BufferedSource peek() {
        return Okio.buffer(new PeekSource(this));
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public boolean rangeEquals(long j10, ByteString byteString) {
        return rangeEquals(j10, byteString, 0, byteString.size());
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws IOException {
        Segment segment = this.f25916b;
        if (segment == null) {
            return -1;
        }
        int iMin = Math.min(byteBuffer.remaining(), segment.f25994e - segment.f25993d);
        byteBuffer.put(segment.f25992c, segment.f25993d, iMin);
        int i10 = segment.f25993d + iMin;
        segment.f25993d = i10;
        this.f25917c -= (long) iMin;
        if (i10 == segment.f25994e) {
            this.f25916b = segment.pop();
            SegmentPool.a(segment);
        }
        return iMin;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public long readAll(Sink sink) throws IOException {
        long j10 = this.f25917c;
        if (j10 > 0) {
            sink.write(this, j10);
        }
        return j10;
    }

    public final UnsafeCursor readAndWriteUnsafe() {
        return readAndWriteUnsafe(new UnsafeCursor());
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public byte readByte() {
        long j10 = this.f25917c;
        if (j10 == 0) {
            throw new IllegalStateException("size == 0");
        }
        Segment segment = this.f25916b;
        int i10 = segment.f25993d;
        int i11 = segment.f25994e;
        int i12 = i10 + 1;
        byte b10 = segment.f25992c[i10];
        this.f25917c = j10 - 1;
        if (i12 == i11) {
            this.f25916b = segment.pop();
            SegmentPool.a(segment);
        } else {
            segment.f25993d = i12;
        }
        return b10;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public byte[] readByteArray() {
        try {
            return readByteArray(this.f25917c);
        } catch (EOFException e10) {
            throw new AssertionError(e10);
        }
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public ByteString readByteString() {
        return new ByteString(readByteArray());
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public long readDecimalLong() {
        if (this.f25917c == 0) {
            throw new IllegalStateException("size == 0");
        }
        int i10 = 0;
        long j10 = -7;
        boolean z10 = false;
        long j11 = 0;
        boolean z11 = false;
        do {
            Segment segment = this.f25916b;
            byte[] bArr = segment.f25992c;
            int i11 = segment.f25993d;
            int i12 = segment.f25994e;
            while (i11 < i12) {
                byte b10 = bArr[i11];
                if (b10 >= 48 && b10 <= 57) {
                    int i13 = 48 - b10;
                    if (j11 < okio.internal.Buffer.OVERFLOW_ZONE || (j11 == okio.internal.Buffer.OVERFLOW_ZONE && i13 < j10)) {
                        Buffer bufferWriteByte = new Buffer().writeDecimalLong(j11).writeByte((int) b10);
                        if (!z10) {
                            bufferWriteByte.readByte();
                        }
                        throw new NumberFormatException("Number too large: " + bufferWriteByte.readUtf8());
                    }
                    j11 = (j11 * 10) + ((long) i13);
                } else {
                    if (b10 != 45 || i10 != 0) {
                        if (i10 != 0) {
                            z11 = true;
                            break;
                        }
                        throw new NumberFormatException("Expected leading [0-9] or '-' character but was 0x" + Integer.toHexString(b10));
                    }
                    j10--;
                    z10 = true;
                }
                i11++;
                i10++;
            }
            if (i11 == i12) {
                this.f25916b = segment.pop();
                SegmentPool.a(segment);
            } else {
                segment.f25993d = i11;
            }
            if (z11) {
                break;
            }
        } while (this.f25916b != null);
        this.f25917c -= (long) i10;
        return z10 ? j11 : -j11;
    }

    public final Buffer readFrom(InputStream inputStream) throws IOException {
        a(inputStream, Long.MAX_VALUE, true);
        return this;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public void readFully(Buffer buffer, long j10) throws EOFException {
        long j11 = this.f25917c;
        if (j11 >= j10) {
            buffer.write(this, j10);
        } else {
            buffer.write(this, j11);
            throw new EOFException();
        }
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public long readHexadecimalUnsignedLong() {
        int i10;
        int i11;
        if (this.f25917c == 0) {
            throw new IllegalStateException("size == 0");
        }
        int i12 = 0;
        long j10 = 0;
        boolean z10 = false;
        do {
            Segment segment = this.f25916b;
            byte[] bArr = segment.f25992c;
            int i13 = segment.f25993d;
            int i14 = segment.f25994e;
            while (i13 < i14) {
                byte b10 = bArr[i13];
                if (b10 < 48 || b10 > 57) {
                    if (b10 >= 97 && b10 <= 102) {
                        i10 = b10 - 97;
                    } else {
                        if (b10 < 65 || b10 > 70) {
                            if (i12 != 0) {
                                z10 = true;
                                break;
                            }
                            throw new NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x" + Integer.toHexString(b10));
                        }
                        i10 = b10 + ByteSourceJsonBootstrapper.UTF8_BOM_3;
                    }
                    i11 = i10 + 10;
                } else {
                    i11 = b10 - 48;
                }
                if (((-1152921504606846976L) & j10) != 0) {
                    throw new NumberFormatException("Number too large: " + new Buffer().writeHexadecimalUnsignedLong(j10).writeByte((int) b10).readUtf8());
                }
                j10 = (j10 << 4) | ((long) i11);
                i13++;
                i12++;
            }
            if (i13 == i14) {
                this.f25916b = segment.pop();
                SegmentPool.a(segment);
            } else {
                segment.f25993d = i13;
            }
            if (z10) {
                break;
            }
        } while (this.f25916b != null);
        this.f25917c -= (long) i12;
        return j10;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public int readInt() {
        long j10 = this.f25917c;
        if (j10 < 4) {
            throw new IllegalStateException("size < 4: " + this.f25917c);
        }
        Segment segment = this.f25916b;
        int i10 = segment.f25993d;
        int i11 = segment.f25994e;
        if (i11 - i10 < 4) {
            return ((readByte() & 255) << 24) | ((readByte() & 255) << 16) | ((readByte() & 255) << 8) | (readByte() & 255);
        }
        byte[] bArr = segment.f25992c;
        int i12 = i10 + 1;
        int i13 = i12 + 1;
        int i14 = ((bArr[i10] & 255) << 24) | ((bArr[i12] & 255) << 16);
        int i15 = i13 + 1;
        int i16 = i14 | ((bArr[i13] & 255) << 8);
        int i17 = i15 + 1;
        int i18 = i16 | (bArr[i15] & 255);
        this.f25917c = j10 - 4;
        if (i17 == i11) {
            this.f25916b = segment.pop();
            SegmentPool.a(segment);
        } else {
            segment.f25993d = i17;
        }
        return i18;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public int readIntLe() {
        return Util.reverseBytesInt(readInt());
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public long readLong() {
        long j10 = this.f25917c;
        if (j10 < 8) {
            throw new IllegalStateException("size < 8: " + this.f25917c);
        }
        Segment segment = this.f25916b;
        int i10 = segment.f25993d;
        int i11 = segment.f25994e;
        if (i11 - i10 < 8) {
            return ((((long) readInt()) & 4294967295L) << 32) | (4294967295L & ((long) readInt()));
        }
        byte[] bArr = segment.f25992c;
        int i12 = i10 + 1;
        long j11 = (((long) bArr[i10]) & 255) << 56;
        int i13 = i12 + 1;
        long j12 = ((((long) bArr[i12]) & 255) << 48) | j11;
        int i14 = i13 + 1;
        long j13 = j12 | ((((long) bArr[i13]) & 255) << 40);
        int i15 = i14 + 1;
        int i16 = i15 + 1;
        long j14 = j13 | ((((long) bArr[i14]) & 255) << 32) | ((((long) bArr[i15]) & 255) << 24);
        int i17 = i16 + 1;
        long j15 = j14 | ((((long) bArr[i16]) & 255) << 16);
        int i18 = i17 + 1;
        long j16 = j15 | ((((long) bArr[i17]) & 255) << 8);
        int i19 = i18 + 1;
        long j17 = j16 | (((long) bArr[i18]) & 255);
        this.f25917c = j10 - 8;
        if (i19 == i11) {
            this.f25916b = segment.pop();
            SegmentPool.a(segment);
        } else {
            segment.f25993d = i19;
        }
        return j17;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public long readLongLe() {
        return Util.reverseBytesLong(readLong());
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public short readShort() {
        long j10 = this.f25917c;
        if (j10 < 2) {
            throw new IllegalStateException("size < 2: " + this.f25917c);
        }
        Segment segment = this.f25916b;
        int i10 = segment.f25993d;
        int i11 = segment.f25994e;
        if (i11 - i10 < 2) {
            return (short) (((readByte() & 255) << 8) | (readByte() & 255));
        }
        byte[] bArr = segment.f25992c;
        int i12 = i10 + 1;
        int i13 = i12 + 1;
        int i14 = ((bArr[i10] & 255) << 8) | (bArr[i12] & 255);
        this.f25917c = j10 - 2;
        if (i13 == i11) {
            this.f25916b = segment.pop();
            SegmentPool.a(segment);
        } else {
            segment.f25993d = i13;
        }
        return (short) i14;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public short readShortLe() {
        return Util.reverseBytesShort(readShort());
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public String readString(long j10, Charset charset) throws EOFException {
        Util.checkOffsetAndCount(this.f25917c, 0L, j10);
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        if (j10 > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j10);
        }
        if (j10 == 0) {
            return "";
        }
        Segment segment = this.f25916b;
        int i10 = segment.f25993d;
        if (((long) i10) + j10 > segment.f25994e) {
            return new String(readByteArray(j10), charset);
        }
        String str = new String(segment.f25992c, i10, (int) j10, charset);
        int i11 = (int) (((long) segment.f25993d) + j10);
        segment.f25993d = i11;
        this.f25917c -= j10;
        if (i11 == segment.f25994e) {
            this.f25916b = segment.pop();
            SegmentPool.a(segment);
        }
        return str;
    }

    public final UnsafeCursor readUnsafe() {
        return readUnsafe(new UnsafeCursor());
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public String readUtf8() {
        try {
            return readString(this.f25917c, Util.UTF_8);
        } catch (EOFException e10) {
            throw new AssertionError(e10);
        }
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public int readUtf8CodePoint() throws EOFException {
        int i10;
        int i11;
        int i12;
        if (this.f25917c == 0) {
            throw new EOFException();
        }
        byte b10 = getByte(0L);
        if ((b10 & 128) == 0) {
            i10 = b10 & ByteCompanionObject.MAX_VALUE;
            i11 = 1;
            i12 = 0;
        } else if ((b10 & 224) == 192) {
            i10 = b10 & 31;
            i11 = 2;
            i12 = 128;
        } else if ((b10 & 240) == 224) {
            i10 = b10 & 15;
            i11 = 3;
            i12 = 2048;
        } else {
            if ((b10 & 248) != 240) {
                skip(1L);
                return 65533;
            }
            i10 = b10 & 7;
            i11 = 4;
            i12 = 65536;
        }
        long j10 = i11;
        if (this.f25917c < j10) {
            throw new EOFException("size < " + i11 + ": " + this.f25917c + " (to read code point prefixed 0x" + Integer.toHexString(b10) + ")");
        }
        for (int i13 = 1; i13 < i11; i13++) {
            long j11 = i13;
            byte b11 = getByte(j11);
            if ((b11 & 192) != 128) {
                skip(j11);
                return 65533;
            }
            i10 = (i10 << 6) | (b11 & okio.Utf8.REPLACEMENT_BYTE);
        }
        skip(j10);
        if (i10 > 1114111) {
            return 65533;
        }
        if ((i10 < 55296 || i10 > 57343) && i10 >= i12) {
            return i10;
        }
        return 65533;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public String readUtf8Line() throws EOFException {
        long jIndexOf = indexOf((byte) 10);
        if (jIndexOf != -1) {
            return a(jIndexOf);
        }
        long j10 = this.f25917c;
        if (j10 != 0) {
            return readUtf8(j10);
        }
        return null;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public String readUtf8LineStrict() throws EOFException {
        return readUtf8LineStrict(Long.MAX_VALUE);
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public boolean request(long j10) {
        return this.f25917c >= j10;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public void require(long j10) throws EOFException {
        if (this.f25917c < j10) {
            throw new EOFException();
        }
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public int select(Options options) {
        int iA = a(options, false);
        if (iA == -1) {
            return -1;
        }
        try {
            skip(options.f25963a[iA].size());
            return iA;
        } catch (EOFException unused) {
            throw new AssertionError();
        }
    }

    public final ByteString sha1() {
        return a("SHA-1");
    }

    public final ByteString sha256() {
        return a("SHA-256");
    }

    public final ByteString sha512() {
        return a("SHA-512");
    }

    public final long size() {
        return this.f25917c;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public void skip(long j10) throws EOFException {
        while (j10 > 0) {
            Segment segment = this.f25916b;
            if (segment == null) {
                throw new EOFException();
            }
            int iMin = (int) Math.min(j10, segment.f25994e - segment.f25993d);
            long j11 = iMin;
            this.f25917c -= j11;
            j10 -= j11;
            Segment segment2 = this.f25916b;
            int i10 = segment2.f25993d + iMin;
            segment2.f25993d = i10;
            if (i10 == segment2.f25994e) {
                this.f25916b = segment2.pop();
                SegmentPool.a(segment2);
            }
        }
    }

    public final ByteString snapshot() {
        long j10 = this.f25917c;
        if (j10 <= 2147483647L) {
            return snapshot((int) j10);
        }
        throw new IllegalArgumentException("size > Integer.MAX_VALUE: " + this.f25917c);
    }

    @Override // com.czhj.wire.okio.Sink
    public Timeout timeout() {
        return Timeout.NONE;
    }

    public String toString() {
        return snapshot().toString();
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer == null) {
            throw new IllegalArgumentException("source == null");
        }
        int iRemaining = byteBuffer.remaining();
        int i10 = iRemaining;
        while (i10 > 0) {
            Segment segmentA = a(1);
            int iMin = Math.min(i10, 8192 - segmentA.f25994e);
            byteBuffer.get(segmentA.f25992c, segmentA.f25994e, iMin);
            i10 -= iMin;
            segmentA.f25994e += iMin;
        }
        this.f25917c += (long) iRemaining;
        return iRemaining;
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public long writeAll(Source source) throws IOException {
        if (source == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j10 = 0;
        while (true) {
            long j11 = source.read(this, 8192L);
            if (j11 == -1) {
                return j10;
            }
            j10 += j11;
        }
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public Buffer writeByte(int i10) {
        Segment segmentA = a(1);
        byte[] bArr = segmentA.f25992c;
        int i11 = segmentA.f25994e;
        segmentA.f25994e = i11 + 1;
        bArr[i11] = (byte) i10;
        this.f25917c++;
        return this;
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public Buffer writeDecimalLong(long j10) {
        boolean z10;
        if (j10 == 0) {
            return writeByte(48);
        }
        int i10 = 1;
        if (j10 < 0) {
            j10 = -j10;
            if (j10 < 0) {
                return writeUtf8("-9223372036854775808");
            }
            z10 = true;
        } else {
            z10 = false;
        }
        if (j10 < 100000000) {
            if (j10 < 10000) {
                if (j10 >= 100) {
                    i10 = j10 < 1000 ? 3 : 4;
                } else if (j10 >= 10) {
                    i10 = 2;
                }
            } else if (j10 < C.MICROS_PER_SECOND) {
                i10 = j10 < 100000 ? 5 : 6;
            } else {
                i10 = j10 < 10000000 ? 7 : 8;
            }
        } else if (j10 < 1000000000000L) {
            if (j10 < RealConnection.IDLE_CONNECTION_HEALTHY_NS) {
                i10 = j10 < 1000000000 ? 9 : 10;
            } else {
                i10 = j10 < 100000000000L ? 11 : 12;
            }
        } else if (j10 < 1000000000000000L) {
            if (j10 < 10000000000000L) {
                i10 = 13;
            } else {
                i10 = j10 < 100000000000000L ? 14 : 15;
            }
        } else if (j10 < 100000000000000000L) {
            i10 = j10 < 10000000000000000L ? 16 : 17;
        } else {
            i10 = j10 < 1000000000000000000L ? 18 : 19;
        }
        if (z10) {
            i10++;
        }
        Segment segmentA = a(i10);
        byte[] bArr = segmentA.f25992c;
        int i11 = segmentA.f25994e + i10;
        while (j10 != 0) {
            i11--;
            bArr[i11] = f25915d[(int) (j10 % 10)];
            j10 /= 10;
        }
        if (z10) {
            bArr[i11 - 1] = 45;
        }
        segmentA.f25994e += i10;
        this.f25917c += (long) i10;
        return this;
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public Buffer writeHexadecimalUnsignedLong(long j10) {
        if (j10 == 0) {
            return writeByte(48);
        }
        int iNumberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j10)) / 4) + 1;
        Segment segmentA = a(iNumberOfTrailingZeros);
        byte[] bArr = segmentA.f25992c;
        int i10 = segmentA.f25994e;
        for (int i11 = (i10 + iNumberOfTrailingZeros) - 1; i11 >= i10; i11--) {
            bArr[i11] = f25915d[(int) (15 & j10)];
            j10 >>>= 4;
        }
        segmentA.f25994e += iNumberOfTrailingZeros;
        this.f25917c += (long) iNumberOfTrailingZeros;
        return this;
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public Buffer writeInt(int i10) {
        Segment segmentA = a(4);
        byte[] bArr = segmentA.f25992c;
        int i11 = segmentA.f25994e;
        int i12 = i11 + 1;
        bArr[i11] = (byte) ((i10 >>> 24) & 255);
        int i13 = i12 + 1;
        bArr[i12] = (byte) ((i10 >>> 16) & 255);
        int i14 = i13 + 1;
        bArr[i13] = (byte) ((i10 >>> 8) & 255);
        bArr[i14] = (byte) (i10 & 255);
        segmentA.f25994e = i14 + 1;
        this.f25917c += 4;
        return this;
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public Buffer writeIntLe(int i10) {
        return writeInt(Util.reverseBytesInt(i10));
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public Buffer writeLong(long j10) {
        Segment segmentA = a(8);
        byte[] bArr = segmentA.f25992c;
        int i10 = segmentA.f25994e;
        int i11 = i10 + 1;
        bArr[i10] = (byte) ((j10 >>> 56) & 255);
        int i12 = i11 + 1;
        bArr[i11] = (byte) ((j10 >>> 48) & 255);
        int i13 = i12 + 1;
        bArr[i12] = (byte) ((j10 >>> 40) & 255);
        int i14 = i13 + 1;
        bArr[i13] = (byte) ((j10 >>> 32) & 255);
        int i15 = i14 + 1;
        bArr[i14] = (byte) ((j10 >>> 24) & 255);
        int i16 = i15 + 1;
        bArr[i15] = (byte) ((j10 >>> 16) & 255);
        int i17 = i16 + 1;
        bArr[i16] = (byte) ((j10 >>> 8) & 255);
        bArr[i17] = (byte) (j10 & 255);
        segmentA.f25994e = i17 + 1;
        this.f25917c += 8;
        return this;
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public Buffer writeLongLe(long j10) {
        return writeLong(Util.reverseBytesLong(j10));
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public Buffer writeShort(int i10) {
        Segment segmentA = a(2);
        byte[] bArr = segmentA.f25992c;
        int i11 = segmentA.f25994e;
        int i12 = i11 + 1;
        bArr[i11] = (byte) ((i10 >>> 8) & 255);
        bArr[i12] = (byte) (i10 & 255);
        segmentA.f25994e = i12 + 1;
        this.f25917c += 2;
        return this;
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public Buffer writeShortLe(int i10) {
        return writeShort((int) Util.reverseBytesShort((short) i10));
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public Buffer writeString(String str, int i10, int i11, Charset charset) {
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        }
        if (i10 < 0) {
            throw new IllegalAccessError("beginIndex < 0: " + i10);
        }
        if (i11 < i10) {
            throw new IllegalArgumentException("endIndex < beginIndex: " + i11 + " < " + i10);
        }
        if (i11 <= str.length()) {
            if (charset == null) {
                throw new IllegalArgumentException("charset == null");
            }
            if (charset.equals(Util.UTF_8)) {
                return writeUtf8(str, i10, i11);
            }
            byte[] bytes = str.substring(i10, i11).getBytes(charset);
            return write(bytes, 0, bytes.length);
        }
        throw new IllegalArgumentException("endIndex > string.length: " + i11 + " > " + str.length());
    }

    public final Buffer writeTo(OutputStream outputStream) throws IOException {
        return writeTo(outputStream, this.f25917c);
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public Buffer writeUtf8(String str) {
        return writeUtf8(str, 0, str.length());
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public Buffer writeUtf8CodePoint(int i10) {
        int i11;
        int i12;
        if (i10 >= 128) {
            if (i10 < 2048) {
                i12 = (i10 >> 6) | 192;
            } else {
                if (i10 < 65536) {
                    if (i10 < 55296 || i10 > 57343) {
                        i11 = (i10 >> 12) | Opcodes.SHL_INT_LIT8;
                    } else {
                        writeByte(63);
                    }
                } else {
                    if (i10 > 1114111) {
                        throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(i10));
                    }
                    writeByte((i10 >> 18) | MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA);
                    i11 = ((i10 >> 12) & 63) | 128;
                }
                writeByte(i11);
                i12 = ((i10 >> 6) & 63) | 128;
            }
            writeByte(i12);
            i10 = (i10 & 63) | 128;
            writeByte(i10);
        } else {
            writeByte(i10);
        }
        return this;
    }

    private ByteString a(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(str);
            Segment segment = this.f25916b;
            if (segment != null) {
                byte[] bArr = segment.f25992c;
                int i10 = segment.f25993d;
                messageDigest.update(bArr, i10, segment.f25994e - i10);
                Segment segment2 = this.f25916b;
                while (true) {
                    segment2 = segment2.f25997h;
                    if (segment2 == this.f25916b) {
                        break;
                    }
                    byte[] bArr2 = segment2.f25992c;
                    int i11 = segment2.f25993d;
                    messageDigest.update(bArr2, i11, segment2.f25994e - i11);
                }
            }
            return ByteString.of(messageDigest.digest());
        } catch (NoSuchAlgorithmException unused) {
            throw new AssertionError();
        }
    }

    public final Buffer copyTo(OutputStream outputStream) throws IOException {
        return copyTo(outputStream, 0L, this.f25917c);
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public long indexOf(byte b10, long j10) {
        return indexOf(b10, j10, Long.MAX_VALUE);
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public long indexOfElement(ByteString byteString, long j10) {
        int i10;
        long j11 = 0;
        if (j10 < 0) {
            throw new IllegalArgumentException("fromIndex < 0");
        }
        Segment segment = this.f25916b;
        if (segment == null) {
            return -1L;
        }
        long j12 = this.f25917c;
        if (j12 - j10 < j10) {
            while (j12 > j10) {
                segment = segment.f25998i;
                j12 -= (long) (segment.f25994e - segment.f25993d);
            }
        } else {
            while (true) {
                long j13 = ((long) (segment.f25994e - segment.f25993d)) + j11;
                if (j13 >= j10) {
                    break;
                }
                segment = segment.f25997h;
                j11 = j13;
            }
            j12 = j11;
        }
        if (byteString.size() == 2) {
            byte b10 = byteString.getByte(0);
            byte b11 = byteString.getByte(1);
            while (j12 < this.f25917c) {
                byte[] bArr = segment.f25992c;
                i10 = (int) ((((long) segment.f25993d) + j10) - j12);
                int i11 = segment.f25994e;
                while (i10 < i11) {
                    byte b12 = bArr[i10];
                    if (b12 == b10 || b12 == b11) {
                        return ((long) (i10 - segment.f25993d)) + j12;
                    }
                    i10++;
                }
                j12 += (long) (segment.f25994e - segment.f25993d);
                segment = segment.f25997h;
                j10 = j12;
            }
            return -1L;
        }
        byte[] bArrA = byteString.a();
        while (j12 < this.f25917c) {
            byte[] bArr2 = segment.f25992c;
            i10 = (int) ((((long) segment.f25993d) + j10) - j12);
            int i12 = segment.f25994e;
            while (i10 < i12) {
                byte b13 = bArr2[i10];
                for (byte b14 : bArrA) {
                    if (b13 == b14) {
                        return ((long) (i10 - segment.f25993d)) + j12;
                    }
                }
                i10++;
            }
            j12 += (long) (segment.f25994e - segment.f25993d);
            segment = segment.f25997h;
            j10 = j12;
        }
        return -1L;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public boolean rangeEquals(long j10, ByteString byteString, int i10, int i11) {
        if (j10 < 0 || i10 < 0 || i11 < 0 || this.f25917c - j10 < i11 || byteString.size() - i10 < i11) {
            return false;
        }
        for (int i12 = 0; i12 < i11; i12++) {
            if (getByte(((long) i12) + j10) != byteString.getByte(i10 + i12)) {
                return false;
            }
        }
        return true;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    public final UnsafeCursor readAndWriteUnsafe(UnsafeCursor unsafeCursor) {
        if (unsafeCursor.buffer != null) {
            throw new IllegalStateException("already attached to a buffer");
        }
        unsafeCursor.buffer = this;
        unsafeCursor.readWrite = true;
        return unsafeCursor;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public byte[] readByteArray(long j10) throws EOFException {
        Util.checkOffsetAndCount(this.f25917c, 0L, j10);
        if (j10 <= 2147483647L) {
            byte[] bArr = new byte[(int) j10];
            readFully(bArr);
            return bArr;
        }
        throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j10);
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public ByteString readByteString(long j10) throws EOFException {
        return new ByteString(readByteArray(j10));
    }

    public final Buffer readFrom(InputStream inputStream, long j10) throws IOException {
        if (j10 >= 0) {
            a(inputStream, j10, false);
            return this;
        }
        throw new IllegalArgumentException("byteCount < 0: " + j10);
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public void readFully(byte[] bArr) throws EOFException {
        int i10 = 0;
        while (i10 < bArr.length) {
            int i11 = read(bArr, i10, bArr.length - i10);
            if (i11 == -1) {
                throw new EOFException();
            }
            i10 += i11;
        }
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public String readString(Charset charset) {
        try {
            return readString(this.f25917c, charset);
        } catch (EOFException e10) {
            throw new AssertionError(e10);
        }
    }

    public final UnsafeCursor readUnsafe(UnsafeCursor unsafeCursor) {
        if (unsafeCursor.buffer != null) {
            throw new IllegalStateException("already attached to a buffer");
        }
        unsafeCursor.buffer = this;
        unsafeCursor.readWrite = false;
        return unsafeCursor;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public String readUtf8(long j10) throws EOFException {
        return readString(j10, Util.UTF_8);
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public String readUtf8LineStrict(long j10) throws EOFException {
        if (j10 < 0) {
            throw new IllegalArgumentException("limit < 0: " + j10);
        }
        long j11 = j10 != Long.MAX_VALUE ? j10 + 1 : Long.MAX_VALUE;
        long jIndexOf = indexOf((byte) 10, 0L, j11);
        if (jIndexOf != -1) {
            return a(jIndexOf);
        }
        if (j11 < size() && getByte(j11 - 1) == 13 && getByte(j11) == 10) {
            return a(j11);
        }
        Buffer buffer = new Buffer();
        copyTo(buffer, 0L, Math.min(32L, size()));
        throw new EOFException("\\n not found: limit=" + Math.min(size(), j10) + " content=" + buffer.readByteString().hex() + Typography.ellipsis);
    }

    public final ByteString snapshot(int i10) {
        return i10 == 0 ? ByteString.EMPTY : new SegmentedByteString(this, i10);
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public Buffer write(ByteString byteString) {
        if (byteString == null) {
            throw new IllegalArgumentException("byteString == null");
        }
        byteString.a(this);
        return this;
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public Buffer writeString(String str, Charset charset) {
        return writeString(str, 0, str.length(), charset);
    }

    public final Buffer writeTo(OutputStream outputStream, long j10) throws IOException {
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        }
        Util.checkOffsetAndCount(this.f25917c, 0L, j10);
        Segment segment = this.f25916b;
        while (j10 > 0) {
            int iMin = (int) Math.min(j10, segment.f25994e - segment.f25993d);
            outputStream.write(segment.f25992c, segment.f25993d, iMin);
            int i10 = segment.f25993d + iMin;
            segment.f25993d = i10;
            long j11 = iMin;
            this.f25917c -= j11;
            j10 -= j11;
            if (i10 == segment.f25994e) {
                Segment segmentPop = segment.pop();
                this.f25916b = segmentPop;
                SegmentPool.a(segment);
                segment = segmentPop;
            }
        }
        return this;
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public Buffer writeUtf8(String str, int i10, int i11) {
        int i12;
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        }
        if (i10 < 0) {
            throw new IllegalArgumentException("beginIndex < 0: " + i10);
        }
        if (i11 < i10) {
            throw new IllegalArgumentException("endIndex < beginIndex: " + i11 + " < " + i10);
        }
        if (i11 > str.length()) {
            throw new IllegalArgumentException("endIndex > string.length: " + i11 + " > " + str.length());
        }
        while (i10 < i11) {
            char cCharAt = str.charAt(i10);
            if (cCharAt < 128) {
                Segment segmentA = a(1);
                byte[] bArr = segmentA.f25992c;
                int i13 = segmentA.f25994e - i10;
                int iMin = Math.min(i11, 8192 - i13);
                int i14 = i10 + 1;
                bArr[i10 + i13] = (byte) cCharAt;
                while (i14 < iMin) {
                    char cCharAt2 = str.charAt(i14);
                    if (cCharAt2 >= 128) {
                        break;
                    }
                    bArr[i14 + i13] = (byte) cCharAt2;
                    i14++;
                }
                int i15 = segmentA.f25994e;
                int i16 = (i13 + i14) - i15;
                segmentA.f25994e = i15 + i16;
                this.f25917c += (long) i16;
                i10 = i14;
            } else {
                if (cCharAt < 2048) {
                    i12 = (cCharAt >> 6) | 192;
                } else if (cCharAt < 55296 || cCharAt > 57343) {
                    writeByte((cCharAt >> '\f') | Opcodes.SHL_INT_LIT8);
                    i12 = ((cCharAt >> 6) & 63) | 128;
                } else {
                    int i17 = i10 + 1;
                    char cCharAt3 = i17 < i11 ? str.charAt(i17) : (char) 0;
                    if (cCharAt > 56319 || cCharAt3 < 56320 || cCharAt3 > 57343) {
                        writeByte(63);
                        i10 = i17;
                    } else {
                        int i18 = (((cCharAt & 10239) << 10) | (9215 & cCharAt3)) + 65536;
                        writeByte((i18 >> 18) | MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA);
                        writeByte(((i18 >> 12) & 63) | 128);
                        writeByte(((i18 >> 6) & 63) | 128);
                        writeByte((i18 & 63) | 128);
                        i10 += 2;
                    }
                }
                writeByte(i12);
                writeByte((cCharAt & '?') | 128);
                i10++;
            }
        }
        return this;
    }

    private ByteString a(String str, ByteString byteString) {
        try {
            Mac mac = Mac.getInstance(str);
            mac.init(new SecretKeySpec(byteString.toByteArray(), str));
            Segment segment = this.f25916b;
            if (segment != null) {
                byte[] bArr = segment.f25992c;
                int i10 = segment.f25993d;
                mac.update(bArr, i10, segment.f25994e - i10);
                Segment segment2 = this.f25916b;
                while (true) {
                    segment2 = segment2.f25997h;
                    if (segment2 == this.f25916b) {
                        break;
                    }
                    byte[] bArr2 = segment2.f25992c;
                    int i11 = segment2.f25993d;
                    mac.update(bArr2, i11, segment2.f25994e - i11);
                }
            }
            return ByteString.of(mac.doFinal());
        } catch (InvalidKeyException e10) {
            throw new IllegalArgumentException(e10);
        } catch (NoSuchAlgorithmException unused) {
            throw new AssertionError();
        }
    }

    public final Buffer copyTo(OutputStream outputStream, long j10, long j11) throws IOException {
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        }
        Util.checkOffsetAndCount(this.f25917c, j10, j11);
        if (j11 == 0) {
            return this;
        }
        Segment segment = this.f25916b;
        while (true) {
            int i10 = segment.f25994e;
            int i11 = segment.f25993d;
            if (j10 < i10 - i11) {
                break;
            }
            j10 -= (long) (i10 - i11);
            segment = segment.f25997h;
        }
        while (j11 > 0) {
            int i12 = (int) (((long) segment.f25993d) + j10);
            int iMin = (int) Math.min(segment.f25994e - i12, j11);
            outputStream.write(segment.f25992c, i12, iMin);
            j11 -= (long) iMin;
            segment = segment.f25997h;
            j10 = 0;
        }
        return this;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public long indexOf(byte b10, long j10, long j11) {
        Segment segment;
        long j12 = 0;
        if (j10 < 0 || j11 < j10) {
            throw new IllegalArgumentException(String.format("size=%s fromIndex=%s toIndex=%s", Long.valueOf(this.f25917c), Long.valueOf(j10), Long.valueOf(j11)));
        }
        long j13 = this.f25917c;
        long j14 = j11 > j13 ? j13 : j11;
        if (j10 == j14 || (segment = this.f25916b) == null) {
            return -1L;
        }
        if (j13 - j10 < j10) {
            while (j13 > j10) {
                segment = segment.f25998i;
                j13 -= (long) (segment.f25994e - segment.f25993d);
            }
        } else {
            while (true) {
                long j15 = ((long) (segment.f25994e - segment.f25993d)) + j12;
                if (j15 >= j10) {
                    break;
                }
                segment = segment.f25997h;
                j12 = j15;
            }
            j13 = j12;
        }
        long j16 = j10;
        while (j13 < j14) {
            byte[] bArr = segment.f25992c;
            int iMin = (int) Math.min(segment.f25994e, (((long) segment.f25993d) + j14) - j13);
            for (int i10 = (int) ((((long) segment.f25993d) + j16) - j13); i10 < iMin; i10++) {
                if (bArr[i10] == b10) {
                    return ((long) (i10 - segment.f25993d)) + j13;
                }
            }
            j13 += (long) (segment.f25994e - segment.f25993d);
            segment = segment.f25997h;
            j16 = j13;
        }
        return -1L;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public int read(byte[] bArr, int i10, int i11) {
        Util.checkOffsetAndCount(bArr.length, i10, i11);
        Segment segment = this.f25916b;
        if (segment == null) {
            return -1;
        }
        int iMin = Math.min(i11, segment.f25994e - segment.f25993d);
        System.arraycopy(segment.f25992c, segment.f25993d, bArr, i10, iMin);
        int i12 = segment.f25993d + iMin;
        segment.f25993d = i12;
        this.f25917c -= (long) iMin;
        if (i12 == segment.f25994e) {
            this.f25916b = segment.pop();
            SegmentPool.a(segment);
        }
        return iMin;
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public Buffer write(byte[] bArr) {
        if (bArr != null) {
            return write(bArr, 0, bArr.length);
        }
        throw new IllegalArgumentException("source == null");
    }

    Segment a(int i10) {
        if (i10 < 1 || i10 > 8192) {
            throw new IllegalArgumentException();
        }
        Segment segment = this.f25916b;
        if (segment != null) {
            Segment segment2 = segment.f25998i;
            return (segment2.f25994e + i10 > 8192 || !segment2.f25996g) ? segment2.push(SegmentPool.a()) : segment2;
        }
        Segment segmentA = SegmentPool.a();
        this.f25916b = segmentA;
        segmentA.f25998i = segmentA;
        segmentA.f25997h = segmentA;
        return segmentA;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public long indexOf(ByteString byteString) throws IOException {
        return indexOf(byteString, 0L);
    }

    @Override // com.czhj.wire.okio.Source
    public long read(Buffer buffer, long j10) {
        if (buffer == null) {
            throw new IllegalArgumentException("sink == null");
        }
        if (j10 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j10);
        }
        long j11 = this.f25917c;
        if (j11 == 0) {
            return -1L;
        }
        if (j10 > j11) {
            j10 = j11;
        }
        buffer.write(this, j10);
        return j10;
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public Buffer write(byte[] bArr, int i10, int i11) {
        if (bArr == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j10 = i11;
        Util.checkOffsetAndCount(bArr.length, i10, j10);
        int i12 = i11 + i10;
        while (i10 < i12) {
            Segment segmentA = a(1);
            int iMin = Math.min(i12 - i10, 8192 - segmentA.f25994e);
            System.arraycopy(bArr, i10, segmentA.f25992c, segmentA.f25994e, iMin);
            i10 += iMin;
            segmentA.f25994e += iMin;
        }
        this.f25917c += j10;
        return this;
    }

    String a(long j10) throws EOFException {
        if (j10 > 0) {
            long j11 = j10 - 1;
            if (getByte(j11) == 13) {
                String utf8 = readUtf8(j11);
                skip(2L);
                return utf8;
            }
        }
        String utf9 = readUtf8(j10);
        skip(1L);
        return utf9;
    }

    @Override // com.czhj.wire.okio.BufferedSource
    public long indexOf(ByteString byteString, long j10) throws IOException {
        if (byteString.size() == 0) {
            throw new IllegalArgumentException("bytes is empty");
        }
        long j11 = 0;
        if (j10 < 0) {
            throw new IllegalArgumentException("fromIndex < 0");
        }
        Segment segment = this.f25916b;
        long j12 = -1;
        if (segment == null) {
            return -1L;
        }
        long j13 = this.f25917c;
        if (j13 - j10 < j10) {
            while (j13 > j10) {
                segment = segment.f25998i;
                j13 -= (long) (segment.f25994e - segment.f25993d);
            }
        } else {
            while (true) {
                long j14 = ((long) (segment.f25994e - segment.f25993d)) + j11;
                if (j14 >= j10) {
                    break;
                }
                segment = segment.f25997h;
                j11 = j14;
            }
            j13 = j11;
        }
        byte b10 = byteString.getByte(0);
        int size = byteString.size();
        long j15 = 1 + (this.f25917c - ((long) size));
        long j16 = j10;
        Segment segment2 = segment;
        long j17 = j13;
        while (j17 < j15) {
            byte[] bArr = segment2.f25992c;
            int iMin = (int) Math.min(segment2.f25994e, (((long) segment2.f25993d) + j15) - j17);
            int i10 = (int) ((((long) segment2.f25993d) + j16) - j17);
            while (i10 < iMin) {
                if (bArr[i10] == b10) {
                    if (a(segment2, i10 + 1, byteString, 1, size)) {
                        return ((long) (i10 - segment2.f25993d)) + j17;
                    }
                }
                i10++;
                bArr = bArr;
            }
            j17 += (long) (segment2.f25994e - segment2.f25993d);
            segment2 = segment2.f25997h;
            j16 = j17;
            j12 = -1;
        }
        return j12;
    }

    List<Integer> a() {
        if (this.f25916b == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        Segment segment = this.f25916b;
        arrayList.add(Integer.valueOf(segment.f25994e - segment.f25993d));
        Segment segment2 = this.f25916b;
        while (true) {
            segment2 = segment2.f25997h;
            if (segment2 == this.f25916b) {
                return arrayList;
            }
            arrayList.add(Integer.valueOf(segment2.f25994e - segment2.f25993d));
        }
    }

    @Override // com.czhj.wire.okio.BufferedSink
    public BufferedSink write(Source source, long j10) throws IOException {
        while (j10 > 0) {
            long j11 = source.read(this, j10);
            if (j11 == -1) {
                throw new EOFException();
            }
            j10 -= j11;
        }
        return this;
    }

    private void a(InputStream inputStream, long j10, boolean z10) throws IOException {
        if (inputStream == null) {
            throw new IllegalArgumentException("in == null");
        }
        while (true) {
            if (j10 <= 0 && !z10) {
                return;
            }
            Segment segmentA = a(1);
            int i10 = inputStream.read(segmentA.f25992c, segmentA.f25994e, (int) Math.min(j10, 8192 - segmentA.f25994e));
            if (i10 == -1) {
                if (segmentA.f25993d == segmentA.f25994e) {
                    this.f25916b = segmentA.pop();
                    SegmentPool.a(segmentA);
                }
                if (!z10) {
                    throw new EOFException();
                }
                return;
            }
            segmentA.f25994e += i10;
            long j11 = i10;
            this.f25917c += j11;
            j10 -= j11;
        }
    }

    private boolean a(Segment segment, int i10, ByteString byteString, int i11, int i12) {
        int i13 = segment.f25994e;
        byte[] bArr = segment.f25992c;
        while (i11 < i12) {
            if (i10 == i13) {
                segment = segment.f25997h;
                byte[] bArr2 = segment.f25992c;
                bArr = bArr2;
                i10 = segment.f25993d;
                i13 = segment.f25994e;
            }
            if (bArr[i10] != byteString.getByte(i11)) {
                return false;
            }
            i10++;
            i11++;
        }
        return true;
    }

    @Override // com.czhj.wire.okio.Sink
    public void write(Buffer buffer, long j10) {
        if (buffer == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (buffer == this) {
            throw new IllegalArgumentException("source == this");
        }
        Util.checkOffsetAndCount(buffer.f25917c, 0L, j10);
        while (j10 > 0) {
            Segment segment = buffer.f25916b;
            if (j10 < segment.f25994e - segment.f25993d) {
                Segment segment2 = this.f25916b;
                Segment segment3 = segment2 != null ? segment2.f25998i : null;
                if (segment3 != null && segment3.f25996g) {
                    if ((((long) segment3.f25994e) + j10) - ((long) (segment3.f25995f ? 0 : segment3.f25993d)) <= 8192) {
                        segment.writeTo(segment3, (int) j10);
                        buffer.f25917c -= j10;
                        this.f25917c += j10;
                        return;
                    }
                }
                buffer.f25916b = segment.split((int) j10);
            }
            Segment segment4 = buffer.f25916b;
            long j11 = segment4.f25994e - segment4.f25993d;
            buffer.f25916b = segment4.pop();
            Segment segment5 = this.f25916b;
            if (segment5 == null) {
                this.f25916b = segment4;
                segment4.f25998i = segment4;
                segment4.f25997h = segment4;
            } else {
                segment5.f25998i.push(segment4).compact();
            }
            buffer.f25917c -= j11;
            this.f25917c += j11;
            j10 -= j11;
        }
    }
}
