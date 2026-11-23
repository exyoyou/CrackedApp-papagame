package io.netty.handler.codec.compression;

import io.netty.buffer.ByteBuf;

/* JADX INFO: loaded from: classes.dex */
class Bzip2BitReader {
    private static final int MAX_COUNT_OF_READABLE_BYTES = 268435455;
    private long bitBuffer;
    private int bitCount;

    /* JADX INFO: renamed from: in, reason: collision with root package name */
    private ByteBuf f91624in;

    Bzip2BitReader() {
    }

    boolean hasReadableBits(int i10) {
        if (i10 >= 0) {
            return this.bitCount >= i10 || ((this.f91624in.readableBytes() << 3) & Integer.MAX_VALUE) >= i10 - this.bitCount;
        }
        throw new IllegalArgumentException("count: " + i10 + " (expected value greater than 0)");
    }

    boolean hasReadableBytes(int i10) {
        if (i10 >= 0 && i10 <= MAX_COUNT_OF_READABLE_BYTES) {
            return hasReadableBits(i10 << 3);
        }
        throw new IllegalArgumentException("count: " + i10 + " (expected: 0-" + MAX_COUNT_OF_READABLE_BYTES + ')');
    }

    boolean isReadable() {
        return this.bitCount > 0 || this.f91624in.isReadable();
    }

    int readBits(int i10) {
        long unsignedByte;
        int i11;
        if (i10 < 0 || i10 > 32) {
            throw new IllegalArgumentException("count: " + i10 + " (expected: 0-32 )");
        }
        int i12 = this.bitCount;
        long j10 = this.bitBuffer;
        if (i12 < i10) {
            int i13 = this.f91624in.readableBytes();
            if (i13 == 1) {
                unsignedByte = this.f91624in.readUnsignedByte();
                i11 = 8;
            } else if (i13 == 2) {
                unsignedByte = this.f91624in.readUnsignedShort();
                i11 = 16;
            } else if (i13 != 3) {
                unsignedByte = this.f91624in.readUnsignedInt();
                i11 = 32;
            } else {
                unsignedByte = this.f91624in.readUnsignedMedium();
                i11 = 24;
            }
            j10 = (j10 << i11) | unsignedByte;
            i12 += i11;
            this.bitBuffer = j10;
        }
        int i14 = i12 - i10;
        this.bitCount = i14;
        return (int) ((j10 >>> i14) & (i10 != 32 ? (1 << i10) - 1 : 4294967295L));
    }

    boolean readBoolean() {
        return readBits(1) != 0;
    }

    int readInt() {
        return readBits(32);
    }

    void refill() {
        this.bitBuffer = (this.bitBuffer << 8) | ((long) this.f91624in.readUnsignedByte());
        this.bitCount += 8;
    }

    void setByteBuf(ByteBuf byteBuf) {
        this.f91624in = byteBuf;
    }
}
