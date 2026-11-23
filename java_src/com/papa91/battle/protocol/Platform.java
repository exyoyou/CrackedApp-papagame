package com.papa91.battle.protocol;

import com.google.protobuf.Descriptors;
import com.google.protobuf.Internal;
import com.google.protobuf.ProtocolMessageEnum;

/* JADX INFO: loaded from: classes2.dex */
public enum Platform implements ProtocolMessageEnum {
    MOBILE(0),
    PC(1),
    UNRECOGNIZED(-1);

    public static final int MOBILE_VALUE = 0;
    public static final int PC_VALUE = 1;
    private final int value;
    private static final Internal.EnumLiteMap<Platform> internalValueMap = new Internal.EnumLiteMap<Platform>() { // from class: com.papa91.battle.protocol.Platform.1
        @Override // com.google.protobuf.Internal.EnumLiteMap
        public Platform findValueByNumber(int i10) {
            return Platform.forNumber(i10);
        }
    };
    private static final Platform[] VALUES = values();

    Platform(int i10) {
        this.value = i10;
    }

    public static Platform forNumber(int i10) {
        if (i10 == 0) {
            return MOBILE;
        }
        if (i10 != 1) {
            return null;
        }
        return PC;
    }

    public static final Descriptors.EnumDescriptor getDescriptor() {
        return BattleProto.getDescriptor().getEnumTypes().get(0);
    }

    public static Internal.EnumLiteMap<Platform> internalGetValueMap() {
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
    public static Platform valueOf(int i10) {
        return forNumber(i10);
    }

    public static Platform valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
        if (enumValueDescriptor.getType() == getDescriptor()) {
            if (enumValueDescriptor.getIndex() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
