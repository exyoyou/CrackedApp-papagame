package com.wufan.friend.chat.protocol;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;

/* JADX INFO: loaded from: classes8.dex */
public interface r extends MessageOrBuilder {
    int getAccountId();

    String getAvatar();

    ByteString getAvatarBytes();

    boolean getEliteField();

    int getFromAccountId();

    String getFromNickname();

    ByteString getFromNicknameBytes();

    long getGameId();

    String getGameName();

    ByteString getGameNameBytes();

    long getLobbyRoomId();

    String getRoomPasswd();

    ByteString getRoomPasswdBytes();

    int getSource();
}
