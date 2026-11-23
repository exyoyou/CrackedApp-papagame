package io.netty.handler.codec.haproxy;

import com.sigmob.sdk.archives.tar.e;
import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.ByteToMessageDecoder;
import io.netty.handler.codec.ProtocolDetectionResult;
import io.netty.util.CharsetUtil;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class HAProxyMessageDecoder extends ByteToMessageDecoder {
    private static final byte[] BINARY_PREFIX;
    private static final int BINARY_PREFIX_LENGTH;
    private static final int V1_MAX_LENGTH = 108;
    private static final int V2_MAX_LENGTH = 65551;
    private static final int V2_MAX_TLV = 65319;
    private static final int V2_MIN_LENGTH = 232;
    private int discardedBytes;
    private boolean discarding;
    private final boolean failFast;
    private boolean finished;
    private HeaderExtractor headerExtractor;
    private final int v2MaxHeaderSize;
    private int version;
    private static final byte[] TEXT_PREFIX = {80, 82, 79, e.S, 89};
    private static final ProtocolDetectionResult<HAProxyProtocolVersion> DETECTION_RESULT_V1 = ProtocolDetectionResult.detected(HAProxyProtocolVersion.V1);
    private static final ProtocolDetectionResult<HAProxyProtocolVersion> DETECTION_RESULT_V2 = ProtocolDetectionResult.detected(HAProxyProtocolVersion.V2);

    private abstract class HeaderExtractor {
        private final int maxHeaderSize;

        protected HeaderExtractor(int i10) {
            this.maxHeaderSize = i10;
        }

        protected abstract int delimiterLength(ByteBuf byteBuf, int i10);

        public ByteBuf extract(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf) throws Exception {
            int iFindEndOfHeader = findEndOfHeader(byteBuf);
            if (HAProxyMessageDecoder.this.discarding) {
                if (iFindEndOfHeader >= 0) {
                    int i10 = (HAProxyMessageDecoder.this.discardedBytes + iFindEndOfHeader) - byteBuf.readerIndex();
                    byteBuf.readerIndex(iFindEndOfHeader + delimiterLength(byteBuf, iFindEndOfHeader));
                    HAProxyMessageDecoder.this.discardedBytes = 0;
                    HAProxyMessageDecoder.this.discarding = false;
                    if (!HAProxyMessageDecoder.this.failFast) {
                        HAProxyMessageDecoder.this.failOverLimit(channelHandlerContext, "over " + i10);
                    }
                } else {
                    HAProxyMessageDecoder.this.discardedBytes += byteBuf.readableBytes();
                    byteBuf.skipBytes(byteBuf.readableBytes());
                }
                return null;
            }
            if (iFindEndOfHeader >= 0) {
                int i11 = iFindEndOfHeader - byteBuf.readerIndex();
                if (i11 > this.maxHeaderSize) {
                    byteBuf.readerIndex(iFindEndOfHeader + delimiterLength(byteBuf, iFindEndOfHeader));
                    HAProxyMessageDecoder.this.failOverLimit(channelHandlerContext, i11);
                    return null;
                }
                ByteBuf slice = byteBuf.readSlice(i11);
                byteBuf.skipBytes(delimiterLength(byteBuf, iFindEndOfHeader));
                return slice;
            }
            int i12 = byteBuf.readableBytes();
            if (i12 > this.maxHeaderSize) {
                HAProxyMessageDecoder.this.discardedBytes = i12;
                byteBuf.skipBytes(i12);
                HAProxyMessageDecoder.this.discarding = true;
                if (HAProxyMessageDecoder.this.failFast) {
                    HAProxyMessageDecoder.this.failOverLimit(channelHandlerContext, "over " + HAProxyMessageDecoder.this.discardedBytes);
                }
            }
            return null;
        }

        protected abstract int findEndOfHeader(ByteBuf byteBuf);
    }

    private final class LineHeaderExtractor extends HeaderExtractor {
        LineHeaderExtractor(int i10) {
            super(i10);
        }

        @Override // io.netty.handler.codec.haproxy.HAProxyMessageDecoder.HeaderExtractor
        protected int delimiterLength(ByteBuf byteBuf, int i10) {
            return byteBuf.getByte(i10) == 13 ? 2 : 1;
        }

        @Override // io.netty.handler.codec.haproxy.HAProxyMessageDecoder.HeaderExtractor
        protected int findEndOfHeader(ByteBuf byteBuf) {
            return HAProxyMessageDecoder.findEndOfLine(byteBuf);
        }
    }

    private final class StructHeaderExtractor extends HeaderExtractor {
        StructHeaderExtractor(int i10) {
            super(i10);
        }

        @Override // io.netty.handler.codec.haproxy.HAProxyMessageDecoder.HeaderExtractor
        protected int delimiterLength(ByteBuf byteBuf, int i10) {
            return 0;
        }

        @Override // io.netty.handler.codec.haproxy.HAProxyMessageDecoder.HeaderExtractor
        protected int findEndOfHeader(ByteBuf byteBuf) {
            return HAProxyMessageDecoder.findEndOfHeader(byteBuf);
        }
    }

    static {
        byte[] bArr = {13, 10, 13, 10, 0, 13, 10, 81, 85, 73, 84, 10};
        BINARY_PREFIX = bArr;
        BINARY_PREFIX_LENGTH = bArr.length;
    }

    public HAProxyMessageDecoder() {
        this(true);
    }

    private ByteBuf decodeLine(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf) throws Exception {
        if (this.headerExtractor == null) {
            this.headerExtractor = new LineHeaderExtractor(108);
        }
        return this.headerExtractor.extract(channelHandlerContext, byteBuf);
    }

    private ByteBuf decodeStruct(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf) throws Exception {
        if (this.headerExtractor == null) {
            this.headerExtractor = new StructHeaderExtractor(this.v2MaxHeaderSize);
        }
        return this.headerExtractor.extract(channelHandlerContext, byteBuf);
    }

    public static ProtocolDetectionResult<HAProxyProtocolVersion> detectProtocol(ByteBuf byteBuf) {
        if (byteBuf.readableBytes() < 12) {
            return ProtocolDetectionResult.needsMoreData();
        }
        int i10 = byteBuf.readerIndex();
        if (match(BINARY_PREFIX, byteBuf, i10)) {
            return DETECTION_RESULT_V2;
        }
        return match(TEXT_PREFIX, byteBuf, i10) ? DETECTION_RESULT_V1 : ProtocolDetectionResult.invalid();
    }

    private void fail(ChannelHandlerContext channelHandlerContext, String str, Exception exc) {
        this.finished = true;
        channelHandlerContext.close();
        if (str != null && exc != null) {
            throw new HAProxyProtocolException(str, exc);
        }
        if (str != null) {
            throw new HAProxyProtocolException(str);
        }
        if (exc == null) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void failOverLimit(ChannelHandlerContext channelHandlerContext, int i10) {
        failOverLimit(channelHandlerContext, String.valueOf(i10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int findEndOfHeader(ByteBuf byteBuf) {
        int unsignedShort;
        int i10 = byteBuf.readableBytes();
        if (i10 >= 16 && i10 >= (unsignedShort = byteBuf.getUnsignedShort(byteBuf.readerIndex() + 14) + 16)) {
            return unsignedShort;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int findEndOfLine(ByteBuf byteBuf) {
        int iWriterIndex = byteBuf.writerIndex();
        for (int i10 = byteBuf.readerIndex(); i10 < iWriterIndex; i10++) {
            if (byteBuf.getByte(i10) == 13 && i10 < iWriterIndex - 1 && byteBuf.getByte(i10 + 1) == 10) {
                return i10;
            }
        }
        return -1;
    }

    private static int findVersion(ByteBuf byteBuf) {
        if (byteBuf.readableBytes() < 13) {
            return -1;
        }
        int i10 = byteBuf.readerIndex();
        if (match(BINARY_PREFIX, byteBuf, i10)) {
            return byteBuf.getByte(i10 + BINARY_PREFIX_LENGTH);
        }
        return 1;
    }

    private static boolean match(byte[] bArr, ByteBuf byteBuf, int i10) {
        for (int i11 = 0; i11 < bArr.length; i11++) {
            if (byteBuf.getByte(i10 + i11) != bArr[i11]) {
                return false;
            }
        }
        return true;
    }

    @Override // io.netty.handler.codec.ByteToMessageDecoder, io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelInboundHandler
    public void channelRead(ChannelHandlerContext channelHandlerContext, Object obj) throws Exception {
        super.channelRead(channelHandlerContext, obj);
        if (this.finished) {
            channelHandlerContext.pipeline().remove(this);
        }
    }

    @Override // io.netty.handler.codec.ByteToMessageDecoder
    protected final void decode(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf, List<Object> list) throws Exception {
        if (this.version == -1) {
            int iFindVersion = findVersion(byteBuf);
            this.version = iFindVersion;
            if (iFindVersion == -1) {
                return;
            }
        }
        ByteBuf byteBufDecodeLine = this.version == 1 ? decodeLine(channelHandlerContext, byteBuf) : decodeStruct(channelHandlerContext, byteBuf);
        if (byteBufDecodeLine != null) {
            this.finished = true;
            try {
                if (this.version == 1) {
                    list.add(HAProxyMessage.decodeHeader(byteBufDecodeLine.toString(CharsetUtil.US_ASCII)));
                } else {
                    list.add(HAProxyMessage.decodeHeader(byteBufDecodeLine));
                }
            } catch (HAProxyProtocolException e10) {
                fail(channelHandlerContext, null, e10);
            }
        }
    }

    @Override // io.netty.handler.codec.ByteToMessageDecoder
    public boolean isSingleDecode() {
        return true;
    }

    public HAProxyMessageDecoder(boolean z10) {
        this.version = -1;
        this.v2MaxHeaderSize = V2_MAX_LENGTH;
        this.failFast = z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void failOverLimit(ChannelHandlerContext channelHandlerContext, String str) {
        fail(channelHandlerContext, "header length (" + str + ") exceeds the allowed maximum (" + (this.version == 1 ? 108 : this.v2MaxHeaderSize) + ')', null);
    }

    public HAProxyMessageDecoder(int i10) {
        this(i10, true);
    }

    public HAProxyMessageDecoder(int i10, boolean z10) {
        int i11;
        this.version = -1;
        if (i10 < 1) {
            this.v2MaxHeaderSize = V2_MIN_LENGTH;
        } else if (i10 > V2_MAX_TLV || (i11 = i10 + V2_MIN_LENGTH) > V2_MAX_LENGTH) {
            this.v2MaxHeaderSize = V2_MAX_LENGTH;
        } else {
            this.v2MaxHeaderSize = i11;
        }
        this.failFast = z10;
    }
}
