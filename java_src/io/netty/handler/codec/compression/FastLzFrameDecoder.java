package io.netty.handler.codec.compression;

import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.ByteToMessageDecoder;
import io.netty.util.internal.EmptyArrays;
import java.util.List;
import java.util.zip.Adler32;
import java.util.zip.Checksum;

/* JADX INFO: loaded from: classes.dex */
public class FastLzFrameDecoder extends ByteToMessageDecoder {
    private final Checksum checksum;
    private int chunkLength;
    private int currentChecksum;
    private State currentState;
    private boolean hasChecksum;
    private boolean isCompressed;
    private int originalLength;

    /* JADX INFO: renamed from: io.netty.handler.codec.compression.FastLzFrameDecoder$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$netty$handler$codec$compression$FastLzFrameDecoder$State;

        static {
            int[] iArr = new int[State.values().length];
            $SwitchMap$io$netty$handler$codec$compression$FastLzFrameDecoder$State = iArr;
            try {
                iArr[State.INIT_BLOCK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$compression$FastLzFrameDecoder$State[State.INIT_BLOCK_PARAMS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$compression$FastLzFrameDecoder$State[State.DECOMPRESS_DATA.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$compression$FastLzFrameDecoder$State[State.CORRUPTED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private enum State {
        INIT_BLOCK,
        INIT_BLOCK_PARAMS,
        DECOMPRESS_DATA,
        CORRUPTED
    }

    public FastLzFrameDecoder() {
        this(false);
    }

    /* JADX WARN: Code duplicated, block: B:46:0x0093  */
    /* JADX WARN: Code duplicated, block: B:47:0x0095 A[Catch: Exception -> 0x015b, TryCatch #0 {Exception -> 0x015b, blocks: (B:3:0x0004, B:9:0x001b, B:10:0x0024, B:11:0x0029, B:44:0x008b, B:47:0x0095, B:49:0x009d, B:78:0x014f, B:79:0x0152, B:50:0x00b6, B:26:0x0056, B:30:0x0061, B:34:0x0068, B:38:0x006f, B:40:0x0075, B:42:0x0081, B:43:0x0085, B:12:0x002a, B:15:0x0032, B:17:0x003b, B:21:0x0046, B:25:0x0050, B:80:0x0153, B:81:0x015a, B:52:0x00bc, B:54:0x00c0, B:56:0x00c6, B:58:0x00d6, B:64:0x0101, B:67:0x0109, B:70:0x0119, B:71:0x0134, B:73:0x0137, B:74:0x0144, B:61:0x00e3, B:62:0x00fc, B:57:0x00d0, B:63:0x00fd), top: B:85:0x0004, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x009d A[Catch: Exception -> 0x015b, TryCatch #0 {Exception -> 0x015b, blocks: (B:3:0x0004, B:9:0x001b, B:10:0x0024, B:11:0x0029, B:44:0x008b, B:47:0x0095, B:49:0x009d, B:78:0x014f, B:79:0x0152, B:50:0x00b6, B:26:0x0056, B:30:0x0061, B:34:0x0068, B:38:0x006f, B:40:0x0075, B:42:0x0081, B:43:0x0085, B:12:0x002a, B:15:0x0032, B:17:0x003b, B:21:0x0046, B:25:0x0050, B:80:0x0153, B:81:0x015a, B:52:0x00bc, B:54:0x00c0, B:56:0x00c6, B:58:0x00d6, B:64:0x0101, B:67:0x0109, B:70:0x0119, B:71:0x0134, B:73:0x0137, B:74:0x0144, B:61:0x00e3, B:62:0x00fc, B:57:0x00d0, B:63:0x00fd), top: B:85:0x0004, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:50:0x00b6 A[Catch: Exception -> 0x015b, TRY_LEAVE, TryCatch #0 {Exception -> 0x015b, blocks: (B:3:0x0004, B:9:0x001b, B:10:0x0024, B:11:0x0029, B:44:0x008b, B:47:0x0095, B:49:0x009d, B:78:0x014f, B:79:0x0152, B:50:0x00b6, B:26:0x0056, B:30:0x0061, B:34:0x0068, B:38:0x006f, B:40:0x0075, B:42:0x0081, B:43:0x0085, B:12:0x002a, B:15:0x0032, B:17:0x003b, B:21:0x0046, B:25:0x0050, B:80:0x0153, B:81:0x015a, B:52:0x00bc, B:54:0x00c0, B:56:0x00c6, B:58:0x00d6, B:64:0x0101, B:67:0x0109, B:70:0x0119, B:71:0x0134, B:73:0x0137, B:74:0x0144, B:61:0x00e3, B:62:0x00fc, B:57:0x00d0, B:63:0x00fd), top: B:85:0x0004, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:54:0x00c0 A[Catch: all -> 0x014c, TryCatch #1 {all -> 0x014c, blocks: (B:52:0x00bc, B:54:0x00c0, B:56:0x00c6, B:58:0x00d6, B:64:0x0101, B:67:0x0109, B:70:0x0119, B:71:0x0134, B:73:0x0137, B:74:0x0144, B:61:0x00e3, B:62:0x00fc, B:57:0x00d0, B:63:0x00fd), top: B:86:0x00bc, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:56:0x00c6 A[Catch: all -> 0x014c, TryCatch #1 {all -> 0x014c, blocks: (B:52:0x00bc, B:54:0x00c0, B:56:0x00c6, B:58:0x00d6, B:64:0x0101, B:67:0x0109, B:70:0x0119, B:71:0x0134, B:73:0x0137, B:74:0x0144, B:61:0x00e3, B:62:0x00fc, B:57:0x00d0, B:63:0x00fd), top: B:86:0x00bc, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:57:0x00d0 A[Catch: all -> 0x014c, TryCatch #1 {all -> 0x014c, blocks: (B:52:0x00bc, B:54:0x00c0, B:56:0x00c6, B:58:0x00d6, B:64:0x0101, B:67:0x0109, B:70:0x0119, B:71:0x0134, B:73:0x0137, B:74:0x0144, B:61:0x00e3, B:62:0x00fc, B:57:0x00d0, B:63:0x00fd), top: B:86:0x00bc, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:60:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:61:0x00e3 A[Catch: all -> 0x014c, TryCatch #1 {all -> 0x014c, blocks: (B:52:0x00bc, B:54:0x00c0, B:56:0x00c6, B:58:0x00d6, B:64:0x0101, B:67:0x0109, B:70:0x0119, B:71:0x0134, B:73:0x0137, B:74:0x0144, B:61:0x00e3, B:62:0x00fc, B:57:0x00d0, B:63:0x00fd), top: B:86:0x00bc, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:63:0x00fd A[Catch: all -> 0x014c, TryCatch #1 {all -> 0x014c, blocks: (B:52:0x00bc, B:54:0x00c0, B:56:0x00c6, B:58:0x00d6, B:64:0x0101, B:67:0x0109, B:70:0x0119, B:71:0x0134, B:73:0x0137, B:74:0x0144, B:61:0x00e3, B:62:0x00fc, B:57:0x00d0, B:63:0x00fd), top: B:86:0x00bc, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:69:0x0118  */
    /* JADX WARN: Code duplicated, block: B:70:0x0119 A[Catch: all -> 0x014c, TryCatch #1 {all -> 0x014c, blocks: (B:52:0x00bc, B:54:0x00c0, B:56:0x00c6, B:58:0x00d6, B:64:0x0101, B:67:0x0109, B:70:0x0119, B:71:0x0134, B:73:0x0137, B:74:0x0144, B:61:0x00e3, B:62:0x00fc, B:57:0x00d0, B:63:0x00fd), top: B:86:0x00bc, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:73:0x0137 A[Catch: all -> 0x014c, TryCatch #1 {all -> 0x014c, blocks: (B:52:0x00bc, B:54:0x00c0, B:56:0x00c6, B:58:0x00d6, B:64:0x0101, B:67:0x0109, B:70:0x0119, B:71:0x0134, B:73:0x0137, B:74:0x0144, B:61:0x00e3, B:62:0x00fc, B:57:0x00d0, B:63:0x00fd), top: B:86:0x00bc, outer: #0 }] */
    @Override // io.netty.handler.codec.ByteToMessageDecoder
    protected void decode(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf, List<Object> list) throws Exception {
        int i10;
        int i11;
        int i12;
        ByteBuf byteBuf2;
        byte[] bArrArray;
        int iArrayOffset;
        int i13;
        Checksum checksum;
        int value;
        byte[] bArrArray2;
        int iArrayOffset2;
        int i14;
        int iDecompress;
        try {
            int i15 = AnonymousClass1.$SwitchMap$io$netty$handler$codec$compression$FastLzFrameDecoder$State[this.currentState.ordinal()];
            int i16 = 4;
            if (i15 != 1) {
                if (i15 != 2) {
                    if (i15 != 3) {
                        if (i15 != 4) {
                            throw new IllegalStateException();
                        }
                        byteBuf.skipBytes(byteBuf.readableBytes());
                        return;
                    }
                }
                i10 = this.chunkLength;
                if (byteBuf.readableBytes() < i10) {
                    return;
                }
                i11 = byteBuf.readerIndex();
                i12 = this.originalLength;
                if (i12 != 0) {
                    ByteBuf byteBufHeapBuffer = channelHandlerContext.alloc().heapBuffer(i12, i12);
                    byteBuf2 = byteBufHeapBuffer;
                    bArrArray = byteBufHeapBuffer.array();
                    iArrayOffset = byteBufHeapBuffer.arrayOffset() + byteBufHeapBuffer.writerIndex();
                } else {
                    byteBuf2 = null;
                    bArrArray = EmptyArrays.EMPTY_BYTES;
                    iArrayOffset = 0;
                }
                try {
                    if (this.isCompressed) {
                        if (byteBuf.hasArray()) {
                            bArrArray2 = byteBuf.array();
                            iArrayOffset2 = byteBuf.arrayOffset() + i11;
                        } else {
                            bArrArray2 = new byte[i10];
                            byteBuf.getBytes(i11, bArrArray2);
                            iArrayOffset2 = 0;
                        }
                        i14 = iArrayOffset;
                        iDecompress = FastLz.decompress(bArrArray2, iArrayOffset2, i10, bArrArray, iArrayOffset, i12);
                        if (i12 == iDecompress) {
                            throw new DecompressionException(String.format("stream corrupted: originalLength(%d) and actual length(%d) mismatch", Integer.valueOf(i12), Integer.valueOf(iDecompress)));
                        }
                        i13 = i14;
                    } else {
                        i13 = iArrayOffset;
                        byteBuf.getBytes(i11, bArrArray, i13, i10);
                    }
                    checksum = this.checksum;
                    if (this.hasChecksum && checksum != null) {
                        checksum.reset();
                        checksum.update(bArrArray, i13, i12);
                        value = (int) checksum.getValue();
                        if (value == this.currentChecksum) {
                            throw new DecompressionException(String.format("stream corrupted: mismatching checksum: %d (expected: %d)", Integer.valueOf(value), Integer.valueOf(this.currentChecksum)));
                        }
                    }
                    if (byteBuf2 != null) {
                        byteBuf2.writerIndex(byteBuf2.writerIndex() + i12);
                        list.add(byteBuf2);
                    }
                    byteBuf.skipBytes(i10);
                    this.currentState = State.INIT_BLOCK;
                } catch (Throwable th) {
                    if (byteBuf2 != null) {
                        byteBuf2.release();
                    }
                    throw th;
                }
            }
            if (byteBuf.readableBytes() < 4) {
                return;
            }
            if (byteBuf.readUnsignedMedium() != 4607066) {
                throw new DecompressionException("unexpected block identifier");
            }
            byte b10 = byteBuf.readByte();
            this.isCompressed = (b10 & 1) == 1;
            this.hasChecksum = (b10 & 16) == 16;
            this.currentState = State.INIT_BLOCK_PARAMS;
            int i17 = byteBuf.readableBytes();
            int i18 = (this.isCompressed ? 2 : 0) + 2;
            boolean z10 = this.hasChecksum;
            if (!z10) {
                i16 = 0;
            }
            if (i17 < i18 + i16) {
                return;
            }
            this.currentChecksum = z10 ? byteBuf.readInt() : 0;
            int unsignedShort = byteBuf.readUnsignedShort();
            this.chunkLength = unsignedShort;
            if (this.isCompressed) {
                unsignedShort = byteBuf.readUnsignedShort();
            }
            this.originalLength = unsignedShort;
            this.currentState = State.DECOMPRESS_DATA;
            i10 = this.chunkLength;
            if (byteBuf.readableBytes() < i10) {
                return;
            }
            i11 = byteBuf.readerIndex();
            i12 = this.originalLength;
            if (i12 != 0) {
                ByteBuf byteBufHeapBuffer2 = channelHandlerContext.alloc().heapBuffer(i12, i12);
                byteBuf2 = byteBufHeapBuffer2;
                bArrArray = byteBufHeapBuffer2.array();
                iArrayOffset = byteBufHeapBuffer2.arrayOffset() + byteBufHeapBuffer2.writerIndex();
            } else {
                byteBuf2 = null;
                bArrArray = EmptyArrays.EMPTY_BYTES;
                iArrayOffset = 0;
            }
            if (this.isCompressed) {
                if (byteBuf.hasArray()) {
                    bArrArray2 = byteBuf.array();
                    iArrayOffset2 = byteBuf.arrayOffset() + i11;
                } else {
                    bArrArray2 = new byte[i10];
                    byteBuf.getBytes(i11, bArrArray2);
                    iArrayOffset2 = 0;
                }
                i14 = iArrayOffset;
                iDecompress = FastLz.decompress(bArrArray2, iArrayOffset2, i10, bArrArray, iArrayOffset, i12);
                if (i12 == iDecompress) {
                    throw new DecompressionException(String.format("stream corrupted: originalLength(%d) and actual length(%d) mismatch", Integer.valueOf(i12), Integer.valueOf(iDecompress)));
                }
                i13 = i14;
            } else {
                i13 = iArrayOffset;
                byteBuf.getBytes(i11, bArrArray, i13, i10);
            }
            checksum = this.checksum;
            if (this.hasChecksum) {
                checksum.reset();
                checksum.update(bArrArray, i13, i12);
                value = (int) checksum.getValue();
                if (value == this.currentChecksum) {
                    throw new DecompressionException(String.format("stream corrupted: mismatching checksum: %d (expected: %d)", Integer.valueOf(value), Integer.valueOf(this.currentChecksum)));
                }
            }
            if (byteBuf2 != null) {
                byteBuf2.writerIndex(byteBuf2.writerIndex() + i12);
                list.add(byteBuf2);
            }
            byteBuf.skipBytes(i10);
            this.currentState = State.INIT_BLOCK;
        } catch (Exception e10) {
            this.currentState = State.CORRUPTED;
            throw e10;
        }
    }

    public FastLzFrameDecoder(boolean z10) {
        this(z10 ? new Adler32() : null);
    }

    public FastLzFrameDecoder(Checksum checksum) {
        this.currentState = State.INIT_BLOCK;
        this.checksum = checksum;
    }
}
