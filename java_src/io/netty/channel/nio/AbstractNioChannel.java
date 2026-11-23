package io.netty.channel.nio;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufAllocator;
import io.netty.buffer.ByteBufUtil;
import io.netty.buffer.Unpooled;
import io.netty.channel.AbstractChannel;
import io.netty.channel.Channel;
import io.netty.channel.ChannelException;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelFutureListener;
import io.netty.channel.ChannelPromise;
import io.netty.channel.ConnectTimeoutException;
import io.netty.channel.EventLoop;
import io.netty.util.ReferenceCountUtil;
import io.netty.util.ReferenceCounted;
import io.netty.util.concurrent.Future;
import io.netty.util.concurrent.GenericFutureListener;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.io.IOException;
import java.net.SocketAddress;
import java.nio.channels.CancelledKeyException;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.ConnectionPendingException;
import java.nio.channels.SelectableChannel;
import java.nio.channels.SelectionKey;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractNioChannel extends AbstractChannel {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final InternalLogger logger = InternalLoggerFactory.getInstance((Class<?>) AbstractNioChannel.class);
    private final SelectableChannel ch;
    private final Runnable clearReadPendingRunnable;
    private ChannelPromise connectPromise;
    private ScheduledFuture<?> connectTimeoutFuture;
    protected final int readInterestOp;
    boolean readPending;
    private SocketAddress requestedRemoteAddress;
    volatile SelectionKey selectionKey;

    public interface NioUnsafe extends Channel.Unsafe {
        SelectableChannel ch();

        void finishConnect();

        void forceFlush();

        void read();
    }

    protected AbstractNioChannel(Channel channel, SelectableChannel selectableChannel, int i10) {
        super(channel);
        this.clearReadPendingRunnable = new Runnable() { // from class: io.netty.channel.nio.AbstractNioChannel.1
            @Override // java.lang.Runnable
            public void run() {
                AbstractNioChannel.this.clearReadPending0();
            }
        };
        this.ch = selectableChannel;
        this.readInterestOp = i10;
        try {
            selectableChannel.configureBlocking(false);
        } catch (IOException e10) {
            try {
                selectableChannel.close();
            } catch (IOException e11) {
                logger.warn("Failed to close a partially initialized socket.", (Throwable) e11);
            }
            throw new ChannelException("Failed to enter non-blocking mode.", e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearReadPending0() {
        this.readPending = false;
        ((AbstractNioUnsafe) unsafe()).removeReadOp();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setReadPending0(boolean z10) {
        this.readPending = z10;
        if (z10) {
            return;
        }
        ((AbstractNioUnsafe) unsafe()).removeReadOp();
    }

    protected final void clearReadPending() {
        if (!isRegistered()) {
            this.readPending = false;
            return;
        }
        NioEventLoop nioEventLoopEventLoop = eventLoop();
        if (nioEventLoopEventLoop.inEventLoop()) {
            clearReadPending0();
        } else {
            nioEventLoopEventLoop.execute(this.clearReadPendingRunnable);
        }
    }

    @Override // io.netty.channel.AbstractChannel
    protected void doBeginRead() throws Exception {
        SelectionKey selectionKey = this.selectionKey;
        if (selectionKey.isValid()) {
            this.readPending = true;
            int iInterestOps = selectionKey.interestOps();
            int i10 = this.readInterestOp;
            if ((iInterestOps & i10) == 0) {
                selectionKey.interestOps(iInterestOps | i10);
            }
        }
    }

    @Override // io.netty.channel.AbstractChannel
    protected void doClose() throws Exception {
        ChannelPromise channelPromise = this.connectPromise;
        if (channelPromise != null) {
            channelPromise.tryFailure(new ClosedChannelException());
            this.connectPromise = null;
        }
        ScheduledFuture<?> scheduledFuture = this.connectTimeoutFuture;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
            this.connectTimeoutFuture = null;
        }
    }

    protected abstract boolean doConnect(SocketAddress socketAddress, SocketAddress socketAddress2) throws Exception;

    @Override // io.netty.channel.AbstractChannel
    protected void doDeregister() throws Exception {
        eventLoop().cancel(selectionKey());
    }

    protected abstract void doFinishConnect() throws Exception;

    @Override // io.netty.channel.AbstractChannel
    protected void doRegister() throws Exception {
        boolean z10 = false;
        while (true) {
            try {
                this.selectionKey = mo45javaChannel().register(eventLoop().unwrappedSelector(), 0, this);
                return;
            } catch (CancelledKeyException e10) {
                if (z10) {
                    throw e10;
                }
                eventLoop().selectNow();
                z10 = true;
            }
        }
    }

    @Override // io.netty.channel.AbstractChannel
    protected boolean isCompatible(EventLoop eventLoop) {
        return eventLoop instanceof NioEventLoop;
    }

    @Override // io.netty.channel.Channel
    public boolean isOpen() {
        return this.ch.isOpen();
    }

    @Deprecated
    protected boolean isReadPending() {
        return this.readPending;
    }

    /* JADX INFO: renamed from: javaChannel */
    protected SelectableChannel mo45javaChannel() {
        return this.ch;
    }

    protected final ByteBuf newDirectBuffer(ByteBuf byteBuf) {
        int i10 = byteBuf.readableBytes();
        if (i10 == 0) {
            ReferenceCountUtil.safeRelease(byteBuf);
            return Unpooled.EMPTY_BUFFER;
        }
        ByteBufAllocator byteBufAllocatorAlloc = alloc();
        if (byteBufAllocatorAlloc.isDirectBufferPooled()) {
            ByteBuf byteBufDirectBuffer = byteBufAllocatorAlloc.directBuffer(i10);
            byteBufDirectBuffer.writeBytes(byteBuf, byteBuf.readerIndex(), i10);
            ReferenceCountUtil.safeRelease(byteBuf);
            return byteBufDirectBuffer;
        }
        ByteBuf byteBufThreadLocalDirectBuffer = ByteBufUtil.threadLocalDirectBuffer();
        if (byteBufThreadLocalDirectBuffer == null) {
            return byteBuf;
        }
        byteBufThreadLocalDirectBuffer.writeBytes(byteBuf, byteBuf.readerIndex(), i10);
        ReferenceCountUtil.safeRelease(byteBuf);
        return byteBufThreadLocalDirectBuffer;
    }

    protected SelectionKey selectionKey() {
        return this.selectionKey;
    }

    @Deprecated
    protected void setReadPending(final boolean z10) {
        if (!isRegistered()) {
            this.readPending = z10;
            return;
        }
        NioEventLoop nioEventLoopEventLoop = eventLoop();
        if (nioEventLoopEventLoop.inEventLoop()) {
            setReadPending0(z10);
        } else {
            nioEventLoopEventLoop.execute(new Runnable() { // from class: io.netty.channel.nio.AbstractNioChannel.2
                @Override // java.lang.Runnable
                public void run() {
                    AbstractNioChannel.this.setReadPending0(z10);
                }
            });
        }
    }

    @Override // io.netty.channel.AbstractChannel, io.netty.channel.Channel
    public NioEventLoop eventLoop() {
        return (NioEventLoop) super.eventLoop();
    }

    @Override // io.netty.channel.AbstractChannel, io.netty.channel.Channel
    public NioUnsafe unsafe() {
        return (NioUnsafe) super.unsafe();
    }

    protected abstract class AbstractNioUnsafe extends AbstractChannel.AbstractUnsafe implements NioUnsafe {
        static final /* synthetic */ boolean $assertionsDisabled = false;

        protected AbstractNioUnsafe() {
            super();
        }

        private void fulfillConnectPromise(ChannelPromise channelPromise, boolean z10) {
            if (channelPromise == null) {
                return;
            }
            boolean zIsActive = AbstractNioChannel.this.isActive();
            boolean zTrySuccess = channelPromise.trySuccess();
            if (!z10 && zIsActive) {
                AbstractNioChannel.this.pipeline().fireChannelActive();
            }
            if (zTrySuccess) {
                return;
            }
            close(voidPromise());
        }

        private boolean isFlushPending() {
            SelectionKey selectionKey = AbstractNioChannel.this.selectionKey();
            return selectionKey.isValid() && (selectionKey.interestOps() & 4) != 0;
        }

        @Override // io.netty.channel.nio.AbstractNioChannel.NioUnsafe
        public final SelectableChannel ch() {
            return AbstractNioChannel.this.mo45javaChannel();
        }

        @Override // io.netty.channel.Channel.Unsafe
        public final void connect(final SocketAddress socketAddress, SocketAddress socketAddress2, ChannelPromise channelPromise) {
            if (channelPromise.setUncancellable() && ensureOpen(channelPromise)) {
                try {
                    if (AbstractNioChannel.this.connectPromise != null) {
                        throw new ConnectionPendingException();
                    }
                    boolean zIsActive = AbstractNioChannel.this.isActive();
                    if (AbstractNioChannel.this.doConnect(socketAddress, socketAddress2)) {
                        fulfillConnectPromise(channelPromise, zIsActive);
                        return;
                    }
                    AbstractNioChannel.this.connectPromise = channelPromise;
                    AbstractNioChannel.this.requestedRemoteAddress = socketAddress;
                    int connectTimeoutMillis = AbstractNioChannel.this.config().getConnectTimeoutMillis();
                    if (connectTimeoutMillis > 0) {
                        AbstractNioChannel abstractNioChannel = AbstractNioChannel.this;
                        abstractNioChannel.connectTimeoutFuture = abstractNioChannel.eventLoop().schedule(new Runnable() { // from class: io.netty.channel.nio.AbstractNioChannel.AbstractNioUnsafe.1
                            @Override // java.lang.Runnable
                            public void run() {
                                ChannelPromise channelPromise2 = AbstractNioChannel.this.connectPromise;
                                ConnectTimeoutException connectTimeoutException = new ConnectTimeoutException("connection timed out: " + socketAddress);
                                if (channelPromise2 == null || !channelPromise2.tryFailure(connectTimeoutException)) {
                                    return;
                                }
                                AbstractNioUnsafe abstractNioUnsafe = AbstractNioUnsafe.this;
                                abstractNioUnsafe.close(abstractNioUnsafe.voidPromise());
                            }
                        }, connectTimeoutMillis, TimeUnit.MILLISECONDS);
                    }
                    channelPromise.addListener((GenericFutureListener<? extends Future<? super Void>>) new ChannelFutureListener() { // from class: io.netty.channel.nio.AbstractNioChannel.AbstractNioUnsafe.2
                        @Override // io.netty.util.concurrent.GenericFutureListener
                        public void operationComplete(ChannelFuture channelFuture) throws Exception {
                            if (channelFuture.isCancelled()) {
                                if (AbstractNioChannel.this.connectTimeoutFuture != null) {
                                    AbstractNioChannel.this.connectTimeoutFuture.cancel(false);
                                }
                                AbstractNioChannel.this.connectPromise = null;
                                AbstractNioUnsafe abstractNioUnsafe = AbstractNioUnsafe.this;
                                abstractNioUnsafe.close(abstractNioUnsafe.voidPromise());
                            }
                        }
                    });
                } catch (Throwable th) {
                    channelPromise.tryFailure(annotateConnectException(th, socketAddress));
                    closeIfClosed();
                }
            }
        }

        @Override // io.netty.channel.nio.AbstractNioChannel.NioUnsafe
        public final void finishConnect() {
            try {
                boolean zIsActive = AbstractNioChannel.this.isActive();
                AbstractNioChannel.this.doFinishConnect();
                fulfillConnectPromise(AbstractNioChannel.this.connectPromise, zIsActive);
                if (AbstractNioChannel.this.connectTimeoutFuture != null) {
                }
            } catch (Throwable th) {
                try {
                    fulfillConnectPromise(AbstractNioChannel.this.connectPromise, annotateConnectException(th, AbstractNioChannel.this.requestedRemoteAddress));
                } finally {
                    if (AbstractNioChannel.this.connectTimeoutFuture != null) {
                        AbstractNioChannel.this.connectTimeoutFuture.cancel(false);
                    }
                    AbstractNioChannel.this.connectPromise = null;
                }
            }
        }

        @Override // io.netty.channel.AbstractChannel.AbstractUnsafe
        protected final void flush0() {
            if (isFlushPending()) {
                return;
            }
            super.flush0();
        }

        @Override // io.netty.channel.nio.AbstractNioChannel.NioUnsafe
        public final void forceFlush() {
            super.flush0();
        }

        protected final void removeReadOp() {
            SelectionKey selectionKey = AbstractNioChannel.this.selectionKey();
            if (selectionKey.isValid()) {
                int iInterestOps = selectionKey.interestOps();
                int i10 = AbstractNioChannel.this.readInterestOp;
                if ((iInterestOps & i10) != 0) {
                    selectionKey.interestOps(iInterestOps & (~i10));
                }
            }
        }

        private void fulfillConnectPromise(ChannelPromise channelPromise, Throwable th) {
            if (channelPromise == null) {
                return;
            }
            channelPromise.tryFailure(th);
            closeIfClosed();
        }
    }

    protected final ByteBuf newDirectBuffer(ReferenceCounted referenceCounted, ByteBuf byteBuf) {
        int i10 = byteBuf.readableBytes();
        if (i10 == 0) {
            ReferenceCountUtil.safeRelease(referenceCounted);
            return Unpooled.EMPTY_BUFFER;
        }
        ByteBufAllocator byteBufAllocatorAlloc = alloc();
        if (byteBufAllocatorAlloc.isDirectBufferPooled()) {
            ByteBuf byteBufDirectBuffer = byteBufAllocatorAlloc.directBuffer(i10);
            byteBufDirectBuffer.writeBytes(byteBuf, byteBuf.readerIndex(), i10);
            ReferenceCountUtil.safeRelease(referenceCounted);
            return byteBufDirectBuffer;
        }
        ByteBuf byteBufThreadLocalDirectBuffer = ByteBufUtil.threadLocalDirectBuffer();
        if (byteBufThreadLocalDirectBuffer != null) {
            byteBufThreadLocalDirectBuffer.writeBytes(byteBuf, byteBuf.readerIndex(), i10);
            ReferenceCountUtil.safeRelease(referenceCounted);
            return byteBufThreadLocalDirectBuffer;
        }
        if (referenceCounted != byteBuf) {
            byteBuf.retain();
            ReferenceCountUtil.safeRelease(referenceCounted);
        }
        return byteBuf;
    }
}
