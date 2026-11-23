package io.netty.handler.codec.memcache.binary;

import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.CombinedChannelDuplexHandler;
import io.netty.handler.codec.PrematureChannelClosureException;
import io.netty.handler.codec.memcache.LastMemcacheContent;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes.dex */
public final class BinaryMemcacheClientCodec extends CombinedChannelDuplexHandler<BinaryMemcacheResponseDecoder, BinaryMemcacheRequestEncoder> {
    private final boolean failOnMissingResponse;
    private final AtomicLong requestResponseCounter;

    private final class Decoder extends BinaryMemcacheResponseDecoder {
        Decoder(int i10) {
            super(i10);
        }

        @Override // io.netty.handler.codec.memcache.binary.AbstractBinaryMemcacheDecoder, io.netty.handler.codec.ByteToMessageDecoder, io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelInboundHandler
        public void channelInactive(ChannelHandlerContext channelHandlerContext) throws Exception {
            super.channelInactive(channelHandlerContext);
            if (BinaryMemcacheClientCodec.this.failOnMissingResponse) {
                long j10 = BinaryMemcacheClientCodec.this.requestResponseCounter.get();
                if (j10 > 0) {
                    channelHandlerContext.fireExceptionCaught((Throwable) new PrematureChannelClosureException("channel gone inactive with " + j10 + " missing response(s)"));
                }
            }
        }

        @Override // io.netty.handler.codec.memcache.binary.AbstractBinaryMemcacheDecoder, io.netty.handler.codec.ByteToMessageDecoder
        protected void decode(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf, List<Object> list) throws Exception {
            super.decode(channelHandlerContext, byteBuf, list);
            if (BinaryMemcacheClientCodec.this.failOnMissingResponse) {
                int size = list.size();
                for (int size2 = list.size(); size2 < size; size2++) {
                    if (list.get(size2) instanceof LastMemcacheContent) {
                        BinaryMemcacheClientCodec.this.requestResponseCounter.decrementAndGet();
                    }
                }
            }
        }
    }

    private final class Encoder extends BinaryMemcacheRequestEncoder {
        private Encoder() {
        }

        @Override // io.netty.handler.codec.memcache.AbstractMemcacheObjectEncoder, io.netty.handler.codec.MessageToMessageEncoder
        protected void encode(ChannelHandlerContext channelHandlerContext, Object obj, List<Object> list) throws Exception {
            super.encode(channelHandlerContext, obj, list);
            if (BinaryMemcacheClientCodec.this.failOnMissingResponse && (obj instanceof LastMemcacheContent)) {
                BinaryMemcacheClientCodec.this.requestResponseCounter.incrementAndGet();
            }
        }
    }

    public BinaryMemcacheClientCodec() {
        this(8192);
    }

    public BinaryMemcacheClientCodec(int i10) {
        this(i10, false);
    }

    public BinaryMemcacheClientCodec(int i10, boolean z10) {
        this.requestResponseCounter = new AtomicLong();
        this.failOnMissingResponse = z10;
        init(new Decoder(i10), new Encoder());
    }
}
