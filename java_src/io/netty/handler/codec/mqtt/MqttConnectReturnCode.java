package io.netty.handler.codec.mqtt;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public enum MqttConnectReturnCode {
    CONNECTION_ACCEPTED((byte) 0),
    CONNECTION_REFUSED_UNACCEPTABLE_PROTOCOL_VERSION((byte) 1),
    CONNECTION_REFUSED_IDENTIFIER_REJECTED((byte) 2),
    CONNECTION_REFUSED_SERVER_UNAVAILABLE((byte) 3),
    CONNECTION_REFUSED_BAD_USER_NAME_OR_PASSWORD((byte) 4),
    CONNECTION_REFUSED_NOT_AUTHORIZED((byte) 5);

    private static final Map<Byte, MqttConnectReturnCode> VALUE_TO_CODE_MAP;
    private final byte byteValue;

    static {
        HashMap map = new HashMap();
        for (MqttConnectReturnCode mqttConnectReturnCode : values()) {
            map.put(Byte.valueOf(mqttConnectReturnCode.byteValue), mqttConnectReturnCode);
        }
        VALUE_TO_CODE_MAP = Collections.unmodifiableMap(map);
    }

    MqttConnectReturnCode(byte b10) {
        this.byteValue = b10;
    }

    public byte byteValue() {
        return this.byteValue;
    }

    public static MqttConnectReturnCode valueOf(byte b10) {
        Map<Byte, MqttConnectReturnCode> map = VALUE_TO_CODE_MAP;
        if (map.containsKey(Byte.valueOf(b10))) {
            return map.get(Byte.valueOf(b10));
        }
        throw new IllegalArgumentException("unknown connect return code: " + (b10 & 255));
    }
}
