package io.netty.channel.oio;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufAllocator;
import io.netty.channel.Channel;
import io.netty.channel.ChannelConfig;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelMetadata;
import io.netty.channel.ChannelOption;
import io.netty.channel.ChannelOutboundBuffer;
import io.netty.channel.ChannelPipeline;
import io.netty.channel.FileRegion;
import io.netty.channel.RecvByteBufAllocator;
import io.netty.channel.socket.ChannelInputShutdownEvent;
import io.netty.channel.socket.ChannelInputShutdownReadComplete;
import io.netty.util.internal.StringUtil;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractOioByteChannel extends AbstractOioChannel {
    private static final ChannelMetadata METADATA = new ChannelMetadata(false);
    private static final String EXPECTED_TYPES = " (expected: " + StringUtil.simpleClassName((Class<?>) ByteBuf.class) + ", " + StringUtil.simpleClassName((Class<?>) FileRegion.class) + ')';

    protected AbstractOioByteChannel(Channel channel) {
        super(channel);
    }

    private void closeOnRead(ChannelPipeline channelPipeline) {
        if (isOpen()) {
            if (Boolean.TRUE.equals(config().getOption(ChannelOption.ALLOW_HALF_CLOSURE))) {
                shutdownInput();
                channelPipeline.fireUserEventTriggered((Object) ChannelInputShutdownEvent.INSTANCE);
            } else {
                unsafe().close(unsafe().voidPromise());
            }
            channelPipeline.fireUserEventTriggered((Object) ChannelInputShutdownReadComplete.INSTANCE);
        }
    }

    private void handleReadException(ChannelPipeline channelPipeline, ByteBuf byteBuf, Throwable th, boolean z10, RecvByteBufAllocator.Handle handle) {
        if (byteBuf != null) {
            if (byteBuf.isReadable()) {
                this.readPending = false;
                channelPipeline.fireChannelRead((Object) byteBuf);
            } else {
                byteBuf.release();
            }
        }
        handle.readComplete();
        channelPipeline.fireChannelReadComplete();
        channelPipeline.fireExceptionCaught(th);
        if (z10 || (th instanceof IOException)) {
            closeOnRead(channelPipeline);
        }
    }

    protected abstract int available();

    /* JADX WARN: Code duplicated, block: B:100:0x0094 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:115:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:116:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:43:0x009a A[Catch: all -> 0x00a4, TryCatch #2 {all -> 0x00a4, blocks: (B:41:0x0094, B:43:0x009a, B:44:0x00a0), top: B:100:0x0094 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00a0 A[Catch: all -> 0x00a4, TRY_LEAVE, TryCatch #2 {all -> 0x00a4, blocks: (B:41:0x0094, B:43:0x009a, B:44:0x00a0), top: B:100:0x0094 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:51:0x00ad A[Catch: all -> 0x00b4, TRY_ENTER, TryCatch #3 {all -> 0x00b4, blocks: (B:20:0x004d, B:51:0x00ad, B:55:0x00b8), top: B:102:0x004d }] */
    /* JADX WARN: Code duplicated, block: B:55:0x00b8 A[Catch: all -> 0x00b4, TRY_LEAVE, TryCatch #3 {all -> 0x00b4, blocks: (B:20:0x004d, B:51:0x00ad, B:55:0x00b8), top: B:102:0x004d }] */
    /* JADX WARN: Code duplicated, block: B:77:0x00e6 A[DONT_GENERATE] */
    /* JADX WARN: Code duplicated, block: B:79:0x00ec A[DONT_GENERATE, DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:80:0x00ee A[DONT_GENERATE] */
    @Override // io.netty.channel.oio.AbstractOioChannel
    protected void doRead() {
        Throwable th;
        boolean z10;
        boolean z11;
        boolean zIsAutoRead;
        boolean zIsActive;
        boolean z12;
        Throwable th2;
        ChannelConfig channelConfigConfig = config();
        if (isInputShutdown() || !this.readPending) {
            return;
        }
        boolean z13 = false;
        this.readPending = false;
        ChannelPipeline channelPipelinePipeline = pipeline();
        ByteBufAllocator allocator = channelConfigConfig.getAllocator();
        RecvByteBufAllocator.Handle handleRecvBufAllocHandle = unsafe().recvBufAllocHandle();
        handleRecvBufAllocHandle.reset(channelConfigConfig);
        ByteBuf byteBufAllocate = null;
        try {
            byteBufAllocate = handleRecvBufAllocHandle.allocate(allocator);
            boolean z14 = false;
            while (true) {
                try {
                    handleRecvBufAllocHandle.lastBytesRead(doReadBytes(byteBufAllocate));
                    if (handleRecvBufAllocHandle.lastBytesRead() <= 0) {
                        if (!byteBufAllocate.isReadable()) {
                            byteBufAllocate.release();
                            try {
                                z12 = handleRecvBufAllocHandle.lastBytesRead() < 0;
                                if (z12) {
                                    try {
                                        this.readPending = false;
                                    } catch (Throwable th3) {
                                        th2 = th3;
                                        th = th2;
                                        z13 = z14;
                                        z10 = z12;
                                        try {
                                            handleReadException(channelPipelinePipeline, byteBufAllocate, th, z10, handleRecvBufAllocHandle);
                                            if (!z11) {
                                                if (!zIsAutoRead) {
                                                    if (!z13) {
                                                        return;
                                                    } else {
                                                        if (!zIsActive) {
                                                            return;
                                                        }
                                                    }
                                                }
                                            }
                                            return;
                                        } finally {
                                            if (this.readPending || channelConfigConfig.isAutoRead() || (!z13 && isActive())) {
                                                read();
                                            }
                                        }
                                    }
                                }
                                byteBufAllocate = null;
                            } catch (Throwable th4) {
                                th = th4;
                                z13 = z14;
                                z10 = false;
                                handleReadException(channelPipelinePipeline, byteBufAllocate, th, z10, handleRecvBufAllocHandle);
                                if (!z11) {
                                    if (!zIsAutoRead) {
                                        if (!z13) {
                                            return;
                                        } else {
                                            if (!zIsActive) {
                                                return;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        if (byteBufAllocate == null) {
                            try {
                                if (byteBufAllocate.isReadable()) {
                                    this.readPending = false;
                                    channelPipelinePipeline.fireChannelRead((Object) byteBufAllocate);
                                } else {
                                    byteBufAllocate.release();
                                }
                            } catch (Throwable th5) {
                                th2 = th5;
                                byteBufAllocate = byteBufAllocate;
                                th = th2;
                                z13 = z14;
                                z10 = z12;
                                handleReadException(channelPipelinePipeline, byteBufAllocate, th, z10, handleRecvBufAllocHandle);
                                if (!z11) {
                                    if (!zIsAutoRead) {
                                        if (!z13) {
                                            return;
                                        } else {
                                            if (!zIsActive) {
                                                return;
                                            }
                                        }
                                    }
                                }
                            }
                        } else {
                            byteBufAllocate = byteBufAllocate;
                        }
                        if (z14) {
                            handleRecvBufAllocHandle.readComplete();
                            channelPipelinePipeline.fireChannelReadComplete();
                        }
                        if (z12) {
                            closeOnRead(channelPipelinePipeline);
                        }
                        if (!this.readPending && !channelConfigConfig.isAutoRead() && (z14 || !isActive())) {
                            return;
                        }
                        return;
                    }
                    try {
                        int iAvailable = available();
                        if (iAvailable > 0) {
                            if (!byteBufAllocate.isWritable()) {
                                int iCapacity = byteBufAllocate.capacity();
                                int iMaxCapacity = byteBufAllocate.maxCapacity();
                                if (iCapacity == iMaxCapacity) {
                                    handleRecvBufAllocHandle.incMessagesRead(1);
                                    this.readPending = false;
                                    channelPipelinePipeline.fireChannelRead((Object) byteBufAllocate);
                                    byteBufAllocate = handleRecvBufAllocHandle.allocate(allocator);
                                } else if (byteBufAllocate.writerIndex() + iAvailable > iMaxCapacity) {
                                    byteBufAllocate.capacity(iMaxCapacity);
                                } else {
                                    byteBufAllocate.ensureWritable(iAvailable);
                                }
                            }
                            if (handleRecvBufAllocHandle.continueReading()) {
                                z14 = true;
                            }
                        }
                        z14 = true;
                    } catch (Throwable th6) {
                        th = th6;
                        z13 = true;
                        z10 = false;
                        th = th;
                        handleReadException(channelPipelinePipeline, byteBufAllocate, th, z10, handleRecvBufAllocHandle);
                        if (!z11) {
                            if (!zIsAutoRead) {
                                if (!z13) {
                                    return;
                                } else {
                                    if (!zIsActive) {
                                        return;
                                    }
                                }
                            }
                        }
                    }
                    z12 = false;
                    if (byteBufAllocate == null) {
                        byteBufAllocate = byteBufAllocate;
                    } else if (byteBufAllocate.isReadable()) {
                        this.readPending = false;
                        channelPipelinePipeline.fireChannelRead((Object) byteBufAllocate);
                    } else {
                        byteBufAllocate.release();
                    }
                    if (z14) {
                        handleRecvBufAllocHandle.readComplete();
                        channelPipelinePipeline.fireChannelReadComplete();
                    }
                    if (z12) {
                        closeOnRead(channelPipelinePipeline);
                    }
                    if (!this.readPending) {
                        return;
                    }
                } catch (Throwable th7) {
                    th = th7;
                    z13 = z14;
                }
                return;
            }
        } catch (Throwable th8) {
            th = th8;
        }
    }

    protected abstract int doReadBytes(ByteBuf byteBuf) throws Exception;

    @Override // io.netty.channel.AbstractChannel
    protected void doWrite(ChannelOutboundBuffer channelOutboundBuffer) throws Exception {
        while (true) {
            Object objCurrent = channelOutboundBuffer.current();
            if (objCurrent == null) {
                return;
            }
            if (objCurrent instanceof ByteBuf) {
                ByteBuf byteBuf = (ByteBuf) objCurrent;
                int i10 = byteBuf.readableBytes();
                while (i10 > 0) {
                    doWriteBytes(byteBuf);
                    int i11 = byteBuf.readableBytes();
                    channelOutboundBuffer.progress(i10 - i11);
                    i10 = i11;
                }
                channelOutboundBuffer.remove();
            } else if (objCurrent instanceof FileRegion) {
                FileRegion fileRegion = (FileRegion) objCurrent;
                long jTransferred = fileRegion.transferred();
                doWriteFileRegion(fileRegion);
                channelOutboundBuffer.progress(fileRegion.transferred() - jTransferred);
                channelOutboundBuffer.remove();
            } else {
                channelOutboundBuffer.remove(new UnsupportedOperationException("unsupported message type: " + StringUtil.simpleClassName(objCurrent)));
            }
        }
    }

    protected abstract void doWriteBytes(ByteBuf byteBuf) throws Exception;

    protected abstract void doWriteFileRegion(FileRegion fileRegion) throws Exception;

    @Override // io.netty.channel.AbstractChannel
    protected final Object filterOutboundMessage(Object obj) throws Exception {
        if ((obj instanceof ByteBuf) || (obj instanceof FileRegion)) {
            return obj;
        }
        throw new UnsupportedOperationException("unsupported message type: " + StringUtil.simpleClassName(obj) + EXPECTED_TYPES);
    }

    protected abstract boolean isInputShutdown();

    @Override // io.netty.channel.Channel
    public ChannelMetadata metadata() {
        return METADATA;
    }

    protected abstract ChannelFuture shutdownInput();
}
