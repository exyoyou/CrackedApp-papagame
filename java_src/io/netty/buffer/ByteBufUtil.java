package io.netty.buffer;

import com.android.dx.io.Opcodes;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import external.org.apache.commons.lang3.d;
import io.netty.util.AsciiString;
import io.netty.util.ByteProcessor;
import io.netty.util.CharsetUtil;
import io.netty.util.concurrent.FastThreadLocal;
import io.netty.util.internal.MathUtil;
import io.netty.util.internal.ObjectPool;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.StringUtil;
import io.netty.util.internal.SystemPropertyUtil;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;
import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: loaded from: classes8.dex */
public final class ByteBufUtil {
    private static final FastThreadLocal<byte[]> BYTE_ARRAYS;
    static final ByteBufAllocator DEFAULT_ALLOCATOR;
    private static final ByteProcessor FIND_NON_ASCII;
    private static final int MAX_BYTES_PER_CHAR_UTF8;
    private static final int MAX_CHAR_BUFFER_SIZE;
    static final int MAX_TL_ARRAY_LEN = 1024;
    private static final int THREAD_LOCAL_BUFFER_SIZE;
    static final int WRITE_CHUNK_SIZE = 8192;
    private static final byte WRITE_UTF_UNKNOWN = 63;
    private static final InternalLogger logger;

    static final class ThreadLocalDirectByteBuf extends UnpooledDirectByteBuf {
        private static final ObjectPool<ThreadLocalDirectByteBuf> RECYCLER = ObjectPool.newPool(new ObjectPool.ObjectCreator<ThreadLocalDirectByteBuf>() { // from class: io.netty.buffer.ByteBufUtil.ThreadLocalDirectByteBuf.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // io.netty.util.internal.ObjectPool.ObjectCreator
            public ThreadLocalDirectByteBuf newObject(ObjectPool.Handle<ThreadLocalDirectByteBuf> handle) {
                return new ThreadLocalDirectByteBuf(handle);
            }
        });
        private final ObjectPool.Handle<ThreadLocalDirectByteBuf> handle;

        static ThreadLocalDirectByteBuf newInstance() {
            ThreadLocalDirectByteBuf threadLocalDirectByteBuf = RECYCLER.get();
            threadLocalDirectByteBuf.resetRefCnt();
            return threadLocalDirectByteBuf;
        }

        @Override // io.netty.buffer.UnpooledDirectByteBuf, io.netty.buffer.AbstractReferenceCountedByteBuf
        protected void deallocate() {
            if (capacity() > ByteBufUtil.THREAD_LOCAL_BUFFER_SIZE) {
                super.deallocate();
            } else {
                clear();
                this.handle.recycle(this);
            }
        }

        private ThreadLocalDirectByteBuf(ObjectPool.Handle<ThreadLocalDirectByteBuf> handle) {
            super(UnpooledByteBufAllocator.DEFAULT, 256, Integer.MAX_VALUE);
            this.handle = handle;
        }
    }

    static final class ThreadLocalUnsafeDirectByteBuf extends UnpooledUnsafeDirectByteBuf {
        private static final ObjectPool<ThreadLocalUnsafeDirectByteBuf> RECYCLER = ObjectPool.newPool(new ObjectPool.ObjectCreator<ThreadLocalUnsafeDirectByteBuf>() { // from class: io.netty.buffer.ByteBufUtil.ThreadLocalUnsafeDirectByteBuf.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // io.netty.util.internal.ObjectPool.ObjectCreator
            public ThreadLocalUnsafeDirectByteBuf newObject(ObjectPool.Handle<ThreadLocalUnsafeDirectByteBuf> handle) {
                return new ThreadLocalUnsafeDirectByteBuf(handle);
            }
        });
        private final ObjectPool.Handle<ThreadLocalUnsafeDirectByteBuf> handle;

        static ThreadLocalUnsafeDirectByteBuf newInstance() {
            ThreadLocalUnsafeDirectByteBuf threadLocalUnsafeDirectByteBuf = RECYCLER.get();
            threadLocalUnsafeDirectByteBuf.resetRefCnt();
            return threadLocalUnsafeDirectByteBuf;
        }

        @Override // io.netty.buffer.UnpooledDirectByteBuf, io.netty.buffer.AbstractReferenceCountedByteBuf
        protected void deallocate() {
            if (capacity() > ByteBufUtil.THREAD_LOCAL_BUFFER_SIZE) {
                super.deallocate();
            } else {
                clear();
                this.handle.recycle(this);
            }
        }

        private ThreadLocalUnsafeDirectByteBuf(ObjectPool.Handle<ThreadLocalUnsafeDirectByteBuf> handle) {
            super(UnpooledByteBufAllocator.DEFAULT, 256, Integer.MAX_VALUE);
            this.handle = handle;
        }
    }

