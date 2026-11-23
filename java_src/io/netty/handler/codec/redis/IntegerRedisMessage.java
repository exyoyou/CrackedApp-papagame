package io.netty.handler.codec.redis;

import io.netty.util.internal.StringUtil;

/* JADX INFO: loaded from: classes.dex */
public final class IntegerRedisMessage implements RedisMessage {
    private final long value;

    public IntegerRedisMessage(long j10) {
        this.value = j10;
    }

    public String toString() {
        return StringUtil.simpleClassName(this) + "[value=" + this.value + ']';
    }

    public long value() {
        return this.value;
    }
}
