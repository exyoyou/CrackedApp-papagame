package com.wufan.friend.chat.protocol;

import com.google.protobuf.MessageOrBuilder;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public interface c extends MessageOrBuilder {
    int getFriendCount();

    Friend getOfflineFriends(int index);

    int getOfflineFriendsCount();

    List<Friend> getOfflineFriendsList();

    o getOfflineFriendsOrBuilder(int index);

    List<? extends o> getOfflineFriendsOrBuilderList();

    Friend getOnlineFriends(int index);

    int getOnlineFriendsCount();

    List<Friend> getOnlineFriendsList();

    o getOnlineFriendsOrBuilder(int index);

    List<? extends o> getOnlineFriendsOrBuilderList();
}
