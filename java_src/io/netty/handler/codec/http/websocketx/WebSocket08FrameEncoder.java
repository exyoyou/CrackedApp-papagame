package io.netty.handler.codec.http.websocketx;

import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.MessageToMessageEncoder;
import io.netty.handler.codec.TooLongFrameException;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class WebSocket08FrameEncoder extends MessageToMessageEncoder<WebSocketFrame> implements WebSocketFrameEncoder {
    private static final int GATHERING_WRITE_THRESHOLD = 1024;
    private static final byte OPCODE_BINARY = 2;
    private static final byte OPCODE_CLOSE = 8;
    private static final byte OPCODE_CONT = 0;
    private static final byte OPCODE_PING = 9;
    private static final byte OPCODE_PONG = 10;
    private static final byte OPCODE_TEXT = 1;
    private static final InternalLogger logger = InternalLoggerFactory.getInstance((Class<?>) WebSocket08FrameEncoder.class);
    private final boolean maskPayload;

    public WebSocket08FrameEncoder(boolean z10) {
        this.maskPayload = z10;
    }

    @Override // io.netty.handler.codec.MessageToMessageEncoder
    protected /* bridge */ /* synthetic */ void encode(ChannelHandlerContext channelHandlerContext, WebSocketFrame webSocketFrame, List list) throws Exception {
        encode2(channelHandlerContext, webSocketFrame, (List<Object>) list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14, types: [io.netty.util.ReferenceCounted] */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX INFO: renamed from: encode, reason: avoid collision after fix types in other method */
    protected void encode2(ChannelHandlerContext channelHandlerContext, WebSocketFrame webSocketFrame, List<Object> list) throws Exception {
        byte b10;
        ?? r10;
        ByteBuf byteBufBuffer;
        ByteBuf byteBufContent = webSocketFrame.content();
        int i10 = 0;
        if (webSocketFrame instanceof TextWebSocketFrame) {
            b10 = 1;
        } else if (webSocketFrame instanceof PingWebSocketFrame) {
            b10 = 9;
        } else if (webSocketFrame instanceof PongWebSocketFrame) {
            b10 = 10;
        } else if (webSocketFrame instanceof CloseWebSocketFrame) {
            b10 = 8;
        } else if (webSocketFrame instanceof BinaryWebSocketFrame) {
            b10 = 2;
        } else {
            if (!(webSocketFrame instanceof ContinuationWebSocketFrame)) {
                throw new UnsupportedOperationException("Cannot encode frame of type: " + webSocketFrame.getClass().getName());
            }
            b10 = 0;
        }
        int i11 = byteBufContent.readableBytes();
        InternalLogger internalLogger = logger;
        if (internalLogger.isTraceEnabled()) {
            internalLogger.trace("Encoding WebSocket Frame opCode={} length={}", Byte.valueOf(b10), Integer.valueOf(i11));
        }
        int iRsv = ((webSocketFrame.rsv() % 8) << 4) | (webSocketFrame.isFinalFragment() ? 128 : 0) | (b10 % 128);
        if (b10 == 9 && i11 > 125) {
            throw new TooLongFrameException("invalid payload for PING (payload length must be <= 125, was " + i11);
        }
        try {
            boolean z10 = this.maskPayload;
            int i12 = z10 ? 4 : 0;
            r10 = 1024;
            try {
                if (i11 <= 125) {
                    int i13 = i12 + 2;
                    if (z10 || i11 <= 1024) {
                        i13 += i11;
                    }
                    byteBufBuffer = channelHandlerContext.alloc().buffer(i13);
                    byteBufBuffer.writeByte(iRsv);
                    byteBufBuffer.writeByte((byte) (this.maskPayload ? ((byte) i11) | 128 : (byte) i11));
                } else if (i11 <= 65535) {
                    int i14 = i12 + 4;
                    if (z10 || i11 <= 1024) {
                        i14 += i11;
                    }
                    byteBufBuffer = channelHandlerContext.alloc().buffer(i14);
                    byteBufBuffer.writeByte(iRsv);
                    byteBufBuffer.writeByte(this.maskPayload ? 254 : 126);
                    byteBufBuffer.writeByte((i11 >>> 8) & 255);
                    byteBufBuffer.writeByte(i11 & 255);
                } else {
                    int i15 = i12 + 10;
                    if (z10 || i11 <= 1024) {
                        i15 += i11;
                    }
                    byteBufBuffer = channelHandlerContext.alloc().buffer(i15);
                    byteBufBuffer.writeByte(iRsv);
                    byteBufBuffer.writeByte(this.maskPayload ? 255 : 127);
                    byteBufBuffer.writeLong(i11);
                }
                if (!this.maskPayload) {
                    if (byteBufBuffer.writableBytes() >= byteBufContent.readableBytes()) {
                        byteBufBuffer.writeBytes(byteBufContent);
                        list.add(byteBufBuffer);
                        return;
                    } else {
                        list.add(byteBufBuffer);
                        list.add(byteBufContent.retain());
                        return;
                    }
                }
                byte[] bArrArray = ByteBuffer.allocate(4).putInt((int) (Math.random() * 2.147483647E9d)).array();
                byteBufBuffer.writeBytes(bArrArray);
                ByteOrder byteOrderOrder = byteBufContent.order();
                ByteOrder byteOrderOrder2 = byteBufBuffer.order();
                int i16 = byteBufContent.readerIndex();
                int iWriterIndex = byteBufContent.writerIndex();
                if (byteOrderOrder == byteOrderOrder2) {
                    int iReverseBytes = ((bArrArray[0] & 255) << 24) | ((bArrArray[1] & 255) << 16) | ((bArrArray[2] & 255) << 8) | (bArrArray[3] & 255);
                    if (byteOrderOrder == ByteOrder.LITTLE_ENDIAN) {
                        iReverseBytes = Integer.reverseBytes(iReverseBytes);
                    }
                    while (i16 + 3 < iWriterIndex) {
                        byteBufBuffer.writeInt(byteBufContent.getInt(i16) ^ iReverseBytes);
                        i16 += 4;
                    }
                }
                while (i16 < iWriterIndex) {
                    byteBufBuffer.writeByte(byteBufContent.getByte(i16) ^ bArrArray[i10 % 4]);
                    i16++;
                    i10++;
                }
                list.add(byteBufBuffer);
            } catch (Throwable th) {
                th = th;
                if (r10 != 0) {
                    r10.release();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            r10 = 0;
        }
    }
}
