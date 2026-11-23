package com.wufan.user.service.protobuf.enumeration;

import com.google.protobuf.Descriptors;
import com.google.protobuf.Internal;
import com.google.protobuf.ProtocolMessageEnum;

/* JADX INFO: loaded from: classes8.dex */
public enum PlaytimeType implements ProtocolMessageEnum {
    VIP(0),
    FREE(1),
    UNRECOGNIZED(-1);

    public static final int FREE_VALUE = 1;
    public static final int VIP_VALUE = 0;
    private final int value;
    private static final Internal.EnumLiteMap<PlaytimeType> internalValueMap = new Internal.EnumLiteMap<PlaytimeType>() { // from class: com.wufan.user.service.protobuf.enumeration.PlaytimeType.a
        @Override // com.google.protobuf.Internal.EnumLiteMap
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PlaytimeType findValueByNumber(int number) {
            return PlaytimeType.forNumber(number);
        }
    };
    private static final PlaytimeType[] VALUES = values();

    PlaytimeType(int value) {
        this.value = value;
    }

    public static PlaytimeType forNumber(int value) {
        if (value == 0) {
            return VIP;
        }
        if (value != 1) {
            return null;
        }
        return FREE;
    }

    public static final Descriptors.EnumDescriptor getDescriptor() {
        return com.wufan.user.service.protobuf.enumeration.a.b().getEnumTypes().get(7);
    }

    public static Internal.EnumLiteMap<PlaytimeType> internalGetValueMap() {
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
    public static PlaytimeType valueOf(int value) {
        return forNumber(value);
    }

    public static PlaytimeType valueOf(Descriptors.EnumValueDescriptor desc) {
        if (desc.getType() == getDescriptor()) {
            if (desc.getIndex() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[desc.getIndex()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
