package io.netty.channel.kqueue;

import io.netty.channel.Channel;
import io.netty.channel.ChannelMetadata;
import io.netty.channel.ChannelOutboundBuffer;
import io.netty.channel.ChannelPipeline;
import io.netty.channel.EventLoop;
import io.netty.channel.ServerChannel;
import java.net.InetSocketAddress;
import java.net.SocketAddress;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractKQueueServerChannel extends AbstractKQueueChannel implements ServerChannel {
    private static final ChannelMetadata METADATA = new ChannelMetadata(false, 16);

    final class KQueueServerSocketUnsafe extends AbstractKQueueChannel.AbstractKQueueUnsafe {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private final byte[] acceptedAddress;

        KQueueServerSocketUnsafe() {
            super();
            this.acceptedAddress = new byte[26];
        }

        @Override // io.netty.channel.kqueue.AbstractKQueueChannel.AbstractKQueueUnsafe
        void readReady(KQueueRecvByteAllocatorHandle kQueueRecvByteAllocatorHandle) {
            KQueueChannelConfig kQueueChannelConfigConfig = AbstractKQueueServerChannel.this.config();
            if (AbstractKQueueServerChannel.this.shouldBreakReadReady(kQueueChannelConfigConfig)) {
                clearReadFilter0();
                return;
            }
            ChannelPipeline channelPipelinePipeline = AbstractKQueueServerChannel.this.pipeline();
            kQueueRecvByteAllocatorHandle.reset(kQueueChannelConfigConfig);
            kQueueRecvByteAllocatorHandle.attemptedBytesRead(1);
            readReadyBefore();
            do {
                int iAccept = AbstractKQueueServerChannel.this.socket.accept(this.acceptedAddress);
                if (iAccept == -1) {
                    kQueueRecvByteAllocatorHandle.lastBytesRead(-1);
                    break;
                }
                kQueueRecvByteAllocatorHandle.lastBytesRead(1);
                kQueueRecvByteAllocatorHandle.incMessagesRead(1);
                this.readPending = false;
                AbstractKQueueServerChannel abstractKQueueServerChannel = AbstractKQueueServerChannel.this;
                byte[] bArr = this.acceptedAddress;
                channelPipelinePipeline.fireChannelRead((Object) abstractKQueueServerChannel.newChildChannel(iAccept, bArr, 1, bArr[0]));
            } while (kQueueRecvByteAllocatorHandle.continueReading());
            th = null;
            try {
                kQueueRecvByteAllocatorHandle.readComplete();
                channelPipelinePipeline.fireChannelReadComplete();
                if (th != null) {
                    channelPipelinePipeline.fireExceptionCaught(th);
                }
            } finally {
                readReadyFinally(kQueueChannelConfigConfig);
            }
        }
    }

    AbstractKQueueServerChannel(BsdSocket bsdSocket) {
        this(bsdSocket, AbstractKQueueChannel.isSoErrorZero(bsdSocket));
    }

    @Override // io.netty.channel.kqueue.AbstractKQueueChannel
    protected boolean doConnect(SocketAddress socketAddress, SocketAddress socketAddress2) throws Exception {
        throw new UnsupportedOperationException();
    }

    @Override // io.netty.channel.AbstractChannel
    protected void doWrite(ChannelOutboundBuffer channelOutboundBuffer) throws Exception {
        throw new UnsupportedOperationException();
    }

    @Override // io.netty.channel.AbstractChannel
    protected Object filterOutboundMessage(Object obj) throws Exception {
        throw new UnsupportedOperationException();
    }

    @Override // io.netty.channel.kqueue.AbstractKQueueChannel, io.netty.channel.Channel
    public /* bridge */ /* synthetic */ boolean isActive() {
        return super.isActive();
    }

    @Override // io.netty.channel.kqueue.AbstractKQueueChannel, io.netty.channel.AbstractChannel
    protected boolean isCompatible(EventLoop eventLoop) {
        return eventLoop instanceof KQueueEventLoop;
    }

    @Override // io.netty.channel.kqueue.AbstractKQueueChannel, io.netty.channel.Channel
    public /* bridge */ /* synthetic */ boolean isOpen() {
        return super.isOpen();
    }

    @Override // io.netty.channel.kqueue.AbstractKQueueChannel, io.netty.channel.Channel
    public ChannelMetadata metadata() {
        return METADATA;
    }

    abstract Channel newChildChannel(int i10, byte[] bArr, int i11, int i12) throws Exception;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.channel.kqueue.AbstractKQueueChannel, io.netty.channel.AbstractChannel
    public InetSocketAddress remoteAddress0() {
        return null;
    }

    AbstractKQueueServerChannel(BsdSocket bsdSocket, boolean z10) {
        super((Channel) null, bsdSocket, z10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.channel.kqueue.AbstractKQueueChannel, io.netty.channel.AbstractChannel
    public AbstractKQueueChannel.AbstractKQueueUnsafe newUnsafe() {
        return new KQueueServerSocketUnsafe();
    }
}
