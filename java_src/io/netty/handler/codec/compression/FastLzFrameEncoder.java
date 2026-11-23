package io.netty.handler.codec.compression;

import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.MessageToByteEncoder;
import java.util.zip.Adler32;
import java.util.zip.Checksum;

/* JADX INFO: loaded from: classes.dex */
public class FastLzFrameEncoder extends MessageToByteEncoder<ByteBuf> {
    private final Checksum checksum;
    private final int level;

    public FastLzFrameEncoder() {
        this(0, null);
    }

    public FastLzFrameEncoder(int i10) {
        this(i10, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code duplicated, block: B:34:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:35:0x00e3  */
    @Override // io.netty.handler.codec.MessageToByteEncoder
    public void encode(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf, ByteBuf byteBuf2) throws Exception {
        byte[] bArr;
        int i10;
        int i11;
        int i12;
        int i13;
        byte[] bArrArray;
        int iArrayOffset;
        Checksum checksum = this.checksum;
        while (byteBuf.isReadable()) {
            int i14 = byteBuf.readerIndex();
            int iMin = Math.min(byteBuf.readableBytes(), 65535);
            int iWriterIndex = byteBuf2.writerIndex();
            byteBuf2.setMedium(iWriterIndex, 4607066);
            int i15 = iWriterIndex + 4;
            int i16 = i15 + (checksum != null ? 4 : 0);
            if (iMin < 32) {
                byteBuf2.ensureWritable(i16 + 2 + iMin);
                byte[] bArrArray2 = byteBuf2.array();
                int iArrayOffset2 = byteBuf2.arrayOffset() + i16 + 2;
                if (checksum != null) {
                    if (byteBuf.hasArray()) {
                        bArrArray = byteBuf.array();
                        iArrayOffset = byteBuf.arrayOffset() + i14;
                    } else {
                        bArrArray = new byte[iMin];
                        byteBuf.getBytes(i14, bArrArray);
                        iArrayOffset = 0;
                    }
                    checksum.reset();
                    checksum.update(bArrArray, iArrayOffset, iMin);
                    byteBuf2.setInt(i15, (int) checksum.getValue());
                    System.arraycopy(bArrArray, iArrayOffset, bArrArray2, iArrayOffset2, iMin);
                } else {
                    byteBuf.getBytes(i14, bArrArray2, iArrayOffset2, iMin);
                }
                i11 = i16;
            } else {
                if (byteBuf.hasArray()) {
                    byte[] bArrArray3 = byteBuf.array();
                    int iArrayOffset3 = byteBuf.arrayOffset() + i14;
                    bArr = bArrArray3;
                    i10 = iArrayOffset3;
                } else {
                    byte[] bArr2 = new byte[iMin];
                    byteBuf.getBytes(i14, bArr2);
                    bArr = bArr2;
                    i10 = 0;
                }
                if (checksum != null) {
                    checksum.reset();
                    checksum.update(bArr, i10, iMin);
                    byteBuf2.setInt(i15, (int) checksum.getValue());
                }
                byteBuf2.ensureWritable(i16 + 4 + FastLz.calculateOutputBufferLength(iMin));
                byte[] bArrArray4 = byteBuf2.array();
                int iArrayOffset4 = byteBuf2.arrayOffset() + i16 + 4;
                iMin = FastLz.compress(bArr, i10, iMin, bArrArray4, iArrayOffset4, this.level);
                if (iMin < iMin) {
                    byteBuf2.setShort(i16, iMin);
                    i11 = i16 + 2;
                    i12 = 1;
                } else {
                    System.arraycopy(bArr, i10, bArrArray4, iArrayOffset4 - 2, iMin);
                    i11 = i16;
                }
                byteBuf2.setShort(i11, iMin);
                int i17 = iWriterIndex + 3;
                if (checksum != null) {
                    i13 = 16;
                } else {
                    i13 = 0;
                }
                byteBuf2.setByte(i17, i12 | i13);
                byteBuf2.writerIndex(i11 + 2 + iMin);
                byteBuf.skipBytes(iMin);
            }
            i12 = 0;
            byteBuf2.setShort(i11, iMin);
            int i18 = iWriterIndex + 3;
            if (checksum != null) {
                i13 = 16;
            } else {
                i13 = 0;
            }
            byteBuf2.setByte(i18, i12 | i13);
            byteBuf2.writerIndex(i11 + 2 + iMin);
            byteBuf.skipBytes(iMin);
        }
    }

    public FastLzFrameEncoder(boolean z10) {
        this(0, z10 ? new Adler32() : null);
    }

    public FastLzFrameEncoder(int i10, Checksum checksum) {
        super(false);
        if (i10 != 0 && i10 != 1 && i10 != 2) {
            throw new IllegalArgumentException(String.format("level: %d (expected: %d or %d or %d)", Integer.valueOf(i10), 0, 1, 2));
        }
        this.level = i10;
        this.checksum = checksum;
    }
}
