package com.wufan.user.service.protobuf.enumeration;

import com.google.protobuf.Descriptors;
import com.google.protobuf.Internal;
import com.google.protobuf.ProtocolMessageEnum;

/* JADX INFO: loaded from: classes8.dex */
public enum ClickStatusPosition implements ProtocolMessageEnum {
    CLOUD_GAMING_SIGN_WIN(0),
    UNRECOGNIZED(-1);

    public static final int CLOUD_GAMING_SIGN_WIN_VALUE = 0;
    private final int value;
    private static final Internal.EnumLiteMap<ClickStatusPosition> internalValueMap = new Internal.EnumLiteMap<ClickStatusPosition>() { // from class: com.wufan.user.service.protobuf.enumeration.ClickStatusPosition.a
        @Override // com.google.protobuf.Internal.EnumLiteMap
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ClickStatusPosition findValueByNumber(int number) {
            return ClickStatusPosition.forNumber(number);
        }
    };
    private static final ClickStatusPosition[] VALUES = values();

    ClickStatusPosition(int value) {
        this.value = value;
    }

    public static ClickStatusPosition forNumber(int value) {
        if (value != 0) {
            return null;
        }
        return CLOUD_GAMING_SIGN_WIN;
    }

    public static final Descriptors.EnumDescriptor getDescriptor() {
        return com.wufan.user.service.protobuf.enumeration.a.b().getEnumTypes().get(8);
    }

    public static Internal.EnumLiteMap<ClickStatusPosition> internalGetValueMap() {
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
    public static ClickStatusPosition valueOf(int value) {
        return forNumber(value);
    }

    public static ClickStatusPosition valueOf(Descriptors.EnumValueDescriptor desc) {
        if (desc.getType() == getDescriptor()) {
            if (desc.getIndex() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[desc.getIndex()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
