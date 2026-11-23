package io.netty.handler.codec.mqtt;

import io.netty.util.internal.StringUtil;

/* JADX INFO: loaded from: classes.dex */
public final class MqttConnAckVariableHeader {
    private final MqttConnectReturnCode connectReturnCode;
    private final boolean sessionPresent;

    public MqttConnAckVariableHeader(MqttConnectReturnCode mqttConnectReturnCode, boolean z10) {
        this.connectReturnCode = mqttConnectReturnCode;
        this.sessionPresent = z10;
    }

    public MqttConnectReturnCode connectReturnCode() {
        return this.connectReturnCode;
    }

    public boolean isSessionPresent() {
        return this.sessionPresent;
    }

    public String toString() {
        return StringUtil.simpleClassName(this) + "[connectReturnCode=" + this.connectReturnCode + ", sessionPresent=" + this.sessionPresent + ']';
    }
}
