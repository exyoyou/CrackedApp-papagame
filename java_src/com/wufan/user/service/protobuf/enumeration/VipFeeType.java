package com.wufan.user.service.protobuf.enumeration;

import com.google.protobuf.Descriptors;
import com.google.protobuf.Internal;
import com.google.protobuf.ProtocolMessageEnum;

/* JADX INFO: loaded from: classes8.dex */
public enum VipFeeType implements ProtocolMessageEnum {
    WEEK_VIP(0),
    HALF_A_MONTH_VIP(1),
    MONTH_VIP(2),
    QUARTER_VIP(3),
    YEAR_VIP(4),
    UNRECOGNIZED(-1);

    public static final int HALF_A_MONTH_VIP_VALUE = 1;
    public static final int MONTH_VIP_VALUE = 2;
    public static final int QUARTER_VIP_VALUE = 3;
    public static final int WEEK_VIP_VALUE = 0;
    public static final int YEAR_VIP_VALUE = 4;
    private final int value;
    private static final Internal.EnumLiteMap<VipFeeType> internalValueMap = new Internal.EnumLiteMap<VipFeeType>() { // from class: com.wufan.user.service.protobuf.enumeration.VipFeeType.a
        @Override // com.google.protobuf.Internal.EnumLiteMap
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public VipFeeType findValueByNumber(int number) {
            return VipFeeType.forNumber(number);
        }
    };
    private static final VipFeeType[] VALUES = values();

    VipFeeType(int value) {
        this.value = value;
    }

    public static VipFeeType forNumber(int value) {
        if (value == 0) {
            return WEEK_VIP;
        }
        if (value == 1) {
            return HALF_A_MONTH_VIP;
        }
        if (value == 2) {
            return MONTH_VIP;
        }
        if (value == 3) {
            return QUARTER_VIP;
        }
        if (value != 4) {
            return null;
        }
        return YEAR_VIP;
    }

    public static final Descriptors.EnumDescriptor getDescriptor() {
        return com.wufan.user.service.protobuf.enumeration.a.b().getEnumTypes().get(4);
    }

    public static Internal.EnumLiteMap<VipFeeType> internalGetValueMap() {
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
    public static VipFeeType valueOf(int value) {
        return forNumber(value);
    }

    public static VipFeeType valueOf(Descriptors.EnumValueDescriptor desc) {
        if (desc.getType() == getDescriptor()) {
            if (desc.getIndex() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[desc.getIndex()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
