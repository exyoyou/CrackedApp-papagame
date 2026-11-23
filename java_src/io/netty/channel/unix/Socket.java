package io.netty.channel.unix;

import io.netty.channel.ChannelException;
import io.netty.util.CharsetUtil;
import io.netty.util.NetUtil;
import java.io.IOException;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.PortUnreachableException;
import java.net.SocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.ClosedChannelException;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class Socket extends FileDescriptor {
    protected final boolean ipv6;
    public static final int UDS_SUN_PATH_SIZE = LimitsStaticallyReferencedJniMethods.udsSunPathSize();
    private static final AtomicBoolean INITIALIZED = new AtomicBoolean();

    public Socket(int i10) {
        super(i10);
        this.ipv6 = isIPv6(i10);
    }

    private static native int accept(int i10, byte[] bArr);

    private static native int bind(int i10, boolean z10, byte[] bArr, int i11, int i12);

    private static native int bindDomainSocket(int i10, byte[] bArr);

    private static native int connect(int i10, boolean z10, byte[] bArr, int i11, int i12);

    private static native int connectDomainSocket(int i10, byte[] bArr);

    private static native int disconnect(int i10, boolean z10);

    private static native int finishConnect(int i10);

    private static native int getReceiveBufferSize(int i10) throws IOException;

    private static native int getSendBufferSize(int i10) throws IOException;

    private static native int getSoError(int i10) throws IOException;

    private static native int getSoLinger(int i10) throws IOException;

    private static native int getTrafficClass(int i10, boolean z10) throws IOException;

    public static void initialize() {
        if (INITIALIZED.compareAndSet(false, true)) {
            initialize(NetUtil.isIpV4StackPreferred());
        }
    }

    private static native void initialize(boolean z10);

    private static native int isBroadcast(int i10) throws IOException;

    private static native boolean isIPv6(int i10);

    public static native boolean isIPv6Preferred();

    private static native int isKeepAlive(int i10) throws IOException;

    private static native int isReuseAddress(int i10) throws IOException;

    private static native int isReusePort(int i10) throws IOException;

    private static native int isTcpNoDelay(int i10) throws IOException;

    private static native int listen(int i10, int i11);

    private static native byte[] localAddress(int i10);

    public static Socket newSocketDgram() {
        return new Socket(newSocketDgram0());
    }

    protected static int newSocketDgram0() {
        return newSocketDgram0(isIPv6Preferred());
    }

    private static native int newSocketDgramFd(boolean z10);

    public static Socket newSocketDomain() {
        return new Socket(newSocketDomain0());
    }

    protected static int newSocketDomain0() {
        int iNewSocketDomainFd = newSocketDomainFd();
        if (iNewSocketDomainFd >= 0) {
            return iNewSocketDomainFd;
        }
        throw new ChannelException(Errors.newIOException("newSocketDomain", iNewSocketDomainFd));
    }

    private static native int newSocketDomainFd();

    public static Socket newSocketStream() {
        return new Socket(newSocketStream0());
    }

    protected static int newSocketStream0() {
        return newSocketStream0(isIPv6Preferred());
    }

    private static native int newSocketStreamFd(boolean z10);

    private static native int recvFd(int i10);

    private static native DatagramSocketAddress recvFrom(int i10, ByteBuffer byteBuffer, int i11, int i12) throws IOException;

    private static native DatagramSocketAddress recvFromAddress(int i10, long j10, int i11, int i12) throws IOException;

    private static native byte[] remoteAddress(int i10);

    private static native int sendFd(int i10, int i11);

    private static native int sendTo(int i10, boolean z10, ByteBuffer byteBuffer, int i11, int i12, byte[] bArr, int i13, int i14);

    private static native int sendToAddress(int i10, boolean z10, long j10, int i11, int i12, byte[] bArr, int i13, int i14);

    private static native int sendToAddresses(int i10, boolean z10, long j10, int i11, byte[] bArr, int i12, int i13);

    private static native void setBroadcast(int i10, int i11) throws IOException;

    private static native void setKeepAlive(int i10, int i11) throws IOException;

    private static native void setReceiveBufferSize(int i10, int i11) throws IOException;

    private static native void setReuseAddress(int i10, int i11) throws IOException;

    private static native void setReusePort(int i10, int i11) throws IOException;

    private static native void setSendBufferSize(int i10, int i11) throws IOException;

    private static native void setSoLinger(int i10, int i11) throws IOException;

    private static native void setTcpNoDelay(int i10, int i11) throws IOException;

    private static native void setTrafficClass(int i10, boolean z10, int i11) throws IOException;

    private static native int shutdown(int i10, boolean z10, boolean z11);

    public final int accept(byte[] bArr) throws IOException {
        int iAccept = accept(this.f91620fd, bArr);
        if (iAccept >= 0) {
            return iAccept;
        }
        if (iAccept == Errors.ERRNO_EAGAIN_NEGATIVE || iAccept == Errors.ERRNO_EWOULDBLOCK_NEGATIVE) {
            return -1;
        }
        throw Errors.newIOException("accept", iAccept);
    }

    public final void bind(SocketAddress socketAddress) throws IOException {
        if (socketAddress instanceof InetSocketAddress) {
            InetSocketAddress inetSocketAddress = (InetSocketAddress) socketAddress;
            NativeInetAddress nativeInetAddressNewInstance = NativeInetAddress.newInstance(inetSocketAddress.getAddress());
            int iBind = bind(this.f91620fd, this.ipv6, nativeInetAddressNewInstance.address, nativeInetAddressNewInstance.scopeId, inetSocketAddress.getPort());
            if (iBind < 0) {
                throw Errors.newIOException("bind", iBind);
            }
            return;
        }
        if (socketAddress instanceof DomainSocketAddress) {
            int iBindDomainSocket = bindDomainSocket(this.f91620fd, ((DomainSocketAddress) socketAddress).path().getBytes(CharsetUtil.UTF_8));
            if (iBindDomainSocket < 0) {
                throw Errors.newIOException("bind", iBindDomainSocket);
            }
        } else {
            throw new Error("Unexpected SocketAddress implementation " + socketAddress);
        }
    }

    public final boolean connect(SocketAddress socketAddress) throws IOException {
        int iConnectDomainSocket;
        if (socketAddress instanceof InetSocketAddress) {
            InetSocketAddress inetSocketAddress = (InetSocketAddress) socketAddress;
            NativeInetAddress nativeInetAddressNewInstance = NativeInetAddress.newInstance(inetSocketAddress.getAddress());
            iConnectDomainSocket = connect(this.f91620fd, this.ipv6, nativeInetAddressNewInstance.address, nativeInetAddressNewInstance.scopeId, inetSocketAddress.getPort());
        } else {
            if (!(socketAddress instanceof DomainSocketAddress)) {
                throw new Error("Unexpected SocketAddress implementation " + socketAddress);
            }
            iConnectDomainSocket = connectDomainSocket(this.f91620fd, ((DomainSocketAddress) socketAddress).path().getBytes(CharsetUtil.UTF_8));
        }
        if (iConnectDomainSocket >= 0) {
            return true;
        }
        if (iConnectDomainSocket == Errors.ERRNO_EINPROGRESS_NEGATIVE) {
            return false;
        }
        Errors.throwConnectException("connect", iConnectDomainSocket);
        return true;
    }

    public final void disconnect() throws IOException {
        int iDisconnect = disconnect(this.f91620fd, this.ipv6);
        if (iDisconnect < 0) {
            Errors.throwConnectException(io.socket.client.Socket.EVENT_DISCONNECT, iDisconnect);
        }
    }

    public final boolean finishConnect() throws IOException {
        int iFinishConnect = finishConnect(this.f91620fd);
        if (iFinishConnect >= 0) {
            return true;
        }
        if (iFinishConnect == Errors.ERRNO_EINPROGRESS_NEGATIVE) {
            return false;
        }
        Errors.throwConnectException("finishConnect", iFinishConnect);
        return true;
    }

    public final int getReceiveBufferSize() throws IOException {
        return getReceiveBufferSize(this.f91620fd);
    }

    public final int getSendBufferSize() throws IOException {
        return getSendBufferSize(this.f91620fd);
    }

    public final int getSoError() throws IOException {
        return getSoError(this.f91620fd);
    }

    public final int getSoLinger() throws IOException {
        return getSoLinger(this.f91620fd);
    }

    public final int getTrafficClass() throws IOException {
        return getTrafficClass(this.f91620fd, this.ipv6);
    }

    public final boolean isBroadcast() throws IOException {
        return isBroadcast(this.f91620fd) != 0;
    }

    public final boolean isInputShutdown() {
        return FileDescriptor.isInputShutdown(this.state);
    }

    public final boolean isKeepAlive() throws IOException {
        return isKeepAlive(this.f91620fd) != 0;
    }

    public final boolean isOutputShutdown() {
        return FileDescriptor.isOutputShutdown(this.state);
    }

    public final boolean isReuseAddress() throws IOException {
        return isReuseAddress(this.f91620fd) != 0;
    }

    public final boolean isReusePort() throws IOException {
        return isReusePort(this.f91620fd) != 0;
    }

    public final boolean isShutdown() {
        int i10 = this.state;
        return FileDescriptor.isInputShutdown(i10) && FileDescriptor.isOutputShutdown(i10);
    }

    public final boolean isTcpNoDelay() throws IOException {
        return isTcpNoDelay(this.f91620fd) != 0;
    }

    public final void listen(int i10) throws IOException {
        int iListen = listen(this.f91620fd, i10);
        if (iListen < 0) {
            throw Errors.newIOException("listen", iListen);
        }
    }

    public final InetSocketAddress localAddress() {
        byte[] bArrLocalAddress = localAddress(this.f91620fd);
        if (bArrLocalAddress == null) {
            return null;
        }
        return NativeInetAddress.address(bArrLocalAddress, 0, bArrLocalAddress.length);
    }

    public final int recvFd() throws IOException {
        int iRecvFd = recvFd(this.f91620fd);
        if (iRecvFd > 0) {
            return iRecvFd;
        }
        if (iRecvFd == 0) {
            return -1;
        }
        if (iRecvFd == Errors.ERRNO_EAGAIN_NEGATIVE || iRecvFd == Errors.ERRNO_EWOULDBLOCK_NEGATIVE) {
            return 0;
        }
        throw Errors.newIOException("recvFd", iRecvFd);
    }

    public final DatagramSocketAddress recvFrom(ByteBuffer byteBuffer, int i10, int i11) throws IOException {
        return recvFrom(this.f91620fd, byteBuffer, i10, i11);
    }

    public final DatagramSocketAddress recvFromAddress(long j10, int i10, int i11) throws IOException {
        return recvFromAddress(this.f91620fd, j10, i10, i11);
    }

    public final InetSocketAddress remoteAddress() {
        byte[] bArrRemoteAddress = remoteAddress(this.f91620fd);
        if (bArrRemoteAddress == null) {
            return null;
        }
        return NativeInetAddress.address(bArrRemoteAddress, 0, bArrRemoteAddress.length);
    }

    public final int sendFd(int i10) throws IOException {
        int iSendFd = sendFd(this.f91620fd, i10);
        if (iSendFd >= 0) {
            return iSendFd;
        }
        if (iSendFd == Errors.ERRNO_EAGAIN_NEGATIVE || iSendFd == Errors.ERRNO_EWOULDBLOCK_NEGATIVE) {
            return -1;
        }
        throw Errors.newIOException("sendFd", iSendFd);
    }

    public final int sendTo(ByteBuffer byteBuffer, int i10, int i11, InetAddress inetAddress, int i12) throws IOException {
        byte[] bArrIpv4MappedIpv6Address;
        int scopeId;
        if (inetAddress instanceof Inet6Address) {
            byte[] address = inetAddress.getAddress();
            scopeId = ((Inet6Address) inetAddress).getScopeId();
            bArrIpv4MappedIpv6Address = address;
        } else {
            bArrIpv4MappedIpv6Address = NativeInetAddress.ipv4MappedIpv6Address(inetAddress.getAddress());
            scopeId = 0;
        }
        int iSendTo = sendTo(this.f91620fd, this.ipv6, byteBuffer, i10, i11, bArrIpv4MappedIpv6Address, scopeId, i12);
        if (iSendTo >= 0) {
            return iSendTo;
        }
        if (iSendTo != Errors.ERROR_ECONNREFUSED_NEGATIVE) {
            return Errors.ioResult("sendTo", iSendTo);
        }
        throw new PortUnreachableException("sendTo failed");
    }

    public final int sendToAddress(long j10, int i10, int i11, InetAddress inetAddress, int i12) throws IOException {
        byte[] bArrIpv4MappedIpv6Address;
        int scopeId;
        if (inetAddress instanceof Inet6Address) {
            byte[] address = inetAddress.getAddress();
            scopeId = ((Inet6Address) inetAddress).getScopeId();
            bArrIpv4MappedIpv6Address = address;
        } else {
            bArrIpv4MappedIpv6Address = NativeInetAddress.ipv4MappedIpv6Address(inetAddress.getAddress());
            scopeId = 0;
        }
        int iSendToAddress = sendToAddress(this.f91620fd, this.ipv6, j10, i10, i11, bArrIpv4MappedIpv6Address, scopeId, i12);
        if (iSendToAddress >= 0) {
            return iSendToAddress;
        }
        if (iSendToAddress != Errors.ERROR_ECONNREFUSED_NEGATIVE) {
            return Errors.ioResult("sendToAddress", iSendToAddress);
        }
        throw new PortUnreachableException("sendToAddress failed");
    }

    public final int sendToAddresses(long j10, int i10, InetAddress inetAddress, int i11) throws IOException {
        byte[] bArrIpv4MappedIpv6Address;
        int scopeId;
        if (inetAddress instanceof Inet6Address) {
            byte[] address = inetAddress.getAddress();
            scopeId = ((Inet6Address) inetAddress).getScopeId();
            bArrIpv4MappedIpv6Address = address;
        } else {
            bArrIpv4MappedIpv6Address = NativeInetAddress.ipv4MappedIpv6Address(inetAddress.getAddress());
            scopeId = 0;
        }
        int iSendToAddresses = sendToAddresses(this.f91620fd, this.ipv6, j10, i10, bArrIpv4MappedIpv6Address, scopeId, i11);
        if (iSendToAddresses >= 0) {
            return iSendToAddresses;
        }
        if (iSendToAddresses != Errors.ERROR_ECONNREFUSED_NEGATIVE) {
            return Errors.ioResult("sendToAddresses", iSendToAddresses);
        }
        throw new PortUnreachableException("sendToAddresses failed");
    }

    public final void setBroadcast(boolean z10) throws IOException {
        setBroadcast(this.f91620fd, z10 ? 1 : 0);
    }

    public final void setKeepAlive(boolean z10) throws IOException {
        setKeepAlive(this.f91620fd, z10 ? 1 : 0);
    }

    public final void setReceiveBufferSize(int i10) throws IOException {
        setReceiveBufferSize(this.f91620fd, i10);
    }

    public final void setReuseAddress(boolean z10) throws IOException {
        setReuseAddress(this.f91620fd, z10 ? 1 : 0);
    }

    public final void setReusePort(boolean z10) throws IOException {
        setReusePort(this.f91620fd, z10 ? 1 : 0);
    }

    public final void setSendBufferSize(int i10) throws IOException {
        setSendBufferSize(this.f91620fd, i10);
    }

    public final void setSoLinger(int i10) throws IOException {
        setSoLinger(this.f91620fd, i10);
    }

    public final void setTcpNoDelay(boolean z10) throws IOException {
        setTcpNoDelay(this.f91620fd, z10 ? 1 : 0);
    }

    public final void setTrafficClass(int i10) throws IOException {
        setTrafficClass(this.f91620fd, this.ipv6, i10);
    }

    public final void shutdown() throws IOException {
        shutdown(true, true);
    }

    @Override // io.netty.channel.unix.FileDescriptor
    public String toString() {
        return "Socket{fd=" + this.f91620fd + '}';
    }

    protected static int newSocketDgram0(boolean z10) {
        int iNewSocketDgramFd = newSocketDgramFd(z10);
        if (iNewSocketDgramFd >= 0) {
            return iNewSocketDgramFd;
        }
        throw new ChannelException(Errors.newIOException("newSocketDgram", iNewSocketDgramFd));
    }

    protected static int newSocketStream0(boolean z10) {
        int iNewSocketStreamFd = newSocketStreamFd(z10);
        if (iNewSocketStreamFd >= 0) {
            return iNewSocketStreamFd;
        }
        throw new ChannelException(Errors.newIOException("newSocketStream", iNewSocketStreamFd));
    }

    public final void shutdown(boolean z10, boolean z11) throws IOException {
        int i10;
        int iInputShutdown;
        do {
            i10 = this.state;
            if (FileDescriptor.isClosed(i10)) {
                throw new ClosedChannelException();
            }
            iInputShutdown = (!z10 || FileDescriptor.isInputShutdown(i10)) ? i10 : FileDescriptor.inputShutdown(i10);
            if (z11 && !FileDescriptor.isOutputShutdown(iInputShutdown)) {
                iInputShutdown = FileDescriptor.outputShutdown(iInputShutdown);
            }
            if (iInputShutdown == i10) {
                return;
            }
        } while (!casState(i10, iInputShutdown));
        int iShutdown = shutdown(this.f91620fd, z10, z11);
        if (iShutdown < 0) {
            Errors.ioResult("shutdown", iShutdown);
        }
    }
}
