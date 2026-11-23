package com.wufan.friend.chat.protocol;

import com.google.protobuf.MessageOrBuilder;

/* JADX INFO: loaded from: classes8.dex */
public interface o extends MessageOrBuilder {
    AccountInfo getAccount();

    a getAccountOrBuilder();

    PlayState getState();

    e0 getStateOrBuilder();

    boolean hasAccount();

    boolean hasState();
}
