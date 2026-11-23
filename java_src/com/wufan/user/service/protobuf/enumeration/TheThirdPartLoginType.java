package com.wufan.user.service.protobuf.enumeration;

import com.google.protobuf.Descriptors;
import com.google.protobuf.Internal;
import com.google.protobuf.ProtocolMessageEnum;

/* JADX INFO: loaded from: classes8.dex */
public enum TheThirdPartLoginType implements ProtocolMessageEnum {
    T_PAPA(0),
    T_QQ(1),
    T_WEI_XIN(2),
    T_WEI_BO(3),
    T_MG(4),
    UNRECOGNIZED(-1);

    public static final int T_MG_VALUE = 4;
    public static final int T_PAPA_VALUE = 0;
    public static final int T_QQ_VALUE = 1;
    public static final int T_WEI_BO_VALUE = 3;
    public static final int T_WEI_XIN_VALUE = 2;
    private final int value;
    private static final Internal.EnumLiteMap<TheThirdPartLoginType> internalValueMap = new Internal.EnumLiteMap<TheThirdPartLoginType>() { // from class: com.wufan.user.service.protobuf.enumeration.TheThirdPartLoginType.a
        @Override // com.google.protobuf.Internal.EnumLiteMap
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public TheThirdPartLoginType findValueByNumber(int number) {
            return TheThirdPartLoginType.forNumber(number);
        }
    };
    private static final TheThirdPartLoginType[] VALUES = values();

    TheThirdPartLoginType(int value) {
        this.value = value;
    }

    public static TheThirdPartLoginType forNumber(int value) {
        if (value == 0) {
            return T_PAPA;
        }
        if (value == 1) {
            return T_QQ;
        }
        if (value == 2) {
            return T_WEI_XIN;
        }
        if (value == 3) {
            return T_WEI_BO;
        }
        if (value != 4) {
            return null;
        }
        return T_MG;
    }

    public static final Descriptors.EnumDescriptor getDescriptor() {
        return com.wufan.user.service.protobuf.enumeration.a.b().getEnumTypes().get(1);
    }

    public static Internal.EnumLiteMap<TheThirdPartLoginType> internalGetValueMap() {
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
    public static TheThirdPartLoginType valueOf(int value) {
        return forNumber(value);
    }

    public static TheThirdPartLoginType valueOf(Descriptors.EnumValueDescriptor desc) {
        if (desc.getType() == getDescriptor()) {
            if (desc.getIndex() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[desc.getIndex()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
