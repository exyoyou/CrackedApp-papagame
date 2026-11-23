package io.netty.handler.codec.http;

import com.sigmob.sdk.archives.tar.e;
import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufUtil;
import io.netty.buffer.Unpooled;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.FileRegion;
import io.netty.handler.codec.MessageToMessageEncoder;
import io.netty.handler.codec.http.HttpMessage;
import io.netty.util.CharsetUtil;
import io.netty.util.internal.StringUtil;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class HttpObjectEncoder<H extends HttpMessage> extends MessageToMessageEncoder<Object> {
    private static final ByteBuf CRLF_BUF;
    static final int CRLF_SHORT = 3338;
    private static final float HEADERS_WEIGHT_HISTORICAL = 0.8f;
    private static final float HEADERS_WEIGHT_NEW = 0.2f;
    private static final int ST_CONTENT_ALWAYS_EMPTY = 3;
    private static final int ST_CONTENT_CHUNK = 2;
    private static final int ST_CONTENT_NON_CHUNK = 1;
    private static final int ST_INIT = 0;
    private static final float TRAILERS_WEIGHT_HISTORICAL = 0.8f;
    private static final float TRAILERS_WEIGHT_NEW = 0.2f;
    private static final byte[] ZERO_CRLF_CRLF;
    private static final ByteBuf ZERO_CRLF_CRLF_BUF;
    private static final int ZERO_CRLF_MEDIUM = 3149066;
    private int state = 0;
    private float headersEncodedSizeAccumulator = 256.0f;
    private float trailersEncodedSizeAccumulator = 256.0f;

    static {
        byte[] bArr = {e.H, 13, 10, 13, 10};
        ZERO_CRLF_CRLF = bArr;
        CRLF_BUF = Unpooled.unreleasableBuffer(Unpooled.directBuffer(2).writeByte(13).writeByte(10));
        ZERO_CRLF_CRLF_BUF = Unpooled.unreleasableBuffer(Unpooled.directBuffer(bArr.length).writeBytes(bArr));
    }

    private static long contentLength(Object obj) {
        if (obj instanceof HttpContent) {
            return ((HttpContent) obj).content().readableBytes();
        }
        if (obj instanceof ByteBuf) {
            return ((ByteBuf) obj).readableBytes();
        }
        if (obj instanceof FileRegion) {
            return ((FileRegion) obj).count();
        }
        throw new IllegalStateException("unexpected message type: " + StringUtil.simpleClassName(obj));
    }

    private static Object encodeAndRetain(Object obj) {
        if (obj instanceof ByteBuf) {
            return ((ByteBuf) obj).retain();
        }
        if (obj instanceof HttpContent) {
            return ((HttpContent) obj).content().retain();
        }
        if (obj instanceof FileRegion) {
            return ((FileRegion) obj).retain();
        }
        throw new IllegalStateException("unexpected message type: " + StringUtil.simpleClassName(obj));
    }

    @Deprecated
    protected static void encodeAscii(String str, ByteBuf byteBuf) {
        byteBuf.writeCharSequence(str, CharsetUtil.US_ASCII);
    }

    private void encodeChunkedContent(ChannelHandlerContext channelHandlerContext, Object obj, long j10, List<Object> list) {
        if (j10 > 0) {
            String hexString = Long.toHexString(j10);
            ByteBuf byteBufBuffer = channelHandlerContext.alloc().buffer(hexString.length() + 2);
            byteBufBuffer.writeCharSequence(hexString, CharsetUtil.US_ASCII);
            ByteBufUtil.writeShortBE(byteBufBuffer, CRLF_SHORT);
            list.add(byteBufBuffer);
            list.add(encodeAndRetain(obj));
            list.add(CRLF_BUF.duplicate());
        }
        if (!(obj instanceof LastHttpContent)) {
            if (j10 == 0) {
                list.add(encodeAndRetain(obj));
                return;
            }
            return;
        }
        HttpHeaders httpHeadersTrailingHeaders = ((LastHttpContent) obj).trailingHeaders();
        if (httpHeadersTrailingHeaders.isEmpty()) {
            list.add(ZERO_CRLF_CRLF_BUF.duplicate());
            return;
        }
        ByteBuf byteBufBuffer2 = channelHandlerContext.alloc().buffer((int) this.trailersEncodedSizeAccumulator);
        ByteBufUtil.writeMediumBE(byteBufBuffer2, ZERO_CRLF_MEDIUM);
        encodeHeaders(httpHeadersTrailingHeaders, byteBufBuffer2);
        ByteBufUtil.writeShortBE(byteBufBuffer2, CRLF_SHORT);
        this.trailersEncodedSizeAccumulator = (padSizeForAccumulation(byteBufBuffer2.readableBytes()) * 0.2f) + (this.trailersEncodedSizeAccumulator * 0.8f);
        list.add(byteBufBuffer2);
    }

    private static int padSizeForAccumulation(int i10) {
        return (i10 << 2) / 3;
    }

    @Override // io.netty.handler.codec.MessageToMessageEncoder
    public boolean acceptOutboundMessage(Object obj) throws Exception {
        return (obj instanceof HttpObject) || (obj instanceof ByteBuf) || (obj instanceof FileRegion);
    }

    /* JADX WARN: Code duplicated, block: B:60:0x0106  */
    /* JADX WARN: Code duplicated, block: B:61:0x010a  */
    @Override // io.netty.handler.codec.MessageToMessageEncoder
    protected void encode(ChannelHandlerContext channelHandlerContext, Object obj, List<Object> list) throws Exception {
        ByteBuf byteBufBuffer;
        int i10;
        if (!(obj instanceof HttpMessage)) {
            byteBufBuffer = null;
        } else {
            if (this.state != 0) {
                throw new IllegalStateException("unexpected message type: " + StringUtil.simpleClassName(obj) + ", state: " + this.state);
            }
            HttpMessage httpMessage = (HttpMessage) obj;
            byteBufBuffer = channelHandlerContext.alloc().buffer((int) this.headersEncodedSizeAccumulator);
            encodeInitialLine(byteBufBuffer, httpMessage);
            if (isContentAlwaysEmpty(httpMessage)) {
                i10 = 3;
            } else {
                i10 = HttpUtil.isTransferEncodingChunked(httpMessage) ? 2 : 1;
            }
            this.state = i10;
            sanitizeHeadersBeforeEncode(httpMessage, i10 == 3);
            encodeHeaders(httpMessage.headers(), byteBufBuffer);
            ByteBufUtil.writeShortBE(byteBufBuffer, CRLF_SHORT);
            this.headersEncodedSizeAccumulator = (padSizeForAccumulation(byteBufBuffer.readableBytes()) * 0.2f) + (this.headersEncodedSizeAccumulator * 0.8f);
        }
        boolean z10 = obj instanceof ByteBuf;
        if (z10) {
            ByteBuf byteBuf = (ByteBuf) obj;
            if (!byteBuf.isReadable()) {
                list.add(byteBuf.retain());
                return;
            }
        }
        boolean z11 = obj instanceof HttpContent;
        if (!z11 && !z10 && !(obj instanceof FileRegion)) {
            if (byteBufBuffer != null) {
                list.add(byteBufBuffer);
                return;
            }
            return;
        }
        int i11 = this.state;
        if (i11 == 0) {
            throw new IllegalStateException("unexpected message type: " + StringUtil.simpleClassName(obj));
        }
        if (i11 == 1) {
            long jContentLength = contentLength(obj);
            if (jContentLength > 0) {
                if (byteBufBuffer == null || byteBufBuffer.writableBytes() < jContentLength || !z11) {
                    if (byteBufBuffer != null) {
                        list.add(byteBufBuffer);
                    }
                    list.add(encodeAndRetain(obj));
                } else {
                    byteBufBuffer.writeBytes(((HttpContent) obj).content());
                    list.add(byteBufBuffer);
                }
                if (obj instanceof LastHttpContent) {
                    this.state = 0;
                }
            } else if (byteBufBuffer != null) {
                list.add(byteBufBuffer);
            } else {
                list.add(Unpooled.EMPTY_BUFFER);
            }
        } else if (i11 != 2) {
            if (i11 != 3) {
                throw new Error();
            }
            if (byteBufBuffer != null) {
                list.add(byteBufBuffer);
            } else {
                list.add(Unpooled.EMPTY_BUFFER);
            }
        } else {
            if (byteBufBuffer != null) {
                list.add(byteBufBuffer);
            }
            encodeChunkedContent(channelHandlerContext, obj, contentLength(obj), list);
        }
        if (obj instanceof LastHttpContent) {
            this.state = 0;
        }
    }

    protected void encodeHeaders(HttpHeaders httpHeaders, ByteBuf byteBuf) {
        Iterator<Map.Entry<CharSequence, CharSequence>> itIteratorCharSequence = httpHeaders.iteratorCharSequence();
        while (itIteratorCharSequence.hasNext()) {
            Map.Entry<CharSequence, CharSequence> next = itIteratorCharSequence.next();
            HttpHeadersEncoder.encoderHeader(next.getKey(), next.getValue(), byteBuf);
        }
    }

    protected abstract void encodeInitialLine(ByteBuf byteBuf, H h10) throws Exception;

    protected boolean isContentAlwaysEmpty(H h10) {
        return false;
    }

    protected void sanitizeHeadersBeforeEncode(H h10, boolean z10) {
    }
}
