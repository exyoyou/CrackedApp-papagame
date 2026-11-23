.class public final Lcom/papa91/battle/protocol/Response$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/papa91/battle/protocol/ResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/battle/protocol/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/papa91/battle/protocol/Response$Builder;",
        ">;",
        "Lcom/papa91/battle/protocol/ResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private areaOnlinePeopleCountBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;",
            "Lcom/papa91/battle/protocol/AreaOnlinePeopleCount$Builder;",
            "Lcom/papa91/battle/protocol/AreaOnlinePeopleCountOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private areaOnlinePeopleCount_:Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

.field private battleScore_:Ljava/lang/Object;

.field private bitField0_:I

.field private broadcastChannel_:I

.field private broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

.field private endDelimiter_:Ljava/lang/Object;

.field private error_:Ljava/lang/Object;

.field private frameForwardServerBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/papa91/battle/protocol/FrameForwardServer;",
            "Lcom/papa91/battle/protocol/FrameForwardServer$Builder;",
            "Lcom/papa91/battle/protocol/FrameForwardServerOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private frameForwardServer_:Lcom/papa91/battle/protocol/FrameForwardServer;

.field private joinSpectatorReason_:Ljava/lang/Object;

.field private kickInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/papa91/battle/protocol/KickInfo;",
            "Lcom/papa91/battle/protocol/KickInfo$Builder;",
            "Lcom/papa91/battle/protocol/KickInfoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private kickInfo_:Lcom/papa91/battle/protocol/KickInfo;

.field private logicErrorCode_:I

.field private notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/papa91/battle/protocol/Notification;",
            "Lcom/papa91/battle/protocol/Notification$Builder;",
            "Lcom/papa91/battle/protocol/NotificationOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private notification_:Lcom/papa91/battle/protocol/Notification;

.field private pongBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/papa91/battle/protocol/Pong;",
            "Lcom/papa91/battle/protocol/Pong$Builder;",
            "Lcom/papa91/battle/protocol/PongOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private pong_:Lcom/papa91/battle/protocol/Pong;

.field private requestId_:J

.field private responseBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/papa91/battle/protocol/Response;",
            "Lcom/papa91/battle/protocol/Response$Builder;",
            "Lcom/papa91/battle/protocol/ResponseOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private response_:Lcom/papa91/battle/protocol/Response;

.field private roomBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/papa91/battle/protocol/GameRoom;",
            "Lcom/papa91/battle/protocol/GameRoom$Builder;",
            "Lcom/papa91/battle/protocol/GameRoomOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private roomCounterBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/papa91/battle/protocol/RoomCounter;",
            "Lcom/papa91/battle/protocol/RoomCounter$Builder;",
            "Lcom/papa91/battle/protocol/RoomCounterOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private roomCounter_:Lcom/papa91/battle/protocol/RoomCounter;

.field private room_:Lcom/papa91/battle/protocol/GameRoom;

.field private simpleRoomBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/papa91/battle/protocol/SimpleRoom;",
            "Lcom/papa91/battle/protocol/SimpleRoom$Builder;",
            "Lcom/papa91/battle/protocol/SimpleRoomOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private simpleRoom_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/papa91/battle/protocol/SimpleRoom;",
            ">;"
        }
    .end annotation
.end field

.field private statusCode_:I

.field private type_:I

.field private userProfileBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/papa91/battle/protocol/UserProfile;",
            "Lcom/papa91/battle/protocol/UserProfile$Builder;",
            "Lcom/papa91/battle/protocol/UserProfileOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private userProfile_:Lcom/papa91/battle/protocol/UserProfile;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->statusCode_:I

    .line 5
    iput v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->type_:I

    .line 6
    invoke-static {}, Lcom/papa91/battle/protocol/Response;->access$2800()Lcom/google/protobuf/Internal$IntList;

    move-result-object v1

    iput-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    const-string v1, ""

    .line 7
    iput-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->error_:Ljava/lang/Object;

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoom_:Ljava/util/List;

    .line 9
    iput v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->logicErrorCode_:I

    .line 10
    iput-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->joinSpectatorReason_:Ljava/lang/Object;

    .line 11
    iput v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->broadcastChannel_:I

    .line 12
    iput-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->endDelimiter_:Ljava/lang/Object;

    .line 13
    iput-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->battleScore_:Ljava/lang/Object;

    .line 14
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 2

    .line 15
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->statusCode_:I

    .line 17
    iput p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->type_:I

    .line 18
    invoke-static {}, Lcom/papa91/battle/protocol/Response;->access$2800()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->error_:Ljava/lang/Object;

    .line 20
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoom_:Ljava/util/List;

    .line 21
    iput p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->logicErrorCode_:I

    .line 22
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->joinSpectatorReason_:Ljava/lang/Object;

    .line 23
    iput p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->broadcastChannel_:I

    .line 24
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->endDelimiter_:Ljava/lang/Object;

    .line 25
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->battleScore_:Ljava/lang/Object;

    .line 26
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/papa91/battle/protocol/Response$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Response$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/papa91/battle/protocol/Response$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response$Builder;-><init>()V

    return-void
.end method

