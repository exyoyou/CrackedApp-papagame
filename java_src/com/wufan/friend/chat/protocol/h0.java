package com.wufan.friend.chat.protocol;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public interface h0 extends MessageOrBuilder {
    long getGameId();

    String getGameSeries();

    ByteString getGameSeriesBytes();

    long getLocalDownloadGameIds(int index);

    int getLocalDownloadGameIdsCount();

    List<Long> getLocalDownloadGameIdsList();

    RecommendPlayerArgs.FriendLocationPageType getLocationPageType();

    int getLocationPageTypeValue();
}
