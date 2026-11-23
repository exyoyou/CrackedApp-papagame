package com.papa91.battle.protocol;

import com.google.protobuf.Descriptors;
import com.google.protobuf.Internal;
import com.google.protobuf.ProtocolMessageEnum;

/* JADX INFO: loaded from: classes2.dex */
public enum RoomState implements ProtocolMessageEnum {
    EMPTY(0),
    WAIT(1),
    READY(2),
    START(3),
    UNRECOGNIZED(-1);

    public static final int EMPTY_VALUE = 0;
    public static final int READY_VALUE = 2;
    public static final int START_VALUE = 3;
    public static final int WAIT_VALUE = 1;
    private final int value;
    private static final Internal.EnumLiteMap<RoomState> internalValueMap = new Internal.EnumLiteMap<RoomState>() { // from class: com.papa91.battle.protocol.RoomState.1
        @Override // com.google.protobuf.Internal.EnumLiteMap
        public RoomState findValueByNumber(int i10) {
            return RoomState.forNumber(i10);
        }
    };
    private static final RoomState[] VALUES = values();

    RoomState(int i10) {
        this.value = i10;
    }

    public static RoomState forNumber(int i10) {
        if (i10 == 0) {
            return EMPTY;
        }
        if (i10 == 1) {
            return WAIT;
        }
        if (i10 == 2) {
            return READY;
        }
        if (i10 != 3) {
            return null;
        }
        return START;
    }

    public static final Descriptors.EnumDescriptor getDescriptor() {
        return BattleProto.getDescriptor().getEnumTypes().get(4);
    }

    public static Internal.EnumLiteMap<RoomState> internalGetValueMap() {
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
    public static RoomState valueOf(int i10) {
        return forNumber(i10);
    }

    public static RoomState valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
        if (enumValueDescriptor.getType() == getDescriptor()) {
            if (enumValueDescriptor.getIndex() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[enumValueDescriptor.getIndex()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
