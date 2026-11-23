package com.wufan.friend.chat.protocol;

import com.google.protobuf.MessageOrBuilder;

/* JADX INFO: loaded from: classes8.dex */
public interface j extends MessageOrBuilder {
    int getCount();

    boolean getStatus();

    FriendAddReqNotification.State getType();

    int getTypeValue();
}
