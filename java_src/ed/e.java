package ed;

/* JADX INFO: loaded from: classes10.dex */
public interface e extends org.jboss.netty.channel.f {
    int getReceiveBufferSize();

    int getSendBufferSize();

    int getSoLinger();

    int getTrafficClass();

    boolean isKeepAlive();

    boolean isReuseAddress();

    boolean isTcpNoDelay();

    void setKeepAlive(boolean z10);

    void setPerformancePreferences(int i10, int i11, int i12);

    void setReceiveBufferSize(int i10);

    void setReuseAddress(boolean z10);

    void setSendBufferSize(int i10);

    void setSoLinger(int i10);

    void setTcpNoDelay(boolean z10);

    void setTrafficClass(int i10);
}
