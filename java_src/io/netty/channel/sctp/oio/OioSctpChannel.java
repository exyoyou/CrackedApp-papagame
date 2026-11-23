package io.netty.channel.sctp.oio;

import com.sun.nio.sctp.Association;
import com.sun.nio.sctp.MessageInfo;
import com.sun.nio.sctp.NotificationHandler;
import io.netty.buffer.ByteBuf;
import io.netty.channel.Channel;
import io.netty.channel.ChannelException;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelMetadata;
import io.netty.channel.ChannelOutboundBuffer;
import io.netty.channel.ChannelPromise;
import io.netty.channel.RecvByteBufAllocator;
import io.netty.channel.oio.AbstractOioMessageChannel;
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
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class OioSctpChannel extends AbstractOioMessageChannel implements SctpChannel {
    private final com.sun.nio.sctp.SctpChannel ch;
    private final SctpChannelConfig config;
    private final Selector connectSelector;
    private final NotificationHandler<?> notificationHandler;
    private final Selector readSelector;
    private final Selector writeSelector;
    private static final InternalLogger logger = InternalLoggerFactory.getInstance((Class<?>) OioSctpChannel.class);
    private static final ChannelMetadata METADATA = new ChannelMetadata(false);
    private static final String EXPECTED_TYPE = " (expected: " + StringUtil.simpleClassName((Class<?>) SctpMessage.class) + ')';

    private final class OioSctpChannelConfig extends DefaultSctpChannelConfig {
        @Override // io.netty.channel.DefaultChannelConfig
        protected void autoReadCleared() {
            OioSctpChannel.this.clearReadPending();
        }

        private OioSctpChannelConfig(OioSctpChannel oioSctpChannel, com.sun.nio.sctp.SctpChannel sctpChannel) {
            super(oioSctpChannel, sctpChannel);
        }
    }

    public OioSctpChannel() {
        this(openChannel());
    }

    private static void closeSelector(String str, Selector selector) {
        try {
            selector.close();
        } catch (IOException e10) {
            if (logger.isWarnEnabled()) {
                logger.warn("Failed to close a " + str + " selector.", (Throwable) e10);
            }
        }
    }

    private static com.sun.nio.sctp.SctpChannel openChannel() {
        try {
            return com.sun.nio.sctp.SctpChannel.open();
        } catch (IOException e10) {
            throw new ChannelException("Failed to open a sctp channel.", e10);
        }
    }

    @Override // io.netty.channel.sctp.SctpChannel
    public Set<InetSocketAddress> allLocalAddresses() {
        try {
            Set allLocalAddresses = this.ch.getAllLocalAddresses();
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
            Set remoteAddresses = this.ch.getRemoteAddresses();
            LinkedHashSet linkedHashSet = new LinkedHashSet(remoteAddresses.size());
            Iterator it2 = remoteAddresses.iterator();
            while (it2.hasNext()) {
                linkedHashSet.add((InetSocketAddress) ((SocketAddress) it2.next()));
            }
            return linkedHashSet;
        } catch (Throwable unused) {
            return Collections.emptySet();
        }
    }

    @Override // io.netty.channel.sctp.SctpChannel
    public Association association() {
        try {
            return this.ch.association();
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
        this.ch.bind(socketAddress);
    }

    @Override // io.netty.channel.AbstractChannel
    protected void doClose() throws Exception {
        closeSelector("read", this.readSelector);
        closeSelector("write", this.writeSelector);
        closeSelector("connect", this.connectSelector);
        this.ch.close();
    }

    @Override // io.netty.channel.oio.AbstractOioChannel
    protected void doConnect(SocketAddress socketAddress, SocketAddress socketAddress2) throws Exception {
        if (socketAddress2 != null) {
            this.ch.bind(socketAddress2);
        }
        try {
            this.ch.connect(socketAddress);
            boolean z10 = false;
            while (!z10) {
                if (this.connectSelector.select(1000L) >= 0) {
                    Set<SelectionKey> setSelectedKeys = this.connectSelector.selectedKeys();
                    Iterator<SelectionKey> it2 = setSelectedKeys.iterator();
                    while (it2.hasNext()) {
                        if (it2.next().isConnectable()) {
                            setSelectedKeys.clear();
                            z10 = true;
                            break;
                        }
                    }
                    setSelectedKeys.clear();
                }
            }
            if (this.ch.finishConnect()) {
                return;
            }
            doClose();
        } catch (Throwable th) {
            doClose();
            throw th;
        }
    }

    @Override // io.netty.channel.AbstractChannel
    protected void doDisconnect() throws Exception {
        doClose();
    }

    @Override // io.netty.channel.oio.AbstractOioMessageChannel
    protected int doReadMessages(List<Object> list) throws Exception {
        if (!this.readSelector.isOpen()) {
            return 0;
        }
        if (!(this.readSelector.select(1000L) > 0)) {
            return 0;
        }
        this.readSelector.selectedKeys().clear();
        RecvByteBufAllocator.Handle handleRecvBufAllocHandle = unsafe().recvBufAllocHandle();
        ByteBuf byteBufAllocate = handleRecvBufAllocHandle.allocate(config().getAllocator());
        try {
            ByteBuffer byteBufferNioBuffer = byteBufAllocate.nioBuffer(byteBufAllocate.writerIndex(), byteBufAllocate.writableBytes());
            MessageInfo messageInfoReceive = this.ch.receive(byteBufferNioBuffer, (Object) null, this.notificationHandler);
            if (messageInfoReceive == null) {
                byteBufAllocate.release();
                return 0;
            }
            byteBufferNioBuffer.flip();
            handleRecvBufAllocHandle.lastBytesRead(byteBufferNioBuffer.remaining());
            list.add(new SctpMessage(messageInfoReceive, byteBufAllocate.writerIndex(byteBufAllocate.writerIndex() + handleRecvBufAllocHandle.lastBytesRead())));
            return 1;
        } catch (Throwable th) {
            try {
                PlatformDependent.throwException(th);
                return 0;
            } finally {
                byteBufAllocate.release();
            }
        }
    }

    @Override // io.netty.channel.AbstractChannel
    protected void doWrite(ChannelOutboundBuffer channelOutboundBuffer) throws Exception {
        ByteBuffer byteBufferNioBuffer;
        if (this.writeSelector.isOpen()) {
            int size = channelOutboundBuffer.size();
            if (this.writeSelector.select(1000L) > 0) {
                Set<SelectionKey> setSelectedKeys = this.writeSelector.selectedKeys();
                if (setSelectedKeys.isEmpty()) {
                    return;
                }
                Iterator<SelectionKey> it2 = setSelectedKeys.iterator();
                int i10 = 0;
                while (i10 != size) {
                    it2.next();
                    it2.remove();
                    SctpMessage sctpMessage = (SctpMessage) channelOutboundBuffer.current();
                    if (sctpMessage == null) {
                        return;
                    }
                    ByteBuf byteBufContent = sctpMessage.content();
                    int i11 = byteBufContent.readableBytes();
                    if (byteBufContent.nioBufferCount() != -1) {
                        byteBufferNioBuffer = byteBufContent.nioBuffer();
                    } else {
                        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i11);
                        byteBufContent.getBytes(byteBufContent.readerIndex(), byteBufferAllocate);
                        byteBufferAllocate.flip();
                        byteBufferNioBuffer = byteBufferAllocate;
                    }
                    MessageInfo messageInfoCreateOutgoing = MessageInfo.createOutgoing(association(), (SocketAddress) null, sctpMessage.streamIdentifier());
                    messageInfoCreateOutgoing.payloadProtocolID(sctpMessage.protocolIdentifier());
                    messageInfoCreateOutgoing.streamNumber(sctpMessage.streamIdentifier());
                    messageInfoCreateOutgoing.unordered(sctpMessage.isUnordered());
                    this.ch.send(byteBufferNioBuffer, messageInfoCreateOutgoing);
                    i10++;
                    channelOutboundBuffer.remove();
                    if (!it2.hasNext()) {
                        return;
                    }
                }
            }
        }
    }

    @Override // io.netty.channel.AbstractChannel
    protected Object filterOutboundMessage(Object obj) throws Exception {
        if (obj instanceof SctpMessage) {
            return obj;
        }
        throw new UnsupportedOperationException("unsupported message type: " + StringUtil.simpleClassName(obj) + EXPECTED_TYPE);
    }

    @Override // io.netty.channel.Channel
    public boolean isActive() {
        return isOpen() && association() != null;
    }

    @Override // io.netty.channel.Channel
    public boolean isOpen() {
        return this.ch.isOpen();
    }

    @Override // io.netty.channel.AbstractChannel
    protected SocketAddress localAddress0() {
        try {
            Iterator it2 = this.ch.getAllLocalAddresses().iterator();
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
            Iterator it2 = this.ch.getRemoteAddresses().iterator();
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

    public OioSctpChannel(com.sun.nio.sctp.SctpChannel sctpChannel) {
        this(null, sctpChannel);
    }

    @Override // io.netty.channel.sctp.SctpChannel
    public ChannelFuture bindAddress(final InetAddress inetAddress, final ChannelPromise channelPromise) {
        if (eventLoop().inEventLoop()) {
            try {
                this.ch.bindAddress(inetAddress);
                channelPromise.setSuccess();
            } catch (Throwable th) {
                channelPromise.setFailure(th);
            }
        } else {
            eventLoop().execute(new Runnable() { // from class: io.netty.channel.sctp.oio.OioSctpChannel.1
                @Override // java.lang.Runnable
                public void run() {
                    OioSctpChannel.this.bindAddress(inetAddress, channelPromise);
                }
            });
        }
        return channelPromise;
    }

    @Override // io.netty.channel.Channel
    public SctpChannelConfig config() {
        return this.config;
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
                this.ch.unbindAddress(inetAddress);
                channelPromise.setSuccess();
            } catch (Throwable th) {
                channelPromise.setFailure(th);
            }
        } else {
            eventLoop().execute(new Runnable() { // from class: io.netty.channel.sctp.oio.OioSctpChannel.2
                @Override // java.lang.Runnable
                public void run() {
                    OioSctpChannel.this.unbindAddress(inetAddress, channelPromise);
                }
            });
        }
        return channelPromise;
    }

    public OioSctpChannel(Channel channel, com.sun.nio.sctp.SctpChannel sctpChannel) {
        super(channel);
        this.ch = sctpChannel;
        try {
            try {
                sctpChannel.configureBlocking(false);
                Selector selectorOpen = Selector.open();
                this.readSelector = selectorOpen;
                Selector selectorOpen2 = Selector.open();
                this.writeSelector = selectorOpen2;
                Selector selectorOpen3 = Selector.open();
                this.connectSelector = selectorOpen3;
                sctpChannel.register(selectorOpen, 1);
                sctpChannel.register(selectorOpen2, 4);
                sctpChannel.register(selectorOpen3, 8);
                this.config = new OioSctpChannelConfig(this, sctpChannel);
                this.notificationHandler = new SctpNotificationHandler(this);
            } catch (Exception e10) {
                throw new ChannelException("failed to initialize a sctp channel", e10);
            }
        } catch (Throwable th) {
            try {
                sctpChannel.close();
            } catch (IOException e11) {
                logger.warn("Failed to close a sctp channel.", (Throwable) e11);
            }
            throw th;
        }
    }
}
