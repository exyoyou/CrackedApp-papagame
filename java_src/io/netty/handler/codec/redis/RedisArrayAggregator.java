package io.netty.handler.codec.redis;

import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.CodecException;
import io.netty.handler.codec.MessageToMessageDecoder;
import io.netty.util.ReferenceCountUtil;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class RedisArrayAggregator extends MessageToMessageDecoder<RedisMessage> {
    private final Deque<AggregateState> depths = new ArrayDeque(4);

    private static final class AggregateState {
        private final List<RedisMessage> children;
        private final int length;

        AggregateState(int i10) {
            this.length = i10;
            this.children = new ArrayList(i10);
        }
    }

    private RedisMessage decodeRedisArrayHeader(ArrayHeaderRedisMessage arrayHeaderRedisMessage) {
        if (arrayHeaderRedisMessage.isNull()) {
            return ArrayRedisMessage.NULL_INSTANCE;
        }
        if (arrayHeaderRedisMessage.length() == 0) {
            return ArrayRedisMessage.EMPTY_INSTANCE;
        }
        if (arrayHeaderRedisMessage.length() > 0) {
            if (arrayHeaderRedisMessage.length() > 2147483647L) {
                throw new CodecException("this codec doesn't support longer length than 2147483647");
            }
            this.depths.push(new AggregateState((int) arrayHeaderRedisMessage.length()));
            return null;
        }
        throw new CodecException("bad length: " + arrayHeaderRedisMessage.length());
    }

    @Override // io.netty.handler.codec.MessageToMessageDecoder
    protected /* bridge */ /* synthetic */ void decode(ChannelHandlerContext channelHandlerContext, RedisMessage redisMessage, List list) throws Exception {
        decode2(channelHandlerContext, redisMessage, (List<Object>) list);
    }

    /* JADX INFO: renamed from: decode, reason: avoid collision after fix types in other method */
    protected void decode2(ChannelHandlerContext channelHandlerContext, RedisMessage redisMessage, List<Object> list) throws Exception {
        if (redisMessage instanceof ArrayHeaderRedisMessage) {
            redisMessage = decodeRedisArrayHeader((ArrayHeaderRedisMessage) redisMessage);
            if (redisMessage == null) {
                return;
            }
        } else {
            ReferenceCountUtil.retain(redisMessage);
        }
        while (!this.depths.isEmpty()) {
            AggregateState aggregateStatePeek = this.depths.peek();
            aggregateStatePeek.children.add(redisMessage);
            if (aggregateStatePeek.children.size() != aggregateStatePeek.length) {
                return;
            }
            redisMessage = new ArrayRedisMessage((List<RedisMessage>) aggregateStatePeek.children);
            this.depths.pop();
        }
        list.add(redisMessage);
    }
}
