package com.papa91.battle.protocol;

import com.google.protobuf.Descriptors;
import com.google.protobuf.Internal;
import com.google.protobuf.ProtocolMessageEnum;

/* JADX INFO: loaded from: classes2.dex */
public enum RoomCategory implements ProtocolMessageEnum {
    NORMAL(0),
    TOURNAMENT(1),
    LIVE(2),
    UNRECOGNIZED(-1);

    public static final int LIVE_VALUE = 2;
    public static final int NORMAL_VALUE = 0;
    public static final int TOURNAMENT_VALUE = 1;
    private final int value;
    private static final Internal.EnumLiteMap<RoomCategory> internalValueMap = new Internal.EnumLiteMap<RoomCategory>() { // from class: com.papa91.battle.protocol.RoomCategory.1
        @Override // com.google.protobuf.Internal.EnumLiteMap
        public RoomCategory findValueByNumber(int i10) {
            return RoomCategory.forNumber(i10);
        }
    };
    private static final RoomCategory[] VALUES = values();

    RoomCategory(int i10) {
        this.value = i10;
    }

    public static RoomCategory forNumber(int i10) {
        if (i10 == 0) {
            return NORMAL;
        }
        if (i10 == 1) {
            return TOURNAMENT;
        }
        if (i10 != 2) {
            return null;
        }
        return LIVE;
    }

    public static final Descriptors.EnumDescriptor getDescriptor() {
        return BattleProto.getDescriptor().getEnumTypes().get(3);
    }

    public static Internal.EnumLiteMap<RoomCategory> internalGetValueMap() {
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
    public static RoomCategory valueOf(int i10) {
        return forNumber(i10);
    }

    public static RoomCategory valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
        if (enumValueDescriptor.getType() == getDescriptor()) {
            if (enumValueDescriptor.getIndex() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
