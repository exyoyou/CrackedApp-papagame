package com.wufan.friend.chat.protocol;

import com.google.protobuf.MessageOrBuilder;

/* JADX INFO: loaded from: classes8.dex */
public interface k extends MessageOrBuilder {
    AccountInfo getFriend();

    a getFriendOrBuilder();

    OnlineState getOnlineState();

    int getOnlineStateValue();

    PlayState getPlayState();

    e0 getPlayStateOrBuilder();

    boolean hasFriend();

    boolean hasPlayState();
}
