package io.netty.channel.epoll;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufAllocator;
import io.netty.buffer.Unpooled;
import io.netty.channel.AddressedEnvelope;
import io.netty.channel.Channel;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelMetadata;
import io.netty.channel.ChannelOutboundBuffer;
import io.netty.channel.ChannelPipeline;
import io.netty.channel.ChannelPromise;
import io.netty.channel.DefaultAddressedEnvelope;
import io.netty.channel.socket.DatagramChannel;
import io.netty.channel.socket.DatagramPacket;
import io.netty.channel.socket.InternetProtocolFamily;
import io.netty.channel.unix.DatagramSocketAddress;
import io.netty.channel.unix.Errors;
import io.netty.channel.unix.IovArray;
import io.netty.channel.unix.Socket;
import io.netty.channel.unix.UnixChannelUtil;
import io.netty.util.ReferenceCountUtil;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.RecyclableArrayList;
import io.netty.util.internal.StringUtil;
import java.io.IOException;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.NetworkInterface;
import java.net.PortUnreachableException;
import java.net.SocketAddress;
import java.nio.ByteBuffer;
import kotlin.text.Typography;

/* JADX INFO: loaded from: classes.dex */
public final class EpollDatagramChannel extends AbstractEpollChannel implements DatagramChannel {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private final EpollDatagramChannelConfig config;
    private volatile boolean connected;
    private static final ChannelMetadata METADATA = new ChannelMetadata(true);
    private static final String EXPECTED_TYPES = " (expected: " + StringUtil.simpleClassName((Class<?>) DatagramPacket.class) + ", " + StringUtil.simpleClassName((Class<?>) AddressedEnvelope.class) + Typography.less + StringUtil.simpleClassName((Class<?>) ByteBuf.class) + ", " + StringUtil.simpleClassName((Class<?>) InetSocketAddress.class) + ">, " + StringUtil.simpleClassName((Class<?>) ByteBuf.class) + ')';

    final class EpollDatagramChannelUnsafe extends AbstractEpollChannel.AbstractEpollUnsafe {
        static final /* synthetic */ boolean $assertionsDisabled = false;

        EpollDatagramChannelUnsafe() {
            super();
        }

        @Override // io.netty.channel.epoll.AbstractEpollChannel.AbstractEpollUnsafe
        void epollInReady() {
            int iWritableBytes;
            boolean zScatteringRead;
            EpollDatagramChannelConfig epollDatagramChannelConfigConfig = EpollDatagramChannel.this.config();
            if (EpollDatagramChannel.this.shouldBreakEpollInReady(epollDatagramChannelConfigConfig)) {
                clearEpollIn0();
                return;
            }
            EpollRecvByteAllocatorHandle epollRecvByteAllocatorHandleRecvBufAllocHandle = recvBufAllocHandle();
            epollRecvByteAllocatorHandleRecvBufAllocHandle.edgeTriggered(EpollDatagramChannel.this.isFlagSet(Native.EPOLLET));
            ChannelPipeline channelPipelinePipeline = EpollDatagramChannel.this.pipeline();
            ByteBufAllocator allocator = epollDatagramChannelConfigConfig.getAllocator();
            epollRecvByteAllocatorHandleRecvBufAllocHandle.reset(epollDatagramChannelConfigConfig);
            epollInBefore();
            boolean zIsConnected = EpollDatagramChannel.this.isConnected();
            do {
                ByteBuf byteBufAllocate = epollRecvByteAllocatorHandleRecvBufAllocHandle.allocate(allocator);
                int maxDatagramPayloadSize = EpollDatagramChannel.this.config().getMaxDatagramPayloadSize();
                if (Native.IS_SUPPORTING_RECVMMSG) {
                    iWritableBytes = maxDatagramPayloadSize == 0 ? 1 : byteBufAllocate.writableBytes() / maxDatagramPayloadSize;
                } else {
                    iWritableBytes = 0;
                }
                if (iWritableBytes > 1) {
                    zScatteringRead = EpollDatagramChannel.this.scatteringRead(epollRecvByteAllocatorHandleRecvBufAllocHandle, byteBufAllocate, maxDatagramPayloadSize, iWritableBytes);
                } else if (zIsConnected) {
                    try {
                        zScatteringRead = EpollDatagramChannel.this.connectedRead(epollRecvByteAllocatorHandleRecvBufAllocHandle, byteBufAllocate, maxDatagramPayloadSize);
                    } catch (Errors.NativeIoException e10) {
                        if (!zIsConnected) {
                            throw e10;
                        }
                        throw EpollDatagramChannel.this.translateForConnected(e10);
                    }
                } else {
                    zScatteringRead = EpollDatagramChannel.this.read(epollRecvByteAllocatorHandleRecvBufAllocHandle, byteBufAllocate, maxDatagramPayloadSize);
                }
                if (!zScatteringRead) {
                    break;
                } else {
                    this.readPending = false;
                }
            } while (epollRecvByteAllocatorHandleRecvBufAllocHandle.continueReading());
            th = null;
            try {
                epollRecvByteAllocatorHandleRecvBufAllocHandle.readComplete();
                channelPipelinePipeline.fireChannelReadComplete();
                if (th != null) {
                    channelPipelinePipeline.fireExceptionCaught(th);
                }
            } finally {
                epollInFinally(epollDatagramChannelConfigConfig);
            }
        }
    }

