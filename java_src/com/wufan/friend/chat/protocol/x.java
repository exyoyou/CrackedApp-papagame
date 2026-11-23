package com.wufan.friend.chat.protocol;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;

/* JADX INFO: loaded from: classes8.dex */
public interface x extends MessageOrBuilder {
    long getGameId();

    String getGameName();

    ByteString getGameNameBytes();

    String getGameSrc();

    ByteString getGameSrcBytes();
}
