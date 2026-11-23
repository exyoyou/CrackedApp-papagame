package com.wufan.friend.chat.protocol;

import com.google.protobuf.Descriptors;
import com.google.protobuf.Internal;
import com.google.protobuf.ProtocolMessageEnum;

/* JADX INFO: loaded from: classes8.dex */
public enum ResponseStatus implements ProtocolMessageEnum {
    UNKNOWN_RS(0),
    OK(1),
    NON_SUPPORT_SERVICE(2),
    INTERNAL_EXCEPTION(3),
    UNAUTHORIZED(4),
    UNRECOGNIZED(-1);

    public static final int INTERNAL_EXCEPTION_VALUE = 3;
    public static final int NON_SUPPORT_SERVICE_VALUE = 2;
    public static final int OK_VALUE = 1;
    public static final int UNAUTHORIZED_VALUE = 4;
    public static final int UNKNOWN_RS_VALUE = 0;
    private final int value;
    private static final Internal.EnumLiteMap<ResponseStatus> internalValueMap = new Internal.EnumLiteMap<ResponseStatus>() { // from class: com.wufan.friend.chat.protocol.ResponseStatus.a
        @Override // com.google.protobuf.Internal.EnumLiteMap
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ResponseStatus findValueByNumber(int number) {
            return ResponseStatus.forNumber(number);
        }
    };
    private static final ResponseStatus[] VALUES = values();

    ResponseStatus(int value) {
        this.value = value;
    }

    public static ResponseStatus forNumber(int value) {
        if (value == 0) {
            return UNKNOWN_RS;
        }
        if (value == 1) {
            return OK;
        }
        if (value == 2) {
            return NON_SUPPORT_SERVICE;
        }
        if (value == 3) {
            return INTERNAL_EXCEPTION;
        }
        if (value != 4) {
            return null;
        }
        return UNAUTHORIZED;
    }

    public static final Descriptors.EnumDescriptor getDescriptor() {
        return a0.b().getEnumTypes().get(7);
    }

    public static Internal.EnumLiteMap<ResponseStatus> internalGetValueMap() {
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
    public static ResponseStatus valueOf(int value) {
        return forNumber(value);
    }

    public static ResponseStatus valueOf(Descriptors.EnumValueDescriptor desc) {
        if (desc.getType() == getDescriptor()) {
            if (desc.getIndex() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[desc.getIndex()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