    static {
        ByteBufAllocator byteBufAllocator;
        InternalLogger internalLoggerFactory = InternalLoggerFactory.getInstance((Class<?>) ByteBufUtil.class);
        logger = internalLoggerFactory;
        BYTE_ARRAYS = new FastThreadLocal<byte[]>() { // from class: io.netty.buffer.ByteBufUtil.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // io.netty.util.concurrent.FastThreadLocal
            public byte[] initialValue() throws Exception {
                return PlatformDependent.allocateUninitializedArray(1024);
            }
        };
        MAX_BYTES_PER_CHAR_UTF8 = (int) CharsetUtil.encoder(CharsetUtil.UTF_8).maxBytesPerChar();
        String strTrim = SystemPropertyUtil.get("io.netty.allocator.type", PlatformDependent.isAndroid() ? "unpooled" : "pooled").toLowerCase(Locale.US).trim();
        if ("unpooled".equals(strTrim)) {
            byteBufAllocator = UnpooledByteBufAllocator.DEFAULT;
            internalLoggerFactory.debug("-Dio.netty.allocator.type: {}", strTrim);
        } else if ("pooled".equals(strTrim)) {
            byteBufAllocator = PooledByteBufAllocator.DEFAULT;
            internalLoggerFactory.debug("-Dio.netty.allocator.type: {}", strTrim);
        } else {
            byteBufAllocator = PooledByteBufAllocator.DEFAULT;
            internalLoggerFactory.debug("-Dio.netty.allocator.type: pooled (unknown: {})", strTrim);
        }
        DEFAULT_ALLOCATOR = byteBufAllocator;
        int i10 = SystemPropertyUtil.getInt("io.netty.threadLocalDirectBufferSize", 0);
        THREAD_LOCAL_BUFFER_SIZE = i10;
        internalLoggerFactory.debug("-Dio.netty.threadLocalDirectBufferSize: {}", Integer.valueOf(i10));
        int i11 = SystemPropertyUtil.getInt("io.netty.maxThreadLocalCharBufferSize", 16384);
        MAX_CHAR_BUFFER_SIZE = i11;
        internalLoggerFactory.debug("-Dio.netty.maxThreadLocalCharBufferSize: {}", Integer.valueOf(i11));
        FIND_NON_ASCII = new ByteProcessor() { // from class: io.netty.buffer.ByteBufUtil.2
            @Override // io.netty.util.ByteProcessor
            public boolean process(byte b10) {
                return b10 >= 0;
            }
        };
    }

    private ByteBufUtil() {
    }

    public static void appendPrettyHexDump(StringBuilder sb2, ByteBuf byteBuf) {
        appendPrettyHexDump(sb2, byteBuf, byteBuf.readerIndex(), byteBuf.readableBytes());
    }

    private static CharSequence checkCharSequenceBounds(CharSequence charSequence, int i10, int i11) {
        if (!MathUtil.isOutOfBounds(i10, i11 - i10, charSequence.length())) {
            return charSequence;
        }
        throw new IndexOutOfBoundsException("expected: 0 <= start(" + i10 + ") <= end (" + i11 + ") <= seq.length(" + charSequence.length() + ')');
    }

    public static int compare(ByteBuf byteBuf, ByteBuf byteBuf2) {
        long jCompareUintBigEndianA;
        int i10 = byteBuf.readableBytes();
        int i11 = byteBuf2.readableBytes();
        int iMin = Math.min(i10, i11);
        int i12 = iMin >>> 2;
        int i13 = iMin & 3;
        int i14 = byteBuf.readerIndex();
        int i15 = byteBuf2.readerIndex();
        if (i12 > 0) {
            boolean z10 = byteBuf.order() == ByteOrder.BIG_ENDIAN;
            int i16 = i12 << 2;
            if (byteBuf.order() == byteBuf2.order()) {
                jCompareUintBigEndianA = z10 ? compareUintBigEndian(byteBuf, byteBuf2, i14, i15, i16) : compareUintLittleEndian(byteBuf, byteBuf2, i14, i15, i16);
            } else {
                jCompareUintBigEndianA = z10 ? compareUintBigEndianA(byteBuf, byteBuf2, i14, i15, i16) : compareUintBigEndianB(byteBuf, byteBuf2, i14, i15, i16);
            }
            if (jCompareUintBigEndianA != 0) {
                return (int) Math.min(2147483647L, Math.max(-2147483648L, jCompareUintBigEndianA));
            }
            i14 += i16;
            i15 += i16;
        }
        int i17 = i13 + i14;
        while (i14 < i17) {
            int unsignedByte = byteBuf.getUnsignedByte(i14) - byteBuf2.getUnsignedByte(i15);
            if (unsignedByte != 0) {
                return unsignedByte;
            }
            i14++;
            i15++;
        }
        return i10 - i11;
    }

    private static long compareUintBigEndian(ByteBuf byteBuf, ByteBuf byteBuf2, int i10, int i11, int i12) {
        int i13 = i12 + i10;
        while (i10 < i13) {
            long unsignedInt = byteBuf.getUnsignedInt(i10) - byteBuf2.getUnsignedInt(i11);
            if (unsignedInt != 0) {
                return unsignedInt;
            }
            i10 += 4;
            i11 += 4;
        }
        return 0L;
    }

    private static long compareUintBigEndianA(ByteBuf byteBuf, ByteBuf byteBuf2, int i10, int i11, int i12) {
        int i13 = i12 + i10;
        while (i10 < i13) {
            long unsignedInt = byteBuf.getUnsignedInt(i10) - byteBuf2.getUnsignedIntLE(i11);
            if (unsignedInt != 0) {
                return unsignedInt;
            }
            i10 += 4;
            i11 += 4;
        }
        return 0L;
    }

    private static long compareUintBigEndianB(ByteBuf byteBuf, ByteBuf byteBuf2, int i10, int i11, int i12) {
        int i13 = i12 + i10;
        while (i10 < i13) {
            long unsignedIntLE = byteBuf.getUnsignedIntLE(i10) - byteBuf2.getUnsignedInt(i11);
            if (unsignedIntLE != 0) {
                return unsignedIntLE;
            }
            i10 += 4;
            i11 += 4;
        }
        return 0L;
    }

    private static long compareUintLittleEndian(ByteBuf byteBuf, ByteBuf byteBuf2, int i10, int i11, int i12) {
        int i13 = i12 + i10;
        while (i10 < i13) {
            long unsignedIntLE = byteBuf.getUnsignedIntLE(i10) - byteBuf2.getUnsignedIntLE(i11);
            if (unsignedIntLE != 0) {
                return unsignedIntLE;
            }
            i10 += 4;
            i11 += 4;
        }
        return 0L;
    }

    public static void copy(AsciiString asciiString, ByteBuf byteBuf) {
        copy(asciiString, 0, byteBuf, asciiString.length());
    }

