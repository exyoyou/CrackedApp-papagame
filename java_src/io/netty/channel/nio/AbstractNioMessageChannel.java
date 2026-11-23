package io.netty.channel.nio;

import io.netty.channel.Channel;
import io.netty.channel.ChannelConfig;
import io.netty.channel.ChannelOutboundBuffer;
import io.netty.channel.ChannelPipeline;
import io.netty.channel.RecvByteBufAllocator;
import io.netty.channel.ServerChannel;
import java.io.IOException;
import java.net.PortUnreachableException;
import java.nio.channels.SelectableChannel;
import java.nio.channels.SelectionKey;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractNioMessageChannel extends AbstractNioChannel {
    boolean inputShutdown;

    private final class NioMessageUnsafe extends AbstractNioChannel.AbstractNioUnsafe {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private final List<Object> readBuf;

        private NioMessageUnsafe() {
            super();
            this.readBuf = new ArrayList();
        }

        @Override // io.netty.channel.nio.AbstractNioChannel.NioUnsafe
        public void read() {
            Throwable th;
            boolean zCloseOnReadError;
            boolean z10;
            ChannelConfig channelConfigConfig = AbstractNioMessageChannel.this.config();
            ChannelPipeline channelPipelinePipeline = AbstractNioMessageChannel.this.pipeline();
            RecvByteBufAllocator.Handle handleRecvBufAllocHandle = AbstractNioMessageChannel.this.unsafe().recvBufAllocHandle();
            handleRecvBufAllocHandle.reset(channelConfigConfig);
            while (true) {
                try {
                    int iDoReadMessages = AbstractNioMessageChannel.this.doReadMessages(this.readBuf);
                    if (iDoReadMessages != 0) {
                        if (iDoReadMessages < 0) {
                            zCloseOnReadError = true;
                            break;
                        } else {
                            handleRecvBufAllocHandle.incMessagesRead(iDoReadMessages);
                            if (!handleRecvBufAllocHandle.continueReading()) {
                            }
                        }
                    }
                    zCloseOnReadError = false;
                    break;
                } catch (Throwable th2) {
                    th = th2;
                    zCloseOnReadError = false;
                }
            }
            th = null;
            try {
                int size = this.readBuf.size();
                for (int i10 = 0; i10 < size; i10++) {
                    AbstractNioMessageChannel.this.readPending = false;
                    channelPipelinePipeline.fireChannelRead(this.readBuf.get(i10));
                }
                this.readBuf.clear();
                handleRecvBufAllocHandle.readComplete();
                channelPipelinePipeline.fireChannelReadComplete();
                if (th != null) {
                    zCloseOnReadError = AbstractNioMessageChannel.this.closeOnReadError(th);
                    channelPipelinePipeline.fireExceptionCaught(th);
                }
                if (zCloseOnReadError) {
                    AbstractNioMessageChannel abstractNioMessageChannel = AbstractNioMessageChannel.this;
                    abstractNioMessageChannel.inputShutdown = true;
                    if (abstractNioMessageChannel.isOpen()) {
                        close(voidPromise());
                    }
                }
                if (z10) {
                    return;
                }
            } finally {
                if (!AbstractNioMessageChannel.this.readPending && !channelConfigConfig.isAutoRead()) {
                    removeReadOp();
                }
            }
        }
    }

    protected AbstractNioMessageChannel(Channel channel, SelectableChannel selectableChannel, int i10) {
        super(channel, selectableChannel, i10);
    }

    protected boolean closeOnReadError(Throwable th) {
        if (!isActive()) {
            return true;
        }
        if (th instanceof PortUnreachableException) {
            return false;
        }
        if (th instanceof IOException) {
            return !(this instanceof ServerChannel);
        }
        return true;
    }

    protected boolean continueOnWriteError() {
        return false;
    }

    @Override // io.netty.channel.nio.AbstractNioChannel, io.netty.channel.AbstractChannel
    protected void doBeginRead() throws Exception {
        if (this.inputShutdown) {
            return;
        }
        super.doBeginRead();
    }

    protected abstract int doReadMessages(List<Object> list) throws Exception;

    @Override // io.netty.channel.AbstractChannel
    protected void doWrite(ChannelOutboundBuffer channelOutboundBuffer) throws Exception {
        SelectionKey selectionKey = selectionKey();
        int iInterestOps = selectionKey.interestOps();
        while (true) {
            Object objCurrent = channelOutboundBuffer.current();
            if (objCurrent == null) {
                if ((iInterestOps & 4) != 0) {
                    selectionKey.interestOps(iInterestOps & (-5));
                    return;
                }
                return;
            }
            try {
                boolean z10 = true;
                int writeSpinCount = config().getWriteSpinCount() - 1;
                while (true) {
                    if (writeSpinCount < 0) {
                        z10 = false;
                        break;
                    } else if (doWriteMessage(objCurrent, channelOutboundBuffer)) {
                        break;
                    } else {
                        writeSpinCount--;
                    }
                }
                if (!z10) {
                    if ((iInterestOps & 4) == 0) {
                        selectionKey.interestOps(iInterestOps | 4);
                        return;
                    }
                    return;
                }
                channelOutboundBuffer.remove();
            } catch (Exception e10) {
                if (!continueOnWriteError()) {
                    throw e10;
                }
                channelOutboundBuffer.remove(e10);
            }
        }
    }

    protected abstract boolean doWriteMessage(Object obj, ChannelOutboundBuffer channelOutboundBuffer) throws Exception;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.channel.AbstractChannel
    public AbstractNioChannel.AbstractNioUnsafe newUnsafe() {
        return new NioMessageUnsafe();
    }
}
