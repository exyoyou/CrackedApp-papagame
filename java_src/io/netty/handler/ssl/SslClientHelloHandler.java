package io.netty.handler.ssl;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufUtil;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelOutboundHandler;
import io.netty.channel.ChannelPromise;
import io.netty.handler.codec.ByteToMessageDecoder;
import io.netty.handler.codec.DecoderException;
import io.netty.util.concurrent.Future;
import io.netty.util.concurrent.FutureListener;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.net.SocketAddress;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class SslClientHelloHandler<T> extends ByteToMessageDecoder implements ChannelOutboundHandler {
    private static final InternalLogger logger = InternalLoggerFactory.getInstance((Class<?>) SslClientHelloHandler.class);
    private ByteBuf handshakeBuffer;
    private boolean handshakeFailed;
    private boolean readPending;
    private boolean suppressRead;

    private void releaseHandshakeBuffer() {
        releaseIfNotNull(this.handshakeBuffer);
        this.handshakeBuffer = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void releaseIfNotNull(ByteBuf byteBuf) {
        if (byteBuf != null) {
            byteBuf.release();
        }
    }

    private void select(final ChannelHandlerContext channelHandlerContext, final ByteBuf byteBuf) throws Exception {
        try {
            Future<T> futureLookup = lookup(channelHandlerContext, byteBuf);
            if (futureLookup.isDone()) {
                onLookupComplete(channelHandlerContext, futureLookup);
            } else {
                this.suppressRead = true;
                futureLookup.addListener(new FutureListener<T>() { // from class: io.netty.handler.ssl.SslClientHelloHandler.1
                    @Override // io.netty.util.concurrent.GenericFutureListener
                    public void operationComplete(Future<T> future) {
                        SslClientHelloHandler.releaseIfNotNull(byteBuf);
                        try {
                            SslClientHelloHandler.this.suppressRead = false;
                            try {
                                SslClientHelloHandler.this.onLookupComplete(channelHandlerContext, future);
                            } catch (DecoderException e10) {
                                channelHandlerContext.fireExceptionCaught((Throwable) e10);
                            } catch (Exception e11) {
                                channelHandlerContext.fireExceptionCaught((Throwable) new DecoderException(e11));
                            } catch (Throwable th) {
                                channelHandlerContext.fireExceptionCaught(th);
                            }
                            if (SslClientHelloHandler.this.readPending) {
                                SslClientHelloHandler.this.readPending = false;
                                channelHandlerContext.read();
                            }
                        } catch (Throwable th2) {
                            if (SslClientHelloHandler.this.readPending) {
                                SslClientHelloHandler.this.readPending = false;
                                channelHandlerContext.read();
                            }
                            throw th2;
                        }
                    }
                });
                byteBuf = null;
            }
        } catch (Throwable th) {
            try {
                PlatformDependent.throwException(th);
            } finally {
                releaseIfNotNull(byteBuf);
            }
        }
    }

    @Override // io.netty.channel.ChannelOutboundHandler
    public void bind(ChannelHandlerContext channelHandlerContext, SocketAddress socketAddress, ChannelPromise channelPromise) throws Exception {
        channelHandlerContext.bind(socketAddress, channelPromise);
    }

    @Override // io.netty.channel.ChannelOutboundHandler
    public void close(ChannelHandlerContext channelHandlerContext, ChannelPromise channelPromise) throws Exception {
        channelHandlerContext.close(channelPromise);
    }

    @Override // io.netty.channel.ChannelOutboundHandler
    public void connect(ChannelHandlerContext channelHandlerContext, SocketAddress socketAddress, SocketAddress socketAddress2, ChannelPromise channelPromise) throws Exception {
        channelHandlerContext.connect(socketAddress, socketAddress2, channelPromise);
    }

    @Override // io.netty.handler.codec.ByteToMessageDecoder
    protected void decode(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf, List<Object> list) throws Exception {
        if (this.suppressRead || this.handshakeFailed) {
            return;
        }
        try {
            int i10 = byteBuf.readerIndex();
            int i11 = byteBuf.readableBytes();
            int i12 = -1;
            while (i11 >= 5) {
                switch (byteBuf.getUnsignedByte(i10)) {
                    case 20:
                    case 21:
                        int encryptedPacketLength = SslUtils.getEncryptedPacketLength(byteBuf, i10);
                        if (encryptedPacketLength != -2) {
                            if (encryptedPacketLength == -1) {
                                return;
                            }
                            select(channelHandlerContext, null);
                            return;
                        }
                        this.handshakeFailed = true;
                        NotSslRecordException notSslRecordException = new NotSslRecordException("not an SSL/TLS record: " + ByteBufUtil.hexDump(byteBuf));
                        byteBuf.skipBytes(byteBuf.readableBytes());
                        channelHandlerContext.fireUserEventTriggered((Object) new SniCompletionEvent(notSslRecordException));
                        SslUtils.handleHandshakeFailure(channelHandlerContext, notSslRecordException, true);
                        throw notSslRecordException;
                    case 22:
                        if (byteBuf.getUnsignedByte(i10 + 1) == 3) {
                            int unsignedShort = byteBuf.getUnsignedShort(i10 + 3) + 5;
                            if (i11 < unsignedShort) {
                                return;
                            }
                            if (unsignedShort == 5) {
                                select(channelHandlerContext, null);
                                return;
                            }
                            int i13 = i10 + unsignedShort;
                            if (i12 == -1) {
                                int i14 = i10 + 4;
                                if (i14 > i13) {
                                    return;
                                }
                                int i15 = i10 + 5;
                                if (byteBuf.getUnsignedByte(i15) != 1) {
                                    select(channelHandlerContext, null);
                                    return;
                                }
                                int unsignedMedium = byteBuf.getUnsignedMedium(i15 + 1);
                                unsignedShort -= 4;
                                if (unsignedMedium + 4 + 5 <= unsignedShort) {
                                    select(channelHandlerContext, byteBuf.retainedSlice(i14 + 5, unsignedMedium));
                                    return;
                                }
                                ByteBuf byteBuf2 = this.handshakeBuffer;
                                if (byteBuf2 == null) {
                                    this.handshakeBuffer = channelHandlerContext.alloc().buffer(unsignedMedium);
                                } else {
                                    byteBuf2.clear();
                                }
                                i12 = unsignedMedium;
                                i10 = i14;
                            }
                            this.handshakeBuffer.writeBytes(byteBuf, i10 + 5, unsignedShort - 5);
                            i10 += unsignedShort;
                            i11 -= unsignedShort;
                            if (i12 <= this.handshakeBuffer.readableBytes()) {
                                ByteBuf index = this.handshakeBuffer.setIndex(0, i12);
                                this.handshakeBuffer = null;
                                select(channelHandlerContext, index);
                                return;
                            }
                        }
                        break;
                }
                select(channelHandlerContext, null);
                return;
            }
        } catch (NotSslRecordException e10) {
            throw e10;
        } catch (Exception e11) {
            InternalLogger internalLogger = logger;
            if (internalLogger.isDebugEnabled()) {
                internalLogger.debug("Unexpected client hello packet: " + ByteBufUtil.hexDump(byteBuf), (Throwable) e11);
            }
            select(channelHandlerContext, null);
        }
    }

    @Override // io.netty.channel.ChannelOutboundHandler
    public void deregister(ChannelHandlerContext channelHandlerContext, ChannelPromise channelPromise) throws Exception {
        channelHandlerContext.deregister(channelPromise);
    }

    @Override // io.netty.channel.ChannelOutboundHandler
    public void disconnect(ChannelHandlerContext channelHandlerContext, ChannelPromise channelPromise) throws Exception {
        channelHandlerContext.disconnect(channelPromise);
    }

    @Override // io.netty.channel.ChannelOutboundHandler
    public void flush(ChannelHandlerContext channelHandlerContext) throws Exception {
        channelHandlerContext.flush();
    }

    @Override // io.netty.handler.codec.ByteToMessageDecoder
    protected void handlerRemoved0(ChannelHandlerContext channelHandlerContext) throws Exception {
        releaseHandshakeBuffer();
        super.handlerRemoved0(channelHandlerContext);
    }

    protected abstract Future<T> lookup(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf) throws Exception;

    protected abstract void onLookupComplete(ChannelHandlerContext channelHandlerContext, Future<T> future) throws Exception;

    @Override // io.netty.channel.ChannelOutboundHandler
    public void read(ChannelHandlerContext channelHandlerContext) throws Exception {
        if (this.suppressRead) {
            this.readPending = true;
        } else {
            channelHandlerContext.read();
        }
    }

    @Override // io.netty.channel.ChannelOutboundHandler
    public void write(ChannelHandlerContext channelHandlerContext, Object obj, ChannelPromise channelPromise) throws Exception {
        channelHandlerContext.write(obj, channelPromise);
    }
}