    public EpollDatagramChannel() {
        this((InternetProtocolFamily) null);
    }

    private NativeDatagramPacketArray cleanDatagramPacketArray() {
        return ((EpollEventLoop) eventLoop()).cleanDatagramPacketArray();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean connectedRead(EpollRecvByteAllocatorHandle epollRecvByteAllocatorHandle, ByteBuf byteBuf, int i10) throws Exception {
        int address;
        try {
            int iMin = i10 != 0 ? Math.min(byteBuf.writableBytes(), i10) : byteBuf.writableBytes();
            epollRecvByteAllocatorHandle.attemptedBytesRead(iMin);
            int iWriterIndex = byteBuf.writerIndex();
            if (byteBuf.hasMemoryAddress()) {
                address = this.socket.readAddress(byteBuf.memoryAddress(), iWriterIndex, iWriterIndex + iMin);
            } else {
                ByteBuffer byteBufferInternalNioBuffer = byteBuf.internalNioBuffer(iWriterIndex, iMin);
                address = this.socket.read(byteBufferInternalNioBuffer, byteBufferInternalNioBuffer.position(), byteBufferInternalNioBuffer.limit());
            }
            if (address <= 0) {
                epollRecvByteAllocatorHandle.lastBytesRead(address);
                byteBuf.release();
                return false;
            }
            byteBuf.writerIndex(iWriterIndex + address);
            if (i10 <= 0) {
                iMin = address;
            }
            epollRecvByteAllocatorHandle.lastBytesRead(iMin);
            DatagramPacket datagramPacket = new DatagramPacket(byteBuf, localAddress(), remoteAddress());
            epollRecvByteAllocatorHandle.incMessagesRead(1);
            pipeline().fireChannelRead((Object) datagramPacket);
            return true;
        } catch (Throwable th) {
            if (byteBuf != null) {
                byteBuf.release();
            }
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x00cd A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Code duplicated, block: B:31:? A[RETURN, SYNTHETIC] */
    private boolean doWriteMessage(Object obj) throws Exception {
        ByteBuf byteBuf;
        InetSocketAddress inetSocketAddress;
        int iWrite;
        long jWritevAddresses;
        if (obj instanceof AddressedEnvelope) {
            AddressedEnvelope addressedEnvelope = (AddressedEnvelope) obj;
            byteBuf = (ByteBuf) addressedEnvelope.content();
            inetSocketAddress = (InetSocketAddress) addressedEnvelope.recipient();
        } else {
            byteBuf = (ByteBuf) obj;
            inetSocketAddress = null;
        }
        if (byteBuf.readableBytes() == 0) {
            return true;
        }
        if (byteBuf.hasMemoryAddress()) {
            long jMemoryAddress = byteBuf.memoryAddress();
            iWrite = inetSocketAddress == null ? this.socket.writeAddress(jMemoryAddress, byteBuf.readerIndex(), byteBuf.writerIndex()) : this.socket.sendToAddress(jMemoryAddress, byteBuf.readerIndex(), byteBuf.writerIndex(), inetSocketAddress.getAddress(), inetSocketAddress.getPort());
        } else {
            if (byteBuf.nioBufferCount() > 1) {
                IovArray iovArrayCleanIovArray = ((EpollEventLoop) eventLoop()).cleanIovArray();
                iovArrayCleanIovArray.add(byteBuf, byteBuf.readerIndex(), byteBuf.readableBytes());
                int iCount = iovArrayCleanIovArray.count();
                if (inetSocketAddress == null) {
                    jWritevAddresses = this.socket.writevAddresses(iovArrayCleanIovArray.memoryAddress(0), iCount);
                } else {
                    iWrite = this.socket.sendToAddresses(iovArrayCleanIovArray.memoryAddress(0), iCount, inetSocketAddress.getAddress(), inetSocketAddress.getPort());
                }
                if (jWritevAddresses > 0) {
                    return true;
                }
                return false;
            }
            ByteBuffer byteBufferInternalNioBuffer = byteBuf.internalNioBuffer(byteBuf.readerIndex(), byteBuf.readableBytes());
            iWrite = inetSocketAddress == null ? this.socket.write(byteBufferInternalNioBuffer, byteBufferInternalNioBuffer.position(), byteBufferInternalNioBuffer.limit()) : this.socket.sendTo(byteBufferInternalNioBuffer, byteBufferInternalNioBuffer.position(), byteBufferInternalNioBuffer.limit(), inetSocketAddress.getAddress(), inetSocketAddress.getPort());
        }
        jWritevAddresses = iWrite;
        if (jWritevAddresses > 0) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean read(EpollRecvByteAllocatorHandle epollRecvByteAllocatorHandle, ByteBuf byteBuf, int i10) throws IOException {
        DatagramSocketAddress datagramSocketAddressRecvFrom;
        try {
            int iMin = i10 != 0 ? Math.min(byteBuf.writableBytes(), i10) : byteBuf.writableBytes();
            epollRecvByteAllocatorHandle.attemptedBytesRead(iMin);
            int iWriterIndex = byteBuf.writerIndex();
            if (byteBuf.hasMemoryAddress()) {
                datagramSocketAddressRecvFrom = this.socket.recvFromAddress(byteBuf.memoryAddress(), iWriterIndex, iWriterIndex + iMin);
            } else {
                ByteBuffer byteBufferInternalNioBuffer = byteBuf.internalNioBuffer(iWriterIndex, iMin);
                datagramSocketAddressRecvFrom = this.socket.recvFrom(byteBufferInternalNioBuffer, byteBufferInternalNioBuffer.position(), byteBufferInternalNioBuffer.limit());
            }
            if (datagramSocketAddressRecvFrom == null) {
                epollRecvByteAllocatorHandle.lastBytesRead(-1);
                byteBuf.release();
                return false;
            }
            InetSocketAddress inetSocketAddressLocalAddress = datagramSocketAddressRecvFrom.localAddress();
            if (inetSocketAddressLocalAddress == null) {
                inetSocketAddressLocalAddress = localAddress();
            }
            int iReceivedAmount = datagramSocketAddressRecvFrom.receivedAmount();
            if (i10 <= 0) {
                iMin = iReceivedAmount;
            }
            epollRecvByteAllocatorHandle.lastBytesRead(iMin);
            byteBuf.writerIndex(iWriterIndex + iReceivedAmount);
            epollRecvByteAllocatorHandle.incMessagesRead(1);
            pipeline().fireChannelRead((Object) new DatagramPacket(byteBuf, inetSocketAddressLocalAddress, datagramSocketAddressRecvFrom));
            return true;
        } catch (Throwable th) {
            if (byteBuf != null) {
                byteBuf.release();
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean scatteringRead(EpollRecvByteAllocatorHandle epollRecvByteAllocatorHandle, ByteBuf byteBuf, int i10, int i11) throws IOException {
        RecyclableArrayList recyclableArrayList = null;
        try {
            int iWriterIndex = byteBuf.writerIndex();
            NativeDatagramPacketArray nativeDatagramPacketArrayCleanDatagramPacketArray = cleanDatagramPacketArray();
            int i12 = 0;
            while (i12 < i11 && nativeDatagramPacketArrayCleanDatagramPacketArray.addWritable(byteBuf, iWriterIndex, i10)) {
                i12++;
                iWriterIndex += i10;
            }
            epollRecvByteAllocatorHandle.attemptedBytesRead(iWriterIndex - byteBuf.writerIndex());
            NativeDatagramPacketArray.NativeDatagramPacket[] nativeDatagramPacketArrPackets = nativeDatagramPacketArrayCleanDatagramPacketArray.packets();
            int iRecvmmsg = this.socket.recvmmsg(nativeDatagramPacketArrPackets, 0, nativeDatagramPacketArrayCleanDatagramPacketArray.count());
            if (iRecvmmsg == 0) {
                epollRecvByteAllocatorHandle.lastBytesRead(-1);
                byteBuf.release();
                return false;
            }
            int i13 = iRecvmmsg * i10;
            byteBuf.writerIndex(i13);
            InetSocketAddress inetSocketAddressLocalAddress = localAddress();
            if (iRecvmmsg == 1) {
                DatagramPacket datagramPacketNewDatagramPacket = nativeDatagramPacketArrPackets[0].newDatagramPacket(byteBuf, inetSocketAddressLocalAddress);
                epollRecvByteAllocatorHandle.lastBytesRead(i10);
                epollRecvByteAllocatorHandle.incMessagesRead(1);
                pipeline().fireChannelRead((Object) datagramPacketNewDatagramPacket);
                return true;
            }
            RecyclableArrayList recyclableArrayListNewInstance = RecyclableArrayList.newInstance();
            for (int i14 = 0; i14 < iRecvmmsg; i14++) {
                recyclableArrayListNewInstance.add(nativeDatagramPacketArrPackets[i14].newDatagramPacket(byteBuf.readRetainedSlice(i10), inetSocketAddressLocalAddress));
            }
            epollRecvByteAllocatorHandle.lastBytesRead(i13);
            epollRecvByteAllocatorHandle.incMessagesRead(iRecvmmsg);
            for (int i15 = 0; i15 < iRecvmmsg; i15++) {
                pipeline().fireChannelRead(recyclableArrayListNewInstance.set(i15, Unpooled.EMPTY_BUFFER));
            }
            recyclableArrayListNewInstance.recycle();
            byteBuf.release();
            return true;
        } catch (Throwable th) {
            if (byteBuf != null) {
                byteBuf.release();
            }
            if (0 != 0) {
                for (int i16 = 0; i16 < recyclableArrayList.size(); i16++) {
                    ReferenceCountUtil.release(recyclableArrayList.get(i16));
                }
                recyclableArrayList.recycle();
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public IOException translateForConnected(Errors.NativeIoException nativeIoException) {
        if (nativeIoException.expectedErr() != Errors.ERROR_ECONNREFUSED_NEGATIVE) {
            return nativeIoException;
        }
        PortUnreachableException portUnreachableException = new PortUnreachableException(nativeIoException.getMessage());
        portUnreachableException.initCause(nativeIoException);
        return portUnreachableException;
    }

    @Override // io.netty.channel.socket.DatagramChannel
    public ChannelFuture block(InetAddress inetAddress, NetworkInterface networkInterface, InetAddress inetAddress2) {
        return block(inetAddress, networkInterface, inetAddress2, newPromise());
    }

    @Override // io.netty.channel.epoll.AbstractEpollChannel, io.netty.channel.AbstractChannel
    protected void doBind(SocketAddress socketAddress) throws Exception {
        if (socketAddress instanceof InetSocketAddress) {
            InetSocketAddress inetSocketAddress = (InetSocketAddress) socketAddress;
            if (inetSocketAddress.getAddress().isAnyLocalAddress() && (inetSocketAddress.getAddress() instanceof Inet4Address) && Socket.isIPv6Preferred()) {
                socketAddress = new InetSocketAddress(LinuxSocket.INET6_ANY, inetSocketAddress.getPort());
            }
        }
        super.doBind(socketAddress);
        this.active = true;
    }

    @Override // io.netty.channel.epoll.AbstractEpollChannel, io.netty.channel.AbstractChannel
    protected void doClose() throws Exception {
        super.doClose();
        this.connected = false;
    }

    @Override // io.netty.channel.epoll.AbstractEpollChannel
    protected boolean doConnect(SocketAddress socketAddress, SocketAddress socketAddress2) throws Exception {
        if (!super.doConnect(socketAddress, socketAddress2)) {
            return false;
        }
        this.connected = true;
        return true;
    }

    @Override // io.netty.channel.epoll.AbstractEpollChannel, io.netty.channel.AbstractChannel
    protected void doDisconnect() throws Exception {
        this.socket.disconnect();
        this.active = false;
        this.connected = false;
        resetCachedAddresses();
    }

    @Override // io.netty.channel.AbstractChannel
    protected void doWrite(ChannelOutboundBuffer channelOutboundBuffer) throws Exception {
        while (true) {
            Object objCurrent = channelOutboundBuffer.current();
            if (objCurrent == null) {
                clearFlag(Native.EPOLLOUT);
                return;
            }
            try {
                boolean z10 = false;
                if (Native.IS_SUPPORTING_SENDMMSG && channelOutboundBuffer.size() > 1) {
                    NativeDatagramPacketArray nativeDatagramPacketArrayCleanDatagramPacketArray = cleanDatagramPacketArray();
                    nativeDatagramPacketArrayCleanDatagramPacketArray.add(channelOutboundBuffer, isConnected());
                    int iCount = nativeDatagramPacketArrayCleanDatagramPacketArray.count();
                    if (iCount >= 1) {
                        NativeDatagramPacketArray.NativeDatagramPacket[] nativeDatagramPacketArrPackets = nativeDatagramPacketArrayCleanDatagramPacketArray.packets();
                        int i10 = 0;
                        while (iCount > 0) {
                            int iSendmmsg = this.socket.sendmmsg(nativeDatagramPacketArrPackets, i10, iCount);
                            if (iSendmmsg == 0) {
                                setFlag(Native.EPOLLOUT);
                                return;
                            }
                            for (int i11 = 0; i11 < iSendmmsg; i11++) {
                                channelOutboundBuffer.remove();
                            }
                            iCount -= iSendmmsg;
                            i10 += iSendmmsg;
                        }
                    }
                }
                for (int writeSpinCount = config().getWriteSpinCount(); writeSpinCount > 0; writeSpinCount--) {
                    if (doWriteMessage(objCurrent)) {
                        z10 = true;
                        break;
                    }
                }
                if (!z10) {
                    setFlag(Native.EPOLLOUT);
                    return;
                }
                channelOutboundBuffer.remove();
            } catch (IOException e10) {
                channelOutboundBuffer.remove(e10);
            }
        }
    }

    @Override // io.netty.channel.AbstractChannel
    protected Object filterOutboundMessage(Object obj) {
        if (obj instanceof DatagramPacket) {
            DatagramPacket datagramPacket = (DatagramPacket) obj;
            ByteBuf byteBufContent = datagramPacket.content();
            return UnixChannelUtil.isBufferCopyNeededForWrite(byteBufContent) ? new DatagramPacket(newDirectBuffer(datagramPacket, byteBufContent), datagramPacket.recipient()) : obj;
        }
        if (obj instanceof ByteBuf) {
            ByteBuf byteBuf = (ByteBuf) obj;
            return UnixChannelUtil.isBufferCopyNeededForWrite(byteBuf) ? newDirectBuffer(byteBuf) : byteBuf;
        }
        if (obj instanceof AddressedEnvelope) {
            AddressedEnvelope addressedEnvelope = (AddressedEnvelope) obj;
            if ((addressedEnvelope.content() instanceof ByteBuf) && (addressedEnvelope.recipient() == null || (addressedEnvelope.recipient() instanceof InetSocketAddress))) {
                ByteBuf byteBuf2 = (ByteBuf) addressedEnvelope.content();
                return UnixChannelUtil.isBufferCopyNeededForWrite(byteBuf2) ? new DefaultAddressedEnvelope(newDirectBuffer(addressedEnvelope, byteBuf2), (InetSocketAddress) addressedEnvelope.recipient()) : addressedEnvelope;
            }
        }
        throw new UnsupportedOperationException("unsupported message type: " + StringUtil.simpleClassName(obj) + EXPECTED_TYPES);
    }

    @Override // io.netty.channel.epoll.AbstractEpollChannel, io.netty.channel.Channel
    public boolean isActive() {
        return this.socket.isOpen() && ((this.config.getActiveOnOpen() && isRegistered()) || this.active);
    }

    @Override // io.netty.channel.socket.DatagramChannel
    public boolean isConnected() {
        return this.connected;
    }

    @Override // io.netty.channel.epoll.AbstractEpollChannel, io.netty.channel.Channel
    public /* bridge */ /* synthetic */ boolean isOpen() {
        return super.isOpen();
    }

    @Override // io.netty.channel.socket.DatagramChannel
    public ChannelFuture joinGroup(InetAddress inetAddress) {
        return joinGroup(inetAddress, newPromise());
    }

    @Override // io.netty.channel.socket.DatagramChannel
    public ChannelFuture leaveGroup(InetAddress inetAddress) {
        return leaveGroup(inetAddress, newPromise());
    }

    @Override // io.netty.channel.epoll.AbstractEpollChannel, io.netty.channel.Channel
    public ChannelMetadata metadata() {
        return METADATA;
    }

    public EpollDatagramChannel(InternetProtocolFamily internetProtocolFamily) {
        this(LinuxSocket.newSocketDgram(internetProtocolFamily == null ? Socket.isIPv6Preferred() : internetProtocolFamily == InternetProtocolFamily.IPv6), false);
    }

    @Override // io.netty.channel.socket.DatagramChannel
    public ChannelFuture block(InetAddress inetAddress, NetworkInterface networkInterface, InetAddress inetAddress2, ChannelPromise channelPromise) {
        ObjectUtil.checkNotNull(inetAddress, "multicastAddress");
        ObjectUtil.checkNotNull(inetAddress2, "sourceToBlock");
        ObjectUtil.checkNotNull(networkInterface, "networkInterface");
        channelPromise.setFailure((Throwable) new UnsupportedOperationException("Multicast not supported"));
        return channelPromise;
    }

    @Override // io.netty.channel.socket.DatagramChannel
    public ChannelFuture joinGroup(InetAddress inetAddress, ChannelPromise channelPromise) {
        try {
            return joinGroup(inetAddress, NetworkInterface.getByInetAddress(localAddress().getAddress()), null, channelPromise);
        } catch (IOException e10) {
            channelPromise.setFailure((Throwable) e10);
            return channelPromise;
        }
    }

    @Override // io.netty.channel.socket.DatagramChannel
    public ChannelFuture leaveGroup(InetAddress inetAddress, ChannelPromise channelPromise) {
        try {
            return leaveGroup(inetAddress, NetworkInterface.getByInetAddress(localAddress().getAddress()), null, channelPromise);
        } catch (IOException e10) {
            channelPromise.setFailure((Throwable) e10);
            return channelPromise;
        }
    }

    @Override // io.netty.channel.AbstractChannel, io.netty.channel.Channel
    public InetSocketAddress localAddress() {
        return (InetSocketAddress) super.localAddress();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.channel.epoll.AbstractEpollChannel, io.netty.channel.AbstractChannel
    public AbstractEpollChannel.AbstractEpollUnsafe newUnsafe() {
        return new EpollDatagramChannelUnsafe();
    }

    @Override // io.netty.channel.AbstractChannel, io.netty.channel.Channel
    public InetSocketAddress remoteAddress() {
        return (InetSocketAddress) super.remoteAddress();
    }

    public EpollDatagramChannel(int i10) {
        this(new LinuxSocket(i10), true);
    }

    @Override // io.netty.channel.epoll.AbstractEpollChannel, io.netty.channel.Channel
    public EpollDatagramChannelConfig config() {
        return this.config;
    }

    private EpollDatagramChannel(LinuxSocket linuxSocket, boolean z10) {
        super((Channel) null, linuxSocket, z10);
        this.config = new EpollDatagramChannelConfig(this);
    }

    @Override // io.netty.channel.socket.DatagramChannel
    public ChannelFuture joinGroup(InetSocketAddress inetSocketAddress, NetworkInterface networkInterface) {
        return joinGroup(inetSocketAddress, networkInterface, newPromise());
    }

    @Override // io.netty.channel.socket.DatagramChannel
    public ChannelFuture leaveGroup(InetSocketAddress inetSocketAddress, NetworkInterface networkInterface) {
        return leaveGroup(inetSocketAddress, networkInterface, newPromise());
    }

    @Override // io.netty.channel.socket.DatagramChannel
    public ChannelFuture block(InetAddress inetAddress, InetAddress inetAddress2) {
        return block(inetAddress, inetAddress2, newPromise());
    }

    @Override // io.netty.channel.socket.DatagramChannel
    public ChannelFuture joinGroup(InetSocketAddress inetSocketAddress, NetworkInterface networkInterface, ChannelPromise channelPromise) {
        return joinGroup(inetSocketAddress.getAddress(), networkInterface, null, channelPromise);
    }

    @Override // io.netty.channel.socket.DatagramChannel
    public ChannelFuture leaveGroup(InetSocketAddress inetSocketAddress, NetworkInterface networkInterface, ChannelPromise channelPromise) {
        return leaveGroup(inetSocketAddress.getAddress(), networkInterface, null, channelPromise);
    }

    @Override // io.netty.channel.socket.DatagramChannel
    public ChannelFuture block(InetAddress inetAddress, InetAddress inetAddress2, ChannelPromise channelPromise) {
        try {
            return block(inetAddress, NetworkInterface.getByInetAddress(localAddress().getAddress()), inetAddress2, channelPromise);
        } catch (Throwable th) {
            channelPromise.setFailure(th);
            return channelPromise;
        }
    }

    @Override // io.netty.channel.socket.DatagramChannel
    public ChannelFuture joinGroup(InetAddress inetAddress, NetworkInterface networkInterface, InetAddress inetAddress2) {
        return joinGroup(inetAddress, networkInterface, inetAddress2, newPromise());
    }

    @Override // io.netty.channel.socket.DatagramChannel
    public ChannelFuture leaveGroup(InetAddress inetAddress, NetworkInterface networkInterface, InetAddress inetAddress2) {
        return leaveGroup(inetAddress, networkInterface, inetAddress2, newPromise());
    }

    @Override // io.netty.channel.socket.DatagramChannel
    public ChannelFuture joinGroup(InetAddress inetAddress, NetworkInterface networkInterface, InetAddress inetAddress2, ChannelPromise channelPromise) {
        ObjectUtil.checkNotNull(inetAddress, "multicastAddress");
        ObjectUtil.checkNotNull(networkInterface, "networkInterface");
        try {
            this.socket.joinGroup(inetAddress, networkInterface, inetAddress2);
            channelPromise.setSuccess();
        } catch (IOException e10) {
            channelPromise.setFailure((Throwable) e10);
        }
        return channelPromise;
    }

    @Override // io.netty.channel.socket.DatagramChannel
    public ChannelFuture leaveGroup(InetAddress inetAddress, NetworkInterface networkInterface, InetAddress inetAddress2, ChannelPromise channelPromise) {
        ObjectUtil.checkNotNull(inetAddress, "multicastAddress");
        ObjectUtil.checkNotNull(networkInterface, "networkInterface");
        try {
            this.socket.leaveGroup(inetAddress, networkInterface, inetAddress2);
            channelPromise.setSuccess();
        } catch (IOException e10) {
            channelPromise.setFailure((Throwable) e10);
        }
        return channelPromise;
    }
}