    public static byte decodeHexByte(CharSequence charSequence, int i10) {
        return StringUtil.decodeHexByte(charSequence, i10);
    }

    public static byte[] decodeHexDump(CharSequence charSequence) {
        return StringUtil.decodeHexDump(charSequence, 0, charSequence.length());
    }

    static String decodeString(ByteBuf byteBuf, int i10, int i11, Charset charset) {
        byte[] bArrThreadLocalTempArray;
        int iArrayOffset;
        if (i11 == 0) {
            return "";
        }
        if (byteBuf.hasArray()) {
            bArrThreadLocalTempArray = byteBuf.array();
            iArrayOffset = byteBuf.arrayOffset() + i10;
        } else {
            bArrThreadLocalTempArray = threadLocalTempArray(i11);
            byteBuf.getBytes(i10, bArrThreadLocalTempArray, 0, i11);
            iArrayOffset = 0;
        }
        return CharsetUtil.US_ASCII.equals(charset) ? new String(bArrThreadLocalTempArray, 0, iArrayOffset, i11) : new String(bArrThreadLocalTempArray, iArrayOffset, i11, charset);
    }

    public static ByteBuf encodeString(ByteBufAllocator byteBufAllocator, CharBuffer charBuffer, Charset charset) {
        return encodeString0(byteBufAllocator, false, charBuffer, charset, 0);
    }

    static ByteBuf encodeString0(ByteBufAllocator byteBufAllocator, boolean z10, CharBuffer charBuffer, Charset charset, int i10) {
        CharsetEncoder charsetEncoderEncoder = CharsetUtil.encoder(charset);
        int iRemaining = ((int) (((double) charBuffer.remaining()) * ((double) charsetEncoderEncoder.maxBytesPerChar()))) + i10;
        ByteBuf byteBufHeapBuffer = z10 ? byteBufAllocator.heapBuffer(iRemaining) : byteBufAllocator.buffer(iRemaining);
        try {
            try {
                ByteBuffer byteBufferInternalNioBuffer = byteBufHeapBuffer.internalNioBuffer(byteBufHeapBuffer.readerIndex(), iRemaining);
                int iPosition = byteBufferInternalNioBuffer.position();
                CoderResult coderResultEncode = charsetEncoderEncoder.encode(charBuffer, byteBufferInternalNioBuffer, true);
                if (!coderResultEncode.isUnderflow()) {
                    coderResultEncode.throwException();
                }
                CoderResult coderResultFlush = charsetEncoderEncoder.flush(byteBufferInternalNioBuffer);
                if (!coderResultFlush.isUnderflow()) {
                    coderResultFlush.throwException();
                }
                byteBufHeapBuffer.writerIndex((byteBufHeapBuffer.writerIndex() + byteBufferInternalNioBuffer.position()) - iPosition);
                return byteBufHeapBuffer;
            } catch (CharacterCodingException e10) {
                throw new IllegalStateException(e10);
            }
        } catch (Throwable th) {
            byteBufHeapBuffer.release();
            throw th;
        }
    }

    public static boolean ensureWritableSuccess(int i10) {
        return i10 == 0 || i10 == 2;
    }

    public static boolean equals(ByteBuf byteBuf, int i10, ByteBuf byteBuf2, int i11, int i12) {
        if (i10 < 0 || i11 < 0 || i12 < 0) {
            throw new IllegalArgumentException("All indexes and lengths must be non-negative");
        }
        if (byteBuf.writerIndex() - i12 < i10 || byteBuf2.writerIndex() - i12 < i11) {
            return false;
        }
        int i13 = i12 >>> 3;
        if (byteBuf.order() == byteBuf2.order()) {
            while (i13 > 0) {
                if (byteBuf.getLong(i10) != byteBuf2.getLong(i11)) {
                    return false;
                }
                i10 += 8;
                i11 += 8;
                i13--;
            }
        } else {
            while (i13 > 0) {
                if (byteBuf.getLong(i10) != swapLong(byteBuf2.getLong(i11))) {
                    return false;
                }
                i10 += 8;
                i11 += 8;
                i13--;
            }
        }
        for (int i14 = i12 & 7; i14 > 0; i14--) {
            if (byteBuf.getByte(i10) != byteBuf2.getByte(i11)) {
                return false;
            }
            i10++;
            i11++;
        }
        return true;
    }

    private static int firstIndexOf(ByteBuf byteBuf, int i10, int i11, byte b10) {
        int iMax = Math.max(i10, 0);
        if (iMax >= i11 || byteBuf.capacity() == 0) {
            return -1;
        }
        return byteBuf.forEachByte(iMax, i11 - iMax, new ByteProcessor.IndexOfProcessor(b10));
    }

    public static byte[] getBytes(ByteBuf byteBuf) {
        return getBytes(byteBuf, byteBuf.readerIndex(), byteBuf.readableBytes());
    }

    public static int hashCode(ByteBuf byteBuf) {
        int iSwapInt;
        int i10 = byteBuf.readableBytes();
        int i11 = i10 >>> 2;
        int i12 = i10 & 3;
        int i13 = byteBuf.readerIndex();
        if (byteBuf.order() == ByteOrder.BIG_ENDIAN) {
            iSwapInt = 1;
            while (i11 > 0) {
                iSwapInt = (iSwapInt * 31) + byteBuf.getInt(i13);
                i13 += 4;
                i11--;
            }
        } else {
            iSwapInt = 1;
            while (i11 > 0) {
                iSwapInt = (iSwapInt * 31) + swapInt(byteBuf.getInt(i13));
                i13 += 4;
                i11--;
            }
        }
        while (i12 > 0) {
            iSwapInt = (iSwapInt * 31) + byteBuf.getByte(i13);
            i12--;
            i13++;
        }
        if (iSwapInt == 0) {
            return 1;
        }
        return iSwapInt;
    }

