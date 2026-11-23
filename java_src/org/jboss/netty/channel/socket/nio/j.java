package org.jboss.netty.channel.socket.nio;

/* JADX INFO: loaded from: classes10.dex */
public interface j extends org.jboss.netty.channel.f {
    int getWriteBufferHighWaterMark();

    int getWriteBufferLowWaterMark();

    int getWriteSpinCount();

    void setWriteBufferHighWaterMark(int i10);

    void setWriteBufferLowWaterMark(int i10);

    void setWriteSpinCount(int i10);
}
