package com.wufan.user.service.protobuf.enumeration;

import com.google.protobuf.Descriptors;
import com.google.protobuf.Internal;
import com.google.protobuf.ProtocolMessageEnum;

/* JADX INFO: loaded from: classes8.dex */
public enum SourceType implements ProtocolMessageEnum {
    WORLD(0),
    PLATFORM(1),
    BATTLE(2),
    PC(3),
    REBATE(4),
    SDK_REBATE(5),
    SWITCH(6),
    UNRECOGNIZED(-1);

    public static final int BATTLE_VALUE = 2;
    public static final int PC_VALUE = 3;
    public static final int PLATFORM_VALUE = 1;
    public static final int REBATE_VALUE = 4;
    public static final int SDK_REBATE_VALUE = 5;
    public static final int SWITCH_VALUE = 6;
    public static final int WORLD_VALUE = 0;
    private final int value;
    private static final Internal.EnumLiteMap<SourceType> internalValueMap = new Internal.EnumLiteMap<SourceType>() { // from class: com.wufan.user.service.protobuf.enumeration.SourceType.a
        @Override // com.google.protobuf.Internal.EnumLiteMap
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public SourceType findValueByNumber(int number) {
            return SourceType.forNumber(number);
        }
    };
    private static final SourceType[] VALUES = values();

    SourceType(int value) {
        this.value = value;
    }

    public static SourceType forNumber(int value) {
        switch (value) {
            case 0:
                return WORLD;
            case 1:
                return PLATFORM;
            case 2:
                return BATTLE;
            case 3:
                return PC;
            case 4:
                return REBATE;
            case 5:
                return SDK_REBATE;
            case 6:
                return SWITCH;
            default:
                return null;
        }
    }

    public static final Descriptors.EnumDescriptor getDescriptor() {
        return com.wufan.user.service.protobuf.enumeration.a.b().getEnumTypes().get(3);
    }

    public static Internal.EnumLiteMap<SourceType> internalGetValueMap() {
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
    public static SourceType valueOf(int value) {
        return forNumber(value);
    }

    public static SourceType valueOf(Descriptors.EnumValueDescriptor desc) {
        if (desc.getType() == getDescriptor()) {
            if (desc.getIndex() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[desc.getIndex()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
