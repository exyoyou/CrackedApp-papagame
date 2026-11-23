package com.wufan.friend.chat.protocol;

import com.google.protobuf.Descriptors;
import com.google.protobuf.Internal;
import com.google.protobuf.ProtocolMessageEnum;

/* JADX INFO: loaded from: classes8.dex */
public enum Platform implements ProtocolMessageEnum {
    UNDEFINED_PT(0),
    ANDROID(1),
    IOS(2),
    UNRECOGNIZED(-1);

    public static final int ANDROID_VALUE = 1;
    public static final int IOS_VALUE = 2;
    public static final int UNDEFINED_PT_VALUE = 0;
    private final int value;
    private static final Internal.EnumLiteMap<Platform> internalValueMap = new Internal.EnumLiteMap<Platform>() { // from class: com.wufan.friend.chat.protocol.Platform.a
        @Override // com.google.protobuf.Internal.EnumLiteMap
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Platform findValueByNumber(int number) {
            return Platform.forNumber(number);
        }
    };
    private static final Platform[] VALUES = values();

    Platform(int value) {
        this.value = value;
    }

    public static Platform forNumber(int value) {
        if (value == 0) {
            return UNDEFINED_PT;
        }
        if (value == 1) {
            return ANDROID;
        }
        if (value != 2) {
            return null;
        }
        return IOS;
    }

    public static final Descriptors.EnumDescriptor getDescriptor() {
        return a0.b().getEnumTypes().get(3);
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
        return getDescriptor().getValues().get(ordinal());
    }

    @Deprecated
    public static Platform valueOf(int value) {
        return forNumber(value);
    }

    public static Platform valueOf(Descriptors.EnumValueDescriptor desc) {
        if (desc.getType() == getDescriptor()) {
            if (desc.getIndex() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[desc.getIndex()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
