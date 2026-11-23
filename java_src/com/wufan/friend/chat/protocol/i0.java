package com.wufan.friend.chat.protocol;

import com.google.protobuf.MessageOrBuilder;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public interface i0 extends MessageOrBuilder {
    RecommendPlayer getRecommendPlayer(int index);

    int getRecommendPlayerCount();

    List<RecommendPlayer> getRecommendPlayerList();

    j0 getRecommendPlayerOrBuilder(int index);

    List<? extends j0> getRecommendPlayerOrBuilderList();
}