    public static String hexDump(ByteBuf byteBuf) {
        return hexDump(byteBuf, byteBuf.readerIndex(), byteBuf.readableBytes());
    }

    public static int indexOf(ByteBuf byteBuf, ByteBuf byteBuf2) {
        int i10 = (byteBuf2.readableBytes() - byteBuf.readableBytes()) + 1;
        for (int i11 = 0; i11 < i10; i11++) {
            if (equals(byteBuf, byteBuf.readerIndex(), byteBuf2, byteBuf2.readerIndex() + i11, byteBuf.readableBytes())) {
                return byteBuf2.readerIndex() + i11;
            }
        }
        return -1;
    }

    private static boolean isAscii(ByteBuf byteBuf, int i10, int i11) {
        return byteBuf.forEachByte(i10, i11, FIND_NON_ASCII) == -1;
    }

    public static boolean isText(ByteBuf byteBuf, Charset charset) {
        return isText(byteBuf, byteBuf.readerIndex(), byteBuf.readableBytes(), charset);
    }

    private static boolean isUtf8(ByteBuf byteBuf, int i10, int i11) {
        int i12;
        int i13 = i11 + i10;
        while (i10 < i13) {
            int i14 = i10 + 1;
            byte b10 = byteBuf.getByte(i10);
            if ((b10 & 128) == 0) {
                i10 = i14;
            } else if ((b10 & 224) == 192) {
                if (i14 >= i13) {
                    return false;
                }
                int i15 = i14 + 1;
                if ((byteBuf.getByte(i14) & 192) != 128 || (b10 & 255) < 194) {
                    return false;
                }
                i10 = i15;
            } else if ((b10 & 240) == 224) {
                if (i14 > i13 - 2) {
                    return false;
                }
                int i16 = i14 + 1;
                byte b11 = byteBuf.getByte(i14);
                int i17 = i16 + 1;
                byte b12 = byteBuf.getByte(i16);
                if ((b11 & 192) != 128 || (b12 & 192) != 128) {
                    return false;
                }
                int i18 = b10 & 15;
                if (i18 == 0 && (b11 & 255) < 160) {
                    return false;
                }
                if (i18 == 13 && (b11 & 255) > 159) {
                    return false;
                }
                i10 = i17;
            } else {
                if ((b10 & 248) != 240 || i14 > i13 - 3) {
                    return false;
                }
                int i19 = i14 + 1;
                byte b13 = byteBuf.getByte(i14);
                int i20 = i19 + 1;
                byte b14 = byteBuf.getByte(i19);
                int i21 = i20 + 1;
                byte b15 = byteBuf.getByte(i20);
                if ((b13 & 192) != 128 || (b14 & 192) != 128 || (b15 & 192) != 128 || (i12 = b10 & 255) > 244 || ((i12 == 240 && (b13 & 255) < 144) || (i12 == 244 && (b13 & 255) > 143))) {
                    return false;
                }
                i10 = i21;
            }
        }
        return true;
    }

    private static int lastIndexOf(ByteBuf byteBuf, int i10, int i11, byte b10) {
        int iCapacity = byteBuf.capacity();
        int iMin = Math.min(i10, iCapacity);
        if (iMin < 0 || iCapacity == 0) {
            return -1;
        }
        return byteBuf.forEachByteDesc(i11, iMin - i11, new ByteProcessor.IndexOfProcessor(b10));
    }

    public static String prettyHexDump(ByteBuf byteBuf) {
        return prettyHexDump(byteBuf, byteBuf.readerIndex(), byteBuf.readableBytes());
    }

    public static ByteBuf readBytes(ByteBufAllocator byteBufAllocator, ByteBuf byteBuf, int i10) {
        ByteBuf byteBufBuffer = byteBufAllocator.buffer(i10);
        try {
            byteBuf.readBytes(byteBufBuffer);
            return byteBufBuffer;
        } catch (Throwable th) {
            byteBufBuffer.release();
            throw th;
        }
    }

    public static int reserveAndWriteUtf8(ByteBuf byteBuf, CharSequence charSequence, int i10) {
        return reserveAndWriteUtf8Seq(byteBuf, charSequence, 0, charSequence.length(), i10);
    }

    private static int reserveAndWriteUtf8Seq(ByteBuf byteBuf, CharSequence charSequence, int i10, int i11, int i12) {
        while (true) {
            if (byteBuf instanceof WrappedCompositeByteBuf) {
                byteBuf = byteBuf.unwrap();
            } else {
                if (byteBuf instanceof AbstractByteBuf) {
                    AbstractByteBuf abstractByteBuf = (AbstractByteBuf) byteBuf;
                    abstractByteBuf.ensureWritable0(i12);
                    int iWriteUtf8 = writeUtf8(abstractByteBuf, abstractByteBuf.writerIndex, charSequence, i10, i11);
                    abstractByteBuf.writerIndex += iWriteUtf8;
                    return iWriteUtf8;
                }
                if (!(byteBuf instanceof WrappedByteBuf)) {
                    byte[] bytes = charSequence.subSequence(i10, i11).toString().getBytes(CharsetUtil.UTF_8);
                    byteBuf.writeBytes(bytes);
                    return bytes.length;
                }
                byteBuf = byteBuf.unwrap();
            }
        }
    }

    public static ByteBuf setShortBE(ByteBuf byteBuf, int i10, int i11) {
        return byteBuf.order() == ByteOrder.BIG_ENDIAN ? byteBuf.setShort(i10, i11) : byteBuf.setShortLE(i10, i11);
    }

    public static int swapInt(int i10) {
        return Integer.reverseBytes(i10);
    }

    public static long swapLong(long j10) {
        return Long.reverseBytes(j10);
    }

    public static int swapMedium(int i10) {
        int i11 = ((i10 >>> 16) & 255) | ((i10 << 16) & 16711680) | (65280 & i10);
        return (8388608 & i11) != 0 ? i11 | (-16777216) : i11;
    }

