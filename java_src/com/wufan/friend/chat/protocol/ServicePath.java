package com.wufan.friend.chat.protocol;

import com.google.protobuf.Descriptors;
import com.google.protobuf.Internal;
import com.google.protobuf.ProtocolMessageEnum;

/* JADX INFO: loaded from: classes8.dex */
public enum ServicePath implements ProtocolMessageEnum {
    UNDEFINED_SP(0),
    SYS_LOGIN(1),
    SYS_HEART(2),
    BTL_GAME_PLAY(3),
    BTL_STATE_CHANGE(4),
    SYS_ONLINE_STATE(5),
    BTL_GAME_INVITE(6),
    FRD_GET_FRIENDS(7),
    BAT_CHAT_ROOM(8),
    BAT_CHAT_SEND(9),
    FRD_GET_ALL_FRIENDS(10),
    RCM_GET_PLAYER(11),
    RCM_GET_PLAYER_V2(12),
    RCM_GET_LOCAL_BATTLE_GAME(13),
    UNRECOGNIZED(-1);

    public static final int BAT_CHAT_ROOM_VALUE = 8;
    public static final int BAT_CHAT_SEND_VALUE = 9;
    public static final int BTL_GAME_INVITE_VALUE = 6;
    public static final int BTL_GAME_PLAY_VALUE = 3;
    public static final int BTL_STATE_CHANGE_VALUE = 4;
    public static final int FRD_GET_ALL_FRIENDS_VALUE = 10;
    public static final int FRD_GET_FRIENDS_VALUE = 7;
    public static final int RCM_GET_LOCAL_BATTLE_GAME_VALUE = 13;
    public static final int RCM_GET_PLAYER_V2_VALUE = 12;
    public static final int RCM_GET_PLAYER_VALUE = 11;
    public static final int SYS_HEART_VALUE = 2;
    public static final int SYS_LOGIN_VALUE = 1;
    public static final int SYS_ONLINE_STATE_VALUE = 5;
    public static final int UNDEFINED_SP_VALUE = 0;
    private final int value;
    private static final Internal.EnumLiteMap<ServicePath> internalValueMap = new Internal.EnumLiteMap<ServicePath>() { // from class: com.wufan.friend.chat.protocol.ServicePath.a
        @Override // com.google.protobuf.Internal.EnumLiteMap
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ServicePath findValueByNumber(int number) {
            return ServicePath.forNumber(number);
        }
    };
    private static final ServicePath[] VALUES = values();

    ServicePath(int value) {
        this.value = value;
    }

    public static ServicePath forNumber(int value) {
        switch (value) {
            case 0:
                return UNDEFINED_SP;
            case 1:
                return SYS_LOGIN;
            case 2:
                return SYS_HEART;
            case 3:
                return BTL_GAME_PLAY;
            case 4:
                return BTL_STATE_CHANGE;
            case 5:
                return SYS_ONLINE_STATE;
            case 6:
                return BTL_GAME_INVITE;
            case 7:
                return FRD_GET_FRIENDS;
            case 8:
                return BAT_CHAT_ROOM;
            case 9:
                return BAT_CHAT_SEND;
            case 10:
                return FRD_GET_ALL_FRIENDS;
            case 11:
                return RCM_GET_PLAYER;
            case 12:
                return RCM_GET_PLAYER_V2;
            case 13:
                return RCM_GET_LOCAL_BATTLE_GAME;
            default:
                return null;
        }
    }

    public static final Descriptors.EnumDescriptor getDescriptor() {
        return a0.b().getEnumTypes().get(5);
    }

    public static Internal.EnumLiteMap<ServicePath> internalGetValueMap() {
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
    public static ServicePath valueOf(int value) {
        return forNumber(value);
    }

    public static ServicePath valueOf(Descriptors.EnumValueDescriptor desc) {
        if (desc.getType() == getDescriptor()) {
            if (desc.getIndex() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[desc.getIndex()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
