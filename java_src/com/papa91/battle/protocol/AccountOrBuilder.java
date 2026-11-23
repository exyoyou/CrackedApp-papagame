package com.papa91.battle.protocol;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;

/* JADX INFO: loaded from: classes2.dex */
public interface AccountOrBuilder extends MessageOrBuilder {
    BattleArea getArea();

    int getAreaValue();

    String getAvatar();

    ByteString getAvatarBytes();

    String getBattleTitle();

    ByteString getBattleTitleBytes();

    String getBattleTitleColor();

    ByteString getBattleTitleColorBytes();

    int getCopper();

    String getIgnore1();

    ByteString getIgnore1Bytes();

    int getKickCount();

    String getNickname();

    ByteString getNicknameBytes();

    PhoneType getPhoneType();

    int getPhoneTypeValue();

    Platform getPlatform();

    int getPlatformValue();

    int getProficiencyLevel();

    int getUid();

    boolean getVip();
}
