package ed;

import java.net.Socket;
import java.net.SocketException;
import org.jboss.netty.channel.ChannelException;
import org.jboss.netty.channel.v;

/* JADX INFO: loaded from: classes10.dex */
public class c extends v implements e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Socket f90900c;

    public c(Socket socket) {
        if (socket == null) {
            throw new NullPointerException("socket");
        }
        this.f90900c = socket;
    }

    @Override // org.jboss.netty.channel.v, org.jboss.netty.channel.f
    public boolean g(String str, Object obj) {
        if (super.g(str, obj)) {
            return true;
        }
        if ("receiveBufferSize".equals(str)) {
            setReceiveBufferSize(org.jboss.netty.util.internal.b.b(obj));
        } else if ("sendBufferSize".equals(str)) {
            setSendBufferSize(org.jboss.netty.util.internal.b.b(obj));
        } else if ("tcpNoDelay".equals(str)) {
            setTcpNoDelay(org.jboss.netty.util.internal.b.a(obj));
        } else if ("keepAlive".equals(str)) {
            setKeepAlive(org.jboss.netty.util.internal.b.a(obj));
        } else if ("reuseAddress".equals(str)) {
            setReuseAddress(org.jboss.netty.util.internal.b.a(obj));
        } else if ("soLinger".equals(str)) {
            setSoLinger(org.jboss.netty.util.internal.b.b(obj));
        } else {
            if (!"trafficClass".equals(str)) {
                return false;
            }
            setTrafficClass(org.jboss.netty.util.internal.b.b(obj));
        }
        return true;
    }

    @Override // ed.e
    public int getReceiveBufferSize() {
        try {
            return this.f90900c.getReceiveBufferSize();
        } catch (SocketException e10) {
            throw new ChannelException(e10);
        }
    }

    @Override // ed.e
    public int getSendBufferSize() {
        try {
            return this.f90900c.getSendBufferSize();
        } catch (SocketException e10) {
            throw new ChannelException(e10);
        }
    }

    @Override // ed.e
    public int getSoLinger() {
        try {
            return this.f90900c.getSoLinger();
        } catch (SocketException e10) {
            throw new ChannelException(e10);
        }
    }

    @Override // ed.e
    public int getTrafficClass() {
        try {
            return this.f90900c.getTrafficClass();
        } catch (SocketException e10) {
            throw new ChannelException(e10);
        }
    }

    @Override // ed.e
    public boolean isKeepAlive() {
        try {
            return this.f90900c.getKeepAlive();
        } catch (SocketException e10) {
            throw new ChannelException(e10);
        }
    }

    @Override // ed.e
    public boolean isReuseAddress() {
        try {
            return this.f90900c.getReuseAddress();
        } catch (SocketException e10) {
            throw new ChannelException(e10);
        }
    }

    @Override // ed.e
    public boolean isTcpNoDelay() {
        try {
            return this.f90900c.getTcpNoDelay();
        } catch (SocketException e10) {
            throw new ChannelException(e10);
        }
    }

    @Override // ed.e
    public void setKeepAlive(boolean z10) {
        try {
            this.f90900c.setKeepAlive(z10);
        } catch (SocketException e10) {
            throw new ChannelException(e10);
        }
    }

    @Override // ed.e
    public void setPerformancePreferences(int i10, int i11, int i12) {
        this.f90900c.setPerformancePreferences(i10, i11, i12);
    }

    @Override // ed.e
    public void setReceiveBufferSize(int i10) {
        try {
            this.f90900c.setReceiveBufferSize(i10);
        } catch (SocketException e10) {
            throw new ChannelException(e10);
        }
    }

    @Override // ed.e
    public void setReuseAddress(boolean z10) {
        try {
            this.f90900c.setReuseAddress(z10);
        } catch (SocketException e10) {
            throw new ChannelException(e10);
        }
    }

    @Override // ed.e
    public void setSendBufferSize(int i10) {
        try {
            this.f90900c.setSendBufferSize(i10);
        } catch (SocketException e10) {
            throw new ChannelException(e10);
        }
    }

    @Override // ed.e
    public void setSoLinger(int i10) {
        try {
            if (i10 < 0) {
                this.f90900c.setSoLinger(false, 0);
            } else {
                this.f90900c.setSoLinger(true, i10);
            }
        } catch (SocketException e10) {
            throw new ChannelException(e10);
        }
    }

    @Override // ed.e
    public void setTcpNoDelay(boolean z10) {
        try {
            this.f90900c.setTcpNoDelay(z10);
        } catch (SocketException e10) {
            throw new ChannelException(e10);
        }
    }

    @Override // ed.e
    public void setTrafficClass(int i10) {
        try {
            this.f90900c.setTrafficClass(i10);
        } catch (SocketException e10) {
            throw new ChannelException(e10);
        }
    }
}
