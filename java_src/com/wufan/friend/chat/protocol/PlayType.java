package com.wufan.friend.chat.protocol;

import com.google.protobuf.Descriptors;
import com.google.protobuf.Internal;
import com.google.protobuf.ProtocolMessageEnum;

/* JADX INFO: loaded from: classes8.dex */
public enum PlayType implements ProtocolMessageEnum {
    STAND(0),
    NET_BATTLE(1),
    UNRECOGNIZED(-1);

    public static final int NET_BATTLE_VALUE = 1;
    public static final int STAND_VALUE = 0;
    private final int value;
    private static final Internal.EnumLiteMap<PlayType> internalValueMap = new Internal.EnumLiteMap<PlayType>() { // from class: com.wufan.friend.chat.protocol.PlayType.a
        @Override // com.google.protobuf.Internal.EnumLiteMap
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PlayType findValueByNumber(int number) {
            return PlayType.forNumber(number);
        }
    };
    private static final PlayType[] VALUES = values();

    PlayType(int value) {
        this.value = value;
    }

    public static PlayType forNumber(int value) {
        if (value == 0) {
            return STAND;
        }
        if (value != 1) {
            return null;
        }
        return NET_BATTLE;
    }

    public static final Descriptors.EnumDescriptor getDescriptor() {
        return a0.b().getEnumTypes().get(2);
    }

    public static Internal.EnumLiteMap<PlayType> internalGetValueMap() {
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
    public static PlayType valueOf(int value) {
        return forNumber(value);
    }

    public static PlayType valueOf(Descriptors.EnumValueDescriptor desc) {
        if (desc.getType() == getDescriptor()) {
            if (desc.getIndex() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[desc.getIndex()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
