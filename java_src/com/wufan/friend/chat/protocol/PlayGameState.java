package com.wufan.friend.chat.protocol;

import com.google.protobuf.Descriptors;
import com.google.protobuf.Internal;
import com.google.protobuf.ProtocolMessageEnum;

/* JADX INFO: loaded from: classes8.dex */
public enum PlayGameState implements ProtocolMessageEnum {
    START(0),
    RUNNING(1),
    OVER(2),
    UNRECOGNIZED(-1);

    public static final int OVER_VALUE = 2;
    public static final int RUNNING_VALUE = 1;
    public static final int START_VALUE = 0;
    private final int value;
    private static final Internal.EnumLiteMap<PlayGameState> internalValueMap = new Internal.EnumLiteMap<PlayGameState>() { // from class: com.wufan.friend.chat.protocol.PlayGameState.a
        @Override // com.google.protobuf.Internal.EnumLiteMap
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PlayGameState findValueByNumber(int number) {
            return PlayGameState.forNumber(number);
        }
    };
    private static final PlayGameState[] VALUES = values();

    PlayGameState(int value) {
        this.value = value;
    }

    public static PlayGameState forNumber(int value) {
        if (value == 0) {
            return START;
        }
        if (value == 1) {
            return RUNNING;
        }
        if (value != 2) {
            return null;
        }
        return OVER;
    }

    public static final Descriptors.EnumDescriptor getDescriptor() {
        return a0.b().getEnumTypes().get(1);
    }

    public static Internal.EnumLiteMap<PlayGameState> internalGetValueMap() {
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
    public static PlayGameState valueOf(int value) {
        return forNumber(value);
    }

    public static PlayGameState valueOf(Descriptors.EnumValueDescriptor desc) {
        if (desc.getType() == getDescriptor()) {
            if (desc.getIndex() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[desc.getIndex()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
