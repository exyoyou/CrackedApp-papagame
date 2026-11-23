package io.netty.handler.codec.spdy;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufAllocator;
import io.netty.buffer.Unpooled;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.SuppressJava6Requirement;
import java.util.zip.Deflater;

/* JADX INFO: loaded from: classes.dex */
class SpdyHeaderBlockZlibEncoder extends SpdyHeaderBlockRawEncoder {
    private final Deflater compressor;
    private boolean finished;

    SpdyHeaderBlockZlibEncoder(SpdyVersion spdyVersion, int i10) {
        super(spdyVersion);
        if (i10 >= 0 && i10 <= 9) {
            Deflater deflater = new Deflater(i10);
            this.compressor = deflater;
            deflater.setDictionary(SpdyCodecUtil.SPDY_DICT);
        } else {
            throw new IllegalArgumentException("compressionLevel: " + i10 + " (expected: 0-9)");
        }
    }

    @SuppressJava6Requirement(reason = "Guarded by java version check")
    private boolean compressInto(ByteBuf byteBuf) {
        byte[] bArrArray = byteBuf.array();
        int iArrayOffset = byteBuf.arrayOffset() + byteBuf.writerIndex();
        int iWritableBytes = byteBuf.writableBytes();
        int iDeflate = PlatformDependent.javaVersion() >= 7 ? this.compressor.deflate(bArrArray, iArrayOffset, iWritableBytes, 2) : this.compressor.deflate(bArrArray, iArrayOffset, iWritableBytes);
        byteBuf.writerIndex(byteBuf.writerIndex() + iDeflate);
        return iDeflate == iWritableBytes;
    }

    private ByteBuf encode(ByteBufAllocator byteBufAllocator, int i10) {
        ByteBuf byteBufHeapBuffer = byteBufAllocator.heapBuffer(i10);
        while (compressInto(byteBufHeapBuffer)) {
            try {
                byteBufHeapBuffer.ensureWritable(byteBufHeapBuffer.capacity() << 1);
            } catch (Throwable th) {
                byteBufHeapBuffer.release();
                throw th;
            }
        }
        return byteBufHeapBuffer;
    }

    private int setInput(ByteBuf byteBuf) {
        int i10 = byteBuf.readableBytes();
        if (byteBuf.hasArray()) {
            this.compressor.setInput(byteBuf.array(), byteBuf.arrayOffset() + byteBuf.readerIndex(), i10);
        } else {
            byte[] bArr = new byte[i10];
            byteBuf.getBytes(byteBuf.readerIndex(), bArr);
            this.compressor.setInput(bArr, 0, i10);
        }
        return i10;
    }

    @Override // io.netty.handler.codec.spdy.SpdyHeaderBlockRawEncoder, io.netty.handler.codec.spdy.SpdyHeaderBlockEncoder
    public void end() {
        if (this.finished) {
            return;
        }
        this.finished = true;
        this.compressor.end();
        super.end();
    }

    @Override // io.netty.handler.codec.spdy.SpdyHeaderBlockRawEncoder, io.netty.handler.codec.spdy.SpdyHeaderBlockEncoder
    public ByteBuf encode(ByteBufAllocator byteBufAllocator, SpdyHeadersFrame spdyHeadersFrame) throws Exception {
        if (spdyHeadersFrame != null) {
            if (this.finished) {
                return Unpooled.EMPTY_BUFFER;
            }
            ByteBuf byteBufEncode = super.encode(byteBufAllocator, spdyHeadersFrame);
            try {
                if (!byteBufEncode.isReadable()) {
                    return Unpooled.EMPTY_BUFFER;
                }
                return encode(byteBufAllocator, setInput(byteBufEncode));
            } finally {
                byteBufEncode.release();
            }
        }
        throw new IllegalArgumentException(TypedValues.AttributesType.S_FRAME);
    }
}
