package com.wufan.user.service.protobuf.enumeration;

import com.google.protobuf.Descriptors;
import com.google.protobuf.Internal;
import com.google.protobuf.ProtocolMessageEnum;

/* JADX INFO: loaded from: classes8.dex */
public enum LoginType implements ProtocolMessageEnum {
    QQ(0),
    WEI_XIN(1),
    WEI_BO(2),
    MOBILE(3),
    ACCOUNT(4),
    MIX_ACCOUNT(5),
    UNRECOGNIZED(-1);

    public static final int ACCOUNT_VALUE = 4;
    public static final int MIX_ACCOUNT_VALUE = 5;
    public static final int MOBILE_VALUE = 3;
    public static final int QQ_VALUE = 0;
    public static final int WEI_BO_VALUE = 2;
    public static final int WEI_XIN_VALUE = 1;
    private final int value;
    private static final Internal.EnumLiteMap<LoginType> internalValueMap = new Internal.EnumLiteMap<LoginType>() { // from class: com.wufan.user.service.protobuf.enumeration.LoginType.a
        @Override // com.google.protobuf.Internal.EnumLiteMap
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public LoginType findValueByNumber(int number) {
            return LoginType.forNumber(number);
        }
    };
    private static final LoginType[] VALUES = values();

    LoginType(int value) {
        this.value = value;
    }

    public static LoginType forNumber(int value) {
        if (value == 0) {
            return QQ;
        }
        if (value == 1) {
            return WEI_XIN;
        }
        if (value == 2) {
            return WEI_BO;
        }
        if (value == 3) {
            return MOBILE;
        }
        if (value == 4) {
            return ACCOUNT;
        }
        if (value != 5) {
            return null;
        }
        return MIX_ACCOUNT;
    }

    public static final Descriptors.EnumDescriptor getDescriptor() {
        return com.wufan.user.service.protobuf.enumeration.a.b().getEnumTypes().get(0);
    }

    public static Internal.EnumLiteMap<LoginType> internalGetValueMap() {
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
    public static LoginType valueOf(int value) {
        return forNumber(value);
    }

    public static LoginType valueOf(Descriptors.EnumValueDescriptor desc) {
        if (desc.getType() == getDescriptor()) {
            if (desc.getIndex() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[desc.getIndex()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
