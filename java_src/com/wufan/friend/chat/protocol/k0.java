package com.wufan.friend.chat.protocol;

import com.google.protobuf.MessageOrBuilder;

/* JADX INFO: loaded from: classes8.dex */
public interface k0 extends MessageOrBuilder {
    AccountInfo getFriend();

    a getFriendOrBuilder();

    PlayState getPlayState();

    e0 getPlayStateOrBuilder();

    OnlineState getState();

    int getStateValue();

    boolean hasFriend();

    boolean hasPlayState();
}
