package io.netty.handler.codec.mqtt;

import io.netty.util.internal.StringUtil;

/* JADX INFO: loaded from: classes.dex */
public final class MqttMessageIdVariableHeader {
    private final int messageId;

    private MqttMessageIdVariableHeader(int i10) {
        this.messageId = i10;
    }

    public static MqttMessageIdVariableHeader from(int i10) {
        if (i10 >= 1 && i10 <= 65535) {
            return new MqttMessageIdVariableHeader(i10);
        }
        throw new IllegalArgumentException("messageId: " + i10 + " (expected: 1 ~ 65535)");
    }

    public int messageId() {
        return this.messageId;
    }

    public String toString() {
        return StringUtil.simpleClassName(this) + "[messageId=" + this.messageId + ']';
    }
}
