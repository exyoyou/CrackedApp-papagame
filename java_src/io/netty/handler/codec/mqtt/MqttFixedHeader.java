package io.netty.handler.codec.mqtt;

import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.StringUtil;

/* JADX INFO: loaded from: classes.dex */
public final class MqttFixedHeader {
    private final boolean isDup;
    private final boolean isRetain;
    private final MqttMessageType messageType;
    private final MqttQoS qosLevel;
    private final int remainingLength;

    public MqttFixedHeader(MqttMessageType mqttMessageType, boolean z10, MqttQoS mqttQoS, boolean z11, int i10) {
        this.messageType = (MqttMessageType) ObjectUtil.checkNotNull(mqttMessageType, "messageType");
        this.isDup = z10;
        this.qosLevel = (MqttQoS) ObjectUtil.checkNotNull(mqttQoS, "qosLevel");
        this.isRetain = z11;
        this.remainingLength = i10;
    }

    public boolean isDup() {
        return this.isDup;
    }

    public boolean isRetain() {
        return this.isRetain;
    }

    public MqttMessageType messageType() {
        return this.messageType;
    }

    public MqttQoS qosLevel() {
        return this.qosLevel;
    }

    public int remainingLength() {
        return this.remainingLength;
    }

    public String toString() {
        return StringUtil.simpleClassName(this) + "[messageType=" + this.messageType + ", isDup=" + this.isDup + ", qosLevel=" + this.qosLevel + ", isRetain=" + this.isRetain + ", remainingLength=" + this.remainingLength + ']';
    }
}