.method private ensureBroadcastUsersIsMutable()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/papa91/battle/protocol/Response;->access$2900(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    .line 14
    .line 15
    iget v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->bitField0_:I

    .line 16
    .line 17
    or-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    iput v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->bitField0_:I

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method private ensureSimpleRoomIsMutable()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoom_:Ljava/util/List;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoom_:Ljava/util/List;

    .line 15
    .line 16
    iget v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->bitField0_:I

    .line 17
    .line 18
    or-int/lit8 v0, v0, 0x2

    .line 19
    .line 20
    iput v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->bitField0_:I

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private getAreaOnlinePeopleCountFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;",
            "Lcom/papa91/battle/protocol/AreaOnlinePeopleCount$Builder;",
            "Lcom/papa91/battle/protocol/AreaOnlinePeopleCountOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->areaOnlinePeopleCountBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response$Builder;->getAreaOnlinePeopleCount()Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->areaOnlinePeopleCountBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->areaOnlinePeopleCount_:Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->areaOnlinePeopleCountBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_Response_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method private getFrameForwardServerFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/papa91/battle/protocol/FrameForwardServer;",
            "Lcom/papa91/battle/protocol/FrameForwardServer$Builder;",
            "Lcom/papa91/battle/protocol/FrameForwardServerOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->frameForwardServerBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response$Builder;->getFrameForwardServer()Lcom/papa91/battle/protocol/FrameForwardServer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->frameForwardServerBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->frameForwardServer_:Lcom/papa91/battle/protocol/FrameForwardServer;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->frameForwardServerBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getKickInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/papa91/battle/protocol/KickInfo;",
            "Lcom/papa91/battle/protocol/KickInfo$Builder;",
            "Lcom/papa91/battle/protocol/KickInfoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->kickInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response$Builder;->getKickInfo()Lcom/papa91/battle/protocol/KickInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->kickInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->kickInfo_:Lcom/papa91/battle/protocol/KickInfo;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->kickInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getNotificationFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/papa91/battle/protocol/Notification;",
            "Lcom/papa91/battle/protocol/Notification$Builder;",
            "Lcom/papa91/battle/protocol/NotificationOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response$Builder;->getNotification()Lcom/papa91/battle/protocol/Notification;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->notification_:Lcom/papa91/battle/protocol/Notification;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getPongFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/papa91/battle/protocol/Pong;",
            "Lcom/papa91/battle/protocol/Pong$Builder;",
            "Lcom/papa91/battle/protocol/PongOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->pongBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response$Builder;->getPong()Lcom/papa91/battle/protocol/Pong;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->pongBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->pong_:Lcom/papa91/battle/protocol/Pong;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->pongBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getResponseFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/papa91/battle/protocol/Response;",
            "Lcom/papa91/battle/protocol/Response$Builder;",
            "Lcom/papa91/battle/protocol/ResponseOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->responseBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response$Builder;->getResponse()Lcom/papa91/battle/protocol/Response;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->responseBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->response_:Lcom/papa91/battle/protocol/Response;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->responseBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getRoomCounterFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/papa91/battle/protocol/RoomCounter;",
            "Lcom/papa91/battle/protocol/RoomCounter$Builder;",
            "Lcom/papa91/battle/protocol/RoomCounterOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->roomCounterBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response$Builder;->getRoomCounter()Lcom/papa91/battle/protocol/RoomCounter;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->roomCounterBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->roomCounter_:Lcom/papa91/battle/protocol/RoomCounter;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->roomCounterBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getRoomFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/papa91/battle/protocol/GameRoom;",
            "Lcom/papa91/battle/protocol/GameRoom$Builder;",
            "Lcom/papa91/battle/protocol/GameRoomOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->roomBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response$Builder;->getRoom()Lcom/papa91/battle/protocol/GameRoom;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->roomBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->room_:Lcom/papa91/battle/protocol/GameRoom;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->roomBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getSimpleRoomFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/papa91/battle/protocol/SimpleRoom;",
            "Lcom/papa91/battle/protocol/SimpleRoom$Builder;",
            "Lcom/papa91/battle/protocol/SimpleRoomOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoomBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoom_:Ljava/util/List;

    .line 8
    .line 9
    iget v2, p0, Lcom/papa91/battle/protocol/Response$Builder;->bitField0_:I

    .line 10
    .line 11
    and-int/lit8 v2, v2, 0x2

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v2, 0x0

    .line 18
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoomBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoom_:Ljava/util/List;

    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoomBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 35
    .line 36
    return-object v0
.end method

.method private getUserProfileFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/papa91/battle/protocol/UserProfile;",
            "Lcom/papa91/battle/protocol/UserProfile$Builder;",
            "Lcom/papa91/battle/protocol/UserProfileOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->userProfileBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response$Builder;->getUserProfile()Lcom/papa91/battle/protocol/UserProfile;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->userProfileBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->userProfile_:Lcom/papa91/battle/protocol/UserProfile;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->userProfileBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Response;->access$200()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response$Builder;->getSimpleRoomFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllBroadcastUsers(Ljava/lang/Iterable;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/papa91/battle/protocol/Response$Builder;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response$Builder;->ensureBroadcastUsersIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public addAllSimpleRoom(Ljava/lang/Iterable;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/papa91/battle/protocol/SimpleRoom;",
            ">;)",
            "Lcom/papa91/battle/protocol/Response$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoomBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response$Builder;->ensureSimpleRoomIsMutable()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoom_:Ljava/util/List;

    .line 9
    .line 10
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 18
    .line 19
    .line 20
    :goto_0
    return-object p0
.end method

.method public addBroadcastUsers(I)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response$Builder;->ensureBroadcastUsersIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/Response$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/papa91/battle/protocol/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/Response$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/papa91/battle/protocol/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Response$Builder;

    return-object p1
.end method

.method public addSimpleRoom(ILcom/papa91/battle/protocol/SimpleRoom$Builder;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoomBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response$Builder;->ensureSimpleRoomIsMutable()V

    .line 20
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoom_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->build()Lcom/papa91/battle/protocol/SimpleRoom;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->build()Lcom/papa91/battle/protocol/SimpleRoom;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addSimpleRoom(ILcom/papa91/battle/protocol/SimpleRoom;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoomBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response$Builder;->ensureSimpleRoomIsMutable()V

    .line 10
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoom_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addSimpleRoom(Lcom/papa91/battle/protocol/SimpleRoom$Builder;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoomBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 14
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response$Builder;->ensureSimpleRoomIsMutable()V

    .line 15
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoom_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->build()Lcom/papa91/battle/protocol/SimpleRoom;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->build()Lcom/papa91/battle/protocol/SimpleRoom;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addSimpleRoom(Lcom/papa91/battle/protocol/SimpleRoom;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoomBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response$Builder;->ensureSimpleRoomIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoom_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addSimpleRoomBuilder()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response$Builder;->getSimpleRoomFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/papa91/battle/protocol/SimpleRoom;->getDefaultInstance()Lcom/papa91/battle/protocol/SimpleRoom;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    return-object v0
.end method

.method public addSimpleRoomBuilder(I)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 2

    .line 4
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response$Builder;->getSimpleRoomFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/papa91/battle/protocol/SimpleRoom;->getDefaultInstance()Lcom/papa91/battle/protocol/SimpleRoom;

    move-result-object v1

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response$Builder;->build()Lcom/papa91/battle/protocol/Response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response$Builder;->build()Lcom/papa91/battle/protocol/Response;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/papa91/battle/protocol/Response;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response$Builder;->buildPartial()Lcom/papa91/battle/protocol/Response;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Response;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response$Builder;->buildPartial()Lcom/papa91/battle/protocol/Response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response$Builder;->buildPartial()Lcom/papa91/battle/protocol/Response;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/papa91/battle/protocol/Response;
    .locals 3

    .line 3
    new-instance v0, Lcom/papa91/battle/protocol/Response;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/papa91/battle/protocol/Response;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/papa91/battle/protocol/Response$1;)V

    .line 4
    iget v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->statusCode_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Response;->access$502(Lcom/papa91/battle/protocol/Response;I)I

    .line 5
    iget-wide v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->requestId_:J

    invoke-static {v0, v1, v2}, Lcom/papa91/battle/protocol/Response;->access$602(Lcom/papa91/battle/protocol/Response;J)J

    .line 6
    iget v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->type_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Response;->access$702(Lcom/papa91/battle/protocol/Response;I)I

    .line 7
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->roomBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->room_:Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Response;->access$802(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/GameRoom;)Lcom/papa91/battle/protocol/GameRoom;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/papa91/battle/protocol/GameRoom;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Response;->access$802(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/GameRoom;)Lcom/papa91/battle/protocol/GameRoom;

    .line 10
    :goto_0
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->responseBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_1

    .line 11
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->response_:Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Response;->access$902(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/Response;)Lcom/papa91/battle/protocol/Response;

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/papa91/battle/protocol/Response;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Response;->access$902(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/Response;)Lcom/papa91/battle/protocol/Response;

    .line 13
    :goto_1
    iget v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 14
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v1}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 15
    iget v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->bitField0_:I

    .line 16
    :cond_2
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Response;->access$1002(Lcom/papa91/battle/protocol/Response;Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    .line 17
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->error_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Response;->access$1102(Lcom/papa91/battle/protocol/Response;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoomBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_4

    .line 19
    iget v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 20
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoom_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoom_:Ljava/util/List;

    .line 21
    iget v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->bitField0_:I

    .line 22
    :cond_3
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoom_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Response;->access$1202(Lcom/papa91/battle/protocol/Response;Ljava/util/List;)Ljava/util/List;

    goto :goto_2

    .line 23
    :cond_4
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Response;->access$1202(Lcom/papa91/battle/protocol/Response;Ljava/util/List;)Ljava/util/List;

    .line 24
    :goto_2
    iget v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->logicErrorCode_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Response;->access$1302(Lcom/papa91/battle/protocol/Response;I)I

    .line 25
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->joinSpectatorReason_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Response;->access$1402(Lcom/papa91/battle/protocol/Response;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->pongBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_5

    .line 27
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->pong_:Lcom/papa91/battle/protocol/Pong;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Response;->access$1502(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/Pong;)Lcom/papa91/battle/protocol/Pong;

    goto :goto_3

    .line 28
    :cond_5
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/papa91/battle/protocol/Pong;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Response;->access$1502(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/Pong;)Lcom/papa91/battle/protocol/Pong;

    .line 29
    :goto_3
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->roomCounterBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_6

    .line 30
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->roomCounter_:Lcom/papa91/battle/protocol/RoomCounter;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Response;->access$1602(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/RoomCounter;)Lcom/papa91/battle/protocol/RoomCounter;

    goto :goto_4

    .line 31
    :cond_6
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/papa91/battle/protocol/RoomCounter;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Response;->access$1602(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/RoomCounter;)Lcom/papa91/battle/protocol/RoomCounter;

    .line 32
    :goto_4
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->kickInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_7

    .line 33
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->kickInfo_:Lcom/papa91/battle/protocol/KickInfo;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Response;->access$1702(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/KickInfo;)Lcom/papa91/battle/protocol/KickInfo;

    goto :goto_5

    .line 34
    :cond_7
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/papa91/battle/protocol/KickInfo;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Response;->access$1702(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/KickInfo;)Lcom/papa91/battle/protocol/KickInfo;

    .line 35
    :goto_5
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_8

    .line 36
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->notification_:Lcom/papa91/battle/protocol/Notification;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Response;->access$1802(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/Notification;)Lcom/papa91/battle/protocol/Notification;

    goto :goto_6

    .line 37
    :cond_8
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/papa91/battle/protocol/Notification;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Response;->access$1802(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/Notification;)Lcom/papa91/battle/protocol/Notification;

    .line 38
    :goto_6
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->frameForwardServerBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_9

    .line 39
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->frameForwardServer_:Lcom/papa91/battle/protocol/FrameForwardServer;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Response;->access$1902(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/FrameForwardServer;)Lcom/papa91/battle/protocol/FrameForwardServer;

    goto :goto_7

    .line 40
    :cond_9
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/papa91/battle/protocol/FrameForwardServer;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Response;->access$1902(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/FrameForwardServer;)Lcom/papa91/battle/protocol/FrameForwardServer;

    .line 41
    :goto_7
    iget v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->broadcastChannel_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Response;->access$2002(Lcom/papa91/battle/protocol/Response;I)I

    .line 42
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->areaOnlinePeopleCountBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_a

    .line 43
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->areaOnlinePeopleCount_:Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Response;->access$2102(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;)Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    goto :goto_8

    .line 44
    :cond_a
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Response;->access$2102(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;)Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    .line 45
    :goto_8
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->userProfileBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_b

    .line 46
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->userProfile_:Lcom/papa91/battle/protocol/UserProfile;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Response;->access$2202(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/UserProfile;)Lcom/papa91/battle/protocol/UserProfile;

    goto :goto_9

    .line 47
    :cond_b
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/papa91/battle/protocol/UserProfile;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Response;->access$2202(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/UserProfile;)Lcom/papa91/battle/protocol/UserProfile;

    .line 48
    :goto_9
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->endDelimiter_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Response;->access$2302(Lcom/papa91/battle/protocol/Response;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->battleScore_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Response;->access$2402(Lcom/papa91/battle/protocol/Response;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response$Builder;->clear()Lcom/papa91/battle/protocol/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response$Builder;->clear()Lcom/papa91/battle/protocol/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response$Builder;->clear()Lcom/papa91/battle/protocol/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response$Builder;->clear()Lcom/papa91/battle/protocol/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/papa91/battle/protocol/Response$Builder;
    .locals 4

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->statusCode_:I

    const-wide/16 v1, 0x0

    .line 7
    iput-wide v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->requestId_:J

    .line 8
    iput v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->type_:I

    .line 9
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->roomBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 10
    iput-object v2, p0, Lcom/papa91/battle/protocol/Response$Builder;->room_:Lcom/papa91/battle/protocol/GameRoom;

    goto :goto_0

    .line 11
    :cond_0
    iput-object v2, p0, Lcom/papa91/battle/protocol/Response$Builder;->room_:Lcom/papa91/battle/protocol/GameRoom;

    .line 12
    iput-object v2, p0, Lcom/papa91/battle/protocol/Response$Builder;->roomBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 13
    :goto_0
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->responseBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_1

    .line 14
    iput-object v2, p0, Lcom/papa91/battle/protocol/Response$Builder;->response_:Lcom/papa91/battle/protocol/Response;

    goto :goto_1

    .line 15
    :cond_1
    iput-object v2, p0, Lcom/papa91/battle/protocol/Response$Builder;->response_:Lcom/papa91/battle/protocol/Response;

    .line 16
    iput-object v2, p0, Lcom/papa91/battle/protocol/Response$Builder;->responseBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 17
    :goto_1
    invoke-static {}, Lcom/papa91/battle/protocol/Response;->access$300()Lcom/google/protobuf/Internal$IntList;

    move-result-object v1

    iput-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    .line 18
    iget v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->bitField0_:I

    const-string v1, ""

    .line 19
    iput-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->error_:Ljava/lang/Object;

    .line 20
    iget-object v3, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoomBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v3, :cond_2

    .line 21
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoom_:Ljava/util/List;

    .line 22
    iget v3, p0, Lcom/papa91/battle/protocol/Response$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/papa91/battle/protocol/Response$Builder;->bitField0_:I

    goto :goto_2

    .line 23
    :cond_2
    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 24
    :goto_2
    iput v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->logicErrorCode_:I

    .line 25
    iput-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->joinSpectatorReason_:Ljava/lang/Object;

    .line 26
    iget-object v3, p0, Lcom/papa91/battle/protocol/Response$Builder;->pongBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v3, :cond_3

    .line 27
    iput-object v2, p0, Lcom/papa91/battle/protocol/Response$Builder;->pong_:Lcom/papa91/battle/protocol/Pong;

    goto :goto_3

    .line 28
    :cond_3
    iput-object v2, p0, Lcom/papa91/battle/protocol/Response$Builder;->pong_:Lcom/papa91/battle/protocol/Pong;

    .line 29
    iput-object v2, p0, Lcom/papa91/battle/protocol/Response$Builder;->pongBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 30
    :goto_3
    iget-object v3, p0, Lcom/papa91/battle/protocol/Response$Builder;->roomCounterBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v3, :cond_4

    .line 31
    iput-object v2, p0, Lcom/papa91/battle/protocol/Response$Builder;->roomCounter_:Lcom/papa91/battle/protocol/RoomCounter;

    goto :goto_4

    .line 32
    :cond_4
    iput-object v2, p0, Lcom/papa91/battle/protocol/Response$Builder;->roomCounter_:Lcom/papa91/battle/protocol/RoomCounter;

    .line 33
    iput-object v2, p0, Lcom/papa91/battle/protocol/Response$Builder;->roomCounterBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 34
    :goto_4
    iget-object v3, p0, Lcom/papa91/battle/protocol/Response$Builder;->kickInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v3, :cond_5

    .line 35
    iput-object v2, p0, Lcom/papa91/battle/protocol/Response$Builder;->kickInfo_:Lcom/papa91/battle/protocol/KickInfo;

    goto :goto_5

    .line 36
    :cond_5
    iput-object v2, p0, Lcom/papa91/battle/protocol/Response$Builder;->kickInfo_:Lcom/papa91/battle/protocol/KickInfo;

    .line 37
    iput-object v2, p0, Lcom/papa91/battle/protocol/Response$Builder;->kickInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 38
    :goto_5
    iget-object v3, p0, Lcom/papa91/battle/protocol/Response$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v3, :cond_6

    .line 39
    iput-object v2, p0, Lcom/papa91/battle/protocol/Response$Builder;->notification_:Lcom/papa91/battle/protocol/Notification;

    goto :goto_6

    .line 40
    :cond_6
    iput-object v2, p0, Lcom/papa91/battle/protocol/Response$Builder;->notification_:Lcom/papa91/battle/protocol/Notification;

    .line 41
    iput-object v2, p0, Lcom/papa91/battle/protocol/Response$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 42
    :goto_6
    iget-object v3, p0, Lcom/papa91/battle/protocol/Response$Builder;->frameForwardServerBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v3, :cond_7

    .line 43
    iput-object v2, p0, Lcom/papa91/battle/protocol/Response$Builder;->frameForwardServer_:Lcom/papa91/battle/protocol/FrameForwardServer;

    goto :goto_7

    .line 44
    :cond_7
    iput-object v2, p0, Lcom/papa91/battle/protocol/Response$Builder;->frameForwardServer_:Lcom/papa91/battle/protocol/FrameForwardServer;

    .line 45
    iput-object v2, p0, Lcom/papa91/battle/protocol/Response$Builder;->frameForwardServerBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 46
    :goto_7
    iput v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->broadcastChannel_:I

    .line 47
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->areaOnlinePeopleCountBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_8

    .line 48
    iput-object v2, p0, Lcom/papa91/battle/protocol/Response$Builder;->areaOnlinePeopleCount_:Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    goto :goto_8

    .line 49
    :cond_8
    iput-object v2, p0, Lcom/papa91/battle/protocol/Response$Builder;->areaOnlinePeopleCount_:Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    .line 50
    iput-object v2, p0, Lcom/papa91/battle/protocol/Response$Builder;->areaOnlinePeopleCountBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 51
    :goto_8
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->userProfileBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_9

    .line 52
    iput-object v2, p0, Lcom/papa91/battle/protocol/Response$Builder;->userProfile_:Lcom/papa91/battle/protocol/UserProfile;

    goto :goto_9

    .line 53
    :cond_9
    iput-object v2, p0, Lcom/papa91/battle/protocol/Response$Builder;->userProfile_:Lcom/papa91/battle/protocol/UserProfile;

    .line 54
    iput-object v2, p0, Lcom/papa91/battle/protocol/Response$Builder;->userProfileBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 55
    :goto_9
    iput-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->endDelimiter_:Ljava/lang/Object;

    .line 56
    iput-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->battleScore_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearAreaOnlinePeopleCount()Lcom/papa91/battle/protocol/Response$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->areaOnlinePeopleCountBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->areaOnlinePeopleCount_:Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->areaOnlinePeopleCount_:Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->areaOnlinePeopleCountBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearBattleScore()Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Response;->getDefaultInstance()Lcom/papa91/battle/protocol/Response;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Response;->getBattleScore()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->battleScore_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearBroadcastChannel()Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->broadcastChannel_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearBroadcastUsers()Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Response;->access$3000()Lcom/google/protobuf/Internal$IntList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    .line 6
    .line 7
    iget v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->bitField0_:I

    .line 8
    .line 9
    and-int/lit8 v0, v0, -0x2

    .line 10
    .line 11
    iput v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->bitField0_:I

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 14
    .line 15
    .line 16
    return-object p0
.end method

.method public clearEndDelimiter()Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Response;->getDefaultInstance()Lcom/papa91/battle/protocol/Response;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Response;->getEndDelimiter()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->endDelimiter_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearError()Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Response;->getDefaultInstance()Lcom/papa91/battle/protocol/Response;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Response;->getError()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->error_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Response$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/papa91/battle/protocol/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Response$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/papa91/battle/protocol/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Response$Builder;

    return-object p1
.end method

.method public clearFrameForwardServer()Lcom/papa91/battle/protocol/Response$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->frameForwardServerBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->frameForwardServer_:Lcom/papa91/battle/protocol/FrameForwardServer;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->frameForwardServer_:Lcom/papa91/battle/protocol/FrameForwardServer;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->frameForwardServerBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearJoinSpectatorReason()Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Response;->getDefaultInstance()Lcom/papa91/battle/protocol/Response;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Response;->getJoinSpectatorReason()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->joinSpectatorReason_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearKickInfo()Lcom/papa91/battle/protocol/Response$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->kickInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->kickInfo_:Lcom/papa91/battle/protocol/KickInfo;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->kickInfo_:Lcom/papa91/battle/protocol/KickInfo;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->kickInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearLogicErrorCode()Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->logicErrorCode_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearNotification()Lcom/papa91/battle/protocol/Response$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->notification_:Lcom/papa91/battle/protocol/Notification;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->notification_:Lcom/papa91/battle/protocol/Notification;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Response$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/papa91/battle/protocol/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Response$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/papa91/battle/protocol/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Response$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/papa91/battle/protocol/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Response$Builder;

    return-object p1
.end method

.method public clearPong()Lcom/papa91/battle/protocol/Response$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->pongBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->pong_:Lcom/papa91/battle/protocol/Pong;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->pong_:Lcom/papa91/battle/protocol/Pong;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->pongBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearRequestId()Lcom/papa91/battle/protocol/Response$Builder;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->requestId_:J

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public clearResponse()Lcom/papa91/battle/protocol/Response$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->responseBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->response_:Lcom/papa91/battle/protocol/Response;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->response_:Lcom/papa91/battle/protocol/Response;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->responseBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearRoom()Lcom/papa91/battle/protocol/Response$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->roomBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->room_:Lcom/papa91/battle/protocol/GameRoom;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->room_:Lcom/papa91/battle/protocol/GameRoom;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->roomBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearRoomCounter()Lcom/papa91/battle/protocol/Response$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->roomCounterBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->roomCounter_:Lcom/papa91/battle/protocol/RoomCounter;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->roomCounter_:Lcom/papa91/battle/protocol/RoomCounter;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->roomCounterBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearSimpleRoom()Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoomBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoom_:Ljava/util/List;

    .line 10
    .line 11
    iget v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->bitField0_:I

    .line 12
    .line 13
    and-int/lit8 v0, v0, -0x3

    .line 14
    .line 15
    iput v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->bitField0_:I

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-object p0
.end method

.method public clearStatusCode()Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->statusCode_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearType()Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->type_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearUserProfile()Lcom/papa91/battle/protocol/Response$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->userProfileBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->userProfile_:Lcom/papa91/battle/protocol/UserProfile;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->userProfile_:Lcom/papa91/battle/protocol/UserProfile;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->userProfileBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response$Builder;->clone()Lcom/papa91/battle/protocol/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response$Builder;->clone()Lcom/papa91/battle/protocol/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response$Builder;->clone()Lcom/papa91/battle/protocol/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response$Builder;->clone()Lcom/papa91/battle/protocol/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response$Builder;->clone()Lcom/papa91/battle/protocol/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/papa91/battle/protocol/Response$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response$Builder;->clone()Lcom/papa91/battle/protocol/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAreaOnlinePeopleCount()Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->areaOnlinePeopleCountBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->areaOnlinePeopleCount_:Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;->getDefaultInstance()Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    .line 19
    .line 20
    return-object v0
.end method

.method public getAreaOnlinePeopleCountBuilder()Lcom/papa91/battle/protocol/AreaOnlinePeopleCount$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response$Builder;->getAreaOnlinePeopleCountFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/papa91/battle/protocol/AreaOnlinePeopleCount$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getAreaOnlinePeopleCountOrBuilder()Lcom/papa91/battle/protocol/AreaOnlinePeopleCountOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->areaOnlinePeopleCountBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/papa91/battle/protocol/AreaOnlinePeopleCountOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->areaOnlinePeopleCount_:Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;->getDefaultInstance()Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getBattleScore()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->battleScore_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->battleScore_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Ljava/lang/String;

    .line 17
    .line 18
    return-object v0
.end method

.method public getBattleScoreBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->battleScore_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->battleScore_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getBroadcastChannel()Lcom/papa91/battle/protocol/Response$BroadcastChannel;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->broadcastChannel_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa91/battle/protocol/Response$BroadcastChannel;->valueOf(I)Lcom/papa91/battle/protocol/Response$BroadcastChannel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/papa91/battle/protocol/Response$BroadcastChannel;->UNRECOGNIZED:Lcom/papa91/battle/protocol/Response$BroadcastChannel;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getBroadcastChannelValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->broadcastChannel_:I

    .line 2
    .line 3
    return v0
.end method

.method public getBroadcastUsers(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getBroadcastUsersCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getBroadcastUsersList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    .line 8
    .line 9
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    .line 15
    .line 16
    :goto_0
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response$Builder;->getDefaultInstanceForType()Lcom/papa91/battle/protocol/Response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response$Builder;->getDefaultInstanceForType()Lcom/papa91/battle/protocol/Response;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/papa91/battle/protocol/Response;
    .locals 1

    .line 3
    invoke-static {}, Lcom/papa91/battle/protocol/Response;->getDefaultInstance()Lcom/papa91/battle/protocol/Response;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_Response_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEndDelimiter()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->endDelimiter_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->endDelimiter_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Ljava/lang/String;

    .line 17
    .line 18
    return-object v0
.end method

.method public getEndDelimiterBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->endDelimiter_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->endDelimiter_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->error_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->error_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Ljava/lang/String;

    .line 17
    .line 18
    return-object v0
.end method

.method public getErrorBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->error_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->error_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getFrameForwardServer()Lcom/papa91/battle/protocol/FrameForwardServer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->frameForwardServerBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->frameForwardServer_:Lcom/papa91/battle/protocol/FrameForwardServer;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/papa91/battle/protocol/FrameForwardServer;->getDefaultInstance()Lcom/papa91/battle/protocol/FrameForwardServer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/papa91/battle/protocol/FrameForwardServer;

    .line 19
    .line 20
    return-object v0
.end method

.method public getFrameForwardServerBuilder()Lcom/papa91/battle/protocol/FrameForwardServer$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response$Builder;->getFrameForwardServerFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/papa91/battle/protocol/FrameForwardServer$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getFrameForwardServerOrBuilder()Lcom/papa91/battle/protocol/FrameForwardServerOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->frameForwardServerBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/papa91/battle/protocol/FrameForwardServerOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->frameForwardServer_:Lcom/papa91/battle/protocol/FrameForwardServer;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/papa91/battle/protocol/FrameForwardServer;->getDefaultInstance()Lcom/papa91/battle/protocol/FrameForwardServer;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getJoinSpectatorReason()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->joinSpectatorReason_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->joinSpectatorReason_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Ljava/lang/String;

    .line 17
    .line 18
    return-object v0
.end method

.method public getJoinSpectatorReasonBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->joinSpectatorReason_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->joinSpectatorReason_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getKickInfo()Lcom/papa91/battle/protocol/KickInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->kickInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->kickInfo_:Lcom/papa91/battle/protocol/KickInfo;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/papa91/battle/protocol/KickInfo;->getDefaultInstance()Lcom/papa91/battle/protocol/KickInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/papa91/battle/protocol/KickInfo;

    .line 19
    .line 20
    return-object v0
.end method

.method public getKickInfoBuilder()Lcom/papa91/battle/protocol/KickInfo$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response$Builder;->getKickInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/papa91/battle/protocol/KickInfo$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getKickInfoOrBuilder()Lcom/papa91/battle/protocol/KickInfoOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->kickInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/papa91/battle/protocol/KickInfoOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->kickInfo_:Lcom/papa91/battle/protocol/KickInfo;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/papa91/battle/protocol/KickInfo;->getDefaultInstance()Lcom/papa91/battle/protocol/KickInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getLogicErrorCode()Lcom/papa91/battle/protocol/Response$LogicErrorCode;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->logicErrorCode_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->valueOf(I)Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->UNRECOGNIZED:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getLogicErrorCodeValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->logicErrorCode_:I

    .line 2
    .line 3
    return v0
.end method

.method public getNotification()Lcom/papa91/battle/protocol/Notification;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->notification_:Lcom/papa91/battle/protocol/Notification;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/papa91/battle/protocol/Notification;->getDefaultInstance()Lcom/papa91/battle/protocol/Notification;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/papa91/battle/protocol/Notification;

    .line 19
    .line 20
    return-object v0
.end method

.method public getNotificationBuilder()Lcom/papa91/battle/protocol/Notification$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response$Builder;->getNotificationFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/papa91/battle/protocol/Notification$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getNotificationOrBuilder()Lcom/papa91/battle/protocol/NotificationOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/papa91/battle/protocol/NotificationOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->notification_:Lcom/papa91/battle/protocol/Notification;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/papa91/battle/protocol/Notification;->getDefaultInstance()Lcom/papa91/battle/protocol/Notification;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getPong()Lcom/papa91/battle/protocol/Pong;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->pongBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->pong_:Lcom/papa91/battle/protocol/Pong;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/papa91/battle/protocol/Pong;->getDefaultInstance()Lcom/papa91/battle/protocol/Pong;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/papa91/battle/protocol/Pong;

    .line 19
    .line 20
    return-object v0
.end method

.method public getPongBuilder()Lcom/papa91/battle/protocol/Pong$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response$Builder;->getPongFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/papa91/battle/protocol/Pong$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getPongOrBuilder()Lcom/papa91/battle/protocol/PongOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->pongBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/papa91/battle/protocol/PongOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->pong_:Lcom/papa91/battle/protocol/Pong;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/papa91/battle/protocol/Pong;->getDefaultInstance()Lcom/papa91/battle/protocol/Pong;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getRequestId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->requestId_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getResponse()Lcom/papa91/battle/protocol/Response;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->responseBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->response_:Lcom/papa91/battle/protocol/Response;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/papa91/battle/protocol/Response;->getDefaultInstance()Lcom/papa91/battle/protocol/Response;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/papa91/battle/protocol/Response;

    .line 19
    .line 20
    return-object v0
.end method

.method public getResponseBuilder()Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response$Builder;->getResponseFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/papa91/battle/protocol/Response$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getResponseOrBuilder()Lcom/papa91/battle/protocol/ResponseOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->responseBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/papa91/battle/protocol/ResponseOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->response_:Lcom/papa91/battle/protocol/Response;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/papa91/battle/protocol/Response;->getDefaultInstance()Lcom/papa91/battle/protocol/Response;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getRoom()Lcom/papa91/battle/protocol/GameRoom;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->roomBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->room_:Lcom/papa91/battle/protocol/GameRoom;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/papa91/battle/protocol/GameRoom;->getDefaultInstance()Lcom/papa91/battle/protocol/GameRoom;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/papa91/battle/protocol/GameRoom;

    .line 19
    .line 20
    return-object v0
.end method

.method public getRoomBuilder()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response$Builder;->getRoomFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/papa91/battle/protocol/GameRoom$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getRoomCounter()Lcom/papa91/battle/protocol/RoomCounter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->roomCounterBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->roomCounter_:Lcom/papa91/battle/protocol/RoomCounter;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/papa91/battle/protocol/RoomCounter;->getDefaultInstance()Lcom/papa91/battle/protocol/RoomCounter;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/papa91/battle/protocol/RoomCounter;

    .line 19
    .line 20
    return-object v0
.end method

.method public getRoomCounterBuilder()Lcom/papa91/battle/protocol/RoomCounter$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response$Builder;->getRoomCounterFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/papa91/battle/protocol/RoomCounter$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getRoomCounterOrBuilder()Lcom/papa91/battle/protocol/RoomCounterOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->roomCounterBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/papa91/battle/protocol/RoomCounterOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->roomCounter_:Lcom/papa91/battle/protocol/RoomCounter;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/papa91/battle/protocol/RoomCounter;->getDefaultInstance()Lcom/papa91/battle/protocol/RoomCounter;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getRoomOrBuilder()Lcom/papa91/battle/protocol/GameRoomOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->roomBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/papa91/battle/protocol/GameRoomOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->room_:Lcom/papa91/battle/protocol/GameRoom;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/papa91/battle/protocol/GameRoom;->getDefaultInstance()Lcom/papa91/battle/protocol/GameRoom;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getSimpleRoom(I)Lcom/papa91/battle/protocol/SimpleRoom;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoomBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoom_:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/papa91/battle/protocol/SimpleRoom;

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/papa91/battle/protocol/SimpleRoom;

    .line 19
    .line 20
    return-object p1
.end method

.method public getSimpleRoomBuilder(I)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response$Builder;->getSimpleRoomFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    .line 10
    .line 11
    return-object p1
.end method

.method public getSimpleRoomBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/papa91/battle/protocol/SimpleRoom$Builder;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response$Builder;->getSimpleRoomFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getSimpleRoomCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoomBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoom_:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public getSimpleRoomList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/papa91/battle/protocol/SimpleRoom;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoomBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoom_:Ljava/util/List;

    .line 6
    .line 7
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getSimpleRoomOrBuilder(I)Lcom/papa91/battle/protocol/SimpleRoomOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoomBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoom_:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/papa91/battle/protocol/SimpleRoomOrBuilder;

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/papa91/battle/protocol/SimpleRoomOrBuilder;

    .line 19
    .line 20
    return-object p1
.end method

.method public getSimpleRoomOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/papa91/battle/protocol/SimpleRoomOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoomBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoom_:Ljava/util/List;

    .line 11
    .line 12
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getStatusCode()Lcom/papa91/battle/protocol/Response$StatusCode;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->statusCode_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa91/battle/protocol/Response$StatusCode;->valueOf(I)Lcom/papa91/battle/protocol/Response$StatusCode;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/papa91/battle/protocol/Response$StatusCode;->UNRECOGNIZED:Lcom/papa91/battle/protocol/Response$StatusCode;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getStatusCodeValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->statusCode_:I

    .line 2
    .line 3
    return v0
.end method

.method public getType()Lcom/papa91/battle/protocol/Response$ProtoType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->type_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa91/battle/protocol/Response$ProtoType;->valueOf(I)Lcom/papa91/battle/protocol/Response$ProtoType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/papa91/battle/protocol/Response$ProtoType;->UNRECOGNIZED:Lcom/papa91/battle/protocol/Response$ProtoType;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getTypeValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->type_:I

    .line 2
    .line 3
    return v0
.end method

.method public getUserProfile()Lcom/papa91/battle/protocol/UserProfile;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->userProfileBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->userProfile_:Lcom/papa91/battle/protocol/UserProfile;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/papa91/battle/protocol/UserProfile;->getDefaultInstance()Lcom/papa91/battle/protocol/UserProfile;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/papa91/battle/protocol/UserProfile;

    .line 19
    .line 20
    return-object v0
.end method

.method public getUserProfileBuilder()Lcom/papa91/battle/protocol/UserProfile$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response$Builder;->getUserProfileFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/papa91/battle/protocol/UserProfile$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getUserProfileOrBuilder()Lcom/papa91/battle/protocol/UserProfileOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->userProfileBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/papa91/battle/protocol/UserProfileOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->userProfile_:Lcom/papa91/battle/protocol/UserProfile;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/papa91/battle/protocol/UserProfile;->getDefaultInstance()Lcom/papa91/battle/protocol/UserProfile;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public hasAreaOnlinePeopleCount()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->areaOnlinePeopleCountBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->areaOnlinePeopleCount_:Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
.end method

.method public hasFrameForwardServer()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->frameForwardServerBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->frameForwardServer_:Lcom/papa91/battle/protocol/FrameForwardServer;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
.end method

.method public hasKickInfo()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->kickInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->kickInfo_:Lcom/papa91/battle/protocol/KickInfo;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
.end method

.method public hasNotification()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->notification_:Lcom/papa91/battle/protocol/Notification;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
.end method

.method public hasPong()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->pongBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->pong_:Lcom/papa91/battle/protocol/Pong;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
.end method

.method public hasResponse()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->responseBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->response_:Lcom/papa91/battle/protocol/Response;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
.end method

.method public hasRoom()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->roomBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->room_:Lcom/papa91/battle/protocol/GameRoom;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
.end method

.method public hasRoomCounter()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->roomCounterBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->roomCounter_:Lcom/papa91/battle/protocol/RoomCounter;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
.end method

.method public hasUserProfile()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->userProfileBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->userProfile_:Lcom/papa91/battle/protocol/UserProfile;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_Response_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    const-class v1, Lcom/papa91/battle/protocol/Response;

    .line 4
    .line 5
    const-class v2, Lcom/papa91/battle/protocol/Response$Builder;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeAreaOnlinePeopleCount(Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->areaOnlinePeopleCountBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->areaOnlinePeopleCount_:Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;->newBuilder(Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;)Lcom/papa91/battle/protocol/AreaOnlinePeopleCount$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/papa91/battle/protocol/AreaOnlinePeopleCount$Builder;->mergeFrom(Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;)Lcom/papa91/battle/protocol/AreaOnlinePeopleCount$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/AreaOnlinePeopleCount$Builder;->buildPartial()Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->areaOnlinePeopleCount_:Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->areaOnlinePeopleCount_:Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 31
    .line 32
    .line 33
    :goto_1
    return-object p0
.end method

.method public mergeFrameForwardServer(Lcom/papa91/battle/protocol/FrameForwardServer;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->frameForwardServerBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->frameForwardServer_:Lcom/papa91/battle/protocol/FrameForwardServer;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/papa91/battle/protocol/FrameForwardServer;->newBuilder(Lcom/papa91/battle/protocol/FrameForwardServer;)Lcom/papa91/battle/protocol/FrameForwardServer$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/papa91/battle/protocol/FrameForwardServer$Builder;->mergeFrom(Lcom/papa91/battle/protocol/FrameForwardServer;)Lcom/papa91/battle/protocol/FrameForwardServer$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/FrameForwardServer$Builder;->buildPartial()Lcom/papa91/battle/protocol/FrameForwardServer;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->frameForwardServer_:Lcom/papa91/battle/protocol/FrameForwardServer;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->frameForwardServer_:Lcom/papa91/battle/protocol/FrameForwardServer;

    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 31
    .line 32
    .line 33
    :goto_1
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/Response$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Response$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/papa91/battle/protocol/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/Response$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/Response$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Response$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/papa91/battle/protocol/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/Response$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 77
    :try_start_0
    invoke-static {}, Lcom/papa91/battle/protocol/Response;->access$2700()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Response;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Response$Builder;->mergeFrom(Lcom/papa91/battle/protocol/Response;)Lcom/papa91/battle/protocol/Response$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 79
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/papa91/battle/protocol/Response;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/Response$Builder;->mergeFrom(Lcom/papa91/battle/protocol/Response;)Lcom/papa91/battle/protocol/Response$Builder;

    .line 82
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/papa91/battle/protocol/Response;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/papa91/battle/protocol/Response;

    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Response$Builder;->mergeFrom(Lcom/papa91/battle/protocol/Response;)Lcom/papa91/battle/protocol/Response$Builder;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/papa91/battle/protocol/Response;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 5

    .line 10
    invoke-static {}, Lcom/papa91/battle/protocol/Response;->getDefaultInstance()Lcom/papa91/battle/protocol/Response;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-static {p1}, Lcom/papa91/battle/protocol/Response;->access$500(Lcom/papa91/battle/protocol/Response;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getStatusCodeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/Response$Builder;->setStatusCodeValue(I)Lcom/papa91/battle/protocol/Response$Builder;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getRequestId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getRequestId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/papa91/battle/protocol/Response$Builder;->setRequestId(J)Lcom/papa91/battle/protocol/Response$Builder;

    .line 15
    :cond_2
    invoke-static {p1}, Lcom/papa91/battle/protocol/Response;->access$700(Lcom/papa91/battle/protocol/Response;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getTypeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/Response$Builder;->setTypeValue(I)Lcom/papa91/battle/protocol/Response$Builder;

    .line 17
    :cond_3
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->hasRoom()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getRoom()Lcom/papa91/battle/protocol/GameRoom;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/Response$Builder;->mergeRoom(Lcom/papa91/battle/protocol/GameRoom;)Lcom/papa91/battle/protocol/Response$Builder;

    .line 19
    :cond_4
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->hasResponse()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 20
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getResponse()Lcom/papa91/battle/protocol/Response;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/Response$Builder;->mergeResponse(Lcom/papa91/battle/protocol/Response;)Lcom/papa91/battle/protocol/Response$Builder;

    .line 21
    :cond_5
    invoke-static {p1}, Lcom/papa91/battle/protocol/Response;->access$1000(Lcom/papa91/battle/protocol/Response;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 22
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 23
    invoke-static {p1}, Lcom/papa91/battle/protocol/Response;->access$1000(Lcom/papa91/battle/protocol/Response;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    .line 24
    iget v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->bitField0_:I

    goto :goto_0

    .line 25
    :cond_6
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response$Builder;->ensureBroadcastUsersIsMutable()V

    .line 26
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    invoke-static {p1}, Lcom/papa91/battle/protocol/Response;->access$1000(Lcom/papa91/battle/protocol/Response;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 27
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 28
    :cond_7
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getError()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 29
    invoke-static {p1}, Lcom/papa91/battle/protocol/Response;->access$1100(Lcom/papa91/battle/protocol/Response;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->error_:Ljava/lang/Object;

    .line 30
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 31
    :cond_8
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoomBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_a

    .line 32
    invoke-static {p1}, Lcom/papa91/battle/protocol/Response;->access$1200(Lcom/papa91/battle/protocol/Response;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 33
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoom_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 34
    invoke-static {p1}, Lcom/papa91/battle/protocol/Response;->access$1200(Lcom/papa91/battle/protocol/Response;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoom_:Ljava/util/List;

    .line 35
    iget v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->bitField0_:I

    goto :goto_1

    .line 36
    :cond_9
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response$Builder;->ensureSimpleRoomIsMutable()V

    .line 37
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoom_:Ljava/util/List;

    invoke-static {p1}, Lcom/papa91/battle/protocol/Response;->access$1200(Lcom/papa91/battle/protocol/Response;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 38
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_2

    .line 39
    :cond_a
    invoke-static {p1}, Lcom/papa91/battle/protocol/Response;->access$1200(Lcom/papa91/battle/protocol/Response;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 40
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoomBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 41
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoomBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoomBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 43
    invoke-static {p1}, Lcom/papa91/battle/protocol/Response;->access$1200(Lcom/papa91/battle/protocol/Response;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoom_:Ljava/util/List;

    .line 44
    iget v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/papa91/battle/protocol/Response$Builder;->bitField0_:I

    .line 45
    invoke-static {}, Lcom/papa91/battle/protocol/Response;->access$2500()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 46
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response$Builder;->getSimpleRoomFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_b
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoomBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_2

    .line 47
    :cond_c
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoomBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/papa91/battle/protocol/Response;->access$1200(Lcom/papa91/battle/protocol/Response;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 48
    :cond_d
    :goto_2
    invoke-static {p1}, Lcom/papa91/battle/protocol/Response;->access$1300(Lcom/papa91/battle/protocol/Response;)I

    move-result v0

    if-eqz v0, :cond_e

    .line 49
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getLogicErrorCodeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/Response$Builder;->setLogicErrorCodeValue(I)Lcom/papa91/battle/protocol/Response$Builder;

    .line 50
    :cond_e
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getJoinSpectatorReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 51
    invoke-static {p1}, Lcom/papa91/battle/protocol/Response;->access$1400(Lcom/papa91/battle/protocol/Response;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->joinSpectatorReason_:Ljava/lang/Object;

    .line 52
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 53
    :cond_f
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->hasPong()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 54
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getPong()Lcom/papa91/battle/protocol/Pong;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/Response$Builder;->mergePong(Lcom/papa91/battle/protocol/Pong;)Lcom/papa91/battle/protocol/Response$Builder;

    .line 55
    :cond_10
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->hasRoomCounter()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 56
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getRoomCounter()Lcom/papa91/battle/protocol/RoomCounter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/Response$Builder;->mergeRoomCounter(Lcom/papa91/battle/protocol/RoomCounter;)Lcom/papa91/battle/protocol/Response$Builder;

    .line 57
    :cond_11
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->hasKickInfo()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 58
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getKickInfo()Lcom/papa91/battle/protocol/KickInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/Response$Builder;->mergeKickInfo(Lcom/papa91/battle/protocol/KickInfo;)Lcom/papa91/battle/protocol/Response$Builder;

    .line 59
    :cond_12
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->hasNotification()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 60
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getNotification()Lcom/papa91/battle/protocol/Notification;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/Response$Builder;->mergeNotification(Lcom/papa91/battle/protocol/Notification;)Lcom/papa91/battle/protocol/Response$Builder;

    .line 61
    :cond_13
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->hasFrameForwardServer()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 62
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getFrameForwardServer()Lcom/papa91/battle/protocol/FrameForwardServer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/Response$Builder;->mergeFrameForwardServer(Lcom/papa91/battle/protocol/FrameForwardServer;)Lcom/papa91/battle/protocol/Response$Builder;

    .line 63
    :cond_14
    invoke-static {p1}, Lcom/papa91/battle/protocol/Response;->access$2000(Lcom/papa91/battle/protocol/Response;)I

    move-result v0

    if-eqz v0, :cond_15

    .line 64
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getBroadcastChannelValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/Response$Builder;->setBroadcastChannelValue(I)Lcom/papa91/battle/protocol/Response$Builder;

    .line 65
    :cond_15
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->hasAreaOnlinePeopleCount()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 66
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getAreaOnlinePeopleCount()Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/Response$Builder;->mergeAreaOnlinePeopleCount(Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;)Lcom/papa91/battle/protocol/Response$Builder;

    .line 67
    :cond_16
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->hasUserProfile()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 68
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getUserProfile()Lcom/papa91/battle/protocol/UserProfile;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/Response$Builder;->mergeUserProfile(Lcom/papa91/battle/protocol/UserProfile;)Lcom/papa91/battle/protocol/Response$Builder;

    .line 69
    :cond_17
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getEndDelimiter()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 70
    invoke-static {p1}, Lcom/papa91/battle/protocol/Response;->access$2300(Lcom/papa91/battle/protocol/Response;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->endDelimiter_:Ljava/lang/Object;

    .line 71
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 72
    :cond_18
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getBattleScore()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 73
    invoke-static {p1}, Lcom/papa91/battle/protocol/Response;->access$2400(Lcom/papa91/battle/protocol/Response;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->battleScore_:Ljava/lang/Object;

    .line 74
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 75
    :cond_19
    invoke-static {p1}, Lcom/papa91/battle/protocol/Response;->access$2600(Lcom/papa91/battle/protocol/Response;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Response$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/papa91/battle/protocol/Response$Builder;

    .line 76
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeKickInfo(Lcom/papa91/battle/protocol/KickInfo;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->kickInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->kickInfo_:Lcom/papa91/battle/protocol/KickInfo;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/papa91/battle/protocol/KickInfo;->newBuilder(Lcom/papa91/battle/protocol/KickInfo;)Lcom/papa91/battle/protocol/KickInfo$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/papa91/battle/protocol/KickInfo$Builder;->mergeFrom(Lcom/papa91/battle/protocol/KickInfo;)Lcom/papa91/battle/protocol/KickInfo$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/KickInfo$Builder;->buildPartial()Lcom/papa91/battle/protocol/KickInfo;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->kickInfo_:Lcom/papa91/battle/protocol/KickInfo;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->kickInfo_:Lcom/papa91/battle/protocol/KickInfo;

    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 31
    .line 32
    .line 33
    :goto_1
    return-object p0
.end method

.method public mergeNotification(Lcom/papa91/battle/protocol/Notification;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->notification_:Lcom/papa91/battle/protocol/Notification;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/papa91/battle/protocol/Notification;->newBuilder(Lcom/papa91/battle/protocol/Notification;)Lcom/papa91/battle/protocol/Notification$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/papa91/battle/protocol/Notification$Builder;->mergeFrom(Lcom/papa91/battle/protocol/Notification;)Lcom/papa91/battle/protocol/Notification$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Notification$Builder;->buildPartial()Lcom/papa91/battle/protocol/Notification;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->notification_:Lcom/papa91/battle/protocol/Notification;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->notification_:Lcom/papa91/battle/protocol/Notification;

    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 31
    .line 32
    .line 33
    :goto_1
    return-object p0
.end method

.method public mergePong(Lcom/papa91/battle/protocol/Pong;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->pongBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->pong_:Lcom/papa91/battle/protocol/Pong;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/papa91/battle/protocol/Pong;->newBuilder(Lcom/papa91/battle/protocol/Pong;)Lcom/papa91/battle/protocol/Pong$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/papa91/battle/protocol/Pong$Builder;->mergeFrom(Lcom/papa91/battle/protocol/Pong;)Lcom/papa91/battle/protocol/Pong$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Pong$Builder;->buildPartial()Lcom/papa91/battle/protocol/Pong;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->pong_:Lcom/papa91/battle/protocol/Pong;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->pong_:Lcom/papa91/battle/protocol/Pong;

    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 31
    .line 32
    .line 33
    :goto_1
    return-object p0
.end method

.method public mergeResponse(Lcom/papa91/battle/protocol/Response;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->responseBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->response_:Lcom/papa91/battle/protocol/Response;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/papa91/battle/protocol/Response;->newBuilder(Lcom/papa91/battle/protocol/Response;)Lcom/papa91/battle/protocol/Response$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/papa91/battle/protocol/Response$Builder;->mergeFrom(Lcom/papa91/battle/protocol/Response;)Lcom/papa91/battle/protocol/Response$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response$Builder;->buildPartial()Lcom/papa91/battle/protocol/Response;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->response_:Lcom/papa91/battle/protocol/Response;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->response_:Lcom/papa91/battle/protocol/Response;

    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 31
    .line 32
    .line 33
    :goto_1
    return-object p0
.end method

.method public mergeRoom(Lcom/papa91/battle/protocol/GameRoom;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->roomBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->room_:Lcom/papa91/battle/protocol/GameRoom;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/papa91/battle/protocol/GameRoom;->newBuilder(Lcom/papa91/battle/protocol/GameRoom;)Lcom/papa91/battle/protocol/GameRoom$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/papa91/battle/protocol/GameRoom$Builder;->mergeFrom(Lcom/papa91/battle/protocol/GameRoom;)Lcom/papa91/battle/protocol/GameRoom$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom$Builder;->buildPartial()Lcom/papa91/battle/protocol/GameRoom;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->room_:Lcom/papa91/battle/protocol/GameRoom;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->room_:Lcom/papa91/battle/protocol/GameRoom;

    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 31
    .line 32
    .line 33
    :goto_1
    return-object p0
.end method

.method public mergeRoomCounter(Lcom/papa91/battle/protocol/RoomCounter;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->roomCounterBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->roomCounter_:Lcom/papa91/battle/protocol/RoomCounter;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/papa91/battle/protocol/RoomCounter;->newBuilder(Lcom/papa91/battle/protocol/RoomCounter;)Lcom/papa91/battle/protocol/RoomCounter$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/papa91/battle/protocol/RoomCounter$Builder;->mergeFrom(Lcom/papa91/battle/protocol/RoomCounter;)Lcom/papa91/battle/protocol/RoomCounter$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomCounter$Builder;->buildPartial()Lcom/papa91/battle/protocol/RoomCounter;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->roomCounter_:Lcom/papa91/battle/protocol/RoomCounter;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->roomCounter_:Lcom/papa91/battle/protocol/RoomCounter;

    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 31
    .line 32
    .line 33
    :goto_1
    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Response$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/papa91/battle/protocol/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Response$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/papa91/battle/protocol/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Response$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/papa91/battle/protocol/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Response$Builder;

    return-object p1
.end method

.method public mergeUserProfile(Lcom/papa91/battle/protocol/UserProfile;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->userProfileBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->userProfile_:Lcom/papa91/battle/protocol/UserProfile;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/papa91/battle/protocol/UserProfile;->newBuilder(Lcom/papa91/battle/protocol/UserProfile;)Lcom/papa91/battle/protocol/UserProfile$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/papa91/battle/protocol/UserProfile$Builder;->mergeFrom(Lcom/papa91/battle/protocol/UserProfile;)Lcom/papa91/battle/protocol/UserProfile$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/UserProfile$Builder;->buildPartial()Lcom/papa91/battle/protocol/UserProfile;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->userProfile_:Lcom/papa91/battle/protocol/UserProfile;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->userProfile_:Lcom/papa91/battle/protocol/UserProfile;

    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 31
    .line 32
    .line 33
    :goto_1
    return-object p0
.end method

.method public removeSimpleRoom(I)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoomBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response$Builder;->ensureSimpleRoomIsMutable()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoom_:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-object p0
.end method

.method public setAreaOnlinePeopleCount(Lcom/papa91/battle/protocol/AreaOnlinePeopleCount$Builder;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->areaOnlinePeopleCountBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/AreaOnlinePeopleCount$Builder;->build()Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->areaOnlinePeopleCount_:Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/AreaOnlinePeopleCount$Builder;->build()Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setAreaOnlinePeopleCount(Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->areaOnlinePeopleCountBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->areaOnlinePeopleCount_:Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setBattleScore(Ljava/lang/String;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->battleScore_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setBattleScoreBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/papa91/battle/protocol/Response;->access$3400(Lcom/google/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->battleScore_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setBroadcastChannel(Lcom/papa91/battle/protocol/Response$BroadcastChannel;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response$BroadcastChannel;->getNumber()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->broadcastChannel_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public setBroadcastChannelValue(I)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->broadcastChannel_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setBroadcastUsers(II)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response$Builder;->ensureBroadcastUsersIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$IntList;->setInt(II)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setEndDelimiter(Ljava/lang/String;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->endDelimiter_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setEndDelimiterBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/papa91/battle/protocol/Response;->access$3300(Lcom/google/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->endDelimiter_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setError(Ljava/lang/String;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->error_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setErrorBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/papa91/battle/protocol/Response;->access$3100(Lcom/google/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->error_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/Response$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/papa91/battle/protocol/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/Response$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/papa91/battle/protocol/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Response$Builder;

    return-object p1
.end method

.method public setFrameForwardServer(Lcom/papa91/battle/protocol/FrameForwardServer$Builder;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->frameForwardServerBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/FrameForwardServer$Builder;->build()Lcom/papa91/battle/protocol/FrameForwardServer;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->frameForwardServer_:Lcom/papa91/battle/protocol/FrameForwardServer;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/FrameForwardServer$Builder;->build()Lcom/papa91/battle/protocol/FrameForwardServer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setFrameForwardServer(Lcom/papa91/battle/protocol/FrameForwardServer;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->frameForwardServerBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->frameForwardServer_:Lcom/papa91/battle/protocol/FrameForwardServer;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setJoinSpectatorReason(Ljava/lang/String;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->joinSpectatorReason_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setJoinSpectatorReasonBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/papa91/battle/protocol/Response;->access$3200(Lcom/google/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->joinSpectatorReason_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setKickInfo(Lcom/papa91/battle/protocol/KickInfo$Builder;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->kickInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/KickInfo$Builder;->build()Lcom/papa91/battle/protocol/KickInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->kickInfo_:Lcom/papa91/battle/protocol/KickInfo;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/KickInfo$Builder;->build()Lcom/papa91/battle/protocol/KickInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setKickInfo(Lcom/papa91/battle/protocol/KickInfo;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->kickInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->kickInfo_:Lcom/papa91/battle/protocol/KickInfo;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setLogicErrorCode(Lcom/papa91/battle/protocol/Response$LogicErrorCode;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->getNumber()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->logicErrorCode_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public setLogicErrorCodeValue(I)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->logicErrorCode_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setNotification(Lcom/papa91/battle/protocol/Notification$Builder;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Notification$Builder;->build()Lcom/papa91/battle/protocol/Notification;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->notification_:Lcom/papa91/battle/protocol/Notification;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Notification$Builder;->build()Lcom/papa91/battle/protocol/Notification;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setNotification(Lcom/papa91/battle/protocol/Notification;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->notificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->notification_:Lcom/papa91/battle/protocol/Notification;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setPong(Lcom/papa91/battle/protocol/Pong$Builder;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->pongBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Pong$Builder;->build()Lcom/papa91/battle/protocol/Pong;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->pong_:Lcom/papa91/battle/protocol/Pong;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Pong$Builder;->build()Lcom/papa91/battle/protocol/Pong;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setPong(Lcom/papa91/battle/protocol/Pong;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->pongBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->pong_:Lcom/papa91/battle/protocol/Pong;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/papa91/battle/protocol/Response$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/papa91/battle/protocol/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/papa91/battle/protocol/Response$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/papa91/battle/protocol/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Response$Builder;

    return-object p1
.end method

.method public setRequestId(J)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->requestId_:J

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setResponse(Lcom/papa91/battle/protocol/Response$Builder;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->responseBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response$Builder;->build()Lcom/papa91/battle/protocol/Response;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->response_:Lcom/papa91/battle/protocol/Response;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response$Builder;->build()Lcom/papa91/battle/protocol/Response;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setResponse(Lcom/papa91/battle/protocol/Response;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->responseBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->response_:Lcom/papa91/battle/protocol/Response;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setRoom(Lcom/papa91/battle/protocol/GameRoom$Builder;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->roomBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom$Builder;->build()Lcom/papa91/battle/protocol/GameRoom;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->room_:Lcom/papa91/battle/protocol/GameRoom;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom$Builder;->build()Lcom/papa91/battle/protocol/GameRoom;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setRoom(Lcom/papa91/battle/protocol/GameRoom;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->roomBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->room_:Lcom/papa91/battle/protocol/GameRoom;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setRoomCounter(Lcom/papa91/battle/protocol/RoomCounter$Builder;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->roomCounterBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomCounter$Builder;->build()Lcom/papa91/battle/protocol/RoomCounter;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->roomCounter_:Lcom/papa91/battle/protocol/RoomCounter;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomCounter$Builder;->build()Lcom/papa91/battle/protocol/RoomCounter;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setRoomCounter(Lcom/papa91/battle/protocol/RoomCounter;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->roomCounterBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->roomCounter_:Lcom/papa91/battle/protocol/RoomCounter;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setSimpleRoom(ILcom/papa91/battle/protocol/SimpleRoom$Builder;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoomBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response$Builder;->ensureSimpleRoomIsMutable()V

    .line 9
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoom_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->build()Lcom/papa91/battle/protocol/SimpleRoom;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->build()Lcom/papa91/battle/protocol/SimpleRoom;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setSimpleRoom(ILcom/papa91/battle/protocol/SimpleRoom;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoomBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response$Builder;->ensureSimpleRoomIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->simpleRoom_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setStatusCode(Lcom/papa91/battle/protocol/Response$StatusCode;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response$StatusCode;->getNumber()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->statusCode_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public setStatusCodeValue(I)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->statusCode_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setType(Lcom/papa91/battle/protocol/Response$ProtoType;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response$ProtoType;->getNumber()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->type_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public setTypeValue(I)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->type_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Response$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/papa91/battle/protocol/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Response$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/papa91/battle/protocol/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Response$Builder;

    return-object p1
.end method

.method public setUserProfile(Lcom/papa91/battle/protocol/UserProfile$Builder;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->userProfileBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/UserProfile$Builder;->build()Lcom/papa91/battle/protocol/UserProfile;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->userProfile_:Lcom/papa91/battle/protocol/UserProfile;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/UserProfile$Builder;->build()Lcom/papa91/battle/protocol/UserProfile;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setUserProfile(Lcom/papa91/battle/protocol/UserProfile;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response$Builder;->userProfileBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response$Builder;->userProfile_:Lcom/papa91/battle/protocol/UserProfile;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method
