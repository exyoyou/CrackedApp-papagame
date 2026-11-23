package com.wufan.friend.chat.protocol;

import com.google.protobuf.MessageOrBuilder;

/* JADX INFO: loaded from: classes8.dex */
public interface m0 extends MessageOrBuilder {
    AckArgs getAckArgs();

    b getAckArgsOrBuilder();

    ChatMessageArgs getChatMessageArgs();

    e getChatMessageArgsOrBuilder();

    ChatRoomArgs getChatRoomArgs();

    h getChatRoomArgsOrBuilder();

    GameInviteArgs getGameInviteArgs();

    q getGameInviteArgsOrBuilder();

    HeartArgs getHeartArgs();

    t getHeartArgsOrBuilder();

    GetLocalBattleGameArgs getLocalBattleGameArgs();

    s getLocalBattleGameArgsOrBuilder();

    LoginArgs getLoginArgs();

    y getLoginArgsOrBuilder();

    PlayGameArgs getPlayGameArgs();

    d0 getPlayGameArgsOrBuilder();

    RecommendPlayerArgs getRecommendPlayerArgs();

    h0 getRecommendPlayerArgsOrBuilder();

    OnlineStateArgs getStateArgs();

    c0 getStateArgsOrBuilder();

    boolean hasAckArgs();

    boolean hasChatMessageArgs();

    boolean hasChatRoomArgs();

    boolean hasGameInviteArgs();

    boolean hasHeartArgs();

    boolean hasLocalBattleGameArgs();

    boolean hasLoginArgs();

    boolean hasPlayGameArgs();

    boolean hasRecommendPlayerArgs();

    boolean hasStateArgs();
}
