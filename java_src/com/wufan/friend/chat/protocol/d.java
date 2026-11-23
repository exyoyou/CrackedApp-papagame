package com.wufan.friend.chat.protocol;

import com.google.protobuf.MessageOrBuilder;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public interface d extends MessageOrBuilder {
    int getFriendCount();

    Friend getFriends(int index);

    int getFriendsCount();

    List<Friend> getFriendsList();

    o getFriendsOrBuilder(int index);

    List<? extends o> getFriendsOrBuilderList();
}
