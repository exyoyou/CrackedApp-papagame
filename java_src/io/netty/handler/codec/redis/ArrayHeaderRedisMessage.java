package io.netty.handler.codec.redis;

import io.netty.util.internal.StringUtil;

/* JADX INFO: loaded from: classes.dex */
public class ArrayHeaderRedisMessage implements RedisMessage {
    private final long length;

    public ArrayHeaderRedisMessage(long j10) {
        if (j10 >= -1) {
            this.length = j10;
            return;
        }
        throw new RedisCodecException("length: " + j10 + " (expected: >= -1)");
    }

    public boolean isNull() {
        return this.length == -1;
    }

    public final long length() {
        return this.length;
    }

    public String toString() {
        return StringUtil.simpleClassName(this) + "[length=" + this.length + ']';
    }
}
