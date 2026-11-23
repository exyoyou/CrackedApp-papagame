package io.netty.channel.rxtx;

import io.netty.buffer.ByteBufAllocator;
import io.netty.channel.ChannelConfig;
import io.netty.channel.MessageSizeEstimator;
import io.netty.channel.RecvByteBufAllocator;
import io.netty.channel.WriteBufferWaterMark;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public interface RxtxChannelConfig extends ChannelConfig {

    public enum Databits {
        DATABITS_5(5),
        DATABITS_6(6),
        DATABITS_7(7),
        DATABITS_8(8);

        private final int value;

        Databits(int i10) {
            this.value = i10;
        }

        public int value() {
            return this.value;
        }

        public static Databits valueOf(int i10) {
            for (Databits databits : values()) {
                if (databits.value == i10) {
                    return databits;
                }
            }
            throw new IllegalArgumentException("unknown " + Databits.class.getSimpleName() + " value: " + i10);
        }
    }

    public enum Paritybit {
        NONE(0),
        ODD(1),
        EVEN(2),
        MARK(3),
        SPACE(4);

        private final int value;

        Paritybit(int i10) {
            this.value = i10;
        }

        public int value() {
            return this.value;
        }

        public static Paritybit valueOf(int i10) {
            for (Paritybit paritybit : values()) {
                if (paritybit.value == i10) {
                    return paritybit;
                }
            }
            throw new IllegalArgumentException("unknown " + Paritybit.class.getSimpleName() + " value: " + i10);
        }
    }

    public enum Stopbits {
        STOPBITS_1(1),
        STOPBITS_2(2),
        STOPBITS_1_5(3);

        private final int value;

        Stopbits(int i10) {
            this.value = i10;
        }

        public int value() {
            return this.value;
        }

        public static Stopbits valueOf(int i10) {
            for (Stopbits stopbits : values()) {
                if (stopbits.value == i10) {
                    return stopbits;
                }
            }
            throw new IllegalArgumentException("unknown " + Stopbits.class.getSimpleName() + " value: " + i10);
        }
    }

    int getBaudrate();

    Databits getDatabits();

    Paritybit getParitybit();

    int getReadTimeout();

    Stopbits getStopbits();

    int getWaitTimeMillis();

    boolean isDtr();

    boolean isRts();

    @Override // io.netty.channel.ChannelConfig
    RxtxChannelConfig setAllocator(ByteBufAllocator byteBufAllocator);

    @Override // io.netty.channel.ChannelConfig
    RxtxChannelConfig setAutoClose(boolean z10);

    @Override // io.netty.channel.ChannelConfig
    RxtxChannelConfig setAutoRead(boolean z10);

    RxtxChannelConfig setBaudrate(int i10);

    @Override // io.netty.channel.ChannelConfig
    RxtxChannelConfig setConnectTimeoutMillis(int i10);

    RxtxChannelConfig setDatabits(Databits databits);

    RxtxChannelConfig setDtr(boolean z10);

    @Override // io.netty.channel.ChannelConfig
    @Deprecated
    RxtxChannelConfig setMaxMessagesPerRead(int i10);

    @Override // io.netty.channel.ChannelConfig
    RxtxChannelConfig setMessageSizeEstimator(MessageSizeEstimator messageSizeEstimator);

    RxtxChannelConfig setParitybit(Paritybit paritybit);

    RxtxChannelConfig setReadTimeout(int i10);

    @Override // io.netty.channel.ChannelConfig
    RxtxChannelConfig setRecvByteBufAllocator(RecvByteBufAllocator recvByteBufAllocator);

    RxtxChannelConfig setRts(boolean z10);

    RxtxChannelConfig setStopbits(Stopbits stopbits);

    RxtxChannelConfig setWaitTimeMillis(int i10);

    @Override // io.netty.channel.ChannelConfig
    RxtxChannelConfig setWriteBufferHighWaterMark(int i10);

    @Override // io.netty.channel.ChannelConfig
    RxtxChannelConfig setWriteBufferLowWaterMark(int i10);

    @Override // io.netty.channel.ChannelConfig
    RxtxChannelConfig setWriteBufferWaterMark(WriteBufferWaterMark writeBufferWaterMark);

    @Override // io.netty.channel.ChannelConfig
    RxtxChannelConfig setWriteSpinCount(int i10);
}
