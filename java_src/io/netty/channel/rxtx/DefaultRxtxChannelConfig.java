package io.netty.channel.rxtx;

import io.netty.buffer.ByteBufAllocator;
import io.netty.channel.ChannelOption;
import io.netty.channel.DefaultChannelConfig;
import io.netty.channel.MessageSizeEstimator;
import io.netty.channel.PreferHeapByteBufAllocator;
import io.netty.channel.RecvByteBufAllocator;
import io.netty.channel.WriteBufferWaterMark;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
final class DefaultRxtxChannelConfig extends DefaultChannelConfig implements RxtxChannelConfig {
    private volatile int baudrate;
    private volatile RxtxChannelConfig.Databits databits;
    private volatile boolean dtr;
    private volatile RxtxChannelConfig.Paritybit paritybit;
    private volatile int readTimeout;
    private volatile boolean rts;
    private volatile RxtxChannelConfig.Stopbits stopbits;
    private volatile int waitTime;

    DefaultRxtxChannelConfig(RxtxChannel rxtxChannel) {
        super(rxtxChannel);
        this.baudrate = 115200;
        this.stopbits = RxtxChannelConfig.Stopbits.STOPBITS_1;
        this.databits = RxtxChannelConfig.Databits.DATABITS_8;
        this.paritybit = RxtxChannelConfig.Paritybit.NONE;
        this.readTimeout = 1000;
        setAllocator((ByteBufAllocator) new PreferHeapByteBufAllocator(getAllocator()));
    }

    @Override // io.netty.channel.rxtx.RxtxChannelConfig
    public int getBaudrate() {
        return this.baudrate;
    }

