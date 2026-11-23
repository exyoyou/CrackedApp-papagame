package io.netty.handler.codec.mqtt;

import io.netty.util.internal.StringUtil;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class MqttUnsubscribePayload {
    private final List<String> topics;

    public MqttUnsubscribePayload(List<String> list) {
        this.topics = Collections.unmodifiableList(list);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(StringUtil.simpleClassName(this));
        sb2.append('[');
        for (int i10 = 0; i10 < this.topics.size(); i10++) {
            sb2.append("topicName = ");
            sb2.append(this.topics.get(i10));
            sb2.append(", ");
        }
        if (!this.topics.isEmpty()) {
            sb2.setLength(sb2.length() - 2);
        }
        sb2.append("]");
        return sb2.toString();
    }

    public List<String> topics() {
        return this.topics;
    }
}
