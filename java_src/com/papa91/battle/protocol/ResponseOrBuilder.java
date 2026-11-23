package com.papa91.battle.protocol;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface ResponseOrBuilder extends MessageOrBuilder {
    AreaOnlinePeopleCount getAreaOnlinePeopleCount();

    AreaOnlinePeopleCountOrBuilder getAreaOnlinePeopleCountOrBuilder();

    String getBattleScore();

    ByteString getBattleScoreBytes();

    Response.BroadcastChannel getBroadcastChannel();

    int getBroadcastChannelValue();

    int getBroadcastUsers(int i10);

    int getBroadcastUsersCount();

    List<Integer> getBroadcastUsersList();

    String getEndDelimiter();

    ByteString getEndDelimiterBytes();

    String getError();

    ByteString getErrorBytes();

    FrameForwardServer getFrameForwardServer();

    FrameForwardServerOrBuilder getFrameForwardServerOrBuilder();

    String getJoinSpectatorReason();

    ByteString getJoinSpectatorReasonBytes();

    KickInfo getKickInfo();

    KickInfoOrBuilder getKickInfoOrBuilder();

    Response.LogicErrorCode getLogicErrorCode();

    int getLogicErrorCodeValue();

    Notification getNotification();

    NotificationOrBuilder getNotificationOrBuilder();

    Pong getPong();

    PongOrBuilder getPongOrBuilder();

    long getRequestId();

    Response getResponse();

    ResponseOrBuilder getResponseOrBuilder();

    GameRoom getRoom();

    RoomCounter getRoomCounter();

    RoomCounterOrBuilder getRoomCounterOrBuilder();

    GameRoomOrBuilder getRoomOrBuilder();

    SimpleRoom getSimpleRoom(int i10);

    int getSimpleRoomCount();

    List<SimpleRoom> getSimpleRoomList();

    SimpleRoomOrBuilder getSimpleRoomOrBuilder(int i10);

    List<? extends SimpleRoomOrBuilder> getSimpleRoomOrBuilderList();

    Response.StatusCode getStatusCode();

    int getStatusCodeValue();

    Response.ProtoType getType();

    int getTypeValue();

    UserProfile getUserProfile();

    UserProfileOrBuilder getUserProfileOrBuilder();

    boolean hasAreaOnlinePeopleCount();

    boolean hasFrameForwardServer();

    boolean hasKickInfo();

    boolean hasNotification();

    boolean hasPong();

    boolean hasResponse();

    boolean hasRoom();

    boolean hasRoomCounter();

    boolean hasUserProfile();
}
