package com.wufan.friend.chat.protocol;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;

/* JADX INFO: loaded from: classes8.dex */
public interface y extends MessageOrBuilder {
    int getAccountId();

    String getNickname();

    ByteString getNicknameBytes();

    String getToken();

    ByteString getTokenBytes();
}
