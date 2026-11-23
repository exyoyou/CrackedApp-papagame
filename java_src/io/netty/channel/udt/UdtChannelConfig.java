package io.netty.channel.udt;

import io.netty.buffer.ByteBufAllocator;
import io.netty.channel.ChannelConfig;
import io.netty.channel.MessageSizeEstimator;
import io.netty.channel.RecvByteBufAllocator;
import io.netty.channel.WriteBufferWaterMark;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public interface UdtChannelConfig extends ChannelConfig {
    int getProtocolReceiveBufferSize();

    int getProtocolSendBufferSize();

    int getReceiveBufferSize();

    int getSendBufferSize();

    int getSoLinger();

    int getSystemReceiveBufferSize();

    int getSystemSendBufferSize();

    boolean isReuseAddress();

    @Override // io.netty.channel.ChannelConfig
    UdtChannelConfig setAllocator(ByteBufAllocator byteBufAllocator);

    @Override // io.netty.channel.ChannelConfig
    UdtChannelConfig setAutoClose(boolean z10);

    @Override // io.netty.channel.ChannelConfig
    UdtChannelConfig setAutoRead(boolean z10);

    @Override // io.netty.channel.ChannelConfig
    UdtChannelConfig setConnectTimeoutMillis(int i10);

    @Override // io.netty.channel.ChannelConfig
    @Deprecated
    UdtChannelConfig setMaxMessagesPerRead(int i10);

    @Override // io.netty.channel.ChannelConfig
    UdtChannelConfig setMessageSizeEstimator(MessageSizeEstimator messageSizeEstimator);

    UdtChannelConfig setProtocolReceiveBufferSize(int i10);

    UdtChannelConfig setProtocolSendBufferSize(int i10);

    UdtChannelConfig setReceiveBufferSize(int i10);

    @Override // io.netty.channel.ChannelConfig
    UdtChannelConfig setRecvByteBufAllocator(RecvByteBufAllocator recvByteBufAllocator);

    UdtChannelConfig setReuseAddress(boolean z10);

    UdtChannelConfig setSendBufferSize(int i10);

    UdtChannelConfig setSoLinger(int i10);

    UdtChannelConfig setSystemReceiveBufferSize(int i10);

    UdtChannelConfig setSystemSendBufferSize(int i10);

    @Override // io.netty.channel.ChannelConfig
    UdtChannelConfig setWriteBufferHighWaterMark(int i10);

    @Override // io.netty.channel.ChannelConfig
    UdtChannelConfig setWriteBufferLowWaterMark(int i10);

    @Override // io.netty.channel.ChannelConfig
    UdtChannelConfig setWriteBufferWaterMark(WriteBufferWaterMark writeBufferWaterMark);

    @Override // io.netty.channel.ChannelConfig
    UdtChannelConfig setWriteSpinCount(int i10);
}
