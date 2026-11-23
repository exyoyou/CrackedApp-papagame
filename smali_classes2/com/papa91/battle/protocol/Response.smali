.class public final Lcom/papa91/battle/protocol/Response;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/papa91/battle/protocol/ResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/battle/protocol/Response$Builder;,
        Lcom/papa91/battle/protocol/Response$StatusCode;,
        Lcom/papa91/battle/protocol/Response$ProtoType;,
        Lcom/papa91/battle/protocol/Response$LogicErrorCode;,
        Lcom/papa91/battle/protocol/Response$BroadcastChannel;
    }
.end annotation


# static fields
.field public static final AREAONLINEPEOPLECOUNT_FIELD_NUMBER:I = 0x11

.field public static final BATTLESCORE_FIELD_NUMBER:I = 0x13

.field public static final BROADCASTCHANNEL_FIELD_NUMBER:I = 0x10

.field public static final BROADCASTUSERS_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Response;

.field public static final ENDDELIMITER_FIELD_NUMBER:I = 0x3e7

.field public static final ERROR_FIELD_NUMBER:I = 0x7

.field public static final FRAMEFORWARDSERVER_FIELD_NUMBER:I = 0xf

.field public static final JOINSPECTATORREASON_FIELD_NUMBER:I = 0xa

.field public static final KICKINFO_FIELD_NUMBER:I = 0xd

.field public static final LOGICERRORCODE_FIELD_NUMBER:I = 0x9

.field public static final NOTIFICATION_FIELD_NUMBER:I = 0xe

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/papa91/battle/protocol/Response;",
            ">;"
        }
    .end annotation
.end field

.field public static final PONG_FIELD_NUMBER:I = 0xb

.field public static final REQUESTID_FIELD_NUMBER:I = 0x2

.field public static final RESPONSE_FIELD_NUMBER:I = 0x5

.field public static final ROOMCOUNTER_FIELD_NUMBER:I = 0xc

.field public static final ROOM_FIELD_NUMBER:I = 0x4

.field public static final SIMPLEROOM_FIELD_NUMBER:I = 0x8

.field public static final STATUSCODE_FIELD_NUMBER:I = 0x1

.field public static final TYPE_FIELD_NUMBER:I = 0x3

.field public static final USERPROFILE_FIELD_NUMBER:I = 0x12

.field private static final serialVersionUID:J


# instance fields
.field private areaOnlinePeopleCount_:Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

.field private volatile battleScore_:Ljava/lang/Object;

.field private broadcastChannel_:I

.field private broadcastUsersMemoizedSerializedSize:I

.field private broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

.field private volatile endDelimiter_:Ljava/lang/Object;

.field private volatile error_:Ljava/lang/Object;

.field private frameForwardServer_:Lcom/papa91/battle/protocol/FrameForwardServer;

.field private volatile joinSpectatorReason_:Ljava/lang/Object;

.field private kickInfo_:Lcom/papa91/battle/protocol/KickInfo;

.field private logicErrorCode_:I

.field private memoizedIsInitialized:B

.field private notification_:Lcom/papa91/battle/protocol/Notification;

.field private pong_:Lcom/papa91/battle/protocol/Pong;

.field private requestId_:J

.field private response_:Lcom/papa91/battle/protocol/Response;

.field private roomCounter_:Lcom/papa91/battle/protocol/RoomCounter;

.field private room_:Lcom/papa91/battle/protocol/GameRoom;

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