    public static short swapShort(short s10) {
        return Short.reverseBytes(s10);
    }

    public static ByteBuf threadLocalDirectBuffer() {
        if (THREAD_LOCAL_BUFFER_SIZE <= 0) {
            return null;
        }
        return PlatformDependent.hasUnsafe() ? ThreadLocalUnsafeDirectByteBuf.newInstance() : ThreadLocalDirectByteBuf.newInstance();
    }

    static byte[] threadLocalTempArray(int i10) {
        return i10 <= 1024 ? BYTE_ARRAYS.get() : PlatformDependent.allocateUninitializedArray(i10);
    }

    private static int utf8ByteCount(CharSequence charSequence, int i10, int i11) {
        if (charSequence instanceof AsciiString) {
            return i11 - i10;
        }
        int i12 = i10;
        while (i12 < i11 && charSequence.charAt(i12) < 128) {
            i12++;
        }
        int i13 = i12 - i10;
        return i12 < i11 ? i13 + utf8BytesNonAscii(charSequence, i12, i11) : i13;
    }

    public static int utf8Bytes(CharSequence charSequence) {
        return utf8ByteCount(charSequence, 0, charSequence.length());
    }

    private static int utf8BytesNonAscii(CharSequence charSequence, int i10, int i11) {
        int i12 = 0;
        while (i10 < i11) {
            char cCharAt = charSequence.charAt(i10);
            if (cCharAt < 2048) {
                i12 += ((127 - cCharAt) >>> 31) + 1;
            } else if (!StringUtil.isSurrogate(cCharAt)) {
                i12 += 3;
            } else if (Character.isHighSurrogate(cCharAt)) {
                i10++;
                if (i10 == i11) {
                    return i12 + 1;
                }
                i12 = !Character.isLowSurrogate(charSequence.charAt(i10)) ? i12 + 2 : i12 + 4;
            } else {
                i12++;
            }
            i10++;
        }
        return i12;
    }

    public static int utf8MaxBytes(int i10) {
        return i10 * MAX_BYTES_PER_CHAR_UTF8;
    }

    public static ByteBuf writeAscii(ByteBufAllocator byteBufAllocator, CharSequence charSequence) {
        ByteBuf byteBufBuffer = byteBufAllocator.buffer(charSequence.length());
        writeAscii(byteBufBuffer, charSequence);
        return byteBufBuffer;
    }

    public static ByteBuf writeMediumBE(ByteBuf byteBuf, int i10) {
        return byteBuf.order() == ByteOrder.BIG_ENDIAN ? byteBuf.writeMedium(i10) : byteBuf.writeMediumLE(i10);
    }

    public static ByteBuf writeShortBE(ByteBuf byteBuf, int i10) {
        return byteBuf.order() == ByteOrder.BIG_ENDIAN ? byteBuf.writeShort(i10) : byteBuf.writeShortLE(i10);
    }

    public static ByteBuf writeUtf8(ByteBufAllocator byteBufAllocator, CharSequence charSequence) {
        ByteBuf byteBufBuffer = byteBufAllocator.buffer(utf8MaxBytes(charSequence));
        writeUtf8(byteBufBuffer, charSequence);
        return byteBufBuffer;
    }

    private static int writeUtf8Surrogate(AbstractByteBuf abstractByteBuf, int i10, char c10, char c11) {
        if (!Character.isLowSurrogate(c11)) {
            int i11 = i10 + 1;
            abstractByteBuf._setByte(i10, 63);
            int i12 = i11 + 1;
            if (Character.isHighSurrogate(c11)) {
                c11 = '?';
            }
            abstractByteBuf._setByte(i11, c11);
            return i12;
        }
        int codePoint = Character.toCodePoint(c10, c11);
        int i13 = i10 + 1;
        abstractByteBuf._setByte(i10, (byte) ((codePoint >> 18) | MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA));
        int i14 = i13 + 1;
        abstractByteBuf._setByte(i13, (byte) (((codePoint >> 12) & 63) | 128));
        int i15 = i14 + 1;
        abstractByteBuf._setByte(i14, (byte) (((codePoint >> 6) & 63) | 128));
        int i16 = i15 + 1;
        abstractByteBuf._setByte(i15, (byte) ((codePoint & 63) | 128));
        return i16;
    }

    public static void appendPrettyHexDump(StringBuilder sb2, ByteBuf byteBuf, int i10, int i11) {
        HexUtil.appendPrettyHexDump(sb2, byteBuf, i10, i11);
    }

    public static void copy(AsciiString asciiString, int i10, ByteBuf byteBuf, int i11, int i12) {
        if (!MathUtil.isOutOfBounds(i10, i12, asciiString.length())) {
            ((ByteBuf) ObjectUtil.checkNotNull(byteBuf, "dst")).setBytes(i11, asciiString.array(), i10 + asciiString.arrayOffset(), i12);
            return;
        }
        throw new IndexOutOfBoundsException("expected: 0 <= srcIdx(" + i10 + ") <= srcIdx + length(" + i12 + ") <= srcLen(" + asciiString.length() + ')');
    }

    public static byte[] decodeHexDump(CharSequence charSequence, int i10, int i11) {
        return StringUtil.decodeHexDump(charSequence, i10, i11);
    }

    public static ByteBuf encodeString(ByteBufAllocator byteBufAllocator, CharBuffer charBuffer, Charset charset, int i10) {
        return encodeString0(byteBufAllocator, false, charBuffer, charset, i10);
    }

    public static byte[] getBytes(ByteBuf byteBuf, int i10, int i11) {
        return getBytes(byteBuf, i10, i11, true);
    }

    public static String hexDump(ByteBuf byteBuf, int i10, int i11) {
        return HexUtil.hexDump(byteBuf, i10, i11);
    }

