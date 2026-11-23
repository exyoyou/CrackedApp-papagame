package com.wufan.friend.chat.protocol;

import com.google.protobuf.MessageOrBuilder;

/* JADX INFO: loaded from: classes8.dex */
public interface o0 extends MessageOrBuilder {
    ChatMessageMuteData getChatMessageMuteData();

    f getChatMessageMuteDataOrBuilder();

    LocalBattleGameData getLocalBattleGameData();

    w getLocalBattleGameDataOrBuilder();

    LoginData getLoginData();

    z getLoginDataOrBuilder();

    NotificationData getNotification();

    b0 getNotificationOrBuilder();

    RecommendPlayerData getRecommendPlayerData();

    i0 getRecommendPlayerDataOrBuilder();

    boolean hasChatMessageMuteData();

    boolean hasLocalBattleGameData();

    boolean hasLoginData();

    boolean hasNotification();

    boolean hasRecommendPlayerData();
}
