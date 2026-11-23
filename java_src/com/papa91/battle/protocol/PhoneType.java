package com.papa91.battle.protocol;

import com.google.protobuf.Descriptors;
import com.google.protobuf.Internal;
import com.google.protobuf.ProtocolMessageEnum;

/* JADX INFO: loaded from: classes2.dex */
public enum PhoneType implements ProtocolMessageEnum {
    UNKNOWN(0),
    ANDROID_MOBILE(1),
    IOS_MOBILE(2),
    TV_MOBILE(3),
    WINDOWS_PC(4),
    UNRECOGNIZED(-1);

    public static final int ANDROID_MOBILE_VALUE = 1;
    public static final int IOS_MOBILE_VALUE = 2;
    public static final int TV_MOBILE_VALUE = 3;
    public static final int UNKNOWN_VALUE = 0;
    public static final int WINDOWS_PC_VALUE = 4;
    private final int value;
    private static final Internal.EnumLiteMap<PhoneType> internalValueMap = new Internal.EnumLiteMap<PhoneType>() { // from class: com.papa91.battle.protocol.PhoneType.1
        @Override // com.google.protobuf.Internal.EnumLiteMap
        public PhoneType findValueByNumber(int i10) {
            return PhoneType.forNumber(i10);
        }
    };
    private static final PhoneType[] VALUES = values();

    PhoneType(int i10) {
        this.value = i10;
    }

    public static PhoneType forNumber(int i10) {
        if (i10 == 0) {
            return UNKNOWN;
        }
        if (i10 == 1) {
            return ANDROID_MOBILE;
        }
        if (i10 == 2) {
            return IOS_MOBILE;
        }
        if (i10 == 3) {
            return TV_MOBILE;
        }
        if (i10 != 4) {
            return null;
        }
        return WINDOWS_PC;
    }

    public static final Descriptors.EnumDescriptor getDescriptor() {
        return BattleProto.getDescriptor().getEnumTypes().get(1);
    }

    public static Internal.EnumLiteMap<PhoneType> internalGetValueMap() {
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
        if (this != UNRECOGNIZED) {
            return getDescriptor().getValues().get(ordinal());
        }
        throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
    }

    @Deprecated
    public static PhoneType valueOf(int i10) {
        return forNumber(i10);
    }

    public static PhoneType valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
        if (enumValueDescriptor.getType() == getDescriptor()) {
            if (enumValueDescriptor.getIndex() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
