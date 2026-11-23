package io.netty.channel.sctp.nio;

import com.sun.nio.sctp.Association;
import com.sun.nio.sctp.MessageInfo;
import com.sun.nio.sctp.NotificationHandler;
import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufAllocator;
import io.netty.channel.Channel;
import io.netty.channel.ChannelException;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelMetadata;
import io.netty.channel.ChannelOutboundBuffer;
import io.netty.channel.ChannelPromise;
import io.netty.channel.RecvByteBufAllocator;
import io.netty.channel.nio.AbstractNioMessageChannel;
import io.netty.channel.sctp.DefaultSctpChannelConfig;
import io.netty.channel.sctp.SctpChannel;
import io.netty.channel.sctp.SctpChannelConfig;
import io.netty.channel.sctp.SctpMessage;
import io.netty.channel.sctp.SctpNotificationHandler;
import io.netty.channel.sctp.SctpServerChannel;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.StringUtil;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class NioSctpChannel extends AbstractNioMessageChannel implements SctpChannel {
    private static final ChannelMetadata METADATA = new ChannelMetadata(false);
    private static final InternalLogger logger = InternalLoggerFactory.getInstance((Class<?>) NioSctpChannel.class);
    private final SctpChannelConfig config;
    private final NotificationHandler<?> notificationHandler;

    private final class NioSctpChannelConfig extends DefaultSctpChannelConfig {
        @Override // io.netty.channel.DefaultChannelConfig
        protected void autoReadCleared() {
            NioSctpChannel.this.clearReadPending();
        }

        private NioSctpChannelConfig(NioSctpChannel nioSctpChannel, com.sun.nio.sctp.SctpChannel sctpChannel) {
            super(nioSctpChannel, sctpChannel);
        }
    }

    public NioSctpChannel() {
        this(newSctpChannel());
    }

    private static com.sun.nio.sctp.SctpChannel newSctpChannel() {
        try {
            return com.sun.nio.sctp.SctpChannel.open();
        } catch (IOException e10) {
            throw new ChannelException("Failed to open a sctp channel.", e10);
        }
    }

    @Override // io.netty.channel.sctp.SctpChannel
    public Set<InetSocketAddress> allLocalAddresses() {
        try {
            Set allLocalAddresses = mo45javaChannel().getAllLocalAddresses();
            LinkedHashSet linkedHashSet = new LinkedHashSet(allLocalAddresses.size());
            Iterator it2 = allLocalAddresses.iterator();
            while (it2.hasNext()) {
                linkedHashSet.add((InetSocketAddress) ((SocketAddress) it2.next()));
            }
            return linkedHashSet;
        } catch (Throwable unused) {
            return Collections.emptySet();
        }
    }

    @Override // io.netty.channel.sctp.SctpChannel
    public Set<InetSocketAddress> allRemoteAddresses() {
        try {
            Set remoteAddresses = mo45javaChannel().getRemoteAddresses();
            HashSet hashSet = new HashSet(remoteAddresses.size());
            Iterator it2 = remoteAddresses.iterator();
            while (it2.hasNext()) {
                hashSet.add((InetSocketAddress) ((SocketAddress) it2.next()));
            }
            return hashSet;
        } catch (Throwable unused) {
            return Collections.emptySet();
        }
    }

    @Override // io.netty.channel.sctp.SctpChannel
    public Association association() {
        try {
            return mo45javaChannel().association();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // io.netty.channel.sctp.SctpChannel
    public ChannelFuture bindAddress(InetAddress inetAddress) {
        return bindAddress(inetAddress, newPromise());
    }

    @Override // io.netty.channel.AbstractChannel
    protected void doBind(SocketAddress socketAddress) throws Exception {
        mo45javaChannel().bind(socketAddress);
    }

    @Override // io.netty.channel.nio.AbstractNioChannel, io.netty.channel.AbstractChannel
    protected void doClose() throws Exception {
        mo45javaChannel().close();
    }

    @Override // io.netty.channel.nio.AbstractNioChannel
    protected boolean doConnect(SocketAddress socketAddress, SocketAddress socketAddress2) throws Exception {
        if (socketAddress2 != null) {
            mo45javaChannel().bind(socketAddress2);
        }
        try {
            boolean zConnect = mo45javaChannel().connect(socketAddress);
            if (!zConnect) {
                selectionKey().interestOps(8);
            }
            return zConnect;
        } catch (Throwable th) {
            doClose();
            throw th;
        }
    }

    @Override // io.netty.channel.AbstractChannel
    protected void doDisconnect() throws Exception {
        doClose();
    }

    @Override // io.netty.channel.nio.AbstractNioChannel
    protected void doFinishConnect() throws Exception {
        if (!mo45javaChannel().finishConnect()) {
            throw new Error();
        }
    }

    @Override // io.netty.channel.nio.AbstractNioMessageChannel
    protected int doReadMessages(List<Object> list) throws Exception {
        com.sun.nio.sctp.SctpChannel sctpChannelMo45javaChannel = mo45javaChannel();
        RecvByteBufAllocator.Handle handleRecvBufAllocHandle = unsafe().recvBufAllocHandle();
        ByteBuf byteBufAllocate = handleRecvBufAllocHandle.allocate(config().getAllocator());
        try {
            ByteBuffer byteBufferInternalNioBuffer = byteBufAllocate.internalNioBuffer(byteBufAllocate.writerIndex(), byteBufAllocate.writableBytes());
            int iPosition = byteBufferInternalNioBuffer.position();
            MessageInfo messageInfoReceive = sctpChannelMo45javaChannel.receive(byteBufferInternalNioBuffer, (Object) null, this.notificationHandler);
            if (messageInfoReceive == null) {
                byteBufAllocate.release();
                return 0;
            }
            handleRecvBufAllocHandle.lastBytesRead(byteBufferInternalNioBuffer.position() - iPosition);
            list.add(new SctpMessage(messageInfoReceive, byteBufAllocate.writerIndex(byteBufAllocate.writerIndex() + handleRecvBufAllocHandle.lastBytesRead())));
            return 1;
        } catch (Throwable th) {
            try {
                PlatformDependent.throwException(th);
                return -1;
            } finally {
                byteBufAllocate.release();
            }
        }
    }

    @Override // io.netty.channel.nio.AbstractNioMessageChannel
    protected boolean doWriteMessage(Object obj, ChannelOutboundBuffer channelOutboundBuffer) throws Exception {
        SctpMessage sctpMessage = (SctpMessage) obj;
        ByteBuf byteBufContent = sctpMessage.content();
        int i10 = byteBufContent.readableBytes();
        if (i10 == 0) {
            return true;
        }
        ByteBufAllocator byteBufAllocatorAlloc = alloc();
        boolean z10 = byteBufContent.nioBufferCount() != 1;
        if (!z10 && !byteBufContent.isDirect() && byteBufAllocatorAlloc.isDirectBufferPooled()) {
            z10 = true;
        }
        if (z10) {
            byteBufContent = byteBufAllocatorAlloc.directBuffer(i10).writeBytes(byteBufContent);
        }
        ByteBuffer byteBufferNioBuffer = byteBufContent.nioBuffer();
        MessageInfo messageInfoCreateOutgoing = MessageInfo.createOutgoing(association(), (SocketAddress) null, sctpMessage.streamIdentifier());
        messageInfoCreateOutgoing.payloadProtocolID(sctpMessage.protocolIdentifier());
        messageInfoCreateOutgoing.streamNumber(sctpMessage.streamIdentifier());
        messageInfoCreateOutgoing.unordered(sctpMessage.isUnordered());
        return mo45javaChannel().send(byteBufferNioBuffer, messageInfoCreateOutgoing) > 0;
    }

    @Override // io.netty.channel.AbstractChannel
    protected final Object filterOutboundMessage(Object obj) throws Exception {
        if (obj instanceof SctpMessage) {
            SctpMessage sctpMessage = (SctpMessage) obj;
            ByteBuf byteBufContent = sctpMessage.content();
            return (byteBufContent.isDirect() && byteBufContent.nioBufferCount() == 1) ? sctpMessage : new SctpMessage(sctpMessage.protocolIdentifier(), sctpMessage.streamIdentifier(), sctpMessage.isUnordered(), newDirectBuffer(sctpMessage, byteBufContent));
        }
        throw new UnsupportedOperationException("unsupported message type: " + StringUtil.simpleClassName(obj) + " (expected: " + StringUtil.simpleClassName((Class<?>) SctpMessage.class));
    }

    @Override // io.netty.channel.Channel
    public boolean isActive() {
        return mo45javaChannel().isOpen() && association() != null;
    }

    @Override // io.netty.channel.AbstractChannel
    protected SocketAddress localAddress0() {
        try {
            Iterator it2 = mo45javaChannel().getAllLocalAddresses().iterator();
            if (it2.hasNext()) {
                return (SocketAddress) it2.next();
            }
            return null;
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // io.netty.channel.Channel
    public ChannelMetadata metadata() {
        return METADATA;
    }

    @Override // io.netty.channel.AbstractChannel
    protected SocketAddress remoteAddress0() {
        try {
            Iterator it2 = mo45javaChannel().getRemoteAddresses().iterator();
            if (it2.hasNext()) {
                return (SocketAddress) it2.next();
            }
            return null;
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // io.netty.channel.sctp.SctpChannel
    public ChannelFuture unbindAddress(InetAddress inetAddress) {
        return unbindAddress(inetAddress, newPromise());
    }

    public NioSctpChannel(com.sun.nio.sctp.SctpChannel sctpChannel) {
        this(null, sctpChannel);
    }

    @Override // io.netty.channel.sctp.SctpChannel
    public ChannelFuture bindAddress(final InetAddress inetAddress, final ChannelPromise channelPromise) {
        if (eventLoop().inEventLoop()) {
            try {
                mo45javaChannel().bindAddress(inetAddress);
                channelPromise.setSuccess();
            } catch (Throwable th) {
                channelPromise.setFailure(th);
            }
        } else {
            eventLoop().execute(new Runnable() { // from class: io.netty.channel.sctp.nio.NioSctpChannel.1
                @Override // java.lang.Runnable
                public void run() {
                    NioSctpChannel.this.bindAddress(inetAddress, channelPromise);
                }
            });
        }
        return channelPromise;
    }

    @Override // io.netty.channel.Channel
    public SctpChannelConfig config() {
        return this.config;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.channel.nio.AbstractNioChannel
    /* JADX INFO: renamed from: javaChannel, reason: merged with bridge method [inline-methods] */
    public com.sun.nio.sctp.SctpChannel mo45javaChannel() {
        return super.mo45javaChannel();
    }

    @Override // io.netty.channel.AbstractChannel, io.netty.channel.Channel
    public InetSocketAddress localAddress() {
        return (InetSocketAddress) super.localAddress();
    }

    @Override // io.netty.channel.AbstractChannel, io.netty.channel.Channel
    public SctpServerChannel parent() {
        return (SctpServerChannel) super.parent();
    }

    @Override // io.netty.channel.AbstractChannel, io.netty.channel.Channel
    public InetSocketAddress remoteAddress() {
        return (InetSocketAddress) super.remoteAddress();
    }

    @Override // io.netty.channel.sctp.SctpChannel
    public ChannelFuture unbindAddress(final InetAddress inetAddress, final ChannelPromise channelPromise) {
        if (eventLoop().inEventLoop()) {
            try {
                mo45javaChannel().unbindAddress(inetAddress);
                channelPromise.setSuccess();
            } catch (Throwable th) {
                channelPromise.setFailure(th);
            }
        } else {
            eventLoop().execute(new Runnable() { // from class: io.netty.channel.sctp.nio.NioSctpChannel.2
                @Override // java.lang.Runnable
                public void run() {
                    NioSctpChannel.this.unbindAddress(inetAddress, channelPromise);
                }
            });
        }
        return channelPromise;
    }

    public NioSctpChannel(Channel channel, com.sun.nio.sctp.SctpChannel sctpChannel) {
        super(channel, sctpChannel, 1);
        try {
            sctpChannel.configureBlocking(false);
            this.config = new NioSctpChannelConfig(this, sctpChannel);
            this.notificationHandler = new SctpNotificationHandler(this);
        } catch (IOException e10) {
            try {
                sctpChannel.close();
            } catch (IOException e11) {
                if (logger.isWarnEnabled()) {
                    logger.warn("Failed to close a partially initialized sctp channel.", (Throwable) e11);
                }
            }
            throw new ChannelException("Failed to enter non-blocking mode.", e10);
        }
    }
}
