package io.netty.handler.codec.mqtt;

/* JADX INFO: loaded from: classes.dex */
public enum MqttQoS {
    AT_MOST_ONCE(0),
    AT_LEAST_ONCE(1),
    EXACTLY_ONCE(2),
    FAILURE(128);

    private final int value;

    MqttQoS(int i10) {
        this.value = i10;
    }

    public int value() {
        return this.value;
    }

    public static MqttQoS valueOf(int i10) {
        for (MqttQoS mqttQoS : values()) {
            if (mqttQoS.value == i10) {
                return mqttQoS;
            }
        }
        throw new IllegalArgumentException("invalid QoS: " + i10);
    }
}
