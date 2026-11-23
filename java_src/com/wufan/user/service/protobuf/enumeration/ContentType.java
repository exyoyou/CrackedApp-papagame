package com.wufan.user.service.protobuf.enumeration;

import com.google.protobuf.Descriptors;
import com.google.protobuf.Internal;
import com.google.protobuf.ProtocolMessageEnum;

/* JADX INFO: loaded from: classes8.dex */
public enum ContentType implements ProtocolMessageEnum {
    MOBILE_REG(0),
    FIND_PWD(1),
    RANDOM_PWD(2),
    BIND_MOBILE(3),
    UNBIND_MOBILE(4),
    CHECK_BIND_MOBILE(5),
    MOBILE_FIND_PWD(6),
    GENERAL_SMS_CODE(7),
    UNRECOGNIZED(-1);

    public static final int BIND_MOBILE_VALUE = 3;
    public static final int CHECK_BIND_MOBILE_VALUE = 5;
    public static final int FIND_PWD_VALUE = 1;
    public static final int GENERAL_SMS_CODE_VALUE = 7;
    public static final int MOBILE_FIND_PWD_VALUE = 6;
    public static final int MOBILE_REG_VALUE = 0;
    public static final int RANDOM_PWD_VALUE = 2;
    public static final int UNBIND_MOBILE_VALUE = 4;
    private final int value;
    private static final Internal.EnumLiteMap<ContentType> internalValueMap = new Internal.EnumLiteMap<ContentType>() { // from class: com.wufan.user.service.protobuf.enumeration.ContentType.a
        @Override // com.google.protobuf.Internal.EnumLiteMap
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ContentType findValueByNumber(int number) {
            return ContentType.forNumber(number);
        }
    };
    private static final ContentType[] VALUES = values();

    ContentType(int value) {
        this.value = value;
    }

    public static ContentType forNumber(int value) {
        switch (value) {
            case 0:
                return MOBILE_REG;
            case 1:
                return FIND_PWD;
            case 2:
                return RANDOM_PWD;
            case 3:
                return BIND_MOBILE;
            case 4:
                return UNBIND_MOBILE;
            case 5:
                return CHECK_BIND_MOBILE;
            case 6:
                return MOBILE_FIND_PWD;
            case 7:
                return GENERAL_SMS_CODE;
            default:
                return null;
        }
    }

    public static final Descriptors.EnumDescriptor getDescriptor() {
        return com.wufan.user.service.protobuf.enumeration.a.b().getEnumTypes().get(2);
    }

    public static Internal.EnumLiteMap<ContentType> internalGetValueMap() {
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
    public static ContentType valueOf(int value) {
        return forNumber(value);
    }

    public static ContentType valueOf(Descriptors.EnumValueDescriptor desc) {
        if (desc.getType() == getDescriptor()) {
            if (desc.getIndex() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[desc.getIndex()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
