package io.netty.handler.codec;

import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelInboundHandlerAdapter;
import io.netty.util.ReferenceCountUtil;
import io.netty.util.internal.TypeParameterMatcher;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class MessageToMessageDecoder<I> extends ChannelInboundHandlerAdapter {
    private final TypeParameterMatcher matcher;

    protected MessageToMessageDecoder() {
        this.matcher = TypeParameterMatcher.find(this, MessageToMessageDecoder.class, "I");
    }

    public boolean acceptInboundMessage(Object obj) throws Exception {
        return this.matcher.match(obj);
    }

    @Override // io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelInboundHandler
    public void channelRead(ChannelHandlerContext channelHandlerContext, Object obj) throws Exception {
        CodecOutputList codecOutputListNewInstance = CodecOutputList.newInstance();
        int i10 = 0;
        try {
            try {
                if (acceptInboundMessage(obj)) {
                    try {
                        decode(channelHandlerContext, obj, codecOutputListNewInstance);
                        ReferenceCountUtil.release(obj);
                    } catch (Throwable th) {
                        ReferenceCountUtil.release(obj);
                        throw th;
                    }
                } else {
                    codecOutputListNewInstance.add(obj);
                }
                int size = codecOutputListNewInstance.size();
                while (i10 < size) {
                    channelHandlerContext.fireChannelRead(codecOutputListNewInstance.getUnsafe(i10));
                    i10++;
                }
                codecOutputListNewInstance.recycle();
            } catch (DecoderException e10) {
                throw e10;
            } catch (Exception e11) {
                throw new DecoderException(e11);
            }
        } catch (Throwable th2) {
            int size2 = codecOutputListNewInstance.size();
            while (i10 < size2) {
                channelHandlerContext.fireChannelRead(codecOutputListNewInstance.getUnsafe(i10));
                i10++;
            }
            codecOutputListNewInstance.recycle();
            throw th2;
        }
    }

    protected abstract void decode(ChannelHandlerContext channelHandlerContext, I i10, List<Object> list) throws Exception;

    protected MessageToMessageDecoder(Class<? extends I> cls) {
        this.matcher = TypeParameterMatcher.get(cls);
    }
}
