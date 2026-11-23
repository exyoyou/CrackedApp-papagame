package com.wufan.user.service.protobuf.enumeration;

import com.google.protobuf.Descriptors;
import com.google.protobuf.Internal;
import com.google.protobuf.ProtocolMessageEnum;

/* JADX INFO: loaded from: classes8.dex */
public enum FeedBackType implements ProtocolMessageEnum {
    GAME_CRASH(0),
    GAME_LAG(1),
    BLURRY_SCENE(2),
    QUEUE_UP_QUESTION(3),
    BLACK_SCREEN_EXCEPTION(4),
    OTHER_QUESTION(5),
    UNRECOGNIZED(-1);

    public static final int BLACK_SCREEN_EXCEPTION_VALUE = 4;
    public static final int BLURRY_SCENE_VALUE = 2;
    public static final int GAME_CRASH_VALUE = 0;
    public static final int GAME_LAG_VALUE = 1;
    public static final int OTHER_QUESTION_VALUE = 5;
    public static final int QUEUE_UP_QUESTION_VALUE = 3;
    private final int value;
    private static final Internal.EnumLiteMap<FeedBackType> internalValueMap = new Internal.EnumLiteMap<FeedBackType>() { // from class: com.wufan.user.service.protobuf.enumeration.FeedBackType.a
        @Override // com.google.protobuf.Internal.EnumLiteMap
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public FeedBackType findValueByNumber(int number) {
            return FeedBackType.forNumber(number);
        }
    };
    private static final FeedBackType[] VALUES = values();

    FeedBackType(int value) {
        this.value = value;
    }

    public static FeedBackType forNumber(int value) {
        if (value == 0) {
            return GAME_CRASH;
        }
        if (value == 1) {
            return GAME_LAG;
        }
        if (value == 2) {
            return BLURRY_SCENE;
        }
        if (value == 3) {
            return QUEUE_UP_QUESTION;
        }
        if (value == 4) {
            return BLACK_SCREEN_EXCEPTION;
        }
        if (value != 5) {
            return null;
        }
        return OTHER_QUESTION;
    }

    public static final Descriptors.EnumDescriptor getDescriptor() {
        return com.wufan.user.service.protobuf.enumeration.a.b().getEnumTypes().get(6);
    }

    public static Internal.EnumLiteMap<FeedBackType> internalGetValueMap() {
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
    public static FeedBackType valueOf(int value) {
        return forNumber(value);
    }

    public static FeedBackType valueOf(Descriptors.EnumValueDescriptor desc) {
        if (desc.getType() == getDescriptor()) {
            if (desc.getIndex() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[desc.getIndex()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
