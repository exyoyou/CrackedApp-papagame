package io.netty.handler.codec.compression;

import com.ning.compress.BufferRecycler;
import com.ning.compress.lzf.ChunkDecoder;
import com.ning.compress.lzf.util.ChunkDecoderFactory;
import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.ByteToMessageDecoder;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class LzfDecoder extends ByteToMessageDecoder {
    private static final short MAGIC_NUMBER = 23126;
    private int chunkLength;
    private State currentState;
    private ChunkDecoder decoder;
    private boolean isCompressed;
    private int originalLength;
    private BufferRecycler recycler;

    /* JADX INFO: renamed from: io.netty.handler.codec.compression.LzfDecoder$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$netty$handler$codec$compression$LzfDecoder$State;

        static {
            int[] iArr = new int[State.values().length];
            $SwitchMap$io$netty$handler$codec$compression$LzfDecoder$State = iArr;
            try {
                iArr[State.INIT_BLOCK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$compression$LzfDecoder$State[State.INIT_ORIGINAL_LENGTH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$compression$LzfDecoder$State[State.DECOMPRESS_DATA.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$compression$LzfDecoder$State[State.CORRUPTED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private enum State {
        INIT_BLOCK,
        INIT_ORIGINAL_LENGTH,
        DECOMPRESS_DATA,
        CORRUPTED
    }

    public LzfDecoder() {
        this(false);
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0090  */
    /* JADX WARN: Code duplicated, block: B:33:0x0092 A[Catch: Exception -> 0x010b, TryCatch #1 {Exception -> 0x010b, blocks: (B:2:0x0000, B:8:0x0017, B:9:0x0020, B:10:0x0025, B:30:0x0088, B:33:0x0092, B:35:0x0098, B:37:0x00a2, B:39:0x00b8, B:42:0x00e4, B:44:0x00ea, B:50:0x00fe, B:46:0x00f1, B:47:0x00f4, B:38:0x00ad, B:49:0x00f7, B:26:0x0076, B:29:0x007e, B:11:0x0026, B:14:0x002f, B:16:0x0037, B:19:0x003f, B:23:0x006c, B:20:0x0046, B:21:0x0065, B:22:0x0066, B:52:0x0103, B:53:0x010a, B:41:0x00ce), top: B:59:0x0000, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:35:0x0098 A[Catch: Exception -> 0x010b, TryCatch #1 {Exception -> 0x010b, blocks: (B:2:0x0000, B:8:0x0017, B:9:0x0020, B:10:0x0025, B:30:0x0088, B:33:0x0092, B:35:0x0098, B:37:0x00a2, B:39:0x00b8, B:42:0x00e4, B:44:0x00ea, B:50:0x00fe, B:46:0x00f1, B:47:0x00f4, B:38:0x00ad, B:49:0x00f7, B:26:0x0076, B:29:0x007e, B:11:0x0026, B:14:0x002f, B:16:0x0037, B:19:0x003f, B:23:0x006c, B:20:0x0046, B:21:0x0065, B:22:0x0066, B:52:0x0103, B:53:0x010a, B:41:0x00ce), top: B:59:0x0000, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x00a2 A[Catch: Exception -> 0x010b, TryCatch #1 {Exception -> 0x010b, blocks: (B:2:0x0000, B:8:0x0017, B:9:0x0020, B:10:0x0025, B:30:0x0088, B:33:0x0092, B:35:0x0098, B:37:0x00a2, B:39:0x00b8, B:42:0x00e4, B:44:0x00ea, B:50:0x00fe, B:46:0x00f1, B:47:0x00f4, B:38:0x00ad, B:49:0x00f7, B:26:0x0076, B:29:0x007e, B:11:0x0026, B:14:0x002f, B:16:0x0037, B:19:0x003f, B:23:0x006c, B:20:0x0046, B:21:0x0065, B:22:0x0066, B:52:0x0103, B:53:0x010a, B:41:0x00ce), top: B:59:0x0000, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:38:0x00ad A[Catch: Exception -> 0x010b, TryCatch #1 {Exception -> 0x010b, blocks: (B:2:0x0000, B:8:0x0017, B:9:0x0020, B:10:0x0025, B:30:0x0088, B:33:0x0092, B:35:0x0098, B:37:0x00a2, B:39:0x00b8, B:42:0x00e4, B:44:0x00ea, B:50:0x00fe, B:46:0x00f1, B:47:0x00f4, B:38:0x00ad, B:49:0x00f7, B:26:0x0076, B:29:0x007e, B:11:0x0026, B:14:0x002f, B:16:0x0037, B:19:0x003f, B:23:0x006c, B:20:0x0046, B:21:0x0065, B:22:0x0066, B:52:0x0103, B:53:0x010a, B:41:0x00ce), top: B:59:0x0000, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00ea A[Catch: Exception -> 0x010b, TryCatch #1 {Exception -> 0x010b, blocks: (B:2:0x0000, B:8:0x0017, B:9:0x0020, B:10:0x0025, B:30:0x0088, B:33:0x0092, B:35:0x0098, B:37:0x00a2, B:39:0x00b8, B:42:0x00e4, B:44:0x00ea, B:50:0x00fe, B:46:0x00f1, B:47:0x00f4, B:38:0x00ad, B:49:0x00f7, B:26:0x0076, B:29:0x007e, B:11:0x0026, B:14:0x002f, B:16:0x0037, B:19:0x003f, B:23:0x006c, B:20:0x0046, B:21:0x0065, B:22:0x0066, B:52:0x0103, B:53:0x010a, B:41:0x00ce), top: B:59:0x0000, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00f5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:49:0x00f7 A[Catch: Exception -> 0x010b, TryCatch #1 {Exception -> 0x010b, blocks: (B:2:0x0000, B:8:0x0017, B:9:0x0020, B:10:0x0025, B:30:0x0088, B:33:0x0092, B:35:0x0098, B:37:0x00a2, B:39:0x00b8, B:42:0x00e4, B:44:0x00ea, B:50:0x00fe, B:46:0x00f1, B:47:0x00f4, B:38:0x00ad, B:49:0x00f7, B:26:0x0076, B:29:0x007e, B:11:0x0026, B:14:0x002f, B:16:0x0037, B:19:0x003f, B:23:0x006c, B:20:0x0046, B:21:0x0065, B:22:0x0066, B:52:0x0103, B:53:0x010a, B:41:0x00ce), top: B:59:0x0000, inners: #0 }] */
    @Override // io.netty.handler.codec.ByteToMessageDecoder
    protected void decode(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf, List<Object> list) throws Exception {
        int i10;
        int i11;
        int i12;
        byte[] bArrArray;
        int iArrayOffset;
        ByteBuf byteBufHeapBuffer;
        try {
            int i13 = AnonymousClass1.$SwitchMap$io$netty$handler$codec$compression$LzfDecoder$State[this.currentState.ordinal()];
            if (i13 != 1) {
                if (i13 != 2) {
                    if (i13 != 3) {
                        if (i13 != 4) {
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
                i11 = this.originalLength;
                if (this.isCompressed) {
                    i12 = byteBuf.readerIndex();
                    if (byteBuf.hasArray()) {
                        bArrArray = byteBuf.array();
                        iArrayOffset = i12 + byteBuf.arrayOffset();
                    } else {
                        byte[] bArrAllocInputBuffer = this.recycler.allocInputBuffer(i10);
                        byteBuf.getBytes(i12, bArrAllocInputBuffer, 0, i10);
                        bArrArray = bArrAllocInputBuffer;
                        iArrayOffset = 0;
                    }
                    byteBufHeapBuffer = channelHandlerContext.alloc().heapBuffer(i11, i11);
                    byte[] bArrArray2 = byteBufHeapBuffer.array();
                    int iArrayOffset2 = byteBufHeapBuffer.arrayOffset() + byteBufHeapBuffer.writerIndex();
                    try {
                        this.decoder.decodeChunk(bArrArray, iArrayOffset, bArrArray2, iArrayOffset2, iArrayOffset2 + i11);
                        byteBufHeapBuffer.writerIndex(byteBufHeapBuffer.writerIndex() + i11);
                        list.add(byteBufHeapBuffer);
                        byteBuf.skipBytes(i10);
                        if (!byteBuf.hasArray()) {
                            this.recycler.releaseInputBuffer(bArrArray);
                        }
                    } catch (Throwable th) {
                        byteBufHeapBuffer.release();
                        throw th;
                    }
                } else if (i10 > 0) {
                    list.add(byteBuf.readRetainedSlice(i10));
                }
                this.currentState = State.INIT_BLOCK;
            }
            if (byteBuf.readableBytes() < 5) {
                return;
            }
            if (byteBuf.readUnsignedShort() != 23126) {
                throw new DecompressionException("unexpected block identifier");
            }
            byte b10 = byteBuf.readByte();
            if (b10 == 0) {
                this.isCompressed = false;
                this.currentState = State.DECOMPRESS_DATA;
            } else {
                if (b10 != 1) {
                    throw new DecompressionException(String.format("unknown type of chunk: %d (expected: %d or %d)", Integer.valueOf(b10), 0, 1));
                }
                this.isCompressed = true;
                this.currentState = State.INIT_ORIGINAL_LENGTH;
            }
            this.chunkLength = byteBuf.readUnsignedShort();
            if (b10 != 1) {
                return;
            }
            if (byteBuf.readableBytes() < 2) {
                return;
            }
            this.originalLength = byteBuf.readUnsignedShort();
            this.currentState = State.DECOMPRESS_DATA;
            i10 = this.chunkLength;
            if (byteBuf.readableBytes() < i10) {
                return;
            }
            i11 = this.originalLength;
            if (this.isCompressed) {
                i12 = byteBuf.readerIndex();
                if (byteBuf.hasArray()) {
                    bArrArray = byteBuf.array();
                    iArrayOffset = i12 + byteBuf.arrayOffset();
                } else {
                    byte[] bArrAllocInputBuffer2 = this.recycler.allocInputBuffer(i10);
                    byteBuf.getBytes(i12, bArrAllocInputBuffer2, 0, i10);
                    bArrArray = bArrAllocInputBuffer2;
                    iArrayOffset = 0;
                }
                byteBufHeapBuffer = channelHandlerContext.alloc().heapBuffer(i11, i11);
                byte[] bArrArray3 = byteBufHeapBuffer.array();
                int iArrayOffset3 = byteBufHeapBuffer.arrayOffset() + byteBufHeapBuffer.writerIndex();
                this.decoder.decodeChunk(bArrArray, iArrayOffset, bArrArray3, iArrayOffset3, iArrayOffset3 + i11);
                byteBufHeapBuffer.writerIndex(byteBufHeapBuffer.writerIndex() + i11);
                list.add(byteBufHeapBuffer);
                byteBuf.skipBytes(i10);
                if (!byteBuf.hasArray()) {
                    this.recycler.releaseInputBuffer(bArrArray);
                }
            } else if (i10 > 0) {
                list.add(byteBuf.readRetainedSlice(i10));
            }
            this.currentState = State.INIT_BLOCK;
        } catch (Exception e10) {
            this.currentState = State.CORRUPTED;
            this.decoder = null;
            this.recycler = null;
            throw e10;
        }
    }

    public LzfDecoder(boolean z10) {
        this.currentState = State.INIT_BLOCK;
        this.decoder = z10 ? ChunkDecoderFactory.safeInstance() : ChunkDecoderFactory.optimalInstance();
        this.recycler = BufferRecycler.instance();
    }
}
