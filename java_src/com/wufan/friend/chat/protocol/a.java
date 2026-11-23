package com.wufan.friend.chat.protocol;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;

/* JADX INFO: loaded from: classes8.dex */
public interface a extends MessageOrBuilder {
    int getAccountId();

    boolean getAdministrator();

    String getAvatar();

    ByteString getAvatarBytes();

    boolean getBanned();

    int getLevel();

    String getNickname();

    ByteString getNicknameBytes();

    boolean getVip();
}
