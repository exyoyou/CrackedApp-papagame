package com.wufan.user.service.protobuf.enumeration;

import com.google.protobuf.Descriptors;
import com.google.protobuf.Internal;
import com.google.protobuf.ProtocolMessageEnum;

/* JADX INFO: loaded from: classes8.dex */
public enum SceneType implements ProtocolMessageEnum {
    APP_HOME_PAGE(0),
    CLOUD_GAMING_SIGN_BTN(1),
    UNRECOGNIZED(-1);

    public static final int APP_HOME_PAGE_VALUE = 0;
    public static final int CLOUD_GAMING_SIGN_BTN_VALUE = 1;
    private final int value;
    private static final Internal.EnumLiteMap<SceneType> internalValueMap = new Internal.EnumLiteMap<SceneType>() { // from class: com.wufan.user.service.protobuf.enumeration.SceneType.a
        @Override // com.google.protobuf.Internal.EnumLiteMap
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public SceneType findValueByNumber(int number) {
            return SceneType.forNumber(number);
        }
    };
    private static final SceneType[] VALUES = values();

    SceneType(int value) {
        this.value = value;
    }

    public static SceneType forNumber(int value) {
        if (value == 0) {
            return APP_HOME_PAGE;
        }
        if (value != 1) {
            return null;
        }
        return CLOUD_GAMING_SIGN_BTN;
    }

    public static final Descriptors.EnumDescriptor getDescriptor() {
        return com.wufan.user.service.protobuf.enumeration.a.b().getEnumTypes().get(9);
    }

    public static Internal.EnumLiteMap<SceneType> internalGetValueMap() {
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
    public static SceneType valueOf(int value) {
        return forNumber(value);
    }

    public static SceneType valueOf(Descriptors.EnumValueDescriptor desc) {
        if (desc.getType() == getDescriptor()) {
            if (desc.getIndex() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[desc.getIndex()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
