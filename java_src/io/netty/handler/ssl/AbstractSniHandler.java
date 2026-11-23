package io.netty.handler.ssl;

import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandlerContext;
import io.netty.util.CharsetUtil;
import io.netty.util.concurrent.Future;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractSniHandler<T> extends SslClientHelloHandler<T> {
    private String hostname;

    private static String extractSniHostname(ByteBuf byteBuf) {
        int i10 = byteBuf.readerIndex();
        int iWriterIndex = byteBuf.writerIndex();
        int i11 = i10 + 34;
        if (iWriterIndex - i11 < 6) {
            return null;
        }
        int unsignedByte = i11 + byteBuf.getUnsignedByte(i11) + 1;
        int unsignedShort = unsignedByte + byteBuf.getUnsignedShort(unsignedByte) + 2;
        int unsignedByte2 = unsignedShort + byteBuf.getUnsignedByte(unsignedShort) + 1;
        int unsignedShort2 = byteBuf.getUnsignedShort(unsignedByte2);
        int i12 = unsignedByte2 + 2;
        int i13 = unsignedShort2 + i12;
        if (i13 > iWriterIndex) {
            return null;
        }
        while (i13 - i12 >= 4) {
            int unsignedShort3 = byteBuf.getUnsignedShort(i12);
            int i14 = i12 + 2;
            int unsignedShort4 = byteBuf.getUnsignedShort(i14);
            int i15 = i14 + 2;
            if (i13 - i15 < unsignedShort4) {
                return null;
            }
            if (unsignedShort3 == 0) {
                int i16 = i15 + 2;
                if (i13 - i16 < 3) {
                    return null;
                }
                short unsignedByte3 = byteBuf.getUnsignedByte(i16);
                int i17 = i16 + 1;
                if (unsignedByte3 != 0) {
                    return null;
                }
                int unsignedShort5 = byteBuf.getUnsignedShort(i17);
                int i18 = i17 + 2;
                if (i13 - i18 < unsignedShort5) {
                    return null;
                }
                return byteBuf.toString(i18, unsignedShort5, CharsetUtil.US_ASCII).toLowerCase(Locale.US);
            }
            i12 = i15 + unsignedShort4;
        }
        return null;
    }

    private void fireSniCompletionEvent(ChannelHandlerContext channelHandlerContext, String str, Future<T> future) {
        Throwable thCause = future.cause();
        if (thCause == null) {
            channelHandlerContext.fireUserEventTriggered((Object) new SniCompletionEvent(str));
        } else {
            channelHandlerContext.fireUserEventTriggered((Object) new SniCompletionEvent(str, thCause));
        }
    }

    @Override // io.netty.handler.ssl.SslClientHelloHandler
    protected Future<T> lookup(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf) throws Exception {
        String strExtractSniHostname = byteBuf == null ? null : extractSniHostname(byteBuf);
        this.hostname = strExtractSniHostname;
        return lookup(channelHandlerContext, strExtractSniHostname);
    }

    protected abstract Future<T> lookup(ChannelHandlerContext channelHandlerContext, String str) throws Exception;

    @Override // io.netty.handler.ssl.SslClientHelloHandler
    protected void onLookupComplete(ChannelHandlerContext channelHandlerContext, Future<T> future) throws Exception {
        fireSniCompletionEvent(channelHandlerContext, this.hostname, future);
        onLookupComplete(channelHandlerContext, this.hostname, future);
    }

    protected abstract void onLookupComplete(ChannelHandlerContext channelHandlerContext, String str, Future<T> future) throws Exception;
}
