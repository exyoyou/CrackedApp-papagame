package com.wufan.friend.chat.protocol;

import com.google.protobuf.Descriptors;
import com.google.protobuf.Internal;
import com.google.protobuf.ProtocolMessageEnum;

/* JADX INFO: loaded from: classes8.dex */
public enum ResponseType implements ProtocolMessageEnum {
    UNDEFINED_CT(0),
    RESPONSE(1),
    NOTIFICATION(2),
    UNRECOGNIZED(-1);

    public static final int NOTIFICATION_VALUE = 2;
    public static final int RESPONSE_VALUE = 1;
    public static final int UNDEFINED_CT_VALUE = 0;
    private final int value;
    private static final Internal.EnumLiteMap<ResponseType> internalValueMap = new Internal.EnumLiteMap<ResponseType>() { // from class: com.wufan.friend.chat.protocol.ResponseType.a
        @Override // com.google.protobuf.Internal.EnumLiteMap
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ResponseType findValueByNumber(int number) {
            return ResponseType.forNumber(number);
        }
    };
    private static final ResponseType[] VALUES = values();

    ResponseType(int value) {
        this.value = value;
    }

    public static ResponseType forNumber(int value) {
        if (value == 0) {
            return UNDEFINED_CT;
        }
        if (value == 1) {
            return RESPONSE;
        }
        if (value != 2) {
            return null;
        }
        return NOTIFICATION;
    }

    public static final Descriptors.EnumDescriptor getDescriptor() {
        return a0.b().getEnumTypes().get(6);
    }

    public static Internal.EnumLiteMap<ResponseType> internalGetValueMap() {
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
    public static ResponseType valueOf(int value) {
        return forNumber(value);
    }

    public static ResponseType valueOf(Descriptors.EnumValueDescriptor desc) {
        if (desc.getType() == getDescriptor()) {
            if (desc.getIndex() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[desc.getIndex()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
