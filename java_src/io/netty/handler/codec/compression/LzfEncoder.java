package io.netty.handler.codec.compression;

import com.ning.compress.BufferRecycler;
import com.ning.compress.lzf.ChunkEncoder;
import com.ning.compress.lzf.LZFEncoder;
import com.ning.compress.lzf.util.ChunkEncoderFactory;
import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.MessageToByteEncoder;

/* JADX INFO: loaded from: classes.dex */
public class LzfEncoder extends MessageToByteEncoder<ByteBuf> {
    private static final int MIN_BLOCK_TO_COMPRESS = 16;
    private final ChunkEncoder encoder;
    private final BufferRecycler recycler;

    public LzfEncoder() {
        this(false, 65535);
    }

    @Override // io.netty.channel.ChannelHandlerAdapter, io.netty.channel.ChannelHandler
    public void handlerRemoved(ChannelHandlerContext channelHandlerContext) throws Exception {
        this.encoder.close();
        super.handlerRemoved(channelHandlerContext);
    }

    public LzfEncoder(boolean z10) {
        this(z10, 65535);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.handler.codec.MessageToByteEncoder
    public void encode(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf, ByteBuf byteBuf2) throws Exception {
        byte[] bArrAllocInputBuffer;
        int iArrayOffset;
        int i10 = byteBuf.readableBytes();
        int i11 = byteBuf.readerIndex();
        if (byteBuf.hasArray()) {
            bArrAllocInputBuffer = byteBuf.array();
            iArrayOffset = byteBuf.arrayOffset() + i11;
        } else {
            bArrAllocInputBuffer = this.recycler.allocInputBuffer(i10);
            iArrayOffset = 0;
            byteBuf.getBytes(i11, bArrAllocInputBuffer, 0, i10);
        }
        byte[] bArr = bArrAllocInputBuffer;
        byteBuf2.ensureWritable(LZFEncoder.estimateMaxWorkspaceSize(i10));
        byte[] bArrArray = byteBuf2.array();
        int iArrayOffset2 = byteBuf2.arrayOffset() + byteBuf2.writerIndex();
        byteBuf2.writerIndex(byteBuf2.writerIndex() + (LZFEncoder.appendEncoded(this.encoder, bArr, iArrayOffset, i10, bArrArray, iArrayOffset2) - iArrayOffset2));
        byteBuf.skipBytes(i10);
        if (byteBuf.hasArray()) {
            return;
        }
        this.recycler.releaseInputBuffer(bArr);
    }

    public LzfEncoder(int i10) {
        this(false, i10);
    }

    public LzfEncoder(boolean z10, int i10) {
        ChunkEncoder chunkEncoderOptimalNonAllocatingInstance;
        super(false);
        if (i10 >= 16 && i10 <= 65535) {
            if (z10) {
                chunkEncoderOptimalNonAllocatingInstance = ChunkEncoderFactory.safeNonAllocatingInstance(i10);
            } else {
                chunkEncoderOptimalNonAllocatingInstance = ChunkEncoderFactory.optimalNonAllocatingInstance(i10);
            }
            this.encoder = chunkEncoderOptimalNonAllocatingInstance;
            this.recycler = BufferRecycler.instance();
            return;
        }
        throw new IllegalArgumentException("totalLength: " + i10 + " (expected: 16-65535)");
    }
}