    @Override // io.netty.channel.rxtx.RxtxChannelConfig
    public RxtxChannelConfig.Databits getDatabits() {
        return this.databits;
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public <T> T getOption(ChannelOption<T> channelOption) {
        if (channelOption == RxtxChannelOption.BAUD_RATE) {
            return (T) Integer.valueOf(getBaudrate());
        }
        if (channelOption == RxtxChannelOption.DTR) {
            return (T) Boolean.valueOf(isDtr());
        }
        if (channelOption == RxtxChannelOption.RTS) {
            return (T) Boolean.valueOf(isRts());
        }
        if (channelOption == RxtxChannelOption.STOP_BITS) {
            return (T) getStopbits();
        }
        if (channelOption == RxtxChannelOption.DATA_BITS) {
            return (T) getDatabits();
        }
        if (channelOption == RxtxChannelOption.PARITY_BIT) {
            return (T) getParitybit();
        }
        if (channelOption == RxtxChannelOption.WAIT_TIME) {
            return (T) Integer.valueOf(getWaitTimeMillis());
        }
        return channelOption == RxtxChannelOption.READ_TIMEOUT ? (T) Integer.valueOf(getReadTimeout()) : (T) super.getOption(channelOption);
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public Map<ChannelOption<?>, Object> getOptions() {
        return getOptions(super.getOptions(), RxtxChannelOption.BAUD_RATE, RxtxChannelOption.DTR, RxtxChannelOption.RTS, RxtxChannelOption.STOP_BITS, RxtxChannelOption.DATA_BITS, RxtxChannelOption.PARITY_BIT, RxtxChannelOption.WAIT_TIME);
    }

    @Override // io.netty.channel.rxtx.RxtxChannelConfig
    public RxtxChannelConfig.Paritybit getParitybit() {
        return this.paritybit;
    }

    @Override // io.netty.channel.rxtx.RxtxChannelConfig
    public int getReadTimeout() {
        return this.readTimeout;
    }

    @Override // io.netty.channel.rxtx.RxtxChannelConfig
    public RxtxChannelConfig.Stopbits getStopbits() {
        return this.stopbits;
    }

    @Override // io.netty.channel.rxtx.RxtxChannelConfig
    public int getWaitTimeMillis() {
        return this.waitTime;
    }

    @Override // io.netty.channel.rxtx.RxtxChannelConfig
    public boolean isDtr() {
        return this.dtr;
    }

    @Override // io.netty.channel.rxtx.RxtxChannelConfig
    public boolean isRts() {
        return this.rts;
    }

    @Override // io.netty.channel.rxtx.RxtxChannelConfig
    public RxtxChannelConfig setBaudrate(int i10) {
        this.baudrate = i10;
        return this;
    }

    @Override // io.netty.channel.rxtx.RxtxChannelConfig
    public RxtxChannelConfig setDatabits(RxtxChannelConfig.Databits databits) {
        this.databits = databits;
        return this;
    }

    @Override // io.netty.channel.rxtx.RxtxChannelConfig
    public RxtxChannelConfig setDtr(boolean z10) {
        this.dtr = z10;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public <T> boolean setOption(ChannelOption<T> channelOption, T t10) {
        validate(channelOption, t10);
        if (channelOption == RxtxChannelOption.BAUD_RATE) {
            setBaudrate(((Integer) t10).intValue());
            return true;
        }
        if (channelOption == RxtxChannelOption.DTR) {
            setDtr(((Boolean) t10).booleanValue());
            return true;
        }
        if (channelOption == RxtxChannelOption.RTS) {
            setRts(((Boolean) t10).booleanValue());
            return true;
        }
        if (channelOption == RxtxChannelOption.STOP_BITS) {
            setStopbits((RxtxChannelConfig.Stopbits) t10);
            return true;
        }
        if (channelOption == RxtxChannelOption.DATA_BITS) {
            setDatabits((RxtxChannelConfig.Databits) t10);
            return true;
        }
        if (channelOption == RxtxChannelOption.PARITY_BIT) {
            setParitybit((RxtxChannelConfig.Paritybit) t10);
            return true;
        }
        if (channelOption == RxtxChannelOption.WAIT_TIME) {
            setWaitTimeMillis(((Integer) t10).intValue());
            return true;
        }
        if (channelOption != RxtxChannelOption.READ_TIMEOUT) {
            return super.setOption(channelOption, t10);
        }
        setReadTimeout(((Integer) t10).intValue());
        return true;
    }

    @Override // io.netty.channel.rxtx.RxtxChannelConfig
    public RxtxChannelConfig setParitybit(RxtxChannelConfig.Paritybit paritybit) {
        this.paritybit = paritybit;
        return this;
    }

    @Override // io.netty.channel.rxtx.RxtxChannelConfig
    public RxtxChannelConfig setReadTimeout(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("readTime must be >= 0");
        }
        this.readTimeout = i10;
        return this;
    }

    @Override // io.netty.channel.rxtx.RxtxChannelConfig
    public RxtxChannelConfig setRts(boolean z10) {
        this.rts = z10;
        return this;
    }

    @Override // io.netty.channel.rxtx.RxtxChannelConfig
    public RxtxChannelConfig setStopbits(RxtxChannelConfig.Stopbits stopbits) {
        this.stopbits = stopbits;
        return this;
    }

    @Override // io.netty.channel.rxtx.RxtxChannelConfig
    public RxtxChannelConfig setWaitTimeMillis(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("Wait time must be >= 0");
        }
        this.waitTime = i10;
        return this;
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public RxtxChannelConfig setAllocator(ByteBufAllocator byteBufAllocator) {
        super.setAllocator(byteBufAllocator);
        return this;
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public RxtxChannelConfig setAutoClose(boolean z10) {
        super.setAutoClose(z10);
        return this;
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public RxtxChannelConfig setAutoRead(boolean z10) {
        super.setAutoRead(z10);
        return this;
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public RxtxChannelConfig setConnectTimeoutMillis(int i10) {
        super.setConnectTimeoutMillis(i10);
        return this;
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    @Deprecated
    public RxtxChannelConfig setMaxMessagesPerRead(int i10) {
        super.setMaxMessagesPerRead(i10);
        return this;
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public RxtxChannelConfig setMessageSizeEstimator(MessageSizeEstimator messageSizeEstimator) {
        super.setMessageSizeEstimator(messageSizeEstimator);
        return this;
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public RxtxChannelConfig setRecvByteBufAllocator(RecvByteBufAllocator recvByteBufAllocator) {
        super.setRecvByteBufAllocator(recvByteBufAllocator);
        return this;
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public RxtxChannelConfig setWriteBufferHighWaterMark(int i10) {
        super.setWriteBufferHighWaterMark(i10);
        return this;
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public RxtxChannelConfig setWriteBufferLowWaterMark(int i10) {
        super.setWriteBufferLowWaterMark(i10);
        return this;
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public RxtxChannelConfig setWriteBufferWaterMark(WriteBufferWaterMark writeBufferWaterMark) {
        super.setWriteBufferWaterMark(writeBufferWaterMark);
        return this;
    }

    @Override // io.netty.channel.DefaultChannelConfig, io.netty.channel.ChannelConfig
    public RxtxChannelConfig setWriteSpinCount(int i10) {
        super.setWriteSpinCount(i10);
        return this;
    }
}
