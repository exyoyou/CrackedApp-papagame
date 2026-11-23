package io.netty.channel.sctp;

import com.sun.nio.sctp.SctpStandardSocketOptions;
import io.netty.buffer.ByteBufAllocator;
import io.netty.channel.ChannelConfig;
import io.netty.channel.MessageSizeEstimator;
import io.netty.channel.RecvByteBufAllocator;
import io.netty.channel.WriteBufferWaterMark;

/* JADX INFO: loaded from: classes.dex */
public interface SctpServerChannelConfig extends ChannelConfig {
    int getBacklog();

    SctpStandardSocketOptions.InitMaxStreams getInitMaxStreams();

    int getReceiveBufferSize();

    int getSendBufferSize();

    @Override // io.netty.channel.ChannelConfig
    SctpServerChannelConfig setAllocator(ByteBufAllocator byteBufAllocator);

    @Override // io.netty.channel.ChannelConfig
    SctpServerChannelConfig setAutoClose(boolean z10);

    @Override // io.netty.channel.ChannelConfig
    SctpServerChannelConfig setAutoRead(boolean z10);

    SctpServerChannelConfig setBacklog(int i10);

    @Override // io.netty.channel.ChannelConfig
    SctpServerChannelConfig setConnectTimeoutMillis(int i10);

    SctpServerChannelConfig setInitMaxStreams(SctpStandardSocketOptions.InitMaxStreams initMaxStreams);

    @Override // io.netty.channel.ChannelConfig
    @Deprecated
    SctpServerChannelConfig setMaxMessagesPerRead(int i10);

    @Override // io.netty.channel.ChannelConfig
    SctpServerChannelConfig setMessageSizeEstimator(MessageSizeEstimator messageSizeEstimator);

    SctpServerChannelConfig setReceiveBufferSize(int i10);

    @Override // io.netty.channel.ChannelConfig
    SctpServerChannelConfig setRecvByteBufAllocator(RecvByteBufAllocator recvByteBufAllocator);

    SctpServerChannelConfig setSendBufferSize(int i10);

    @Override // io.netty.channel.ChannelConfig
    SctpServerChannelConfig setWriteBufferHighWaterMark(int i10);

    @Override // io.netty.channel.ChannelConfig
    SctpServerChannelConfig setWriteBufferLowWaterMark(int i10);

    @Override // io.netty.channel.ChannelConfig
    SctpServerChannelConfig setWriteBufferWaterMark(WriteBufferWaterMark writeBufferWaterMark);

    @Override // io.netty.channel.ChannelConfig
    SctpServerChannelConfig setWriteSpinCount(int i10);
}