    public static boolean isText(ByteBuf byteBuf, int i10, int i11, Charset charset) {
        ObjectUtil.checkNotNull(byteBuf, "buf");
        ObjectUtil.checkNotNull(charset, "charset");
        int i12 = byteBuf.readerIndex() + byteBuf.readableBytes();
        if (i10 < 0 || i11 < 0 || i10 > i12 - i11) {
            throw new IndexOutOfBoundsException("index: " + i10 + " length: " + i11);
        }
        if (charset.equals(CharsetUtil.UTF_8)) {
            return isUtf8(byteBuf, i10, i11);
        }
        if (charset.equals(CharsetUtil.US_ASCII)) {
            return isAscii(byteBuf, i10, i11);
        }
        CodingErrorAction codingErrorAction = CodingErrorAction.REPORT;
        CharsetDecoder charsetDecoderDecoder = CharsetUtil.decoder(charset, codingErrorAction, codingErrorAction);
        try {
            if (byteBuf.nioBufferCount() == 1) {
                charsetDecoderDecoder.decode(byteBuf.nioBuffer(i10, i11));
            } else {
                ByteBuf byteBufHeapBuffer = byteBuf.alloc().heapBuffer(i11);
                try {
                    byteBufHeapBuffer.writeBytes(byteBuf, i10, i11);
                    charsetDecoderDecoder.decode(byteBufHeapBuffer.internalNioBuffer(byteBufHeapBuffer.readerIndex(), i11));
                } finally {
                    byteBufHeapBuffer.release();
                }
            }
            return true;
        } catch (CharacterCodingException unused) {
            return false;
        }
    }

    public static String prettyHexDump(ByteBuf byteBuf, int i10, int i11) {
        return HexUtil.prettyHexDump(byteBuf, i10, i11);
    }

    public static int reserveAndWriteUtf8(ByteBuf byteBuf, CharSequence charSequence, int i10, int i11, int i12) {
        return reserveAndWriteUtf8Seq(byteBuf, checkCharSequenceBounds(charSequence, i10, i11), i10, i11, i12);
    }

    public static int utf8Bytes(CharSequence charSequence, int i10, int i11) {
        return utf8ByteCount(checkCharSequenceBounds(charSequence, i10, i11), i10, i11);
    }

    public static int utf8MaxBytes(CharSequence charSequence) {
        return utf8MaxBytes(charSequence.length());
    }

    public static byte[] getBytes(ByteBuf byteBuf, int i10, int i11, boolean z10) {
        int iCapacity = byteBuf.capacity();
        if (!MathUtil.isOutOfBounds(i10, i11, iCapacity)) {
            if (!byteBuf.hasArray()) {
                byte[] bArrAllocateUninitializedArray = PlatformDependent.allocateUninitializedArray(i11);
                byteBuf.getBytes(i10, bArrAllocateUninitializedArray);
                return bArrAllocateUninitializedArray;
            }
            if (!z10 && i10 == 0 && i11 == iCapacity) {
                return byteBuf.array();
            }
            int iArrayOffset = byteBuf.arrayOffset() + i10;
            return Arrays.copyOfRange(byteBuf.array(), iArrayOffset, i11 + iArrayOffset);
        }
        throw new IndexOutOfBoundsException("expected: 0 <= start(" + i10 + ") <= start + length(" + i11 + ") <= buf.capacity(" + iCapacity + ')');
    }

    public static String hexDump(byte[] bArr) {
        return hexDump(bArr, 0, bArr.length);
    }

    public static int writeAscii(ByteBuf byteBuf, CharSequence charSequence) {
        int length = charSequence.length();
        if (charSequence instanceof AsciiString) {
            AsciiString asciiString = (AsciiString) charSequence;
            byteBuf.writeBytes(asciiString.array(), asciiString.arrayOffset(), length);
            return length;
        }
        while (true) {
            if (byteBuf instanceof WrappedCompositeByteBuf) {
                byteBuf = byteBuf.unwrap();
            } else {
                if (byteBuf instanceof AbstractByteBuf) {
                    AbstractByteBuf abstractByteBuf = (AbstractByteBuf) byteBuf;
                    abstractByteBuf.ensureWritable0(length);
                    int iWriteAscii = writeAscii(abstractByteBuf, abstractByteBuf.writerIndex, charSequence, length);
                    abstractByteBuf.writerIndex += iWriteAscii;
                    return iWriteAscii;
                }
                if (byteBuf instanceof WrappedByteBuf) {
                    byteBuf = byteBuf.unwrap();
                } else {
                    byte[] bytes = charSequence.toString().getBytes(CharsetUtil.US_ASCII);
                    byteBuf.writeBytes(bytes);
                    return bytes.length;
                }
            }
        }
    }

    public static int writeUtf8(ByteBuf byteBuf, CharSequence charSequence) {
        int length = charSequence.length();
        return reserveAndWriteUtf8Seq(byteBuf, charSequence, 0, length, utf8MaxBytes(length));
    }

    public static String hexDump(byte[] bArr, int i10, int i11) {
        return HexUtil.hexDump(bArr, i10, i11);
    }

    static void readBytes(ByteBufAllocator byteBufAllocator, ByteBuffer byteBuffer, int i10, int i11, OutputStream outputStream) throws IOException {
        if (byteBuffer.hasArray()) {
            outputStream.write(byteBuffer.array(), i10 + byteBuffer.arrayOffset(), i11);
            return;
        }
        int iMin = Math.min(i11, 8192);
        byteBuffer.clear().position(i10);
        if (i11 > 1024 && byteBufAllocator.isDirectBufferPooled()) {
            ByteBuf byteBufHeapBuffer = byteBufAllocator.heapBuffer(iMin);
            try {
                getBytes(byteBuffer, byteBufHeapBuffer.array(), byteBufHeapBuffer.arrayOffset(), iMin, outputStream, i11);
                return;
            } finally {
                byteBufHeapBuffer.release();
            }
        }
        getBytes(byteBuffer, threadLocalTempArray(iMin), 0, iMin, outputStream, i11);
    }

