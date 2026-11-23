package io.netty.handler.codec.mqtt;

import io.netty.util.internal.StringUtil;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class MqttSubscribePayload {
    private final List<MqttTopicSubscription> topicSubscriptions;

    public MqttSubscribePayload(List<MqttTopicSubscription> list) {
        this.topicSubscriptions = Collections.unmodifiableList(list);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(StringUtil.simpleClassName(this));
        sb2.append('[');
        for (int i10 = 0; i10 < this.topicSubscriptions.size(); i10++) {
            sb2.append(this.topicSubscriptions.get(i10));
            sb2.append(", ");
        }
        if (!this.topicSubscriptions.isEmpty()) {
            sb2.setLength(sb2.length() - 2);
        }
        sb2.append(']');
        return sb2.toString();
    }

    public List<MqttTopicSubscription> topicSubscriptions() {
        return this.topicSubscriptions;
    }
}
