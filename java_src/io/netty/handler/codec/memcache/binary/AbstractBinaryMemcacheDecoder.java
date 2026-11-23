package io.netty.handler.codec.memcache.binary;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.Unpooled;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.DecoderResult;
import io.netty.handler.codec.memcache.AbstractMemcacheObjectDecoder;
import io.netty.handler.codec.memcache.DefaultLastMemcacheContent;
import io.netty.handler.codec.memcache.DefaultMemcacheContent;
import io.netty.handler.codec.memcache.LastMemcacheContent;
import io.netty.handler.codec.memcache.MemcacheContent;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheMessage;
import io.netty.util.internal.ObjectUtil;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractBinaryMemcacheDecoder<M extends BinaryMemcacheMessage> extends AbstractMemcacheObjectDecoder {
    public static final int DEFAULT_MAX_CHUNK_SIZE = 8192;
    private int alreadyReadChunkSize;
    private final int chunkSize;
    private M currentMessage;
    private State state;

    /* JADX INFO: renamed from: io.netty.handler.codec.memcache.binary.AbstractBinaryMemcacheDecoder$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$netty$handler$codec$memcache$binary$AbstractBinaryMemcacheDecoder$State;

        static {
            int[] iArr = new int[State.values().length];
            $SwitchMap$io$netty$handler$codec$memcache$binary$AbstractBinaryMemcacheDecoder$State = iArr;
            try {
                iArr[State.READ_HEADER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$memcache$binary$AbstractBinaryMemcacheDecoder$State[State.READ_EXTRAS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$memcache$binary$AbstractBinaryMemcacheDecoder$State[State.READ_KEY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$memcache$binary$AbstractBinaryMemcacheDecoder$State[State.READ_CONTENT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$io$netty$handler$codec$memcache$binary$AbstractBinaryMemcacheDecoder$State[State.BAD_MESSAGE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    enum State {
        READ_HEADER,
        READ_EXTRAS,
        READ_KEY,
        READ_CONTENT,
        BAD_MESSAGE
    }

    protected AbstractBinaryMemcacheDecoder() {
        this(8192);
    }

    private MemcacheContent invalidChunk(Exception exc) {
        this.state = State.BAD_MESSAGE;
        DefaultLastMemcacheContent defaultLastMemcacheContent = new DefaultLastMemcacheContent(Unpooled.EMPTY_BUFFER);
        defaultLastMemcacheContent.setDecoderResult(DecoderResult.failure(exc));
        return defaultLastMemcacheContent;
    }

    private M invalidMessage(Exception exc) {
        this.state = State.BAD_MESSAGE;
        M m10 = (M) buildInvalidMessage();
        m10.setDecoderResult(DecoderResult.failure(exc));
        return m10;
    }

    protected abstract M buildInvalidMessage();

    @Override // io.netty.handler.codec.ByteToMessageDecoder, io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelInboundHandler
    public void channelInactive(ChannelHandlerContext channelHandlerContext) throws Exception {
        super.channelInactive(channelHandlerContext);
        resetDecoder();
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0074 A[Catch: Exception -> 0x00f1, TryCatch #3 {Exception -> 0x00f1, blocks: (B:27:0x006c, B:29:0x0074, B:32:0x007b, B:33:0x0084), top: B:72:0x006c }] */
    /* JADX WARN: Code duplicated, block: B:31:0x007a A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:32:0x007b A[Catch: Exception -> 0x00f1, TryCatch #3 {Exception -> 0x00f1, blocks: (B:27:0x006c, B:29:0x0074, B:32:0x007b, B:33:0x0084), top: B:72:0x006c }] */
    /* JADX WARN: Code duplicated, block: B:36:0x00ab A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:37:0x00ad A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:38:0x00ae A[Catch: Exception -> 0x00e5, TryCatch #2 {Exception -> 0x00e5, blocks: (B:34:0x0091, B:38:0x00ae, B:41:0x00b3, B:44:0x00ba, B:46:0x00c5, B:48:0x00d0, B:52:0x00dd, B:47:0x00cb, B:51:0x00d8), top: B:70:0x0091 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:43:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:46:0x00c5 A[Catch: Exception -> 0x00e5, TryCatch #2 {Exception -> 0x00e5, blocks: (B:34:0x0091, B:38:0x00ae, B:41:0x00b3, B:44:0x00ba, B:46:0x00c5, B:48:0x00d0, B:52:0x00dd, B:47:0x00cb, B:51:0x00d8), top: B:70:0x0091 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x00cb A[Catch: Exception -> 0x00e5, TryCatch #2 {Exception -> 0x00e5, blocks: (B:34:0x0091, B:38:0x00ae, B:41:0x00b3, B:44:0x00ba, B:46:0x00c5, B:48:0x00d0, B:52:0x00dd, B:47:0x00cb, B:51:0x00d8), top: B:70:0x0091 }] */
    /* JADX WARN: Code duplicated, block: B:50:0x00d7 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:51:0x00d8 A[Catch: Exception -> 0x00e5, TryCatch #2 {Exception -> 0x00e5, blocks: (B:34:0x0091, B:38:0x00ae, B:41:0x00b3, B:44:0x00ba, B:46:0x00c5, B:48:0x00d0, B:52:0x00dd, B:47:0x00cb, B:51:0x00d8), top: B:70:0x0091 }] */
    @Override // io.netty.handler.codec.ByteToMessageDecoder
    protected void decode(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf, List<Object> list) throws Exception {
        short sKeyLength;
        int iKeyLength;
        int i10;
        int i11;
        int i12;
        ByteBuf retainedSlice;
        int i13;
        Object defaultMemcacheContent;
        int i14 = AnonymousClass1.$SwitchMap$io$netty$handler$codec$memcache$binary$AbstractBinaryMemcacheDecoder$State[this.state.ordinal()];
        try {
            try {
                try {
                    if (i14 != 1) {
                        if (i14 != 2) {
                            if (i14 != 3) {
                                if (i14 != 4) {
                                    if (i14 == 5) {
                                        byteBuf.skipBytes(actualReadableBytes());
                                        return;
                                    }
                                    throw new Error("Unknown state reached: " + this.state);
                                }
                            }
                            iKeyLength = (this.currentMessage.totalBodyLength() - this.currentMessage.keyLength()) - this.currentMessage.extrasLength();
                            i10 = byteBuf.readableBytes();
                            if (iKeyLength <= 0) {
                                list.add(LastMemcacheContent.EMPTY_LAST_CONTENT);
                            } else {
                                if (i10 == 0) {
                                    return;
                                }
                                i11 = this.chunkSize;
                                if (i10 > i11) {
                                    i10 = i11;
                                }
                                i12 = iKeyLength - this.alreadyReadChunkSize;
                                if (i10 > i12) {
                                    i10 = i12;
                                }
                                retainedSlice = byteBuf.readRetainedSlice(i10);
                                i13 = this.alreadyReadChunkSize + i10;
                                this.alreadyReadChunkSize = i13;
                                if (i13 >= iKeyLength) {
                                    defaultMemcacheContent = new DefaultLastMemcacheContent(retainedSlice);
                                } else {
                                    defaultMemcacheContent = new DefaultMemcacheContent(retainedSlice);
                                }
                                list.add(defaultMemcacheContent);
                                if (this.alreadyReadChunkSize < iKeyLength) {
                                    return;
                                }
                            }
                            resetDecoder();
                            this.state = State.READ_HEADER;
                            return;
                        }
                        sKeyLength = this.currentMessage.keyLength();
                        if (sKeyLength > 0) {
                            if (byteBuf.readableBytes() < sKeyLength) {
                                return;
                            } else {
                                this.currentMessage.setKey(byteBuf.readRetainedSlice(sKeyLength));
                            }
                        }
                        list.add(this.currentMessage.retain());
                        this.state = State.READ_CONTENT;
                        iKeyLength = (this.currentMessage.totalBodyLength() - this.currentMessage.keyLength()) - this.currentMessage.extrasLength();
                        i10 = byteBuf.readableBytes();
                        if (iKeyLength <= 0) {
                            list.add(LastMemcacheContent.EMPTY_LAST_CONTENT);
                        } else {
                            if (i10 == 0) {
                                return;
                            }
                            i11 = this.chunkSize;
                            if (i10 > i11) {
                                i10 = i11;
                            }
                            i12 = iKeyLength - this.alreadyReadChunkSize;
                            if (i10 > i12) {
                                i10 = i12;
                            }
                            retainedSlice = byteBuf.readRetainedSlice(i10);
                            i13 = this.alreadyReadChunkSize + i10;
                            this.alreadyReadChunkSize = i13;
                            if (i13 >= iKeyLength) {
                                defaultMemcacheContent = new DefaultLastMemcacheContent(retainedSlice);
                            } else {
                                defaultMemcacheContent = new DefaultMemcacheContent(retainedSlice);
                            }
                            list.add(defaultMemcacheContent);
                            if (this.alreadyReadChunkSize < iKeyLength) {
                                return;
                            }
                        }
                        resetDecoder();
                        this.state = State.READ_HEADER;
                        return;
                    }
                    try {
                        if (byteBuf.readableBytes() < 24) {
                            return;
                        }
                        resetDecoder();
                        this.currentMessage = (M) decodeHeader(byteBuf);
                        this.state = State.READ_EXTRAS;
                    } catch (Exception e10) {
                        resetDecoder();
                        list.add(invalidMessage(e10));
                        return;
                    }
                    iKeyLength = (this.currentMessage.totalBodyLength() - this.currentMessage.keyLength()) - this.currentMessage.extrasLength();
                    i10 = byteBuf.readableBytes();
                    if (iKeyLength <= 0) {
                        list.add(LastMemcacheContent.EMPTY_LAST_CONTENT);
                    } else {
                        if (i10 == 0) {
                            return;
                        }
                        i11 = this.chunkSize;
                        if (i10 > i11) {
                            i10 = i11;
                        }
                        i12 = iKeyLength - this.alreadyReadChunkSize;
                        if (i10 > i12) {
                            i10 = i12;
                        }
                        retainedSlice = byteBuf.readRetainedSlice(i10);
                        i13 = this.alreadyReadChunkSize + i10;
                        this.alreadyReadChunkSize = i13;
                        if (i13 >= iKeyLength) {
                            defaultMemcacheContent = new DefaultLastMemcacheContent(retainedSlice);
                        } else {
                            defaultMemcacheContent = new DefaultMemcacheContent(retainedSlice);
                        }
                        list.add(defaultMemcacheContent);
                        if (this.alreadyReadChunkSize < iKeyLength) {
                            return;
                        }
                    }
                    resetDecoder();
                    this.state = State.READ_HEADER;
                    return;
                } catch (Exception e11) {
                    resetDecoder();
                    list.add(invalidChunk(e11));
                    return;
                }
                sKeyLength = this.currentMessage.keyLength();
                if (sKeyLength > 0) {
                    if (byteBuf.readableBytes() < sKeyLength) {
                        return;
                    } else {
                        this.currentMessage.setKey(byteBuf.readRetainedSlice(sKeyLength));
                    }
                }
                list.add(this.currentMessage.retain());
                this.state = State.READ_CONTENT;
            } catch (Exception e12) {
                resetDecoder();
                list.add(invalidMessage(e12));
                return;
            }
            byte bExtrasLength = this.currentMessage.extrasLength();
            if (bExtrasLength > 0) {
                if (byteBuf.readableBytes() < bExtrasLength) {
                    return;
                } else {
                    this.currentMessage.setExtras(byteBuf.readRetainedSlice(bExtrasLength));
                }
            }
            this.state = State.READ_KEY;
        } catch (Exception e13) {
            resetDecoder();
            list.add(invalidMessage(e13));
        }
    }

    protected abstract M decodeHeader(ByteBuf byteBuf);

    protected void resetDecoder() {
        M m10 = this.currentMessage;
        if (m10 != null) {
            m10.release();
            this.currentMessage = null;
        }
        this.alreadyReadChunkSize = 0;
    }

    protected AbstractBinaryMemcacheDecoder(int i10) {
        this.state = State.READ_HEADER;
        ObjectUtil.checkPositiveOrZero(i10, "chunkSize");
        this.chunkSize = i10;
    }
}
