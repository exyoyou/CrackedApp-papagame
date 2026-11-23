package com.wufan.friend.chat.protocol;

import com.google.protobuf.MessageOrBuilder;

/* JADX INFO: loaded from: classes8.dex */
public interface l extends MessageOrBuilder {
    AccountInfo getFriend();

    a getFriendOrBuilder();

    PlayState getState();

    e0 getStateOrBuilder();

    boolean hasFriend();

    boolean hasState();
}
