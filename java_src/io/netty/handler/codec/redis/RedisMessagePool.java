package io.netty.handler.codec.redis;

import io.netty.buffer.ByteBuf;

/* JADX INFO: loaded from: classes.dex */
public interface RedisMessagePool {
    byte[] getByteBufOfInteger(long j10);

    ErrorRedisMessage getError(ByteBuf byteBuf);

    ErrorRedisMessage getError(String str);

    IntegerRedisMessage getInteger(long j10);

    IntegerRedisMessage getInteger(ByteBuf byteBuf);

    SimpleStringRedisMessage getSimpleString(ByteBuf byteBuf);

    SimpleStringRedisMessage getSimpleString(String str);
}
