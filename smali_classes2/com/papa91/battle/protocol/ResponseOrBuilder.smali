.class public interface abstract Lcom/papa91/battle/protocol/ResponseOrBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# virtual methods
.method public abstract getAreaOnlinePeopleCount()Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;
.end method

.method public abstract getAreaOnlinePeopleCountOrBuilder()Lcom/papa91/battle/protocol/AreaOnlinePeopleCountOrBuilder;
.end method

.method public abstract getBattleScore()Ljava/lang/String;
.end method

.method public abstract getBattleScoreBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getBroadcastChannel()Lcom/papa91/battle/protocol/Response$BroadcastChannel;
.end method

.method public abstract getBroadcastChannelValue()I
.end method

.method public abstract getBroadcastUsers(I)I
.end method

.method public abstract getBroadcastUsersCount()I
.end method

.method public abstract getBroadcastUsersList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEndDelimiter()Ljava/lang/String;
.end method

.method public abstract getEndDelimiterBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getError()Ljava/lang/String;
.end method

.method public abstract getErrorBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getFrameForwardServer()Lcom/papa91/battle/protocol/FrameForwardServer;
.end method

.method public abstract getFrameForwardServerOrBuilder()Lcom/papa91/battle/protocol/FrameForwardServerOrBuilder;
.end method

.method public abstract getJoinSpectatorReason()Ljava/lang/String;
.end method

.method public abstract getJoinSpectatorReasonBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getKickInfo()Lcom/papa91/battle/protocol/KickInfo;
.end method

.method public abstract getKickInfoOrBuilder()Lcom/papa91/battle/protocol/KickInfoOrBuilder;
.end method

.method public abstract getLogicErrorCode()Lcom/papa91/battle/protocol/Response$LogicErrorCode;
.end method

.method public abstract getLogicErrorCodeValue()I
.end method

.method public abstract getNotification()Lcom/papa91/battle/protocol/Notification;
.end method

.method public abstract getNotificationOrBuilder()Lcom/papa91/battle/protocol/NotificationOrBuilder;
.end method

.method public abstract getPong()Lcom/papa91/battle/protocol/Pong;
.end method

.method public abstract getPongOrBuilder()Lcom/papa91/battle/protocol/PongOrBuilder;
.end method

.method public abstract getRequestId()J
.end method

.method public abstract getResponse()Lcom/papa91/battle/protocol/Response;
.end method

.method public abstract getResponseOrBuilder()Lcom/papa91/battle/protocol/ResponseOrBuilder;
.end method

.method public abstract getRoom()Lcom/papa91/battle/protocol/GameRoom;
.end method

.method public abstract getRoomCounter()Lcom/papa91/battle/protocol/RoomCounter;
.end method

.method public abstract getRoomCounterOrBuilder()Lcom/papa91/battle/protocol/RoomCounterOrBuilder;
.end method

.method public abstract getRoomOrBuilder()Lcom/papa91/battle/protocol/GameRoomOrBuilder;
.end method

.method public abstract getSimpleRoom(I)Lcom/papa91/battle/protocol/SimpleRoom;
.end method

.method public abstract getSimpleRoomCount()I
.end method

.method public abstract getSimpleRoomList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/papa91/battle/protocol/SimpleRoom;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSimpleRoomOrBuilder(I)Lcom/papa91/battle/protocol/SimpleRoomOrBuilder;
.end method

.method public abstract getSimpleRoomOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/papa91/battle/protocol/SimpleRoomOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStatusCode()Lcom/papa91/battle/protocol/Response$StatusCode;
.end method

.method public abstract getStatusCodeValue()I
.end method

.method public abstract getType()Lcom/papa91/battle/protocol/Response$ProtoType;
.end method

.method public abstract getTypeValue()I
.end method

.method public abstract getUserProfile()Lcom/papa91/battle/protocol/UserProfile;
.end method

.method public abstract getUserProfileOrBuilder()Lcom/papa91/battle/protocol/UserProfileOrBuilder;
.end method

.method public abstract hasAreaOnlinePeopleCount()Z
.end method

.method public abstract hasFrameForwardServer()Z
.end method

.method public abstract hasKickInfo()Z
.end method

.method public abstract hasNotification()Z
.end method

.method public abstract hasPong()Z
.end method

.method public abstract hasResponse()Z
.end method

.method public abstract hasRoom()Z
.end method

.method public abstract hasRoomCounter()Z
.end method

.method public abstract hasUserProfile()Z
.end method
