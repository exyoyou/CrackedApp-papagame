package com.wufan.user.service.protobuf.enumeration;

import com.google.protobuf.Descriptors;
import com.google.protobuf.Internal;
import com.google.protobuf.ProtocolMessageEnum;

/* JADX INFO: loaded from: classes8.dex */
public enum ServerState implements ProtocolMessageEnum {
    SERVER_LINE_FULL(0),
    SERVER_LINE_BUSY(1),
    SERVER_LINE_STOP(2),
    SERVER_LINE_IDLE(3),
    UNRECOGNIZED(-1);

    public static final int SERVER_LINE_BUSY_VALUE = 1;
    public static final int SERVER_LINE_FULL_VALUE = 0;
    public static final int SERVER_LINE_IDLE_VALUE = 3;
    public static final int SERVER_LINE_STOP_VALUE = 2;
    private final int value;
    private static final Internal.EnumLiteMap<ServerState> internalValueMap = new Internal.EnumLiteMap<ServerState>() { // from class: com.wufan.user.service.protobuf.enumeration.ServerState.a
        @Override // com.google.protobuf.Internal.EnumLiteMap
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ServerState findValueByNumber(int number) {
            return ServerState.forNumber(number);
        }
    };
    private static final ServerState[] VALUES = values();

    ServerState(int value) {
        this.value = value;
    }

    public static ServerState forNumber(int value) {
        if (value == 0) {
            return SERVER_LINE_FULL;
        }
        if (value == 1) {
            return SERVER_LINE_BUSY;
        }
        if (value == 2) {
            return SERVER_LINE_STOP;
        }
        if (value != 3) {
            return null;
        }
        return SERVER_LINE_IDLE;
    }

    public static final Descriptors.EnumDescriptor getDescriptor() {
        return com.wufan.user.service.protobuf.enumeration.a.b().getEnumTypes().get(5);
    }

    public static Internal.EnumLiteMap<ServerState> internalGetValueMap() {
        return internalValueMap;
    }

    @Override // com.google.protobuf.ProtocolMessageEnum
    public final Descriptors.EnumDescriptor getDescriptorForType() {
        return getDescriptor();
    }

    @Override // com.google.protobuf.ProtocolMessageEnum, com.google.protobuf.Internal.EnumLite
    public final int getNumber() {
        if (this != UNRECOGNIZED) {
            return this.value;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }

    @Override // com.google.protobuf.ProtocolMessageEnum
    public final Descriptors.EnumValueDescriptor getValueDescriptor() {
        return getDescriptor().getValues().get(ordinal());
    }

    @Deprecated
    public static ServerState valueOf(int value) {
        return forNumber(value);
    }

    public static ServerState valueOf(Descriptors.EnumValueDescriptor desc) {
        if (desc.getType() == getDescriptor()) {
            if (desc.getIndex() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[desc.getIndex()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
