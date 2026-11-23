package com.wufan.friend.chat.protocol;

import com.google.protobuf.Descriptors;
import com.google.protobuf.Internal;
import com.google.protobuf.ProtocolMessageEnum;

/* JADX INFO: loaded from: classes8.dex */
public enum OnlineState implements ProtocolMessageEnum {
    ONLINE(0),
    INVISIBLE(1),
    OFFLINE(2),
    UNRECOGNIZED(-1);

    public static final int INVISIBLE_VALUE = 1;
    public static final int OFFLINE_VALUE = 2;
    public static final int ONLINE_VALUE = 0;
    private final int value;
    private static final Internal.EnumLiteMap<OnlineState> internalValueMap = new Internal.EnumLiteMap<OnlineState>() { // from class: com.wufan.friend.chat.protocol.OnlineState.a
        @Override // com.google.protobuf.Internal.EnumLiteMap
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public OnlineState findValueByNumber(int number) {
            return OnlineState.forNumber(number);
        }
    };
    private static final OnlineState[] VALUES = values();

    OnlineState(int value) {
        this.value = value;
    }

    public static OnlineState forNumber(int value) {
        if (value == 0) {
            return ONLINE;
        }
        if (value == 1) {
            return INVISIBLE;
        }
        if (value != 2) {
            return null;
        }
        return OFFLINE;
    }

    public static final Descriptors.EnumDescriptor getDescriptor() {
        return a0.b().getEnumTypes().get(0);
    }

    public static Internal.EnumLiteMap<OnlineState> internalGetValueMap() {
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
    public static OnlineState valueOf(int value) {
        return forNumber(value);
    }

    public static OnlineState valueOf(Descriptors.EnumValueDescriptor desc) {
        if (desc.getType() == getDescriptor()) {
            if (desc.getIndex() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[desc.getIndex()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
