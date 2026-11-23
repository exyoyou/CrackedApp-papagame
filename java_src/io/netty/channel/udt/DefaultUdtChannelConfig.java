package io.netty.channel.udt;

import com.barchart.udt.OptionUDT;
import com.barchart.udt.SocketUDT;
import com.barchart.udt.nio.ChannelUDT;
import io.netty.buffer.ByteBufAllocator;
import io.netty.channel.ChannelOption;
import io.netty.channel.DefaultChannelConfig;
import io.netty.channel.MessageSizeEstimator;
import io.netty.channel.RecvByteBufAllocator;
import io.netty.channel.WriteBufferWaterMark;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class DefaultUdtChannelConfig extends DefaultChannelConfig implements UdtChannelConfig {
    private static final int K = 1024;
    private static final int M = 1048576;
    private volatile int allocatorReceiveBufferSize;
    private volatile int allocatorSendBufferSize;
    private volatile int protocolReceiveBufferSize;
    private volatile int protocolSendBufferSize;
    private volatile boolean reuseAddress;
    private volatile int soLinger;
    private volatile int systemReceiveBufferSize;
    private volatile int systemSendBufferSize;

    public DefaultUdtChannelConfig(UdtChannel udtChannel, ChannelUDT channelUDT, boolean z10) throws IOException {
        super(udtChannel);
        this.protocolReceiveBufferSize = 10485760;
        this.protocolSendBufferSize = 10485760;
        this.systemReceiveBufferSize = 1048576;
        this.systemSendBufferSize = 1048576;
        this.allocatorReceiveBufferSize = 131072;
        this.allocatorSendBufferSize = 131072;
        this.reuseAddress = true;
        if (z10) {
            apply(channelUDT);
        }
    }

    protected void apply(ChannelUDT channelUDT) throws IOException {
        SocketUDT socketUDT = channelUDT.socketUDT();
        socketUDT.setReuseAddress(isReuseAddress());
        socketUDT.setSendBufferSize(getSendBufferSize());
        if (getSoLinger() <= 0) {
            socketUDT.setSoLinger(false, 0);
        } else {
            socketUDT.setSoLinger(true, getSoLinger());
        }
        socketUDT.setOption(OptionUDT.Protocol_Receive_Buffer_Size, Integer.valueOf(getProtocolReceiveBufferSize()));
        socketUDT.setOption(OptionUDT.Protocol_Send_Buffer_Size, Integer.valueOf(getProtocolSendBufferSize()));
        socketUDT.setOption(OptionUDT.System_Receive_Buffer_Size, Integer.valueOf(getSystemReceiveBufferSize()));
        socketUDT.setOption(OptionUDT.System_Send_Buffer_Size, Integer.valueOf(getSystemSendBufferSize()));
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public <T> T getOption(ChannelOption<T> channelOption) {
        if (channelOption == UdtChannelOption.PROTOCOL_RECEIVE_BUFFER_SIZE) {
            return (T) Integer.valueOf(getProtocolReceiveBufferSize());
        }
        if (channelOption == UdtChannelOption.PROTOCOL_SEND_BUFFER_SIZE) {
            return (T) Integer.valueOf(getProtocolSendBufferSize());
        }
        if (channelOption == UdtChannelOption.SYSTEM_RECEIVE_BUFFER_SIZE) {
            return (T) Integer.valueOf(getSystemReceiveBufferSize());
        }
        if (channelOption == UdtChannelOption.SYSTEM_SEND_BUFFER_SIZE) {
            return (T) Integer.valueOf(getSystemSendBufferSize());
        }
        if (channelOption == ChannelOption.SO_RCVBUF) {
            return (T) Integer.valueOf(getReceiveBufferSize());
        }
        if (channelOption == ChannelOption.SO_SNDBUF) {
            return (T) Integer.valueOf(getSendBufferSize());
        }
        if (channelOption == ChannelOption.SO_REUSEADDR) {
            return (T) Boolean.valueOf(isReuseAddress());
        }
        return channelOption == ChannelOption.SO_LINGER ? (T) Integer.valueOf(getSoLinger()) : (T) super.getOption(channelOption);
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public Map<ChannelOption<?>, Object> getOptions() {
        return getOptions(super.getOptions(), UdtChannelOption.PROTOCOL_RECEIVE_BUFFER_SIZE, UdtChannelOption.PROTOCOL_SEND_BUFFER_SIZE, UdtChannelOption.SYSTEM_RECEIVE_BUFFER_SIZE, UdtChannelOption.SYSTEM_SEND_BUFFER_SIZE, ChannelOption.SO_RCVBUF, ChannelOption.SO_SNDBUF, ChannelOption.SO_REUSEADDR, ChannelOption.SO_LINGER);
    }

    @Override // io.netty.channel.udt.UdtChannelConfig
    public int getProtocolReceiveBufferSize() {
        return this.protocolReceiveBufferSize;
    }

    @Override // io.netty.channel.udt.UdtChannelConfig
    public int getProtocolSendBufferSize() {
        return this.protocolSendBufferSize;
    }

    @Override // io.netty.channel.udt.UdtChannelConfig
    public int getReceiveBufferSize() {
        return this.allocatorReceiveBufferSize;
    }

    @Override // io.netty.channel.udt.UdtChannelConfig
    public int getSendBufferSize() {
        return this.allocatorSendBufferSize;
    }

    @Override // io.netty.channel.udt.UdtChannelConfig
    public int getSoLinger() {
        return this.soLinger;
    }

    @Override // io.netty.channel.udt.UdtChannelConfig
    public int getSystemReceiveBufferSize() {
        return this.systemReceiveBufferSize;
    }

    @Override // io.netty.channel.udt.UdtChannelConfig
    public int getSystemSendBufferSize() {
        return this.systemSendBufferSize;
    }

    @Override // io.netty.channel.udt.UdtChannelConfig
    public boolean isReuseAddress() {
        return this.reuseAddress;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public <T> boolean setOption(ChannelOption<T> channelOption, T t10) {
        validate(channelOption, t10);
        if (channelOption == UdtChannelOption.PROTOCOL_RECEIVE_BUFFER_SIZE) {
            setProtocolReceiveBufferSize(((Integer) t10).intValue());
            return true;
        }
        if (channelOption == UdtChannelOption.PROTOCOL_SEND_BUFFER_SIZE) {
            setProtocolSendBufferSize(((Integer) t10).intValue());
            return true;
        }
        if (channelOption == UdtChannelOption.SYSTEM_RECEIVE_BUFFER_SIZE) {
            setSystemReceiveBufferSize(((Integer) t10).intValue());
            return true;
        }
        if (channelOption == UdtChannelOption.SYSTEM_SEND_BUFFER_SIZE) {
            setSystemSendBufferSize(((Integer) t10).intValue());
            return true;
        }
        if (channelOption == ChannelOption.SO_RCVBUF) {
            setReceiveBufferSize(((Integer) t10).intValue());
            return true;
        }
        if (channelOption == ChannelOption.SO_SNDBUF) {
            setSendBufferSize(((Integer) t10).intValue());
            return true;
        }
        if (channelOption == ChannelOption.SO_REUSEADDR) {
            setReuseAddress(((Boolean) t10).booleanValue());
            return true;
        }
        if (channelOption != ChannelOption.SO_LINGER) {
            return super.setOption(channelOption, t10);
        }
        setSoLinger(((Integer) t10).intValue());
        return true;
    }

    @Override // io.netty.channel.udt.UdtChannelConfig
    public UdtChannelConfig setProtocolReceiveBufferSize(int i10) {
        this.protocolReceiveBufferSize = i10;
        return this;
    }

    @Override // io.netty.channel.udt.UdtChannelConfig
    public UdtChannelConfig setProtocolSendBufferSize(int i10) {
        this.protocolSendBufferSize = i10;
        return this;
    }

    @Override // io.netty.channel.udt.UdtChannelConfig
    public UdtChannelConfig setReceiveBufferSize(int i10) {
        this.allocatorReceiveBufferSize = i10;
        return this;
    }

    @Override // io.netty.channel.udt.UdtChannelConfig
    public UdtChannelConfig setReuseAddress(boolean z10) {
        this.reuseAddress = z10;
        return this;
    }

    @Override // io.netty.channel.udt.UdtChannelConfig
    public UdtChannelConfig setSendBufferSize(int i10) {
        this.allocatorSendBufferSize = i10;
        return this;
    }

    @Override // io.netty.channel.udt.UdtChannelConfig
    public UdtChannelConfig setSoLinger(int i10) {
        this.soLinger = i10;
        return this;
    }

    @Override // io.netty.channel.udt.UdtChannelConfig
    public UdtChannelConfig setSystemReceiveBufferSize(int i10) {
        this.systemSendBufferSize = i10;
        return this;
    }

    @Override // io.netty.channel.udt.UdtChannelConfig
    public UdtChannelConfig setSystemSendBufferSize(int i10) {
        this.systemReceiveBufferSize = i10;
        return this;
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public UdtChannelConfig setAllocator(ByteBufAllocator byteBufAllocator) {
        super.setAllocator(byteBufAllocator);
        return this;
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public UdtChannelConfig setAutoClose(boolean z10) {
        super.setAutoClose(z10);
        return this;
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public UdtChannelConfig setAutoRead(boolean z10) {
        super.setAutoRead(z10);
        return this;
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public UdtChannelConfig setConnectTimeoutMillis(int i10) {
        super.setConnectTimeoutMillis(i10);
        return this;
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    @Deprecated
    public UdtChannelConfig setMaxMessagesPerRead(int i10) {
        super.setMaxMessagesPerRead(i10);
        return this;
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public UdtChannelConfig setMessageSizeEstimator(MessageSizeEstimator messageSizeEstimator) {
        super.setMessageSizeEstimator(messageSizeEstimator);
        return this;
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public UdtChannelConfig setRecvByteBufAllocator(RecvByteBufAllocator recvByteBufAllocator) {
        super.setRecvByteBufAllocator(recvByteBufAllocator);
        return this;
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public UdtChannelConfig setWriteBufferHighWaterMark(int i10) {
        super.setWriteBufferHighWaterMark(i10);
        return this;
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public UdtChannelConfig setWriteBufferLowWaterMark(int i10) {
        super.setWriteBufferLowWaterMark(i10);
        return this;
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public UdtChannelConfig setWriteBufferWaterMark(WriteBufferWaterMark writeBufferWaterMark) {
        super.setWriteBufferWaterMark(writeBufferWaterMark);
        return this;
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public UdtChannelConfig setWriteSpinCount(int i10) {
        super.setWriteSpinCount(i10);
        return this;
    }
}
