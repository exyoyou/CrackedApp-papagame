package com.papa91.battle.protocol;

import com.google.protobuf.Descriptors;
import com.google.protobuf.Internal;
import com.google.protobuf.ProtocolMessageEnum;

/* JADX INFO: loaded from: classes2.dex */
public enum BattleArea implements ProtocolMessageEnum {
    ALL(0),
    BJ(1),
    SH(2),
    GZ(3),
    UNRECOGNIZED(-1);

    public static final int ALL_VALUE = 0;
    public static final int BJ_VALUE = 1;
    public static final int GZ_VALUE = 3;
    public static final int SH_VALUE = 2;
    private final int value;
    private static final Internal.EnumLiteMap<BattleArea> internalValueMap = new Internal.EnumLiteMap<BattleArea>() { // from class: com.papa91.battle.protocol.BattleArea.1
        @Override // com.google.protobuf.Internal.EnumLiteMap
        public BattleArea findValueByNumber(int i10) {
            return BattleArea.forNumber(i10);
        }
    };
    private static final BattleArea[] VALUES = values();

    BattleArea(int i10) {
        this.value = i10;
    }

    public static BattleArea forNumber(int i10) {
        if (i10 == 0) {
            return ALL;
        }
        if (i10 == 1) {
            return BJ;
        }
        if (i10 == 2) {
            return SH;
        }
        if (i10 != 3) {
            return null;
        }
        return GZ;
    }

    public static final Descriptors.EnumDescriptor getDescriptor() {
        return BattleProto.getDescriptor().getEnumTypes().get(2);
    }

    public static Internal.EnumLiteMap<BattleArea> internalGetValueMap() {
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
    public static BattleArea valueOf(int i10) {
        return forNumber(i10);
    }

    public static BattleArea valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
        if (enumValueDescriptor.getType() == getDescriptor()) {
            if (enumValueDescriptor.getIndex() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
