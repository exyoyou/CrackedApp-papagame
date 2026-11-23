package com.wufan.friend.chat.protocol;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;

/* JADX INFO: loaded from: classes8.dex */
public interface j0 extends MessageOrBuilder {
    int getAccountId();

    String getAvatar();

    ByteString getAvatarBytes();

    boolean getBanned();

    long getGameId();

    String getGameName();

    ByteString getGameNameBytes();

    int getLevel();

    String getLevelName();

    ByteString getLevelNameBytes();

    String getNickname();

    ByteString getNicknameBytes();
}