    public static int writeUtf8(ByteBuf byteBuf, CharSequence charSequence, int i10, int i11) {
        checkCharSequenceBounds(charSequence, i10, i11);
        return reserveAndWriteUtf8Seq(byteBuf, charSequence, i10, i11, utf8MaxBytes(i11 - i10));
    }

    private static final class HexUtil {
        private static final char[] BYTE2CHAR = new char[256];
        private static final char[] HEXDUMP_TABLE = new char[1024];
        private static final String[] HEXPADDING = new String[16];
        private static final String[] HEXDUMP_ROWPREFIXES = new String[4096];
        private static final String[] BYTE2HEX = new String[256];
        private static final String[] BYTEPADDING = new String[16];

        static {
            char[] charArray = "0123456789abcdef".toCharArray();
            int i10 = 0;
            for (int i11 = 0; i11 < 256; i11++) {
                char[] cArr = HEXDUMP_TABLE;
                int i12 = i11 << 1;
                cArr[i12] = charArray[(i11 >>> 4) & 15];
                cArr[i12 + 1] = charArray[i11 & 15];
            }
            int i13 = 0;
            while (true) {
                String[] strArr = HEXPADDING;
                if (i13 >= strArr.length) {
                    break;
                }
                int length = strArr.length - i13;
                StringBuilder sb2 = new StringBuilder(length * 3);
                for (int i14 = 0; i14 < length; i14++) {
                    sb2.append("   ");
                }
                HEXPADDING[i13] = sb2.toString();
                i13++;
            }
            int i15 = 0;
            while (true) {
                String[] strArr2 = HEXDUMP_ROWPREFIXES;
                if (i15 >= strArr2.length) {
                    break;
                }
                StringBuilder sb3 = new StringBuilder(12);
                sb3.append(StringUtil.NEWLINE);
                sb3.append(Long.toHexString((((long) (i15 << 4)) & 4294967295L) | 4294967296L));
                sb3.setCharAt(sb3.length() - 9, '|');
                sb3.append('|');
                strArr2[i15] = sb3.toString();
                i15++;
            }
            int i16 = 0;
            while (true) {
                String[] strArr3 = BYTE2HEX;
                if (i16 >= strArr3.length) {
                    break;
                }
                strArr3[i16] = ' ' + StringUtil.byteToHexStringPadded(i16);
                i16++;
            }
            int i17 = 0;
            while (true) {
                String[] strArr4 = BYTEPADDING;
                if (i17 >= strArr4.length) {
                    break;
                }
                int length2 = strArr4.length - i17;
                StringBuilder sb4 = new StringBuilder(length2);
                for (int i18 = 0; i18 < length2; i18++) {
                    sb4.append(' ');
                }
                BYTEPADDING[i17] = sb4.toString();
                i17++;
            }
            while (true) {
                char[] cArr2 = BYTE2CHAR;
                if (i10 >= cArr2.length) {
                    return;
                }
                if (i10 <= 31 || i10 >= 127) {
                    cArr2[i10] = d.f90941a;
                } else {
                    cArr2[i10] = (char) i10;
                }
                i10++;
            }
        }

        private HexUtil() {
        }

