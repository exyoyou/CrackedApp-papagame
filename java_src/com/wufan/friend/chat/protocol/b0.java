package com.wufan.friend.chat.protocol;

import com.google.protobuf.MessageOrBuilder;

/* JADX INFO: loaded from: classes8.dex */
public interface b0 extends MessageOrBuilder {
    boolean getAck();

    AllFriendNotification getAllFrdNotification();

    c getAllFrdNotificationOrBuilder();

    AllOnlineFriendNotification getAllFriendNotification();

    d getAllFriendNotificationOrBuilder();

    ChatMessageNotification getChatMsgNotification();

    g getChatMsgNotificationOrBuilder();

    DialogNotification getDialog();

    i getDialogOrBuilder();

    FriendAddReqNotification getFriAddReqNotification();

    j getFriAddReqNotificationOrBuilder();

    FriendAddSuccessNotification getFriendAddSuccessNotification();

    k getFriendAddSuccessNotificationOrBuilder();

    FriendChangeStateNotification getFriendChangeState();

    m getFriendChangeStateOrBuilder();

    FriendDeleteSuccessNotification getFriendDeleteSuccess();

    n getFriendDeleteSuccessOrBuilder();

    FriendChangePlayStateNotification getFriendPlayState();

    l getFriendPlayStateOrBuilder();

    AccountInfo getFromAccount();

    a getFromAccountOrBuilder();

    GameInviteNotification getGameInvite();

    r getGameInviteOrBuilder();

    KickNotification getKickNotification();

    u getKickNotificationOrBuilder();

    LeaveRoomNotification getLeaveRoomNotification();

    v getLeaveRoomNotificationOrBuilder();

    long getMessageId();

    PlayerBannedNotification getPlayerBanned();

    f0 getPlayerBannedOrBuilder();

    PopWindowNotification getPopWindow();

    g0 getPopWindowOrBuilder();

    RecommendPlayerStateChangeNotification getRecommendPlayerStateChange();

    k0 getRecommendPlayerStateChangeOrBuilder();

    RejectBattleInviteNotification getRejectBattleInviteNotification();

    l0 getRejectBattleInviteNotificationOrBuilder();

    long getSendTimestamp();

    boolean hasAllFrdNotification();

    boolean hasAllFriendNotification();

    boolean hasChatMsgNotification();

    boolean hasDialog();

    boolean hasFriAddReqNotification();

    boolean hasFriendAddSuccessNotification();

    boolean hasFriendChangeState();

    boolean hasFriendDeleteSuccess();

    boolean hasFriendPlayState();

    boolean hasFromAccount();

    boolean hasGameInvite();

    boolean hasKickNotification();

    boolean hasLeaveRoomNotification();

    boolean hasPlayerBanned();

    boolean hasPopWindow();

    boolean hasRecommendPlayerStateChange();

    boolean hasRejectBattleInviteNotification();
}
