package io.netty.handler.codec.redis;

/* JADX INFO: loaded from: classes.dex */
public class BulkStringHeaderRedisMessage implements RedisMessage {
    private final int bulkStringLength;

    public BulkStringHeaderRedisMessage(int i10) {
        if (i10 > 0) {
            this.bulkStringLength = i10;
            return;
        }
        throw new RedisCodecException("bulkStringLength: " + i10 + " (expected: > 0)");
    }

    public final int bulkStringLength() {
        return this.bulkStringLength;
    }

    public boolean isNull() {
        return this.bulkStringLength == -1;
    }
}
