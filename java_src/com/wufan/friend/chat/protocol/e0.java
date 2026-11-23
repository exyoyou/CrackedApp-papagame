package com.wufan.friend.chat.protocol;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;

/* JADX INFO: loaded from: classes8.dex */
public interface e0 extends MessageOrBuilder {
    long getGameId();

    String getGameName();

    ByteString getGameNameBytes();

    long getLobbyRoomId();

    PlayType getPlayType();

    int getPlayTypeValue();

    int getRoomType();
}
