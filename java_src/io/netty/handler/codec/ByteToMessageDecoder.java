package io.netty.handler.codec;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufAllocator;
import io.netty.buffer.CompositeByteBuf;
import io.netty.buffer.Unpooled;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelInboundHandlerAdapter;
import io.netty.channel.socket.ChannelInputShutdownEvent;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.StringUtil;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class ByteToMessageDecoder extends ChannelInboundHandlerAdapter {
    private static final byte STATE_CALLING_CHILD_DECODE = 1;
    private static final byte STATE_HANDLER_REMOVED_PENDING = 2;
    private static final byte STATE_INIT = 0;
    ByteBuf cumulation;
    private Cumulator cumulator = MERGE_CUMULATOR;
    private byte decodeState = 0;
    private int discardAfterReads = 16;
    private boolean firedChannelRead;
    private boolean first;
    private int numReads;
    private boolean singleDecode;
    public static final Cumulator MERGE_CUMULATOR = new Cumulator() { // from class: io.netty.handler.codec.ByteToMessageDecoder.1
        @Override // io.netty.handler.codec.ByteToMessageDecoder.Cumulator
        public ByteBuf cumulate(ByteBufAllocator byteBufAllocator, ByteBuf byteBuf, ByteBuf byteBuf2) {
            if (!byteBuf.isReadable() && byteBuf2.isContiguous()) {
                byteBuf.release();
                return byteBuf2;
            }
            try {
                int i10 = byteBuf2.readableBytes();
                if (i10 <= byteBuf.maxWritableBytes() && ((i10 <= byteBuf.maxFastWritableBytes() || byteBuf.refCnt() <= 1) && !byteBuf.isReadOnly())) {
                    byteBuf.writeBytes(byteBuf2, byteBuf2.readerIndex(), i10);
                    byteBuf2.readerIndex(byteBuf2.writerIndex());
                    return byteBuf;
                }
                return ByteToMessageDecoder.expandCumulation(byteBufAllocator, byteBuf, byteBuf2);
            } finally {
                byteBuf2.release();
            }
        }
    };
    public static final Cumulator COMPOSITE_CUMULATOR = new Cumulator() { // from class: io.netty.handler.codec.ByteToMessageDecoder.2
        @Override // io.netty.handler.codec.ByteToMessageDecoder.Cumulator
        public ByteBuf cumulate(ByteBufAllocator byteBufAllocator, ByteBuf byteBuf, ByteBuf byteBuf2) throws Throwable {
            Throwable th;
            CompositeByteBuf compositeByteBufAddFlattenedComponents;
            if (!byteBuf.isReadable()) {
                byteBuf.release();
                return byteBuf2;
            }
            CompositeByteBuf compositeByteBuf = null;
            try {
                if ((byteBuf instanceof CompositeByteBuf) && byteBuf.refCnt() == 1) {
                    compositeByteBufAddFlattenedComponents = (CompositeByteBuf) byteBuf;
                    try {
                        if (compositeByteBufAddFlattenedComponents.writerIndex() != compositeByteBufAddFlattenedComponents.capacity()) {
                            compositeByteBufAddFlattenedComponents.capacity(compositeByteBufAddFlattenedComponents.writerIndex());
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (byteBuf2 != null) {
                            byteBuf2.release();
                            if (compositeByteBufAddFlattenedComponents != null && compositeByteBufAddFlattenedComponents != byteBuf) {
                                compositeByteBufAddFlattenedComponents.release();
                            }
                        }
                        throw th;
                    }
                } else {
                    compositeByteBufAddFlattenedComponents = byteBufAllocator.compositeBuffer(Integer.MAX_VALUE).addFlattenedComponents(true, byteBuf);
                }
                compositeByteBuf = compositeByteBufAddFlattenedComponents;
                compositeByteBuf.addFlattenedComponents(true, byteBuf2);
                return compositeByteBuf;
            } catch (Throwable th3) {
                CompositeByteBuf compositeByteBuf2 = compositeByteBuf;
                th = th3;
                compositeByteBufAddFlattenedComponents = compositeByteBuf2;
            }
        }
    };

    public interface Cumulator {
        ByteBuf cumulate(ByteBufAllocator byteBufAllocator, ByteBuf byteBuf, ByteBuf byteBuf2);
    }

    protected ByteToMessageDecoder() {
        ensureNotSharable();
    }

    private void channelInputClosed(ChannelHandlerContext channelHandlerContext, boolean z10) {
        CodecOutputList codecOutputListNewInstance = CodecOutputList.newInstance();
        try {
            try {
                channelInputClosed(channelHandlerContext, codecOutputListNewInstance);
                try {
                    ByteBuf byteBuf = this.cumulation;
                    if (byteBuf != null) {
                        byteBuf.release();
                        this.cumulation = null;
                    }
                    int size = codecOutputListNewInstance.size();
                    fireChannelRead(channelHandlerContext, codecOutputListNewInstance, size);
                    if (size > 0) {
                        channelHandlerContext.fireChannelReadComplete();
                    }
                    if (z10) {
                        channelHandlerContext.fireChannelInactive();
                    }
                } finally {
                    codecOutputListNewInstance.recycle();
                }
            } catch (DecoderException e10) {
                throw e10;
            } catch (Exception e11) {
                throw new DecoderException(e11);
            }
        } catch (Throwable th) {
            try {
                ByteBuf byteBuf2 = this.cumulation;
                if (byteBuf2 != null) {
                    byteBuf2.release();
                    this.cumulation = null;
                }
                int size2 = codecOutputListNewInstance.size();
                fireChannelRead(channelHandlerContext, codecOutputListNewInstance, size2);
                if (size2 > 0) {
                    channelHandlerContext.fireChannelReadComplete();
                }
                if (z10) {
                    channelHandlerContext.fireChannelInactive();
                }
                throw th;
            } finally {
                codecOutputListNewInstance.recycle();
            }
        }
    }

    static ByteBuf expandCumulation(ByteBufAllocator byteBufAllocator, ByteBuf byteBuf, ByteBuf byteBuf2) {
        int i10 = byteBuf.readableBytes();
        int i11 = byteBuf2.readableBytes();
        int i12 = i10 + i11;
        ByteBuf byteBufBuffer = byteBufAllocator.buffer(byteBufAllocator.calculateNewCapacity(i12, Integer.MAX_VALUE));
        try {
            byteBufBuffer.setBytes(0, byteBuf, byteBuf.readerIndex(), i10).setBytes(i10, byteBuf2, byteBuf2.readerIndex(), i11).writerIndex(i12);
            byteBuf2.readerIndex(byteBuf2.writerIndex());
            byteBuf.release();
            return byteBufBuffer;
        } catch (Throwable th) {
            byteBufBuffer.release();
            throw th;
        }
    }

    static void fireChannelRead(ChannelHandlerContext channelHandlerContext, List<Object> list, int i10) {
        if (list instanceof CodecOutputList) {
            fireChannelRead(channelHandlerContext, (CodecOutputList) list, i10);
            return;
        }
        for (int i11 = 0; i11 < i10; i11++) {
            channelHandlerContext.fireChannelRead(list.get(i11));
        }
    }

    protected int actualReadableBytes() {
        return internalBuffer().readableBytes();
    }

    protected void callDecode(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf, List<Object> list) {
        while (byteBuf.isReadable()) {
            try {
                int size = list.size();
                if (size > 0) {
                    fireChannelRead(channelHandlerContext, list, size);
                    list.clear();
                    if (channelHandlerContext.isRemoved()) {
                        return;
                    } else {
                        size = 0;
                    }
                }
                int i10 = byteBuf.readableBytes();
                decodeRemovalReentryProtection(channelHandlerContext, byteBuf, list);
                if (channelHandlerContext.isRemoved()) {
                    return;
                }
                if (size == list.size()) {
                    if (i10 == byteBuf.readableBytes()) {
                        return;
                    }
                } else {
                    if (i10 == byteBuf.readableBytes()) {
                        throw new DecoderException(StringUtil.simpleClassName(getClass()) + ".decode() did not read anything but decoded a message.");
                    }
                    if (isSingleDecode()) {
                        return;
                    }
                }
            } catch (DecoderException e10) {
                throw e10;
            } catch (Exception e11) {
                throw new DecoderException(e11);
            }
        }
    }

    @Override // io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelInboundHandler
    public void channelInactive(ChannelHandlerContext channelHandlerContext) throws Exception {
        channelInputClosed(channelHandlerContext, true);
    }

    @Override // io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelInboundHandler
    public void channelRead(ChannelHandlerContext channelHandlerContext, Object obj) throws Exception {
        if (!(obj instanceof ByteBuf)) {
            channelHandlerContext.fireChannelRead(obj);
            return;
        }
        CodecOutputList codecOutputListNewInstance = CodecOutputList.newInstance();
        try {
            try {
                try {
                    this.first = this.cumulation == null;
                    ByteBuf byteBufCumulate = this.cumulator.cumulate(channelHandlerContext.alloc(), this.first ? Unpooled.EMPTY_BUFFER : this.cumulation, (ByteBuf) obj);
                    this.cumulation = byteBufCumulate;
                    callDecode(channelHandlerContext, byteBufCumulate, codecOutputListNewInstance);
                    ByteBuf byteBuf = this.cumulation;
                    if (byteBuf == null || byteBuf.isReadable()) {
                        int i10 = this.numReads + 1;
                        this.numReads = i10;
                        if (i10 >= this.discardAfterReads) {
                            this.numReads = 0;
                            discardSomeReadBytes();
                        }
                    } else {
                        this.numReads = 0;
                        this.cumulation.release();
                        this.cumulation = null;
                    }
                    int size = codecOutputListNewInstance.size();
                    this.firedChannelRead |= codecOutputListNewInstance.insertSinceRecycled();
                    fireChannelRead(channelHandlerContext, codecOutputListNewInstance, size);
                    codecOutputListNewInstance.recycle();
                } catch (DecoderException e10) {
                    throw e10;
                }
            } catch (Exception e11) {
                throw new DecoderException(e11);
            }
        } catch (Throwable th) {
            ByteBuf byteBuf2 = this.cumulation;
            if (byteBuf2 == null || byteBuf2.isReadable()) {
                int i11 = this.numReads + 1;
                this.numReads = i11;
                if (i11 >= this.discardAfterReads) {
                    this.numReads = 0;
                    discardSomeReadBytes();
                }
            } else {
                this.numReads = 0;
                this.cumulation.release();
                this.cumulation = null;
            }
            int size2 = codecOutputListNewInstance.size();
            this.firedChannelRead |= codecOutputListNewInstance.insertSinceRecycled();
            fireChannelRead(channelHandlerContext, codecOutputListNewInstance, size2);
            codecOutputListNewInstance.recycle();
            throw th;
        }
    }

    @Override // io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelInboundHandler
    public void channelReadComplete(ChannelHandlerContext channelHandlerContext) throws Exception {
        this.numReads = 0;
        discardSomeReadBytes();
        if (!this.firedChannelRead && !channelHandlerContext.channel().config().isAutoRead()) {
            channelHandlerContext.read();
        }
        this.firedChannelRead = false;
        channelHandlerContext.fireChannelReadComplete();
    }

    protected abstract void decode(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf, List<Object> list) throws Exception;

    protected void decodeLast(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf, List<Object> list) throws Exception {
        if (byteBuf.isReadable()) {
            decodeRemovalReentryProtection(channelHandlerContext, byteBuf, list);
        }
    }

    final void decodeRemovalReentryProtection(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf, List<Object> list) throws Exception {
        boolean z10 = true;
        this.decodeState = (byte) 1;
        try {
            decode(channelHandlerContext, byteBuf, list);
        } finally {
            z10 = this.decodeState == 2;
            this.decodeState = (byte) 0;
            if (z10) {
                fireChannelRead(channelHandlerContext, list, list.size());
                list.clear();
                handlerRemoved(channelHandlerContext);
            }
        }
    }

    protected final void discardSomeReadBytes() {
        ByteBuf byteBuf = this.cumulation;
        if (byteBuf == null || this.first || byteBuf.refCnt() != 1) {
            return;
        }
        this.cumulation.discardSomeReadBytes();
    }

    @Override // io.netty.channel.ChannelHandlerAdapter, io.netty.channel.ChannelHandler
    public final void handlerRemoved(ChannelHandlerContext channelHandlerContext) throws Exception {
        if (this.decodeState == 1) {
            this.decodeState = (byte) 2;
            return;
        }
        ByteBuf byteBuf = this.cumulation;
        if (byteBuf != null) {
            this.cumulation = null;
            this.numReads = 0;
            if (byteBuf.readableBytes() > 0) {
                channelHandlerContext.fireChannelRead((Object) byteBuf);
                channelHandlerContext.fireChannelReadComplete();
            } else {
                byteBuf.release();
            }
        }
        handlerRemoved0(channelHandlerContext);
    }

    protected void handlerRemoved0(ChannelHandlerContext channelHandlerContext) throws Exception {
    }

    protected ByteBuf internalBuffer() {
        ByteBuf byteBuf = this.cumulation;
        return byteBuf != null ? byteBuf : Unpooled.EMPTY_BUFFER;
    }

    public boolean isSingleDecode() {
        return this.singleDecode;
    }

    public void setCumulator(Cumulator cumulator) {
        this.cumulator = (Cumulator) ObjectUtil.checkNotNull(cumulator, "cumulator");
    }

    public void setDiscardAfterReads(int i10) {
        ObjectUtil.checkPositive(i10, "discardAfterReads");
        this.discardAfterReads = i10;
    }

    public void setSingleDecode(boolean z10) {
        this.singleDecode = z10;
    }

    @Override // io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelInboundHandler
    public void userEventTriggered(ChannelHandlerContext channelHandlerContext, Object obj) throws Exception {
        if (obj instanceof ChannelInputShutdownEvent) {
            channelInputClosed(channelHandlerContext, false);
        }
        super.userEventTriggered(channelHandlerContext, obj);
    }

    static void fireChannelRead(ChannelHandlerContext channelHandlerContext, CodecOutputList codecOutputList, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            channelHandlerContext.fireChannelRead(codecOutputList.getUnsafe(i11));
        }
    }

    void channelInputClosed(ChannelHandlerContext channelHandlerContext, List<Object> list) throws Exception {
        ByteBuf byteBuf = this.cumulation;
        if (byteBuf != null) {
            callDecode(channelHandlerContext, byteBuf, list);
            decodeLast(channelHandlerContext, this.cumulation, list);
        } else {
            decodeLast(channelHandlerContext, Unpooled.EMPTY_BUFFER, list);
        }
    }
}
