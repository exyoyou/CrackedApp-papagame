package io.netty.handler.codec.redis;

import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.StringUtil;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractStringRedisMessage implements RedisMessage {
    private final String content;

    AbstractStringRedisMessage(String str) {
        this.content = (String) ObjectUtil.checkNotNull(str, "content");
    }

    public final String content() {
        return this.content;
    }

    public String toString() {
        return StringUtil.simpleClassName(this) + "[content=" + this.content + ']';
    }
}