.field private userProfile_:Lcom/papa91/battle/protocol/UserProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa91/battle/protocol/Response;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa91/battle/protocol/Response;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/papa91/battle/protocol/Response;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Response;

    .line 7
    .line 8
    new-instance v0, Lcom/papa91/battle/protocol/Response$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/papa91/battle/protocol/Response$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/papa91/battle/protocol/Response;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/papa91/battle/protocol/Response;->broadcastUsersMemoizedSerializedSize:I

    .line 8
    iput-byte v0, p0, Lcom/papa91/battle/protocol/Response;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/papa91/battle/protocol/Response;->statusCode_:I

    .line 10
    iput v0, p0, Lcom/papa91/battle/protocol/Response;->type_:I

    .line 11
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v1

    iput-object v1, p0, Lcom/papa91/battle/protocol/Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    const-string v1, ""

    .line 12
    iput-object v1, p0, Lcom/papa91/battle/protocol/Response;->error_:Ljava/lang/Object;

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/papa91/battle/protocol/Response;->simpleRoom_:Ljava/util/List;

    .line 14
    iput v0, p0, Lcom/papa91/battle/protocol/Response;->logicErrorCode_:I

    .line 15
    iput-object v1, p0, Lcom/papa91/battle/protocol/Response;->joinSpectatorReason_:Ljava/lang/Object;

    .line 16
    iput v0, p0, Lcom/papa91/battle/protocol/Response;->broadcastChannel_:I

    .line 17
    iput-object v1, p0, Lcom/papa91/battle/protocol/Response;->endDelimiter_:Ljava/lang/Object;

    .line 18
    iput-object v1, p0, Lcom/papa91/battle/protocol/Response;->battleScore_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Response;-><init>()V

    .line 20
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_10

    .line 22
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v3, :sswitch_data_0

    .line 23
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    goto/16 :goto_3

    .line 24
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 25
    iput-object v3, p0, Lcom/papa91/battle/protocol/Response;->endDelimiter_:Ljava/lang/Object;

    goto :goto_0

    .line 26
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 27
    iput-object v3, p0, Lcom/papa91/battle/protocol/Response;->battleScore_:Ljava/lang/Object;

    goto :goto_0

    .line 28
    :sswitch_2
    iget-object v3, p0, Lcom/papa91/battle/protocol/Response;->userProfile_:Lcom/papa91/battle/protocol/UserProfile;

    if-eqz v3, :cond_1

    .line 29
    invoke-virtual {v3}, Lcom/papa91/battle/protocol/UserProfile;->toBuilder()Lcom/papa91/battle/protocol/UserProfile$Builder;

    move-result-object v5

    .line 30
    :cond_1
    invoke-static {}, Lcom/papa91/battle/protocol/UserProfile;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/papa91/battle/protocol/UserProfile;

    iput-object v3, p0, Lcom/papa91/battle/protocol/Response;->userProfile_:Lcom/papa91/battle/protocol/UserProfile;

    if-eqz v5, :cond_0

    .line 31
    invoke-virtual {v5, v3}, Lcom/papa91/battle/protocol/UserProfile$Builder;->mergeFrom(Lcom/papa91/battle/protocol/UserProfile;)Lcom/papa91/battle/protocol/UserProfile$Builder;

    .line 32
    invoke-virtual {v5}, Lcom/papa91/battle/protocol/UserProfile$Builder;->buildPartial()Lcom/papa91/battle/protocol/UserProfile;

    move-result-object v3

    iput-object v3, p0, Lcom/papa91/battle/protocol/Response;->userProfile_:Lcom/papa91/battle/protocol/UserProfile;

    goto :goto_0

    .line 33
    :sswitch_3
    iget-object v3, p0, Lcom/papa91/battle/protocol/Response;->areaOnlinePeopleCount_:Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    if-eqz v3, :cond_2

    .line 34
    invoke-virtual {v3}, Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;->toBuilder()Lcom/papa91/battle/protocol/AreaOnlinePeopleCount$Builder;

    move-result-object v5

    .line 35
    :cond_2
    invoke-static {}, Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    iput-object v3, p0, Lcom/papa91/battle/protocol/Response;->areaOnlinePeopleCount_:Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    if-eqz v5, :cond_0

    .line 36
    invoke-virtual {v5, v3}, Lcom/papa91/battle/protocol/AreaOnlinePeopleCount$Builder;->mergeFrom(Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;)Lcom/papa91/battle/protocol/AreaOnlinePeopleCount$Builder;

    .line 37
    invoke-virtual {v5}, Lcom/papa91/battle/protocol/AreaOnlinePeopleCount$Builder;->buildPartial()Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    move-result-object v3

    iput-object v3, p0, Lcom/papa91/battle/protocol/Response;->areaOnlinePeopleCount_:Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    goto :goto_0

    .line 38
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 39
    iput v3, p0, Lcom/papa91/battle/protocol/Response;->broadcastChannel_:I

    goto :goto_0

    .line 40
    :sswitch_5
    iget-object v3, p0, Lcom/papa91/battle/protocol/Response;->frameForwardServer_:Lcom/papa91/battle/protocol/FrameForwardServer;

    if-eqz v3, :cond_3

    .line 41
    invoke-virtual {v3}, Lcom/papa91/battle/protocol/FrameForwardServer;->toBuilder()Lcom/papa91/battle/protocol/FrameForwardServer$Builder;

    move-result-object v5

    .line 42
    :cond_3
    invoke-static {}, Lcom/papa91/battle/protocol/FrameForwardServer;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/papa91/battle/protocol/FrameForwardServer;

    iput-object v3, p0, Lcom/papa91/battle/protocol/Response;->frameForwardServer_:Lcom/papa91/battle/protocol/FrameForwardServer;

    if-eqz v5, :cond_0

    .line 43
    invoke-virtual {v5, v3}, Lcom/papa91/battle/protocol/FrameForwardServer$Builder;->mergeFrom(Lcom/papa91/battle/protocol/FrameForwardServer;)Lcom/papa91/battle/protocol/FrameForwardServer$Builder;

    .line 44
    invoke-virtual {v5}, Lcom/papa91/battle/protocol/FrameForwardServer$Builder;->buildPartial()Lcom/papa91/battle/protocol/FrameForwardServer;

    move-result-object v3

    iput-object v3, p0, Lcom/papa91/battle/protocol/Response;->frameForwardServer_:Lcom/papa91/battle/protocol/FrameForwardServer;

    goto/16 :goto_0

    .line 45
    :sswitch_6
    iget-object v3, p0, Lcom/papa91/battle/protocol/Response;->notification_:Lcom/papa91/battle/protocol/Notification;

    if-eqz v3, :cond_4

    .line 46
    invoke-virtual {v3}, Lcom/papa91/battle/protocol/Notification;->toBuilder()Lcom/papa91/battle/protocol/Notification$Builder;

    move-result-object v5

    .line 47
    :cond_4
    invoke-static {}, Lcom/papa91/battle/protocol/Notification;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/papa91/battle/protocol/Notification;

    iput-object v3, p0, Lcom/papa91/battle/protocol/Response;->notification_:Lcom/papa91/battle/protocol/Notification;

    if-eqz v5, :cond_0

    .line 48
    invoke-virtual {v5, v3}, Lcom/papa91/battle/protocol/Notification$Builder;->mergeFrom(Lcom/papa91/battle/protocol/Notification;)Lcom/papa91/battle/protocol/Notification$Builder;

    .line 49
    invoke-virtual {v5}, Lcom/papa91/battle/protocol/Notification$Builder;->buildPartial()Lcom/papa91/battle/protocol/Notification;

    move-result-object v3

    iput-object v3, p0, Lcom/papa91/battle/protocol/Response;->notification_:Lcom/papa91/battle/protocol/Notification;

    goto/16 :goto_0

    .line 50
    :sswitch_7
    iget-object v3, p0, Lcom/papa91/battle/protocol/Response;->kickInfo_:Lcom/papa91/battle/protocol/KickInfo;

    if-eqz v3, :cond_5

    .line 51
    invoke-virtual {v3}, Lcom/papa91/battle/protocol/KickInfo;->toBuilder()Lcom/papa91/battle/protocol/KickInfo$Builder;

    move-result-object v5

    .line 52
    :cond_5
    invoke-static {}, Lcom/papa91/battle/protocol/KickInfo;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/papa91/battle/protocol/KickInfo;

    iput-object v3, p0, Lcom/papa91/battle/protocol/Response;->kickInfo_:Lcom/papa91/battle/protocol/KickInfo;

    if-eqz v5, :cond_0

    .line 53
    invoke-virtual {v5, v3}, Lcom/papa91/battle/protocol/KickInfo$Builder;->mergeFrom(Lcom/papa91/battle/protocol/KickInfo;)Lcom/papa91/battle/protocol/KickInfo$Builder;

    .line 54
    invoke-virtual {v5}, Lcom/papa91/battle/protocol/KickInfo$Builder;->buildPartial()Lcom/papa91/battle/protocol/KickInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/papa91/battle/protocol/Response;->kickInfo_:Lcom/papa91/battle/protocol/KickInfo;

    goto/16 :goto_0

    .line 55
    :sswitch_8
    iget-object v3, p0, Lcom/papa91/battle/protocol/Response;->roomCounter_:Lcom/papa91/battle/protocol/RoomCounter;

    if-eqz v3, :cond_6

    .line 56
    invoke-virtual {v3}, Lcom/papa91/battle/protocol/RoomCounter;->toBuilder()Lcom/papa91/battle/protocol/RoomCounter$Builder;

    move-result-object v5

    .line 57
    :cond_6
    invoke-static {}, Lcom/papa91/battle/protocol/RoomCounter;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/papa91/battle/protocol/RoomCounter;

    iput-object v3, p0, Lcom/papa91/battle/protocol/Response;->roomCounter_:Lcom/papa91/battle/protocol/RoomCounter;

    if-eqz v5, :cond_0

    .line 58
    invoke-virtual {v5, v3}, Lcom/papa91/battle/protocol/RoomCounter$Builder;->mergeFrom(Lcom/papa91/battle/protocol/RoomCounter;)Lcom/papa91/battle/protocol/RoomCounter$Builder;

    .line 59
    invoke-virtual {v5}, Lcom/papa91/battle/protocol/RoomCounter$Builder;->buildPartial()Lcom/papa91/battle/protocol/RoomCounter;

    move-result-object v3

    iput-object v3, p0, Lcom/papa91/battle/protocol/Response;->roomCounter_:Lcom/papa91/battle/protocol/RoomCounter;

    goto/16 :goto_0

    .line 60
    :sswitch_9
    iget-object v3, p0, Lcom/papa91/battle/protocol/Response;->pong_:Lcom/papa91/battle/protocol/Pong;

    if-eqz v3, :cond_7

    .line 61
    invoke-virtual {v3}, Lcom/papa91/battle/protocol/Pong;->toBuilder()Lcom/papa91/battle/protocol/Pong$Builder;

    move-result-object v5

    .line 62
    :cond_7
    invoke-static {}, Lcom/papa91/battle/protocol/Pong;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/papa91/battle/protocol/Pong;

    iput-object v3, p0, Lcom/papa91/battle/protocol/Response;->pong_:Lcom/papa91/battle/protocol/Pong;

    if-eqz v5, :cond_0

    .line 63
    invoke-virtual {v5, v3}, Lcom/papa91/battle/protocol/Pong$Builder;->mergeFrom(Lcom/papa91/battle/protocol/Pong;)Lcom/papa91/battle/protocol/Pong$Builder;

    .line 64
    invoke-virtual {v5}, Lcom/papa91/battle/protocol/Pong$Builder;->buildPartial()Lcom/papa91/battle/protocol/Pong;

    move-result-object v3

    iput-object v3, p0, Lcom/papa91/battle/protocol/Response;->pong_:Lcom/papa91/battle/protocol/Pong;

    goto/16 :goto_0

    .line 65
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 66
    iput-object v3, p0, Lcom/papa91/battle/protocol/Response;->joinSpectatorReason_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 67
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 68
    iput v3, p0, Lcom/papa91/battle/protocol/Response;->logicErrorCode_:I

    goto/16 :goto_0

    :sswitch_c
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_8

    .line 69
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/papa91/battle/protocol/Response;->simpleRoom_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 70
    :cond_8
    iget-object v3, p0, Lcom/papa91/battle/protocol/Response;->simpleRoom_:Ljava/util/List;

    .line 71
    invoke-static {}, Lcom/papa91/battle/protocol/SimpleRoom;->parser()Lcom/google/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/papa91/battle/protocol/SimpleRoom;

    .line 72
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 73
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 74
    iput-object v3, p0, Lcom/papa91/battle/protocol/Response;->error_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 75
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v3

    .line 76
    invoke-virtual {p1, v3}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v3

    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_9

    .line 77
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_9

    .line 78
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->newIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v4

    iput-object v4, p0, Lcom/papa91/battle/protocol/Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    or-int/lit8 v2, v2, 0x1

    .line 79
    :cond_9
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_a

    .line 80
    iget-object v4, p0, Lcom/papa91/battle/protocol/Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_1

    .line 81
    :cond_a
    invoke-virtual {p1, v3}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_f
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_b

    .line 82
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->newIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v3

    iput-object v3, p0, Lcom/papa91/battle/protocol/Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    or-int/lit8 v2, v2, 0x1

    .line 83
    :cond_b
    iget-object v3, p0, Lcom/papa91/battle/protocol/Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    goto/16 :goto_0

    .line 84
    :sswitch_10
    iget-object v3, p0, Lcom/papa91/battle/protocol/Response;->response_:Lcom/papa91/battle/protocol/Response;

    if-eqz v3, :cond_c

    .line 85
    invoke-virtual {v3}, Lcom/papa91/battle/protocol/Response;->toBuilder()Lcom/papa91/battle/protocol/Response$Builder;

    move-result-object v5

    .line 86
    :cond_c
    invoke-static {}, Lcom/papa91/battle/protocol/Response;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/papa91/battle/protocol/Response;

    iput-object v3, p0, Lcom/papa91/battle/protocol/Response;->response_:Lcom/papa91/battle/protocol/Response;

    if-eqz v5, :cond_0

    .line 87
    invoke-virtual {v5, v3}, Lcom/papa91/battle/protocol/Response$Builder;->mergeFrom(Lcom/papa91/battle/protocol/Response;)Lcom/papa91/battle/protocol/Response$Builder;

    .line 88
    invoke-virtual {v5}, Lcom/papa91/battle/protocol/Response$Builder;->buildPartial()Lcom/papa91/battle/protocol/Response;

    move-result-object v3

    iput-object v3, p0, Lcom/papa91/battle/protocol/Response;->response_:Lcom/papa91/battle/protocol/Response;

    goto/16 :goto_0

    .line 89
    :sswitch_11
    iget-object v3, p0, Lcom/papa91/battle/protocol/Response;->room_:Lcom/papa91/battle/protocol/GameRoom;

    if-eqz v3, :cond_d

    .line 90
    invoke-virtual {v3}, Lcom/papa91/battle/protocol/GameRoom;->toBuilder()Lcom/papa91/battle/protocol/GameRoom$Builder;

    move-result-object v5

    .line 91
    :cond_d
    invoke-static {}, Lcom/papa91/battle/protocol/GameRoom;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/papa91/battle/protocol/GameRoom;

    iput-object v3, p0, Lcom/papa91/battle/protocol/Response;->room_:Lcom/papa91/battle/protocol/GameRoom;

    if-eqz v5, :cond_0

    .line 92
    invoke-virtual {v5, v3}, Lcom/papa91/battle/protocol/GameRoom$Builder;->mergeFrom(Lcom/papa91/battle/protocol/GameRoom;)Lcom/papa91/battle/protocol/GameRoom$Builder;

    .line 93
    invoke-virtual {v5}, Lcom/papa91/battle/protocol/GameRoom$Builder;->buildPartial()Lcom/papa91/battle/protocol/GameRoom;

    move-result-object v3

    iput-object v3, p0, Lcom/papa91/battle/protocol/Response;->room_:Lcom/papa91/battle/protocol/GameRoom;

    goto/16 :goto_0

    .line 94
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 95
    iput v3, p0, Lcom/papa91/battle/protocol/Response;->type_:I

    goto/16 :goto_0

    .line 96
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/papa91/battle/protocol/Response;->requestId_:J

    goto/16 :goto_0

    .line 97
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 98
    iput v3, p0, Lcom/papa91/battle/protocol/Response;->statusCode_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_2
    :sswitch_15
    const/4 v1, 0x1

    goto/16 :goto_0

    :goto_3
    if-nez v3, :cond_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 99
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 100
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 101
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_e

    .line 102
    iget-object p2, p0, Lcom/papa91/battle/protocol/Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {p2}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    :cond_e
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_f

    .line 103
    iget-object p2, p0, Lcom/papa91/battle/protocol/Response;->simpleRoom_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/papa91/battle/protocol/Response;->simpleRoom_:Ljava/util/List;

    .line 104
    :cond_f
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 105
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 106
    throw p1

    :cond_10
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_11

    .line 107
    iget-object p1, p0, Lcom/papa91/battle/protocol/Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    :cond_11
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_12

    .line 108
    iget-object p1, p0, Lcom/papa91/battle/protocol/Response;->simpleRoom_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->simpleRoom_:Ljava/util/List;

    .line 109
    :cond_12
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 110
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_15
        0x8 -> :sswitch_14
        0x10 -> :sswitch_13
        0x18 -> :sswitch_12
        0x22 -> :sswitch_11
        0x2a -> :sswitch_10
        0x30 -> :sswitch_f
        0x32 -> :sswitch_e
        0x3a -> :sswitch_d
        0x42 -> :sswitch_c
        0x48 -> :sswitch_b
        0x52 -> :sswitch_a
        0x5a -> :sswitch_9
        0x62 -> :sswitch_8
        0x6a -> :sswitch_7
        0x72 -> :sswitch_6
        0x7a -> :sswitch_5
        0x80 -> :sswitch_4
        0x8a -> :sswitch_3
        0x92 -> :sswitch_2
        0x9a -> :sswitch_1
        0x1f3a -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/papa91/battle/protocol/Response$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa91/battle/protocol/Response;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/papa91/battle/protocol/Response;->broadcastUsersMemoizedSerializedSize:I

    .line 5
    iput-byte p1, p0, Lcom/papa91/battle/protocol/Response;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/papa91/battle/protocol/Response$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Response;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/papa91/battle/protocol/Response;)Lcom/google/protobuf/Internal$IntList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/battle/protocol/Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1002(Lcom/papa91/battle/protocol/Response;Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1100(Lcom/papa91/battle/protocol/Response;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/battle/protocol/Response;->error_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1102(Lcom/papa91/battle/protocol/Response;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->error_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1200(Lcom/papa91/battle/protocol/Response;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/battle/protocol/Response;->simpleRoom_:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1202(Lcom/papa91/battle/protocol/Response;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->simpleRoom_:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1300(Lcom/papa91/battle/protocol/Response;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa91/battle/protocol/Response;->logicErrorCode_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1302(Lcom/papa91/battle/protocol/Response;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Response;->logicErrorCode_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1400(Lcom/papa91/battle/protocol/Response;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/battle/protocol/Response;->joinSpectatorReason_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1402(Lcom/papa91/battle/protocol/Response;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->joinSpectatorReason_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1502(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/Pong;)Lcom/papa91/battle/protocol/Pong;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->pong_:Lcom/papa91/battle/protocol/Pong;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1602(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/RoomCounter;)Lcom/papa91/battle/protocol/RoomCounter;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->roomCounter_:Lcom/papa91/battle/protocol/RoomCounter;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1702(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/KickInfo;)Lcom/papa91/battle/protocol/KickInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->kickInfo_:Lcom/papa91/battle/protocol/KickInfo;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1802(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/Notification;)Lcom/papa91/battle/protocol/Notification;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->notification_:Lcom/papa91/battle/protocol/Notification;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1902(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/FrameForwardServer;)Lcom/papa91/battle/protocol/FrameForwardServer;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->frameForwardServer_:Lcom/papa91/battle/protocol/FrameForwardServer;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$2000(Lcom/papa91/battle/protocol/Response;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa91/battle/protocol/Response;->broadcastChannel_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$2002(Lcom/papa91/battle/protocol/Response;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Response;->broadcastChannel_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$2102(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;)Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->areaOnlinePeopleCount_:Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$2202(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/UserProfile;)Lcom/papa91/battle/protocol/UserProfile;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->userProfile_:Lcom/papa91/battle/protocol/UserProfile;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$2300(Lcom/papa91/battle/protocol/Response;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/battle/protocol/Response;->endDelimiter_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2302(Lcom/papa91/battle/protocol/Response;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->endDelimiter_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$2400(Lcom/papa91/battle/protocol/Response;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/battle/protocol/Response;->battleScore_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2402(Lcom/papa91/battle/protocol/Response;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->battleScore_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$2500()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$2600(Lcom/papa91/battle/protocol/Response;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2700()Lcom/google/protobuf/Parser;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Response;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$2800()Lcom/google/protobuf/Internal$IntList;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method static synthetic access$2900(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/GeneratedMessageV3;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$300()Lcom/google/protobuf/Internal$IntList;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method static synthetic access$3000()Lcom/google/protobuf/Internal$IntList;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method static synthetic access$3100(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3200(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3300(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3400(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$500(Lcom/papa91/battle/protocol/Response;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa91/battle/protocol/Response;->statusCode_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$502(Lcom/papa91/battle/protocol/Response;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Response;->statusCode_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$602(Lcom/papa91/battle/protocol/Response;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa91/battle/protocol/Response;->requestId_:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$700(Lcom/papa91/battle/protocol/Response;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa91/battle/protocol/Response;->type_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$702(Lcom/papa91/battle/protocol/Response;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Response;->type_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$802(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/GameRoom;)Lcom/papa91/battle/protocol/GameRoom;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->room_:Lcom/papa91/battle/protocol/GameRoom;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$902(Lcom/papa91/battle/protocol/Response;Lcom/papa91/battle/protocol/Response;)Lcom/papa91/battle/protocol/Response;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/battle/protocol/Response;->response_:Lcom/papa91/battle/protocol/Response;

    .line 2
    .line 3
    return-object p1
.end method

.method public static getDefaultInstance()Lcom/papa91/battle/protocol/Response;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Response;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Response;

    .line 2
    .line 3
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

.method public static newBuilder()Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Response;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Response;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Response;->toBuilder()Lcom/papa91/battle/protocol/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/papa91/battle/protocol/Response;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/papa91/battle/protocol/Response;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Response;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Response;->toBuilder()Lcom/papa91/battle/protocol/Response$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Response$Builder;->mergeFrom(Lcom/papa91/battle/protocol/Response;)Lcom/papa91/battle/protocol/Response$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/papa91/battle/protocol/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Response;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Response;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/papa91/battle/protocol/Response;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Response;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/papa91/battle/protocol/Response;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Response;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/papa91/battle/protocol/Response;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Response;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/papa91/battle/protocol/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/papa91/battle/protocol/Response;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Response;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/papa91/battle/protocol/Response;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Response;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/papa91/battle/protocol/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/papa91/battle/protocol/Response;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Response;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/papa91/battle/protocol/Response;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Response;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/papa91/battle/protocol/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Response;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Response;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/papa91/battle/protocol/Response;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Response;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/papa91/battle/protocol/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/papa91/battle/protocol/Response;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Response;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/papa91/battle/protocol/Response;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Response;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/papa91/battle/protocol/Response;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Response;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/papa91/battle/protocol/Response;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_1
    check-cast p1, Lcom/papa91/battle/protocol/Response;

    .line 15
    .line 16
    iget v1, p0, Lcom/papa91/battle/protocol/Response;->statusCode_:I

    .line 17
    .line 18
    iget v2, p1, Lcom/papa91/battle/protocol/Response;->statusCode_:I

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    if-eq v1, v2, :cond_2

    .line 22
    .line 23
    return v3

    .line 24
    :cond_2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getRequestId()J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getRequestId()J

    .line 29
    .line 30
    .line 31
    move-result-wide v4

    .line 32
    cmp-long v6, v1, v4

    .line 33
    .line 34
    if-eqz v6, :cond_3

    .line 35
    .line 36
    return v3

    .line 37
    :cond_3
    iget v1, p0, Lcom/papa91/battle/protocol/Response;->type_:I

    .line 38
    .line 39
    iget v2, p1, Lcom/papa91/battle/protocol/Response;->type_:I

    .line 40
    .line 41
    if-eq v1, v2, :cond_4

    .line 42
    .line 43
    return v3

    .line 44
    :cond_4
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->hasRoom()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->hasRoom()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eq v1, v2, :cond_5

    .line 53
    .line 54
    return v3

    .line 55
    :cond_5
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->hasRoom()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_6

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getRoom()Lcom/papa91/battle/protocol/GameRoom;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getRoom()Lcom/papa91/battle/protocol/GameRoom;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v1, v2}, Lcom/papa91/battle/protocol/GameRoom;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-nez v1, :cond_6

    .line 74
    .line 75
    return v3

    .line 76
    :cond_6
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->hasResponse()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->hasResponse()Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eq v1, v2, :cond_7

    .line 85
    .line 86
    return v3

    .line 87
    :cond_7
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->hasResponse()Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_8

    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getResponse()Lcom/papa91/battle/protocol/Response;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getResponse()Lcom/papa91/battle/protocol/Response;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v1, v2}, Lcom/papa91/battle/protocol/Response;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-nez v1, :cond_8

    .line 106
    .line 107
    return v3

    .line 108
    :cond_8
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getBroadcastUsersList()Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getBroadcastUsersList()Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-nez v1, :cond_9

    .line 121
    .line 122
    return v3

    .line 123
    :cond_9
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getError()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getError()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-nez v1, :cond_a

    .line 136
    .line 137
    return v3

    .line 138
    :cond_a
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getSimpleRoomList()Ljava/util/List;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getSimpleRoomList()Ljava/util/List;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-nez v1, :cond_b

    .line 151
    .line 152
    return v3

    .line 153
    :cond_b
    iget v1, p0, Lcom/papa91/battle/protocol/Response;->logicErrorCode_:I

    .line 154
    .line 155
    iget v2, p1, Lcom/papa91/battle/protocol/Response;->logicErrorCode_:I

    .line 156
    .line 157
    if-eq v1, v2, :cond_c

    .line 158
    .line 159
    return v3

    .line 160
    :cond_c
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getJoinSpectatorReason()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getJoinSpectatorReason()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-nez v1, :cond_d

    .line 173
    .line 174
    return v3

    .line 175
    :cond_d
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->hasPong()Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->hasPong()Z

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    if-eq v1, v2, :cond_e

    .line 184
    .line 185
    return v3

    .line 186
    :cond_e
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->hasPong()Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    if-eqz v1, :cond_f

    .line 191
    .line 192
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getPong()Lcom/papa91/battle/protocol/Pong;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getPong()Lcom/papa91/battle/protocol/Pong;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    invoke-virtual {v1, v2}, Lcom/papa91/battle/protocol/Pong;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    if-nez v1, :cond_f

    .line 205
    .line 206
    return v3

    .line 207
    :cond_f
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->hasRoomCounter()Z

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->hasRoomCounter()Z

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    if-eq v1, v2, :cond_10

    .line 216
    .line 217
    return v3

    .line 218
    :cond_10
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->hasRoomCounter()Z

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    if-eqz v1, :cond_11

    .line 223
    .line 224
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getRoomCounter()Lcom/papa91/battle/protocol/RoomCounter;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getRoomCounter()Lcom/papa91/battle/protocol/RoomCounter;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    invoke-virtual {v1, v2}, Lcom/papa91/battle/protocol/RoomCounter;->equals(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    if-nez v1, :cond_11

    .line 237
    .line 238
    return v3

    .line 239
    :cond_11
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->hasKickInfo()Z

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->hasKickInfo()Z

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    if-eq v1, v2, :cond_12

    .line 248
    .line 249
    return v3

    .line 250
    :cond_12
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->hasKickInfo()Z

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    if-eqz v1, :cond_13

    .line 255
    .line 256
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getKickInfo()Lcom/papa91/battle/protocol/KickInfo;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getKickInfo()Lcom/papa91/battle/protocol/KickInfo;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    invoke-virtual {v1, v2}, Lcom/papa91/battle/protocol/KickInfo;->equals(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    if-nez v1, :cond_13

    .line 269
    .line 270
    return v3

    .line 271
    :cond_13
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->hasNotification()Z

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->hasNotification()Z

    .line 276
    .line 277
    .line 278
    move-result v2

    .line 279
    if-eq v1, v2, :cond_14

    .line 280
    .line 281
    return v3

    .line 282
    :cond_14
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->hasNotification()Z

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    if-eqz v1, :cond_15

    .line 287
    .line 288
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getNotification()Lcom/papa91/battle/protocol/Notification;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getNotification()Lcom/papa91/battle/protocol/Notification;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    invoke-virtual {v1, v2}, Lcom/papa91/battle/protocol/Notification;->equals(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    if-nez v1, :cond_15

    .line 301
    .line 302
    return v3

    .line 303
    :cond_15
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->hasFrameForwardServer()Z

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->hasFrameForwardServer()Z

    .line 308
    .line 309
    .line 310
    move-result v2

    .line 311
    if-eq v1, v2, :cond_16

    .line 312
    .line 313
    return v3

    .line 314
    :cond_16
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->hasFrameForwardServer()Z

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    if-eqz v1, :cond_17

    .line 319
    .line 320
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getFrameForwardServer()Lcom/papa91/battle/protocol/FrameForwardServer;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getFrameForwardServer()Lcom/papa91/battle/protocol/FrameForwardServer;

    .line 325
    .line 326
    .line 327
    move-result-object v2

    .line 328
    invoke-virtual {v1, v2}, Lcom/papa91/battle/protocol/FrameForwardServer;->equals(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    move-result v1

    .line 332
    if-nez v1, :cond_17

    .line 333
    .line 334
    return v3

    .line 335
    :cond_17
    iget v1, p0, Lcom/papa91/battle/protocol/Response;->broadcastChannel_:I

    .line 336
    .line 337
    iget v2, p1, Lcom/papa91/battle/protocol/Response;->broadcastChannel_:I

    .line 338
    .line 339
    if-eq v1, v2, :cond_18

    .line 340
    .line 341
    return v3

    .line 342
    :cond_18
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->hasAreaOnlinePeopleCount()Z

    .line 343
    .line 344
    .line 345
    move-result v1

    .line 346
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->hasAreaOnlinePeopleCount()Z

    .line 347
    .line 348
    .line 349
    move-result v2

    .line 350
    if-eq v1, v2, :cond_19

    .line 351
    .line 352
    return v3

    .line 353
    :cond_19
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->hasAreaOnlinePeopleCount()Z

    .line 354
    .line 355
    .line 356
    move-result v1

    .line 357
    if-eqz v1, :cond_1a

    .line 358
    .line 359
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getAreaOnlinePeopleCount()Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getAreaOnlinePeopleCount()Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    invoke-virtual {v1, v2}, Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;->equals(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    move-result v1

    .line 371
    if-nez v1, :cond_1a

    .line 372
    .line 373
    return v3

    .line 374
    :cond_1a
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->hasUserProfile()Z

    .line 375
    .line 376
    .line 377
    move-result v1

    .line 378
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->hasUserProfile()Z

    .line 379
    .line 380
    .line 381
    move-result v2

    .line 382
    if-eq v1, v2, :cond_1b

    .line 383
    .line 384
    return v3

    .line 385
    :cond_1b
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->hasUserProfile()Z

    .line 386
    .line 387
    .line 388
    move-result v1

    .line 389
    if-eqz v1, :cond_1c

    .line 390
    .line 391
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getUserProfile()Lcom/papa91/battle/protocol/UserProfile;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getUserProfile()Lcom/papa91/battle/protocol/UserProfile;

    .line 396
    .line 397
    .line 398
    move-result-object v2

    .line 399
    invoke-virtual {v1, v2}, Lcom/papa91/battle/protocol/UserProfile;->equals(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result v1

    .line 403
    if-nez v1, :cond_1c

    .line 404
    .line 405
    return v3

    .line 406
    :cond_1c
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getEndDelimiter()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v1

    .line 410
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getEndDelimiter()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v2

    .line 414
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 415
    .line 416
    .line 417
    move-result v1

    .line 418
    if-nez v1, :cond_1d

    .line 419
    .line 420
    return v3

    .line 421
    :cond_1d
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getBattleScore()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Response;->getBattleScore()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v2

    .line 429
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    move-result v1

    .line 433
    if-nez v1, :cond_1e

    .line 434
    .line 435
    return v3

    .line 436
    :cond_1e
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 437
    .line 438
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 439
    .line 440
    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    .line 441
    .line 442
    .line 443
    move-result p1

    .line 444
    if-nez p1, :cond_1f

    .line 445
    .line 446
    return v3

    .line 447
    :cond_1f
    return v0
.end method

.method public getAreaOnlinePeopleCount()Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->areaOnlinePeopleCount_:Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;->getDefaultInstance()Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getAreaOnlinePeopleCountOrBuilder()Lcom/papa91/battle/protocol/AreaOnlinePeopleCountOrBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getAreaOnlinePeopleCount()Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getBattleScore()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->battleScore_:Ljava/lang/Object;

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
    return-object v0

    .line 10
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response;->battleScore_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getBattleScoreBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->battleScore_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response;->battleScore_:Ljava/lang/Object;

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
    iget v0, p0, Lcom/papa91/battle/protocol/Response;->broadcastChannel_:I

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
    iget v0, p0, Lcom/papa91/battle/protocol/Response;->broadcastChannel_:I

    .line 2
    .line 3
    return v0
.end method

.method public getBroadcastUsers(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

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
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

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
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getDefaultInstanceForType()Lcom/papa91/battle/protocol/Response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getDefaultInstanceForType()Lcom/papa91/battle/protocol/Response;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/papa91/battle/protocol/Response;
    .locals 1

    .line 3
    sget-object v0, Lcom/papa91/battle/protocol/Response;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Response;

    return-object v0
.end method

.method public getEndDelimiter()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->endDelimiter_:Ljava/lang/Object;

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
    return-object v0

    .line 10
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response;->endDelimiter_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getEndDelimiterBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->endDelimiter_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response;->endDelimiter_:Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->error_:Ljava/lang/Object;

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
    return-object v0

    .line 10
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response;->error_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getErrorBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->error_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response;->error_:Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->frameForwardServer_:Lcom/papa91/battle/protocol/FrameForwardServer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/papa91/battle/protocol/FrameForwardServer;->getDefaultInstance()Lcom/papa91/battle/protocol/FrameForwardServer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getFrameForwardServerOrBuilder()Lcom/papa91/battle/protocol/FrameForwardServerOrBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getFrameForwardServer()Lcom/papa91/battle/protocol/FrameForwardServer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getJoinSpectatorReason()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->joinSpectatorReason_:Ljava/lang/Object;

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
    return-object v0

    .line 10
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response;->joinSpectatorReason_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getJoinSpectatorReasonBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->joinSpectatorReason_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/Response;->joinSpectatorReason_:Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->kickInfo_:Lcom/papa91/battle/protocol/KickInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/papa91/battle/protocol/KickInfo;->getDefaultInstance()Lcom/papa91/battle/protocol/KickInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getKickInfoOrBuilder()Lcom/papa91/battle/protocol/KickInfoOrBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getKickInfo()Lcom/papa91/battle/protocol/KickInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getLogicErrorCode()Lcom/papa91/battle/protocol/Response$LogicErrorCode;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Response;->logicErrorCode_:I

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
    iget v0, p0, Lcom/papa91/battle/protocol/Response;->logicErrorCode_:I

    .line 2
    .line 3
    return v0
.end method

.method public getNotification()Lcom/papa91/battle/protocol/Notification;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->notification_:Lcom/papa91/battle/protocol/Notification;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/papa91/battle/protocol/Notification;->getDefaultInstance()Lcom/papa91/battle/protocol/Notification;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getNotificationOrBuilder()Lcom/papa91/battle/protocol/NotificationOrBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getNotification()Lcom/papa91/battle/protocol/Notification;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/papa91/battle/protocol/Response;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Response;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPong()Lcom/papa91/battle/protocol/Pong;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->pong_:Lcom/papa91/battle/protocol/Pong;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/papa91/battle/protocol/Pong;->getDefaultInstance()Lcom/papa91/battle/protocol/Pong;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getPongOrBuilder()Lcom/papa91/battle/protocol/PongOrBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getPong()Lcom/papa91/battle/protocol/Pong;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getRequestId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa91/battle/protocol/Response;->requestId_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getResponse()Lcom/papa91/battle/protocol/Response;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->response_:Lcom/papa91/battle/protocol/Response;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/papa91/battle/protocol/Response;->getDefaultInstance()Lcom/papa91/battle/protocol/Response;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getResponseOrBuilder()Lcom/papa91/battle/protocol/ResponseOrBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getResponse()Lcom/papa91/battle/protocol/Response;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getRoom()Lcom/papa91/battle/protocol/GameRoom;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->room_:Lcom/papa91/battle/protocol/GameRoom;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/papa91/battle/protocol/GameRoom;->getDefaultInstance()Lcom/papa91/battle/protocol/GameRoom;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getRoomCounter()Lcom/papa91/battle/protocol/RoomCounter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->roomCounter_:Lcom/papa91/battle/protocol/RoomCounter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/papa91/battle/protocol/RoomCounter;->getDefaultInstance()Lcom/papa91/battle/protocol/RoomCounter;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getRoomCounterOrBuilder()Lcom/papa91/battle/protocol/RoomCounterOrBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getRoomCounter()Lcom/papa91/battle/protocol/RoomCounter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getRoomOrBuilder()Lcom/papa91/battle/protocol/GameRoomOrBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getRoom()Lcom/papa91/battle/protocol/GameRoom;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    iget v0, p0, Lcom/papa91/battle/protocol/Response;->statusCode_:I

    .line 8
    .line 9
    sget-object v1, Lcom/papa91/battle/protocol/Response$StatusCode;->UNDEFINED_CODE:Lcom/papa91/battle/protocol/Response$StatusCode;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/Response$StatusCode;->getNumber()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    iget v0, p0, Lcom/papa91/battle/protocol/Response;->statusCode_:I

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    add-int/2addr v0, v2

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    :goto_0
    iget-wide v3, p0, Lcom/papa91/battle/protocol/Response;->requestId_:J

    .line 29
    .line 30
    const-wide/16 v5, 0x0

    .line 31
    .line 32
    cmp-long v1, v3, v5

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    const/4 v1, 0x2

    .line 37
    invoke-static {v1, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    add-int/2addr v0, v1

    .line 42
    :cond_2
    iget v1, p0, Lcom/papa91/battle/protocol/Response;->type_:I

    .line 43
    .line 44
    sget-object v3, Lcom/papa91/battle/protocol/Response$ProtoType;->UNDEFINED_RESPONSE:Lcom/papa91/battle/protocol/Response$ProtoType;

    .line 45
    .line 46
    invoke-virtual {v3}, Lcom/papa91/battle/protocol/Response$ProtoType;->getNumber()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eq v1, v3, :cond_3

    .line 51
    .line 52
    const/4 v1, 0x3

    .line 53
    iget v3, p0, Lcom/papa91/battle/protocol/Response;->type_:I

    .line 54
    .line 55
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    add-int/2addr v0, v1

    .line 60
    :cond_3
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response;->room_:Lcom/papa91/battle/protocol/GameRoom;

    .line 61
    .line 62
    if-eqz v1, :cond_4

    .line 63
    .line 64
    const/4 v1, 0x4

    .line 65
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getRoom()Lcom/papa91/battle/protocol/GameRoom;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    add-int/2addr v0, v1

    .line 74
    :cond_4
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response;->response_:Lcom/papa91/battle/protocol/Response;

    .line 75
    .line 76
    if-eqz v1, :cond_5

    .line 77
    .line 78
    const/4 v1, 0x5

    .line 79
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getResponse()Lcom/papa91/battle/protocol/Response;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    add-int/2addr v0, v1

    .line 88
    :cond_5
    const/4 v1, 0x0

    .line 89
    const/4 v3, 0x0

    .line 90
    :goto_1
    iget-object v4, p0, Lcom/papa91/battle/protocol/Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    .line 91
    .line 92
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-ge v1, v4, :cond_6

    .line 97
    .line 98
    iget-object v4, p0, Lcom/papa91/battle/protocol/Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    .line 99
    .line 100
    invoke-interface {v4, v1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    add-int/2addr v3, v4

    .line 109
    add-int/lit8 v1, v1, 0x1

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_6
    add-int/2addr v0, v3

    .line 113
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getBroadcastUsersList()Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-nez v1, :cond_7

    .line 122
    .line 123
    add-int/lit8 v0, v0, 0x1

    .line 124
    .line 125
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    add-int/2addr v0, v1

    .line 130
    :cond_7
    iput v3, p0, Lcom/papa91/battle/protocol/Response;->broadcastUsersMemoizedSerializedSize:I

    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getErrorBytes()Lcom/google/protobuf/ByteString;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-nez v1, :cond_8

    .line 141
    .line 142
    const/4 v1, 0x7

    .line 143
    iget-object v3, p0, Lcom/papa91/battle/protocol/Response;->error_:Ljava/lang/Object;

    .line 144
    .line 145
    invoke-static {v1, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    add-int/2addr v0, v1

    .line 150
    :cond_8
    :goto_2
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response;->simpleRoom_:Ljava/util/List;

    .line 151
    .line 152
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-ge v2, v1, :cond_9

    .line 157
    .line 158
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response;->simpleRoom_:Ljava/util/List;

    .line 159
    .line 160
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    check-cast v1, Lcom/google/protobuf/MessageLite;

    .line 165
    .line 166
    const/16 v3, 0x8

    .line 167
    .line 168
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    add-int/2addr v0, v1

    .line 173
    add-int/lit8 v2, v2, 0x1

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_9
    iget v1, p0, Lcom/papa91/battle/protocol/Response;->logicErrorCode_:I

    .line 177
    .line 178
    sget-object v2, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->UNDEFINED_EROR_CODE:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 179
    .line 180
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->getNumber()I

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-eq v1, v2, :cond_a

    .line 185
    .line 186
    const/16 v1, 0x9

    .line 187
    .line 188
    iget v2, p0, Lcom/papa91/battle/protocol/Response;->logicErrorCode_:I

    .line 189
    .line 190
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    add-int/2addr v0, v1

    .line 195
    :cond_a
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getJoinSpectatorReasonBytes()Lcom/google/protobuf/ByteString;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    if-nez v1, :cond_b

    .line 204
    .line 205
    const/16 v1, 0xa

    .line 206
    .line 207
    iget-object v2, p0, Lcom/papa91/battle/protocol/Response;->joinSpectatorReason_:Ljava/lang/Object;

    .line 208
    .line 209
    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    add-int/2addr v0, v1

    .line 214
    :cond_b
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response;->pong_:Lcom/papa91/battle/protocol/Pong;

    .line 215
    .line 216
    if-eqz v1, :cond_c

    .line 217
    .line 218
    const/16 v1, 0xb

    .line 219
    .line 220
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getPong()Lcom/papa91/battle/protocol/Pong;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    add-int/2addr v0, v1

    .line 229
    :cond_c
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response;->roomCounter_:Lcom/papa91/battle/protocol/RoomCounter;

    .line 230
    .line 231
    if-eqz v1, :cond_d

    .line 232
    .line 233
    const/16 v1, 0xc

    .line 234
    .line 235
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getRoomCounter()Lcom/papa91/battle/protocol/RoomCounter;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    add-int/2addr v0, v1

    .line 244
    :cond_d
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response;->kickInfo_:Lcom/papa91/battle/protocol/KickInfo;

    .line 245
    .line 246
    if-eqz v1, :cond_e

    .line 247
    .line 248
    const/16 v1, 0xd

    .line 249
    .line 250
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getKickInfo()Lcom/papa91/battle/protocol/KickInfo;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 255
    .line 256
    .line 257
    move-result v1

    .line 258
    add-int/2addr v0, v1

    .line 259
    :cond_e
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response;->notification_:Lcom/papa91/battle/protocol/Notification;

    .line 260
    .line 261
    if-eqz v1, :cond_f

    .line 262
    .line 263
    const/16 v1, 0xe

    .line 264
    .line 265
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getNotification()Lcom/papa91/battle/protocol/Notification;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    add-int/2addr v0, v1

    .line 274
    :cond_f
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response;->frameForwardServer_:Lcom/papa91/battle/protocol/FrameForwardServer;

    .line 275
    .line 276
    if-eqz v1, :cond_10

    .line 277
    .line 278
    const/16 v1, 0xf

    .line 279
    .line 280
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getFrameForwardServer()Lcom/papa91/battle/protocol/FrameForwardServer;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 285
    .line 286
    .line 287
    move-result v1

    .line 288
    add-int/2addr v0, v1

    .line 289
    :cond_10
    iget v1, p0, Lcom/papa91/battle/protocol/Response;->broadcastChannel_:I

    .line 290
    .line 291
    sget-object v2, Lcom/papa91/battle/protocol/Response$BroadcastChannel;->ALL:Lcom/papa91/battle/protocol/Response$BroadcastChannel;

    .line 292
    .line 293
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/Response$BroadcastChannel;->getNumber()I

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    if-eq v1, v2, :cond_11

    .line 298
    .line 299
    const/16 v1, 0x10

    .line 300
    .line 301
    iget v2, p0, Lcom/papa91/battle/protocol/Response;->broadcastChannel_:I

    .line 302
    .line 303
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    add-int/2addr v0, v1

    .line 308
    :cond_11
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response;->areaOnlinePeopleCount_:Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    .line 309
    .line 310
    if-eqz v1, :cond_12

    .line 311
    .line 312
    const/16 v1, 0x11

    .line 313
    .line 314
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getAreaOnlinePeopleCount()Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 319
    .line 320
    .line 321
    move-result v1

    .line 322
    add-int/2addr v0, v1

    .line 323
    :cond_12
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response;->userProfile_:Lcom/papa91/battle/protocol/UserProfile;

    .line 324
    .line 325
    if-eqz v1, :cond_13

    .line 326
    .line 327
    const/16 v1, 0x12

    .line 328
    .line 329
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getUserProfile()Lcom/papa91/battle/protocol/UserProfile;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    add-int/2addr v0, v1

    .line 338
    :cond_13
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getBattleScoreBytes()Lcom/google/protobuf/ByteString;

    .line 339
    .line 340
    .line 341
    move-result-object v1

    .line 342
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 343
    .line 344
    .line 345
    move-result v1

    .line 346
    if-nez v1, :cond_14

    .line 347
    .line 348
    const/16 v1, 0x13

    .line 349
    .line 350
    iget-object v2, p0, Lcom/papa91/battle/protocol/Response;->battleScore_:Ljava/lang/Object;

    .line 351
    .line 352
    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 353
    .line 354
    .line 355
    move-result v1

    .line 356
    add-int/2addr v0, v1

    .line 357
    :cond_14
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getEndDelimiterBytes()Lcom/google/protobuf/ByteString;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 362
    .line 363
    .line 364
    move-result v1

    .line 365
    if-nez v1, :cond_15

    .line 366
    .line 367
    const/16 v1, 0x3e7

    .line 368
    .line 369
    iget-object v2, p0, Lcom/papa91/battle/protocol/Response;->endDelimiter_:Ljava/lang/Object;

    .line 370
    .line 371
    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 372
    .line 373
    .line 374
    move-result v1

    .line 375
    add-int/2addr v0, v1

    .line 376
    :cond_15
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 377
    .line 378
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    .line 379
    .line 380
    .line 381
    move-result v1

    .line 382
    add-int/2addr v0, v1

    .line 383
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 384
    .line 385
    return v0
.end method

.method public getSimpleRoom(I)Lcom/papa91/battle/protocol/SimpleRoom;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->simpleRoom_:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/papa91/battle/protocol/SimpleRoom;

    .line 8
    .line 9
    return-object p1
.end method

.method public getSimpleRoomCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->simpleRoom_:Ljava/util/List;

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
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->simpleRoom_:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSimpleRoomOrBuilder(I)Lcom/papa91/battle/protocol/SimpleRoomOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->simpleRoom_:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/papa91/battle/protocol/SimpleRoomOrBuilder;

    .line 8
    .line 9
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
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->simpleRoom_:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStatusCode()Lcom/papa91/battle/protocol/Response$StatusCode;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Response;->statusCode_:I

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
    iget v0, p0, Lcom/papa91/battle/protocol/Response;->statusCode_:I

    .line 2
    .line 3
    return v0
.end method

.method public getType()Lcom/papa91/battle/protocol/Response$ProtoType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Response;->type_:I

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
    iget v0, p0, Lcom/papa91/battle/protocol/Response;->type_:I

    .line 2
    .line 3
    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUserProfile()Lcom/papa91/battle/protocol/UserProfile;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->userProfile_:Lcom/papa91/battle/protocol/UserProfile;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/papa91/battle/protocol/UserProfile;->getDefaultInstance()Lcom/papa91/battle/protocol/UserProfile;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getUserProfileOrBuilder()Lcom/papa91/battle/protocol/UserProfileOrBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getUserProfile()Lcom/papa91/battle/protocol/UserProfile;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public hasAreaOnlinePeopleCount()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->areaOnlinePeopleCount_:Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public hasFrameForwardServer()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->frameForwardServer_:Lcom/papa91/battle/protocol/FrameForwardServer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public hasKickInfo()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->kickInfo_:Lcom/papa91/battle/protocol/KickInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public hasNotification()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->notification_:Lcom/papa91/battle/protocol/Notification;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public hasPong()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->pong_:Lcom/papa91/battle/protocol/Pong;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public hasResponse()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->response_:Lcom/papa91/battle/protocol/Response;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public hasRoom()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->room_:Lcom/papa91/battle/protocol/GameRoom;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public hasRoomCounter()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->roomCounter_:Lcom/papa91/battle/protocol/RoomCounter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public hasUserProfile()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->userProfile_:Lcom/papa91/battle/protocol/UserProfile;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    invoke-static {}, Lcom/papa91/battle/protocol/Response;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/16 v1, 0x30b

    .line 15
    .line 16
    add-int/2addr v1, v0

    .line 17
    mul-int/lit8 v1, v1, 0x25

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    mul-int/lit8 v1, v1, 0x35

    .line 22
    .line 23
    iget v0, p0, Lcom/papa91/battle/protocol/Response;->statusCode_:I

    .line 24
    .line 25
    add-int/2addr v1, v0

    .line 26
    mul-int/lit8 v1, v1, 0x25

    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x2

    .line 29
    .line 30
    mul-int/lit8 v1, v1, 0x35

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getRequestId()J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    add-int/2addr v1, v0

    .line 41
    mul-int/lit8 v1, v1, 0x25

    .line 42
    .line 43
    add-int/lit8 v1, v1, 0x3

    .line 44
    .line 45
    mul-int/lit8 v1, v1, 0x35

    .line 46
    .line 47
    iget v0, p0, Lcom/papa91/battle/protocol/Response;->type_:I

    .line 48
    .line 49
    add-int/2addr v1, v0

    .line 50
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->hasRoom()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    mul-int/lit8 v1, v1, 0x25

    .line 57
    .line 58
    add-int/lit8 v1, v1, 0x4

    .line 59
    .line 60
    mul-int/lit8 v1, v1, 0x35

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getRoom()Lcom/papa91/battle/protocol/GameRoom;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->hashCode()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    add-int/2addr v1, v0

    .line 71
    :cond_1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->hasResponse()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    mul-int/lit8 v1, v1, 0x25

    .line 78
    .line 79
    add-int/lit8 v1, v1, 0x5

    .line 80
    .line 81
    mul-int/lit8 v1, v1, 0x35

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getResponse()Lcom/papa91/battle/protocol/Response;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Response;->hashCode()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    add-int/2addr v1, v0

    .line 92
    :cond_2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getBroadcastUsersCount()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-lez v0, :cond_3

    .line 97
    .line 98
    mul-int/lit8 v1, v1, 0x25

    .line 99
    .line 100
    add-int/lit8 v1, v1, 0x6

    .line 101
    .line 102
    mul-int/lit8 v1, v1, 0x35

    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getBroadcastUsersList()Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    add-int/2addr v1, v0

    .line 113
    :cond_3
    mul-int/lit8 v1, v1, 0x25

    .line 114
    .line 115
    add-int/lit8 v1, v1, 0x7

    .line 116
    .line 117
    mul-int/lit8 v1, v1, 0x35

    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getError()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    add-int/2addr v1, v0

    .line 128
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getSimpleRoomCount()I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-lez v0, :cond_4

    .line 133
    .line 134
    mul-int/lit8 v1, v1, 0x25

    .line 135
    .line 136
    add-int/lit8 v1, v1, 0x8

    .line 137
    .line 138
    mul-int/lit8 v1, v1, 0x35

    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getSimpleRoomList()Ljava/util/List;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    add-int/2addr v1, v0

    .line 149
    :cond_4
    mul-int/lit8 v1, v1, 0x25

    .line 150
    .line 151
    add-int/lit8 v1, v1, 0x9

    .line 152
    .line 153
    mul-int/lit8 v1, v1, 0x35

    .line 154
    .line 155
    iget v0, p0, Lcom/papa91/battle/protocol/Response;->logicErrorCode_:I

    .line 156
    .line 157
    add-int/2addr v1, v0

    .line 158
    mul-int/lit8 v1, v1, 0x25

    .line 159
    .line 160
    add-int/lit8 v1, v1, 0xa

    .line 161
    .line 162
    mul-int/lit8 v1, v1, 0x35

    .line 163
    .line 164
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getJoinSpectatorReason()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    add-int/2addr v1, v0

    .line 173
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->hasPong()Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-eqz v0, :cond_5

    .line 178
    .line 179
    mul-int/lit8 v1, v1, 0x25

    .line 180
    .line 181
    add-int/lit8 v1, v1, 0xb

    .line 182
    .line 183
    mul-int/lit8 v1, v1, 0x35

    .line 184
    .line 185
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getPong()Lcom/papa91/battle/protocol/Pong;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Pong;->hashCode()I

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    add-int/2addr v1, v0

    .line 194
    :cond_5
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->hasRoomCounter()Z

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    if-eqz v0, :cond_6

    .line 199
    .line 200
    mul-int/lit8 v1, v1, 0x25

    .line 201
    .line 202
    add-int/lit8 v1, v1, 0xc

    .line 203
    .line 204
    mul-int/lit8 v1, v1, 0x35

    .line 205
    .line 206
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getRoomCounter()Lcom/papa91/battle/protocol/RoomCounter;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomCounter;->hashCode()I

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    add-int/2addr v1, v0

    .line 215
    :cond_6
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->hasKickInfo()Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    if-eqz v0, :cond_7

    .line 220
    .line 221
    mul-int/lit8 v1, v1, 0x25

    .line 222
    .line 223
    add-int/lit8 v1, v1, 0xd

    .line 224
    .line 225
    mul-int/lit8 v1, v1, 0x35

    .line 226
    .line 227
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getKickInfo()Lcom/papa91/battle/protocol/KickInfo;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/KickInfo;->hashCode()I

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    add-int/2addr v1, v0

    .line 236
    :cond_7
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->hasNotification()Z

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    if-eqz v0, :cond_8

    .line 241
    .line 242
    mul-int/lit8 v1, v1, 0x25

    .line 243
    .line 244
    add-int/lit8 v1, v1, 0xe

    .line 245
    .line 246
    mul-int/lit8 v1, v1, 0x35

    .line 247
    .line 248
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getNotification()Lcom/papa91/battle/protocol/Notification;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Notification;->hashCode()I

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    add-int/2addr v1, v0

    .line 257
    :cond_8
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->hasFrameForwardServer()Z

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    if-eqz v0, :cond_9

    .line 262
    .line 263
    mul-int/lit8 v1, v1, 0x25

    .line 264
    .line 265
    add-int/lit8 v1, v1, 0xf

    .line 266
    .line 267
    mul-int/lit8 v1, v1, 0x35

    .line 268
    .line 269
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getFrameForwardServer()Lcom/papa91/battle/protocol/FrameForwardServer;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/FrameForwardServer;->hashCode()I

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    add-int/2addr v1, v0

    .line 278
    :cond_9
    mul-int/lit8 v1, v1, 0x25

    .line 279
    .line 280
    add-int/lit8 v1, v1, 0x10

    .line 281
    .line 282
    mul-int/lit8 v1, v1, 0x35

    .line 283
    .line 284
    iget v0, p0, Lcom/papa91/battle/protocol/Response;->broadcastChannel_:I

    .line 285
    .line 286
    add-int/2addr v1, v0

    .line 287
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->hasAreaOnlinePeopleCount()Z

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    if-eqz v0, :cond_a

    .line 292
    .line 293
    mul-int/lit8 v1, v1, 0x25

    .line 294
    .line 295
    add-int/lit8 v1, v1, 0x11

    .line 296
    .line 297
    mul-int/lit8 v1, v1, 0x35

    .line 298
    .line 299
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getAreaOnlinePeopleCount()Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;->hashCode()I

    .line 304
    .line 305
    .line 306
    move-result v0

    .line 307
    add-int/2addr v1, v0

    .line 308
    :cond_a
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->hasUserProfile()Z

    .line 309
    .line 310
    .line 311
    move-result v0

    .line 312
    if-eqz v0, :cond_b

    .line 313
    .line 314
    mul-int/lit8 v1, v1, 0x25

    .line 315
    .line 316
    add-int/lit8 v1, v1, 0x12

    .line 317
    .line 318
    mul-int/lit8 v1, v1, 0x35

    .line 319
    .line 320
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getUserProfile()Lcom/papa91/battle/protocol/UserProfile;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/UserProfile;->hashCode()I

    .line 325
    .line 326
    .line 327
    move-result v0

    .line 328
    add-int/2addr v1, v0

    .line 329
    :cond_b
    mul-int/lit8 v1, v1, 0x25

    .line 330
    .line 331
    add-int/lit16 v1, v1, 0x3e7

    .line 332
    .line 333
    mul-int/lit8 v1, v1, 0x35

    .line 334
    .line 335
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getEndDelimiter()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 340
    .line 341
    .line 342
    move-result v0

    .line 343
    add-int/2addr v1, v0

    .line 344
    mul-int/lit8 v1, v1, 0x25

    .line 345
    .line 346
    add-int/lit8 v1, v1, 0x13

    .line 347
    .line 348
    mul-int/lit8 v1, v1, 0x35

    .line 349
    .line 350
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getBattleScore()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 355
    .line 356
    .line 357
    move-result v0

    .line 358
    add-int/2addr v1, v0

    .line 359
    mul-int/lit8 v1, v1, 0x1d

    .line 360
    .line 361
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 362
    .line 363
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    add-int/2addr v1, v0

    .line 368
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 369
    .line 370
    return v1
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
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/papa91/battle/protocol/Response;->memoizedIsInitialized:B

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_1
    iput-byte v1, p0, Lcom/papa91/battle/protocol/Response;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->newBuilderForType()Lcom/papa91/battle/protocol/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Response;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/papa91/battle/protocol/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->newBuilderForType()Lcom/papa91/battle/protocol/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/papa91/battle/protocol/Response$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/papa91/battle/protocol/Response;->newBuilder()Lcom/papa91/battle/protocol/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/papa91/battle/protocol/Response$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/papa91/battle/protocol/Response$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/papa91/battle/protocol/Response$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/papa91/battle/protocol/Response$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Lcom/papa91/battle/protocol/Response;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/papa91/battle/protocol/Response;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->toBuilder()Lcom/papa91/battle/protocol/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->toBuilder()Lcom/papa91/battle/protocol/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/papa91/battle/protocol/Response$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/papa91/battle/protocol/Response;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Response;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/papa91/battle/protocol/Response$Builder;

    invoke-direct {v0, v1}, Lcom/papa91/battle/protocol/Response$Builder;-><init>(Lcom/papa91/battle/protocol/Response$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/papa91/battle/protocol/Response$Builder;

    invoke-direct {v0, v1}, Lcom/papa91/battle/protocol/Response$Builder;-><init>(Lcom/papa91/battle/protocol/Response$1;)V

    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Response$Builder;->mergeFrom(Lcom/papa91/battle/protocol/Response;)Lcom/papa91/battle/protocol/Response$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getSerializedSize()I

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/papa91/battle/protocol/Response;->statusCode_:I

    .line 5
    .line 6
    sget-object v1, Lcom/papa91/battle/protocol/Response$StatusCode;->UNDEFINED_CODE:Lcom/papa91/battle/protocol/Response$StatusCode;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/Response$StatusCode;->getNumber()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    iget v0, p0, Lcom/papa91/battle/protocol/Response;->statusCode_:I

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-wide v0, p0, Lcom/papa91/battle/protocol/Response;->requestId_:J

    .line 21
    .line 22
    const-wide/16 v2, 0x0

    .line 23
    .line 24
    cmp-long v4, v0, v2

    .line 25
    .line 26
    if-eqz v4, :cond_1

    .line 27
    .line 28
    const/4 v2, 0x2

    .line 29
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget v0, p0, Lcom/papa91/battle/protocol/Response;->type_:I

    .line 33
    .line 34
    sget-object v1, Lcom/papa91/battle/protocol/Response$ProtoType;->UNDEFINED_RESPONSE:Lcom/papa91/battle/protocol/Response$ProtoType;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/Response$ProtoType;->getNumber()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eq v0, v1, :cond_2

    .line 41
    .line 42
    const/4 v0, 0x3

    .line 43
    iget v1, p0, Lcom/papa91/battle/protocol/Response;->type_:I

    .line 44
    .line 45
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 46
    .line 47
    .line 48
    :cond_2
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->room_:Lcom/papa91/battle/protocol/GameRoom;

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    const/4 v0, 0x4

    .line 53
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getRoom()Lcom/papa91/battle/protocol/GameRoom;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->response_:Lcom/papa91/battle/protocol/Response;

    .line 61
    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    const/4 v0, 0x5

    .line 65
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getResponse()Lcom/papa91/battle/protocol/Response;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 70
    .line 71
    .line 72
    :cond_4
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getBroadcastUsersList()Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-lez v0, :cond_5

    .line 81
    .line 82
    const/16 v0, 0x32

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 85
    .line 86
    .line 87
    iget v0, p0, Lcom/papa91/battle/protocol/Response;->broadcastUsersMemoizedSerializedSize:I

    .line 88
    .line 89
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 90
    .line 91
    .line 92
    :cond_5
    const/4 v0, 0x0

    .line 93
    const/4 v1, 0x0

    .line 94
    :goto_0
    iget-object v2, p0, Lcom/papa91/battle/protocol/Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    .line 95
    .line 96
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-ge v1, v2, :cond_6

    .line 101
    .line 102
    iget-object v2, p0, Lcom/papa91/battle/protocol/Response;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    .line 103
    .line 104
    invoke-interface {v2, v1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    invoke-virtual {p1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    .line 109
    .line 110
    .line 111
    add-int/lit8 v1, v1, 0x1

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_6
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getErrorBytes()Lcom/google/protobuf/ByteString;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-nez v1, :cond_7

    .line 123
    .line 124
    const/4 v1, 0x7

    .line 125
    iget-object v2, p0, Lcom/papa91/battle/protocol/Response;->error_:Ljava/lang/Object;

    .line 126
    .line 127
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response;->simpleRoom_:Ljava/util/List;

    .line 131
    .line 132
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-ge v0, v1, :cond_8

    .line 137
    .line 138
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response;->simpleRoom_:Ljava/util/List;

    .line 139
    .line 140
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    check-cast v1, Lcom/google/protobuf/MessageLite;

    .line 145
    .line 146
    const/16 v2, 0x8

    .line 147
    .line 148
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 149
    .line 150
    .line 151
    add-int/lit8 v0, v0, 0x1

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_8
    iget v0, p0, Lcom/papa91/battle/protocol/Response;->logicErrorCode_:I

    .line 155
    .line 156
    sget-object v1, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->UNDEFINED_EROR_CODE:Lcom/papa91/battle/protocol/Response$LogicErrorCode;

    .line 157
    .line 158
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/Response$LogicErrorCode;->getNumber()I

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eq v0, v1, :cond_9

    .line 163
    .line 164
    const/16 v0, 0x9

    .line 165
    .line 166
    iget v1, p0, Lcom/papa91/battle/protocol/Response;->logicErrorCode_:I

    .line 167
    .line 168
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 169
    .line 170
    .line 171
    :cond_9
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getJoinSpectatorReasonBytes()Lcom/google/protobuf/ByteString;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-nez v0, :cond_a

    .line 180
    .line 181
    const/16 v0, 0xa

    .line 182
    .line 183
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response;->joinSpectatorReason_:Ljava/lang/Object;

    .line 184
    .line 185
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    :cond_a
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->pong_:Lcom/papa91/battle/protocol/Pong;

    .line 189
    .line 190
    if-eqz v0, :cond_b

    .line 191
    .line 192
    const/16 v0, 0xb

    .line 193
    .line 194
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getPong()Lcom/papa91/battle/protocol/Pong;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 199
    .line 200
    .line 201
    :cond_b
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->roomCounter_:Lcom/papa91/battle/protocol/RoomCounter;

    .line 202
    .line 203
    if-eqz v0, :cond_c

    .line 204
    .line 205
    const/16 v0, 0xc

    .line 206
    .line 207
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getRoomCounter()Lcom/papa91/battle/protocol/RoomCounter;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 212
    .line 213
    .line 214
    :cond_c
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->kickInfo_:Lcom/papa91/battle/protocol/KickInfo;

    .line 215
    .line 216
    if-eqz v0, :cond_d

    .line 217
    .line 218
    const/16 v0, 0xd

    .line 219
    .line 220
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getKickInfo()Lcom/papa91/battle/protocol/KickInfo;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 225
    .line 226
    .line 227
    :cond_d
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->notification_:Lcom/papa91/battle/protocol/Notification;

    .line 228
    .line 229
    if-eqz v0, :cond_e

    .line 230
    .line 231
    const/16 v0, 0xe

    .line 232
    .line 233
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getNotification()Lcom/papa91/battle/protocol/Notification;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 238
    .line 239
    .line 240
    :cond_e
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->frameForwardServer_:Lcom/papa91/battle/protocol/FrameForwardServer;

    .line 241
    .line 242
    if-eqz v0, :cond_f

    .line 243
    .line 244
    const/16 v0, 0xf

    .line 245
    .line 246
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getFrameForwardServer()Lcom/papa91/battle/protocol/FrameForwardServer;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 251
    .line 252
    .line 253
    :cond_f
    iget v0, p0, Lcom/papa91/battle/protocol/Response;->broadcastChannel_:I

    .line 254
    .line 255
    sget-object v1, Lcom/papa91/battle/protocol/Response$BroadcastChannel;->ALL:Lcom/papa91/battle/protocol/Response$BroadcastChannel;

    .line 256
    .line 257
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/Response$BroadcastChannel;->getNumber()I

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    if-eq v0, v1, :cond_10

    .line 262
    .line 263
    const/16 v0, 0x10

    .line 264
    .line 265
    iget v1, p0, Lcom/papa91/battle/protocol/Response;->broadcastChannel_:I

    .line 266
    .line 267
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 268
    .line 269
    .line 270
    :cond_10
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->areaOnlinePeopleCount_:Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    .line 271
    .line 272
    if-eqz v0, :cond_11

    .line 273
    .line 274
    const/16 v0, 0x11

    .line 275
    .line 276
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getAreaOnlinePeopleCount()Lcom/papa91/battle/protocol/AreaOnlinePeopleCount;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 281
    .line 282
    .line 283
    :cond_11
    iget-object v0, p0, Lcom/papa91/battle/protocol/Response;->userProfile_:Lcom/papa91/battle/protocol/UserProfile;

    .line 284
    .line 285
    if-eqz v0, :cond_12

    .line 286
    .line 287
    const/16 v0, 0x12

    .line 288
    .line 289
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getUserProfile()Lcom/papa91/battle/protocol/UserProfile;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 294
    .line 295
    .line 296
    :cond_12
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getBattleScoreBytes()Lcom/google/protobuf/ByteString;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    if-nez v0, :cond_13

    .line 305
    .line 306
    const/16 v0, 0x13

    .line 307
    .line 308
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response;->battleScore_:Ljava/lang/Object;

    .line 309
    .line 310
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    :cond_13
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Response;->getEndDelimiterBytes()Lcom/google/protobuf/ByteString;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 318
    .line 319
    .line 320
    move-result v0

    .line 321
    if-nez v0, :cond_14

    .line 322
    .line 323
    const/16 v0, 0x3e7

    .line 324
    .line 325
    iget-object v1, p0, Lcom/papa91/battle/protocol/Response;->endDelimiter_:Ljava/lang/Object;

    .line 326
    .line 327
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    :cond_14
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 331
    .line 332
    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 333
    .line 334
    .line 335
    return-void
.end method
