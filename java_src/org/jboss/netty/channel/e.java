package org.jboss.netty.channel;

import java.net.SocketAddress;

/* JADX INFO: loaded from: classes10.dex */
public interface e extends Comparable<e> {
    public static final int T1 = 0;
    public static final int U1 = 1;
    public static final int W1 = 4;
    public static final int X1 = 5;

    j I();

    j J(int i10);

    Object K();

    int L0();

    j P(boolean z10);

    j Q(Object obj, SocketAddress socketAddress);

    i S();

    j bind(SocketAddress socketAddress);

    j close();

    j connect(SocketAddress socketAddress);

    void d(Object obj);

    j disconnect();

    f getConfig();

    Integer getId();

    SocketAddress getLocalAddress();

    e getParent();

    n getPipeline();

    SocketAddress getRemoteAddress();

    boolean isBound();

    boolean isConnected();

    boolean isOpen();

    boolean isReadable();

    boolean isWritable();

    j t0();

    j write(Object obj);
}