        private static void appendHexDumpRowPrefix(StringBuilder sb2, int i10, int i11) {
            String[] strArr = HEXDUMP_ROWPREFIXES;
            if (i10 < strArr.length) {
                sb2.append(strArr[i10]);
                return;
            }
            sb2.append(StringUtil.NEWLINE);
            sb2.append(Long.toHexString((((long) i11) & 4294967295L) | 4294967296L));
            sb2.setCharAt(sb2.length() - 9, '|');
            sb2.append('|');
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void appendPrettyHexDump(StringBuilder sb2, ByteBuf byteBuf, int i10, int i11) {
            if (MathUtil.isOutOfBounds(i10, i11, byteBuf.capacity())) {
                throw new IndexOutOfBoundsException("expected: 0 <= offset(" + i10 + ") <= offset + length(" + i11 + ") <= buf.capacity(" + byteBuf.capacity() + ')');
            }
            if (i11 == 0) {
                return;
            }
            StringBuilder sb3 = new StringBuilder();
            sb3.append("         +-------------------------------------------------+");
            String str = StringUtil.NEWLINE;
            sb3.append(str);
            sb3.append("         |  0  1  2  3  4  5  6  7  8  9  a  b  c  d  e  f |");
            sb3.append(str);
            sb3.append("+--------+-------------------------------------------------+----------------+");
            sb2.append(sb3.toString());
            int i12 = i11 >>> 4;
            int i13 = i11 & 15;
            for (int i14 = 0; i14 < i12; i14++) {
                int i15 = (i14 << 4) + i10;
                appendHexDumpRowPrefix(sb2, i14, i15);
                int i16 = i15 + 16;
                for (int i17 = i15; i17 < i16; i17++) {
                    sb2.append(BYTE2HEX[byteBuf.getUnsignedByte(i17)]);
                }
                sb2.append(" |");
                while (i15 < i16) {
                    sb2.append(BYTE2CHAR[byteBuf.getUnsignedByte(i15)]);
                    i15++;
                }
                sb2.append('|');
            }
            if (i13 != 0) {
                int i18 = (i12 << 4) + i10;
                appendHexDumpRowPrefix(sb2, i12, i18);
                int i19 = i18 + i13;
                for (int i20 = i18; i20 < i19; i20++) {
                    sb2.append(BYTE2HEX[byteBuf.getUnsignedByte(i20)]);
                }
                sb2.append(HEXPADDING[i13]);
                sb2.append(" |");
                while (i18 < i19) {
                    sb2.append(BYTE2CHAR[byteBuf.getUnsignedByte(i18)]);
                    i18++;
                }
                sb2.append(BYTEPADDING[i13]);
                sb2.append('|');
            }
            sb2.append(StringUtil.NEWLINE + "+--------+-------------------------------------------------+----------------+");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static String hexDump(ByteBuf byteBuf, int i10, int i11) {
            ObjectUtil.checkPositiveOrZero(i11, "length");
            if (i11 == 0) {
                return "";
            }
            int i12 = i10 + i11;
            char[] cArr = new char[i11 << 1];
            int i13 = 0;
            while (i10 < i12) {
                System.arraycopy(HEXDUMP_TABLE, byteBuf.getUnsignedByte(i10) << 1, cArr, i13, 2);
                i10++;
                i13 += 2;
            }
            return new String(cArr);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static String prettyHexDump(ByteBuf byteBuf, int i10, int i11) {
            if (i11 == 0) {
                return "";
            }
            StringBuilder sb2 = new StringBuilder(((i11 / 16) + ((i11 & 15) == 0 ? 0 : 1) + 4) * 80);
            appendPrettyHexDump(sb2, byteBuf, i10, i11);
            return sb2.toString();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static String hexDump(byte[] bArr, int i10, int i11) {
            ObjectUtil.checkPositiveOrZero(i11, "length");
            if (i11 == 0) {
                return "";
            }
            int i12 = i10 + i11;
            char[] cArr = new char[i11 << 1];
            int i13 = 0;
            while (i10 < i12) {
                System.arraycopy(HEXDUMP_TABLE, (bArr[i10] & 255) << 1, cArr, i13, 2);
                i10++;
                i13 += 2;
            }
            return new String(cArr);
        }
    }

    public static void copy(AsciiString asciiString, int i10, ByteBuf byteBuf, int i11) {
        if (!MathUtil.isOutOfBounds(i10, i11, asciiString.length())) {
            ((ByteBuf) ObjectUtil.checkNotNull(byteBuf, "dst")).writeBytes(asciiString.array(), i10 + asciiString.arrayOffset(), i11);
            return;
        }
        throw new IndexOutOfBoundsException("expected: 0 <= srcIdx(" + i10 + ") <= srcIdx + length(" + i11 + ") <= srcLen(" + asciiString.length() + ')');
    }

    public static boolean equals(ByteBuf byteBuf, ByteBuf byteBuf2) {
        int i10 = byteBuf.readableBytes();
        if (i10 != byteBuf2.readableBytes()) {
            return false;
        }
        return equals(byteBuf, byteBuf.readerIndex(), byteBuf2, byteBuf2.readerIndex(), i10);
    }

    public static int indexOf(ByteBuf byteBuf, int i10, int i11, byte b10) {
        if (i10 <= i11) {
            return firstIndexOf(byteBuf, i10, i11, b10);
        }
        return lastIndexOf(byteBuf, i10, i11, b10);
    }

    static int writeUtf8(AbstractByteBuf abstractByteBuf, int i10, CharSequence charSequence, int i11) {
        return writeUtf8(abstractByteBuf, i10, charSequence, 0, i11);
    }

    static int writeUtf8(AbstractByteBuf abstractByteBuf, int i10, CharSequence charSequence, int i11, int i12) {
        int iWriteUtf8Surrogate = i10;
        while (i11 < i12) {
            char cCharAt = charSequence.charAt(i11);
            if (cCharAt < 128) {
                abstractByteBuf._setByte(iWriteUtf8Surrogate, (byte) cCharAt);
                iWriteUtf8Surrogate++;
            } else if (cCharAt < 2048) {
                int i13 = iWriteUtf8Surrogate + 1;
                abstractByteBuf._setByte(iWriteUtf8Surrogate, (byte) ((cCharAt >> 6) | 192));
                iWriteUtf8Surrogate = i13 + 1;
                abstractByteBuf._setByte(i13, (byte) ((cCharAt & '?') | 128));
            } else if (StringUtil.isSurrogate(cCharAt)) {
                if (Character.isHighSurrogate(cCharAt)) {
                    i11++;
                    if (i11 == i12) {
                        abstractByteBuf._setByte(iWriteUtf8Surrogate, 63);
                        iWriteUtf8Surrogate++;
                        break;
                    }
                    iWriteUtf8Surrogate = writeUtf8Surrogate(abstractByteBuf, iWriteUtf8Surrogate, cCharAt, charSequence.charAt(i11));
                } else {
                    abstractByteBuf._setByte(iWriteUtf8Surrogate, 63);
                    iWriteUtf8Surrogate++;
                }
            } else {
                int i14 = iWriteUtf8Surrogate + 1;
                abstractByteBuf._setByte(iWriteUtf8Surrogate, (byte) ((cCharAt >> '\f') | Opcodes.SHL_INT_LIT8));
                int i15 = i14 + 1;
                abstractByteBuf._setByte(i14, (byte) ((63 & (cCharAt >> 6)) | 128));
                abstractByteBuf._setByte(i15, (byte) ((cCharAt & '?') | 128));
                iWriteUtf8Surrogate = i15 + 1;
            }
            i11++;
        }
        return iWriteUtf8Surrogate - i10;
    }

    private static void getBytes(ByteBuffer byteBuffer, byte[] bArr, int i10, int i11, OutputStream outputStream, int i12) throws IOException {
        do {
            int iMin = Math.min(i11, i12);
            byteBuffer.get(bArr, i10, iMin);
            outputStream.write(bArr, i10, iMin);
            i12 -= iMin;
        } while (i12 > 0);
    }

    static int writeAscii(AbstractByteBuf abstractByteBuf, int i10, CharSequence charSequence, int i11) {
        int i12 = 0;
        while (i12 < i11) {
            abstractByteBuf._setByte(i10, AsciiString.c2b(charSequence.charAt(i12)));
            i12++;
            i10++;
        }
        return i11;
    }
}
