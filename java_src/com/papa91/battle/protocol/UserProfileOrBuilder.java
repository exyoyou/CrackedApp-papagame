package com.papa91.battle.protocol;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;

/* JADX INFO: loaded from: classes2.dex */
public interface UserProfileOrBuilder extends MessageOrBuilder {
    BattleArea getArea();

    int getAreaValue();

    String getAvatar();

    ByteString getAvatarBytes();

    String getBattleTitle();

    ByteString getBattleTitleBytes();

    String getBattleTitleColor();

    ByteString getBattleTitleColorBytes();

    int getCopper();

    int getKickCount();

    String getNickname();

    ByteString getNicknameBytes();

    int getUid();

    boolean getVip();
}
