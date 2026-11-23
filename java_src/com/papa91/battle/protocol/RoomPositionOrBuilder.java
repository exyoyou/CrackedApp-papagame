package com.papa91.battle.protocol;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;

/* JADX INFO: loaded from: classes2.dex */
public interface RoomPositionOrBuilder extends MessageOrBuilder {
    String getAvatar();

    ByteString getAvatarBytes();

    BattleArea getBattleArea();

    int getBattleAreaValue();

    String getBattleTitle();

    ByteString getBattleTitleBytes();

    String getBattleTitleColor();

    ByteString getBattleTitleColorBytes();

    boolean getClosed();

    int getCopper();

    String getIgnore();

    ByteString getIgnoreBytes();

    int getKickCount();

    String getNickname();

    ByteString getNicknameBytes();

    boolean getPeripheral();

    PhoneType getPhoneType();

    int getPhoneTypeValue();

    int getPingVal();

    Platform getPlatform();

    int getPlatformValue();

    int getProficiencyLevel();

    RoomPosition.State getState();

    int getStateValue();

    BattleTitle getTitle();

    BattleTitleOrBuilder getTitleOrBuilder();

    int getUid();

    boolean getVip();

    boolean hasTitle();
}
