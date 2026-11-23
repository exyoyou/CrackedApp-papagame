package com.wufan.friend.chat.protocol;

import com.google.protobuf.Descriptors;
import com.google.protobuf.Internal;
import com.google.protobuf.ProtocolMessageEnum;

/* JADX INFO: loaded from: classes8.dex */
public enum ServiceName implements ProtocolMessageEnum {
    UNDEFINED_SN(0),
    SYSTEM(1),
    FRIEND(2),
    BATTLE(3),
    RECOMMEND(4),
    UNRECOGNIZED(-1);

    public static final int BATTLE_VALUE = 3;
    public static final int FRIEND_VALUE = 2;
    public static final int RECOMMEND_VALUE = 4;
    public static final int SYSTEM_VALUE = 1;
    public static final int UNDEFINED_SN_VALUE = 0;
    private final int value;
    private static final Internal.EnumLiteMap<ServiceName> internalValueMap = new Internal.EnumLiteMap<ServiceName>() { // from class: com.wufan.friend.chat.protocol.ServiceName.a
        @Override // com.google.protobuf.Internal.EnumLiteMap
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ServiceName findValueByNumber(int number) {
            return ServiceName.forNumber(number);
        }
    };
    private static final ServiceName[] VALUES = values();

    ServiceName(int value) {
        this.value = value;
    }

    public static ServiceName forNumber(int value) {
        if (value == 0) {
            return UNDEFINED_SN;
        }
        if (value == 1) {
            return SYSTEM;
        }
        if (value == 2) {
            return FRIEND;
        }
        if (value == 3) {
            return BATTLE;
        }
        if (value != 4) {
            return null;
        }
        return RECOMMEND;
    }

    public static final Descriptors.EnumDescriptor getDescriptor() {
        return a0.b().getEnumTypes().get(4);
    }

    public static Internal.EnumLiteMap<ServiceName> internalGetValueMap() {
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
    public static ServiceName valueOf(int value) {
        return forNumber(value);
    }

    public static ServiceName valueOf(Descriptors.EnumValueDescriptor desc) {
        if (desc.getType() == getDescriptor()) {
            if (desc.getIndex() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[desc.getIndex()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
