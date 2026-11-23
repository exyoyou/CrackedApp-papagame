.class public final Lcom/papa91/battle/protocol/Params;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/papa91/battle/protocol/ParamsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/battle/protocol/Params$Builder;,
        Lcom/papa91/battle/protocol/Params$RoomType;,
        Lcom/papa91/battle/protocol/Params$ChannelType;,
        Lcom/papa91/battle/protocol/Params$ServerPlayMode;
    }
.end annotation


# static fields
.field public static final ALLOWPCJOIN_FIELD_NUMBER:I = 0x18

.field public static final ALLOWPERIPHERALJOIN_FIELD_NUMBER:I = 0x8

.field public static final ALLOWSPECTATORJOIN_FIELD_NUMBER:I = 0x7

.field public static final BATTLEAREA_FIELD_NUMBER:I = 0x13

.field public static final BATTLESCOREBOARD_FIELD_NUMBER:I = 0x1b

.field public static final CHALLENGECOINS_FIELD_NUMBER:I = 0x5

.field public static final CHANNELTYPE_FIELD_NUMBER:I = 0x14

.field public static final CLOSEPOSITION_FIELD_NUMBER:I = 0x9

.field public static final COLLECTIONID_FIELD_NUMBER:I = 0x15

.field private static final DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Params;

.field public static final DEVICEID_FIELD_NUMBER:I = 0x11

.field public static final DISABLEMOBILEJOIN_FIELD_NUMBER:I = 0x19

.field public static final FIGHTID_FIELD_NUMBER:I = 0xe

.field public static final FROMLIVE_FIELD_NUMBER:I = 0x16

.field public static final GAMEID_FIELD_NUMBER:I = 0x3

.field public static final MERGEMESSAGECHANNEL_FIELD_NUMBER:I = 0x1a

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/papa91/battle/protocol/Params;",
            ">;"
        }
    .end annotation
.end field

.field public static final PASSWORD_FIELD_NUMBER:I = 0x6

.field public static final PINGVAL_FIELD_NUMBER:I = 0xf

.field public static final PLAYMODE_FIELD_NUMBER:I = 0x17

.field public static final ROOMID_FIELD_NUMBER:I = 0x4

.field public static final ROOMPOSITIONINDEX_FIELD_NUMBER:I = 0xa

.field public static final ROOMTYPE_FIELD_NUMBER:I = 0xb

.field public static final SILENT_FIELD_NUMBER:I = 0xc

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x10

.field public static final TOKEN_FIELD_NUMBER:I = 0x2

.field public static final UID_FIELD_NUMBER:I = 0x1

.field public static final USEPERIPHERAL_FIELD_NUMBER:I = 0xd

.field private static final serialVersionUID:J


# instance fields
.field private allowPCJoin_:Z

.field private allowPeripheralJoin_:Z

.field private allowSpectatorJoin_:Z

.field private battleArea_:I

.field private volatile battleScoreBoard_:Ljava/lang/Object;

.field private challengeCoins_:I

.field private channelType_:I

.field private closePosition_:Z

.field private collectionId_:I

.field private volatile deviceId_:Ljava/lang/Object;

.field private disableMobileJoin_:Z

.field private fightId_:J

.field private fromLive_:Z

.field private gameId_:J

.field private memoizedIsInitialized:B

.field private mergeMessageChannel_:Z

.field private volatile password_:Ljava/lang/Object;

.field private pingVal_:I

.field private playMode_:I

.field private roomId_:I

.field private roomPositionIndex_:I

.field private roomType_:I

.field private silent_:Z

.field private timestamp_:J

.field private volatile token_:Ljava/lang/Object;

.field private uid_:I

.field private usePeripheral_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa91/battle/protocol/Params;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa91/battle/protocol/Params;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/papa91/battle/protocol/Params;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Params;

    .line 7
    .line 8
    new-instance v0, Lcom/papa91/battle/protocol/Params$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/papa91/battle/protocol/Params$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/papa91/battle/protocol/Params;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/papa91/battle/protocol/Params;->memoizedIsInitialized:B

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/papa91/battle/protocol/Params;->token_:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lcom/papa91/battle/protocol/Params;->password_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 9
    iput v1, p0, Lcom/papa91/battle/protocol/Params;->roomType_:I

    .line 10
    iput-object v0, p0, Lcom/papa91/battle/protocol/Params;->deviceId_:Ljava/lang/Object;

    .line 11
    iput v1, p0, Lcom/papa91/battle/protocol/Params;->battleArea_:I

    .line 12
    iput v1, p0, Lcom/papa91/battle/protocol/Params;->channelType_:I

    .line 13
    iput v1, p0, Lcom/papa91/battle/protocol/Params;->playMode_:I

    .line 14
    iput-object v0, p0, Lcom/papa91/battle/protocol/Params;->battleScoreBoard_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Params;-><init>()V

    .line 16
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 18
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    .line 19
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    goto/16 :goto_2

    .line 20
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 21
    iput-object v2, p0, Lcom/papa91/battle/protocol/Params;->battleScoreBoard_:Ljava/lang/Object;

    goto :goto_0

    .line 22
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/papa91/battle/protocol/Params;->mergeMessageChannel_:Z

    goto :goto_0

    .line 23
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/papa91/battle/protocol/Params;->disableMobileJoin_:Z

    goto :goto_0

    .line 24
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/papa91/battle/protocol/Params;->allowPCJoin_:Z

    goto :goto_0

    .line 25
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 26
    iput v2, p0, Lcom/papa91/battle/protocol/Params;->playMode_:I

    goto :goto_0

    .line 27
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/papa91/battle/protocol/Params;->fromLive_:Z

    goto :goto_0

    .line 28
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/papa91/battle/protocol/Params;->collectionId_:I

    goto :goto_0

    .line 29
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 30
    iput v2, p0, Lcom/papa91/battle/protocol/Params;->channelType_:I

    goto :goto_0

    .line 31
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 32
    iput v2, p0, Lcom/papa91/battle/protocol/Params;->battleArea_:I

    goto :goto_0

    .line 33
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 34
    iput-object v2, p0, Lcom/papa91/battle/protocol/Params;->deviceId_:Ljava/lang/Object;

    goto :goto_0

    .line 35
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/papa91/battle/protocol/Params;->timestamp_:J

    goto :goto_0

    .line 36
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/papa91/battle/protocol/Params;->pingVal_:I

    goto :goto_0

    .line 37
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/papa91/battle/protocol/Params;->fightId_:J

    goto :goto_0

    .line 38
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/papa91/battle/protocol/Params;->usePeripheral_:Z

    goto :goto_0

    .line 39
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/papa91/battle/protocol/Params;->silent_:Z

    goto :goto_0

    .line 40
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 41
    iput v2, p0, Lcom/papa91/battle/protocol/Params;->roomType_:I

    goto :goto_0

    .line 42
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/papa91/battle/protocol/Params;->roomPositionIndex_:I

    goto/16 :goto_0

    .line 43
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/papa91/battle/protocol/Params;->closePosition_:Z

    goto/16 :goto_0

    .line 44
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/papa91/battle/protocol/Params;->allowPeripheralJoin_:Z

    goto/16 :goto_0

    .line 45
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/papa91/battle/protocol/Params;->allowSpectatorJoin_:Z

    goto/16 :goto_0

    .line 46
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 47
    iput-object v2, p0, Lcom/papa91/battle/protocol/Params;->password_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 48
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/papa91/battle/protocol/Params;->challengeCoins_:I

    goto/16 :goto_0

    .line 49
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/papa91/battle/protocol/Params;->roomId_:I

    goto/16 :goto_0

    .line 50
    :sswitch_17
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/papa91/battle/protocol/Params;->gameId_:J

    goto/16 :goto_0

    .line 51
    :sswitch_18
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 52
    iput-object v2, p0, Lcom/papa91/battle/protocol/Params;->token_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 53
    :sswitch_19
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/papa91/battle/protocol/Params;->uid_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_1a
    const/4 v1, 0x1

    goto/16 :goto_0

    :goto_2
    if-nez v2, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 54
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 55
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 56
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 58
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 59
    throw p1

    .line 60
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 61
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1a
        0x8 -> :sswitch_19
        0x12 -> :sswitch_18
        0x18 -> :sswitch_17
        0x20 -> :sswitch_16
        0x28 -> :sswitch_15
        0x32 -> :sswitch_14
        0x38 -> :sswitch_13
        0x40 -> :sswitch_12
        0x48 -> :sswitch_11
        0x50 -> :sswitch_10
        0x58 -> :sswitch_f
        0x60 -> :sswitch_e
        0x68 -> :sswitch_d
        0x70 -> :sswitch_c
        0x78 -> :sswitch_b
        0x80 -> :sswitch_a
        0x8a -> :sswitch_9
        0x98 -> :sswitch_8
        0xa0 -> :sswitch_7
        0xa8 -> :sswitch_6
        0xb0 -> :sswitch_5
        0xb8 -> :sswitch_4
        0xc0 -> :sswitch_3
        0xc8 -> :sswitch_2
        0xd0 -> :sswitch_1
        0xda -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/papa91/battle/protocol/Params$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa91/battle/protocol/Params;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    iput-byte p1, p0, Lcom/papa91/battle/protocol/Params;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/papa91/battle/protocol/Params$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Params;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/papa91/battle/protocol/Params;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/Params;->allowSpectatorJoin_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1102(Lcom/papa91/battle/protocol/Params;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/Params;->allowPeripheralJoin_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1202(Lcom/papa91/battle/protocol/Params;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/Params;->closePosition_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1302(Lcom/papa91/battle/protocol/Params;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Params;->roomPositionIndex_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1400(Lcom/papa91/battle/protocol/Params;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa91/battle/protocol/Params;->roomType_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1402(Lcom/papa91/battle/protocol/Params;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Params;->roomType_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1502(Lcom/papa91/battle/protocol/Params;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/Params;->silent_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1602(Lcom/papa91/battle/protocol/Params;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/Params;->usePeripheral_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1702(Lcom/papa91/battle/protocol/Params;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa91/battle/protocol/Params;->fightId_:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$1802(Lcom/papa91/battle/protocol/Params;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Params;->pingVal_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1902(Lcom/papa91/battle/protocol/Params;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa91/battle/protocol/Params;->timestamp_:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$2000(Lcom/papa91/battle/protocol/Params;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/battle/protocol/Params;->deviceId_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2002(Lcom/papa91/battle/protocol/Params;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/battle/protocol/Params;->deviceId_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$2100(Lcom/papa91/battle/protocol/Params;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa91/battle/protocol/Params;->battleArea_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$2102(Lcom/papa91/battle/protocol/Params;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Params;->battleArea_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$2200(Lcom/papa91/battle/protocol/Params;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa91/battle/protocol/Params;->channelType_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$2202(Lcom/papa91/battle/protocol/Params;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Params;->channelType_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$2302(Lcom/papa91/battle/protocol/Params;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Params;->collectionId_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$2402(Lcom/papa91/battle/protocol/Params;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/Params;->fromLive_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$2500(Lcom/papa91/battle/protocol/Params;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa91/battle/protocol/Params;->playMode_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$2502(Lcom/papa91/battle/protocol/Params;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Params;->playMode_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$2602(Lcom/papa91/battle/protocol/Params;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/Params;->allowPCJoin_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$2702(Lcom/papa91/battle/protocol/Params;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/Params;->disableMobileJoin_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$2802(Lcom/papa91/battle/protocol/Params;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/Params;->mergeMessageChannel_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$2900(Lcom/papa91/battle/protocol/Params;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/battle/protocol/Params;->battleScoreBoard_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2902(Lcom/papa91/battle/protocol/Params;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/battle/protocol/Params;->battleScoreBoard_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$3000(Lcom/papa91/battle/protocol/Params;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$3100()Lcom/google/protobuf/Parser;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Params;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    .line 3
    return-object v0
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

.method static synthetic access$3500(Lcom/google/protobuf/ByteString;)V
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

.method static synthetic access$402(Lcom/papa91/battle/protocol/Params;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Params;->uid_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$500(Lcom/papa91/battle/protocol/Params;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/battle/protocol/Params;->token_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$502(Lcom/papa91/battle/protocol/Params;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/battle/protocol/Params;->token_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$602(Lcom/papa91/battle/protocol/Params;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa91/battle/protocol/Params;->gameId_:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$702(Lcom/papa91/battle/protocol/Params;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Params;->roomId_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$802(Lcom/papa91/battle/protocol/Params;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Params;->challengeCoins_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$900(Lcom/papa91/battle/protocol/Params;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/battle/protocol/Params;->password_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$902(Lcom/papa91/battle/protocol/Params;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/battle/protocol/Params;->password_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method public static getDefaultInstance()Lcom/papa91/battle/protocol/Params;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Params;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Params;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_Params_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Params;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Params;->toBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/papa91/battle/protocol/Params;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Params;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Params;->toBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Params$Builder;->mergeFrom(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/papa91/battle/protocol/Params;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Params;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Params;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Params;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/papa91/battle/protocol/Params;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Params;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/Params;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/papa91/battle/protocol/Params;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Params;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Params;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/papa91/battle/protocol/Params;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Params;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/papa91/battle/protocol/Params;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/papa91/battle/protocol/Params;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Params;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Params;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/papa91/battle/protocol/Params;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Params;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/papa91/battle/protocol/Params;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/papa91/battle/protocol/Params;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Params;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Params;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/papa91/battle/protocol/Params;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Params;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/papa91/battle/protocol/Params;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Params;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Params;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Params;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/papa91/battle/protocol/Params;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Params;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/papa91/battle/protocol/Params;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/papa91/battle/protocol/Params;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Params;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Params;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/papa91/battle/protocol/Params;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/Params;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/papa91/battle/protocol/Params;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Params;->PARSER:Lcom/google/protobuf/Parser;

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
    instance-of v1, p1, Lcom/papa91/battle/protocol/Params;

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
    check-cast p1, Lcom/papa91/battle/protocol/Params;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getUid()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getUid()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x0

    .line 25
    if-eq v1, v2, :cond_2

    .line 26
    .line 27
    return v3

    .line 28
    :cond_2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getToken()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getToken()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_3

    .line 41
    .line 42
    return v3

    .line 43
    :cond_3
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getGameId()J

    .line 44
    .line 45
    .line 46
    move-result-wide v1

    .line 47
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getGameId()J

    .line 48
    .line 49
    .line 50
    move-result-wide v4

    .line 51
    cmp-long v6, v1, v4

    .line 52
    .line 53
    if-eqz v6, :cond_4

    .line 54
    .line 55
    return v3

    .line 56
    :cond_4
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getRoomId()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getRoomId()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eq v1, v2, :cond_5

    .line 65
    .line 66
    return v3

    .line 67
    :cond_5
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getChallengeCoins()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getChallengeCoins()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eq v1, v2, :cond_6

    .line 76
    .line 77
    return v3

    .line 78
    :cond_6
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getPassword()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getPassword()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-nez v1, :cond_7

    .line 91
    .line 92
    return v3

    .line 93
    :cond_7
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getAllowSpectatorJoin()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getAllowSpectatorJoin()Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eq v1, v2, :cond_8

    .line 102
    .line 103
    return v3

    .line 104
    :cond_8
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getAllowPeripheralJoin()Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getAllowPeripheralJoin()Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-eq v1, v2, :cond_9

    .line 113
    .line 114
    return v3

    .line 115
    :cond_9
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getClosePosition()Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getClosePosition()Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-eq v1, v2, :cond_a

    .line 124
    .line 125
    return v3

    .line 126
    :cond_a
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getRoomPositionIndex()I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getRoomPositionIndex()I

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-eq v1, v2, :cond_b

    .line 135
    .line 136
    return v3

    .line 137
    :cond_b
    iget v1, p0, Lcom/papa91/battle/protocol/Params;->roomType_:I

    .line 138
    .line 139
    iget v2, p1, Lcom/papa91/battle/protocol/Params;->roomType_:I

    .line 140
    .line 141
    if-eq v1, v2, :cond_c

    .line 142
    .line 143
    return v3

    .line 144
    :cond_c
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getSilent()Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getSilent()Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-eq v1, v2, :cond_d

    .line 153
    .line 154
    return v3

    .line 155
    :cond_d
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getUsePeripheral()Z

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getUsePeripheral()Z

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    if-eq v1, v2, :cond_e

    .line 164
    .line 165
    return v3

    .line 166
    :cond_e
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getFightId()J

    .line 167
    .line 168
    .line 169
    move-result-wide v1

    .line 170
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getFightId()J

    .line 171
    .line 172
    .line 173
    move-result-wide v4

    .line 174
    cmp-long v6, v1, v4

    .line 175
    .line 176
    if-eqz v6, :cond_f

    .line 177
    .line 178
    return v3

    .line 179
    :cond_f
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getPingVal()I

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getPingVal()I

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    if-eq v1, v2, :cond_10

    .line 188
    .line 189
    return v3

    .line 190
    :cond_10
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getTimestamp()J

    .line 191
    .line 192
    .line 193
    move-result-wide v1

    .line 194
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getTimestamp()J

    .line 195
    .line 196
    .line 197
    move-result-wide v4

    .line 198
    cmp-long v6, v1, v4

    .line 199
    .line 200
    if-eqz v6, :cond_11

    .line 201
    .line 202
    return v3

    .line 203
    :cond_11
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getDeviceId()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getDeviceId()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    if-nez v1, :cond_12

    .line 216
    .line 217
    return v3

    .line 218
    :cond_12
    iget v1, p0, Lcom/papa91/battle/protocol/Params;->battleArea_:I

    .line 219
    .line 220
    iget v2, p1, Lcom/papa91/battle/protocol/Params;->battleArea_:I

    .line 221
    .line 222
    if-eq v1, v2, :cond_13

    .line 223
    .line 224
    return v3

    .line 225
    :cond_13
    iget v1, p0, Lcom/papa91/battle/protocol/Params;->channelType_:I

    .line 226
    .line 227
    iget v2, p1, Lcom/papa91/battle/protocol/Params;->channelType_:I

    .line 228
    .line 229
    if-eq v1, v2, :cond_14

    .line 230
    .line 231
    return v3

    .line 232
    :cond_14
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getCollectionId()I

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getCollectionId()I

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    if-eq v1, v2, :cond_15

    .line 241
    .line 242
    return v3

    .line 243
    :cond_15
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getFromLive()Z

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getFromLive()Z

    .line 248
    .line 249
    .line 250
    move-result v2

    .line 251
    if-eq v1, v2, :cond_16

    .line 252
    .line 253
    return v3

    .line 254
    :cond_16
    iget v1, p0, Lcom/papa91/battle/protocol/Params;->playMode_:I

    .line 255
    .line 256
    iget v2, p1, Lcom/papa91/battle/protocol/Params;->playMode_:I

    .line 257
    .line 258
    if-eq v1, v2, :cond_17

    .line 259
    .line 260
    return v3

    .line 261
    :cond_17
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getAllowPCJoin()Z

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getAllowPCJoin()Z

    .line 266
    .line 267
    .line 268
    move-result v2

    .line 269
    if-eq v1, v2, :cond_18

    .line 270
    .line 271
    return v3

    .line 272
    :cond_18
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getDisableMobileJoin()Z

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getDisableMobileJoin()Z

    .line 277
    .line 278
    .line 279
    move-result v2

    .line 280
    if-eq v1, v2, :cond_19

    .line 281
    .line 282
    return v3

    .line 283
    :cond_19
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getMergeMessageChannel()Z

    .line 284
    .line 285
    .line 286
    move-result v1

    .line 287
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getMergeMessageChannel()Z

    .line 288
    .line 289
    .line 290
    move-result v2

    .line 291
    if-eq v1, v2, :cond_1a

    .line 292
    .line 293
    return v3

    .line 294
    :cond_1a
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getBattleScoreBoard()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getBattleScoreBoard()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result v1

    .line 306
    if-nez v1, :cond_1b

    .line 307
    .line 308
    return v3

    .line 309
    :cond_1b
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 310
    .line 311
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 312
    .line 313
    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result p1

    .line 317
    if-nez p1, :cond_1c

    .line 318
    .line 319
    return v3

    .line 320
    :cond_1c
    return v0
.end method

.method public getAllowPCJoin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->allowPCJoin_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getAllowPeripheralJoin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->allowPeripheralJoin_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getAllowSpectatorJoin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->allowSpectatorJoin_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getBattleArea()Lcom/papa91/battle/protocol/BattleArea;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->battleArea_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa91/battle/protocol/BattleArea;->valueOf(I)Lcom/papa91/battle/protocol/BattleArea;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/papa91/battle/protocol/BattleArea;->UNRECOGNIZED:Lcom/papa91/battle/protocol/BattleArea;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getBattleAreaValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->battleArea_:I

    .line 2
    .line 3
    return v0
.end method

.method public getBattleScoreBoard()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Params;->battleScoreBoard_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/Params;->battleScoreBoard_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getBattleScoreBoardBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Params;->battleScoreBoard_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/Params;->battleScoreBoard_:Ljava/lang/Object;

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

.method public getChallengeCoins()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->challengeCoins_:I

    .line 2
    .line 3
    return v0
.end method

.method public getChannelType()Lcom/papa91/battle/protocol/Params$ChannelType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->channelType_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa91/battle/protocol/Params$ChannelType;->valueOf(I)Lcom/papa91/battle/protocol/Params$ChannelType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/papa91/battle/protocol/Params$ChannelType;->UNRECOGNIZED:Lcom/papa91/battle/protocol/Params$ChannelType;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getChannelTypeValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->channelType_:I

    .line 2
    .line 3
    return v0
.end method

.method public getClosePosition()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->closePosition_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getCollectionId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->collectionId_:I

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getDefaultInstanceForType()Lcom/papa91/battle/protocol/Params;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getDefaultInstanceForType()Lcom/papa91/battle/protocol/Params;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/papa91/battle/protocol/Params;
    .locals 1

    .line 3
    sget-object v0, Lcom/papa91/battle/protocol/Params;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Params;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Params;->deviceId_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/Params;->deviceId_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getDeviceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Params;->deviceId_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/Params;->deviceId_:Ljava/lang/Object;

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

.method public getDisableMobileJoin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->disableMobileJoin_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getFightId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa91/battle/protocol/Params;->fightId_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getFromLive()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->fromLive_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getGameId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa91/battle/protocol/Params;->gameId_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getMergeMessageChannel()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->mergeMessageChannel_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/papa91/battle/protocol/Params;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/Params;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Params;->password_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/Params;->password_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getPasswordBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Params;->password_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/Params;->password_:Ljava/lang/Object;

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

.method public getPingVal()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->pingVal_:I

    .line 2
    .line 3
    return v0
.end method

.method public getPlayMode()Lcom/papa91/battle/protocol/Params$ServerPlayMode;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->playMode_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa91/battle/protocol/Params$ServerPlayMode;->valueOf(I)Lcom/papa91/battle/protocol/Params$ServerPlayMode;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/papa91/battle/protocol/Params$ServerPlayMode;->UNRECOGNIZED:Lcom/papa91/battle/protocol/Params$ServerPlayMode;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getPlayModeValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->playMode_:I

    .line 2
    .line 3
    return v0
.end method

.method public getRoomId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->roomId_:I

    .line 2
    .line 3
    return v0
.end method

.method public getRoomPositionIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->roomPositionIndex_:I

    .line 2
    .line 3
    return v0
.end method

.method public getRoomType()Lcom/papa91/battle/protocol/Params$RoomType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->roomType_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa91/battle/protocol/Params$RoomType;->valueOf(I)Lcom/papa91/battle/protocol/Params$RoomType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/papa91/battle/protocol/Params$RoomType;->UNRECOGNIZED:Lcom/papa91/battle/protocol/Params$RoomType;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getRoomTypeValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->roomType_:I

    .line 2
    .line 3
    return v0
.end method

.method public getSerializedSize()I
    .locals 6

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
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->uid_:I

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    add-int/2addr v1, v0

    .line 18
    :cond_1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getTokenBytes()Lcom/google/protobuf/ByteString;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    const/4 v0, 0x2

    .line 29
    iget-object v2, p0, Lcom/papa91/battle/protocol/Params;->token_:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    add-int/2addr v1, v0

    .line 36
    :cond_2
    iget-wide v2, p0, Lcom/papa91/battle/protocol/Params;->gameId_:J

    .line 37
    .line 38
    const-wide/16 v4, 0x0

    .line 39
    .line 40
    cmp-long v0, v2, v4

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    const/4 v0, 0x3

    .line 45
    invoke-static {v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    add-int/2addr v1, v0

    .line 50
    :cond_3
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->roomId_:I

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    const/4 v2, 0x4

    .line 55
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    add-int/2addr v1, v0

    .line 60
    :cond_4
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->challengeCoins_:I

    .line 61
    .line 62
    if-eqz v0, :cond_5

    .line 63
    .line 64
    const/4 v2, 0x5

    .line 65
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    add-int/2addr v1, v0

    .line 70
    :cond_5
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getPasswordBytes()Lcom/google/protobuf/ByteString;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_6

    .line 79
    .line 80
    const/4 v0, 0x6

    .line 81
    iget-object v2, p0, Lcom/papa91/battle/protocol/Params;->password_:Ljava/lang/Object;

    .line 82
    .line 83
    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    add-int/2addr v1, v0

    .line 88
    :cond_6
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->allowSpectatorJoin_:Z

    .line 89
    .line 90
    if-eqz v0, :cond_7

    .line 91
    .line 92
    const/4 v2, 0x7

    .line 93
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    add-int/2addr v1, v0

    .line 98
    :cond_7
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->allowPeripheralJoin_:Z

    .line 99
    .line 100
    if-eqz v0, :cond_8

    .line 101
    .line 102
    const/16 v2, 0x8

    .line 103
    .line 104
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    add-int/2addr v1, v0

    .line 109
    :cond_8
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->closePosition_:Z

    .line 110
    .line 111
    if-eqz v0, :cond_9

    .line 112
    .line 113
    const/16 v2, 0x9

    .line 114
    .line 115
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    add-int/2addr v1, v0

    .line 120
    :cond_9
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->roomPositionIndex_:I

    .line 121
    .line 122
    if-eqz v0, :cond_a

    .line 123
    .line 124
    const/16 v2, 0xa

    .line 125
    .line 126
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    add-int/2addr v1, v0

    .line 131
    :cond_a
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->roomType_:I

    .line 132
    .line 133
    sget-object v2, Lcom/papa91/battle/protocol/Params$RoomType;->NORMAL:Lcom/papa91/battle/protocol/Params$RoomType;

    .line 134
    .line 135
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/Params$RoomType;->getNumber()I

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-eq v0, v2, :cond_b

    .line 140
    .line 141
    const/16 v0, 0xb

    .line 142
    .line 143
    iget v2, p0, Lcom/papa91/battle/protocol/Params;->roomType_:I

    .line 144
    .line 145
    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    add-int/2addr v1, v0

    .line 150
    :cond_b
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->silent_:Z

    .line 151
    .line 152
    if-eqz v0, :cond_c

    .line 153
    .line 154
    const/16 v2, 0xc

    .line 155
    .line 156
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    add-int/2addr v1, v0

    .line 161
    :cond_c
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->usePeripheral_:Z

    .line 162
    .line 163
    if-eqz v0, :cond_d

    .line 164
    .line 165
    const/16 v2, 0xd

    .line 166
    .line 167
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    add-int/2addr v1, v0

    .line 172
    :cond_d
    iget-wide v2, p0, Lcom/papa91/battle/protocol/Params;->fightId_:J

    .line 173
    .line 174
    cmp-long v0, v2, v4

    .line 175
    .line 176
    if-eqz v0, :cond_e

    .line 177
    .line 178
    const/16 v0, 0xe

    .line 179
    .line 180
    invoke-static {v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    add-int/2addr v1, v0

    .line 185
    :cond_e
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->pingVal_:I

    .line 186
    .line 187
    if-eqz v0, :cond_f

    .line 188
    .line 189
    const/16 v2, 0xf

    .line 190
    .line 191
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    add-int/2addr v1, v0

    .line 196
    :cond_f
    iget-wide v2, p0, Lcom/papa91/battle/protocol/Params;->timestamp_:J

    .line 197
    .line 198
    cmp-long v0, v2, v4

    .line 199
    .line 200
    if-eqz v0, :cond_10

    .line 201
    .line 202
    const/16 v0, 0x10

    .line 203
    .line 204
    invoke-static {v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    add-int/2addr v1, v0

    .line 209
    :cond_10
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getDeviceIdBytes()Lcom/google/protobuf/ByteString;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-nez v0, :cond_11

    .line 218
    .line 219
    const/16 v0, 0x11

    .line 220
    .line 221
    iget-object v2, p0, Lcom/papa91/battle/protocol/Params;->deviceId_:Ljava/lang/Object;

    .line 222
    .line 223
    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    add-int/2addr v1, v0

    .line 228
    :cond_11
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->battleArea_:I

    .line 229
    .line 230
    sget-object v2, Lcom/papa91/battle/protocol/BattleArea;->ALL:Lcom/papa91/battle/protocol/BattleArea;

    .line 231
    .line 232
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    if-eq v0, v2, :cond_12

    .line 237
    .line 238
    const/16 v0, 0x13

    .line 239
    .line 240
    iget v2, p0, Lcom/papa91/battle/protocol/Params;->battleArea_:I

    .line 241
    .line 242
    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    add-int/2addr v1, v0

    .line 247
    :cond_12
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->channelType_:I

    .line 248
    .line 249
    sget-object v2, Lcom/papa91/battle/protocol/Params$ChannelType;->ANDROID:Lcom/papa91/battle/protocol/Params$ChannelType;

    .line 250
    .line 251
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/Params$ChannelType;->getNumber()I

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    if-eq v0, v2, :cond_13

    .line 256
    .line 257
    const/16 v0, 0x14

    .line 258
    .line 259
    iget v2, p0, Lcom/papa91/battle/protocol/Params;->channelType_:I

    .line 260
    .line 261
    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    add-int/2addr v1, v0

    .line 266
    :cond_13
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->collectionId_:I

    .line 267
    .line 268
    if-eqz v0, :cond_14

    .line 269
    .line 270
    const/16 v2, 0x15

    .line 271
    .line 272
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    add-int/2addr v1, v0

    .line 277
    :cond_14
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->fromLive_:Z

    .line 278
    .line 279
    if-eqz v0, :cond_15

    .line 280
    .line 281
    const/16 v2, 0x16

    .line 282
    .line 283
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    add-int/2addr v1, v0

    .line 288
    :cond_15
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->playMode_:I

    .line 289
    .line 290
    sget-object v2, Lcom/papa91/battle/protocol/Params$ServerPlayMode;->FAST:Lcom/papa91/battle/protocol/Params$ServerPlayMode;

    .line 291
    .line 292
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/Params$ServerPlayMode;->getNumber()I

    .line 293
    .line 294
    .line 295
    move-result v2

    .line 296
    if-eq v0, v2, :cond_16

    .line 297
    .line 298
    const/16 v0, 0x17

    .line 299
    .line 300
    iget v2, p0, Lcom/papa91/battle/protocol/Params;->playMode_:I

    .line 301
    .line 302
    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    add-int/2addr v1, v0

    .line 307
    :cond_16
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->allowPCJoin_:Z

    .line 308
    .line 309
    if-eqz v0, :cond_17

    .line 310
    .line 311
    const/16 v2, 0x18

    .line 312
    .line 313
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 314
    .line 315
    .line 316
    move-result v0

    .line 317
    add-int/2addr v1, v0

    .line 318
    :cond_17
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->disableMobileJoin_:Z

    .line 319
    .line 320
    if-eqz v0, :cond_18

    .line 321
    .line 322
    const/16 v2, 0x19

    .line 323
    .line 324
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 325
    .line 326
    .line 327
    move-result v0

    .line 328
    add-int/2addr v1, v0

    .line 329
    :cond_18
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->mergeMessageChannel_:Z

    .line 330
    .line 331
    if-eqz v0, :cond_19

    .line 332
    .line 333
    const/16 v2, 0x1a

    .line 334
    .line 335
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 336
    .line 337
    .line 338
    move-result v0

    .line 339
    add-int/2addr v1, v0

    .line 340
    :cond_19
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getBattleScoreBoardBytes()Lcom/google/protobuf/ByteString;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 345
    .line 346
    .line 347
    move-result v0

    .line 348
    if-nez v0, :cond_1a

    .line 349
    .line 350
    const/16 v0, 0x1b

    .line 351
    .line 352
    iget-object v2, p0, Lcom/papa91/battle/protocol/Params;->battleScoreBoard_:Ljava/lang/Object;

    .line 353
    .line 354
    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 355
    .line 356
    .line 357
    move-result v0

    .line 358
    add-int/2addr v1, v0

    .line 359
    :cond_1a
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 360
    .line 361
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    .line 362
    .line 363
    .line 364
    move-result v0

    .line 365
    add-int/2addr v1, v0

    .line 366
    iput v1, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 367
    .line 368
    return v1
.end method

.method public getSilent()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->silent_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa91/battle/protocol/Params;->timestamp_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Params;->token_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/Params;->token_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Params;->token_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/Params;->token_:Ljava/lang/Object;

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

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->uid_:I

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

.method public getUsePeripheral()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->usePeripheral_:Z

    .line 2
    .line 3
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
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getUid()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    add-int/2addr v1, v0

    .line 28
    mul-int/lit8 v1, v1, 0x25

    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x2

    .line 31
    .line 32
    mul-int/lit8 v1, v1, 0x35

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getToken()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    add-int/2addr v1, v0

    .line 43
    mul-int/lit8 v1, v1, 0x25

    .line 44
    .line 45
    add-int/lit8 v1, v1, 0x3

    .line 46
    .line 47
    mul-int/lit8 v1, v1, 0x35

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getGameId()J

    .line 50
    .line 51
    .line 52
    move-result-wide v2

    .line 53
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    add-int/2addr v1, v0

    .line 58
    mul-int/lit8 v1, v1, 0x25

    .line 59
    .line 60
    add-int/lit8 v1, v1, 0x4

    .line 61
    .line 62
    mul-int/lit8 v1, v1, 0x35

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getRoomId()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    add-int/2addr v1, v0

    .line 69
    mul-int/lit8 v1, v1, 0x25

    .line 70
    .line 71
    add-int/lit8 v1, v1, 0x5

    .line 72
    .line 73
    mul-int/lit8 v1, v1, 0x35

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getChallengeCoins()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    add-int/2addr v1, v0

    .line 80
    mul-int/lit8 v1, v1, 0x25

    .line 81
    .line 82
    add-int/lit8 v1, v1, 0x6

    .line 83
    .line 84
    mul-int/lit8 v1, v1, 0x35

    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getPassword()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    add-int/2addr v1, v0

    .line 95
    mul-int/lit8 v1, v1, 0x25

    .line 96
    .line 97
    add-int/lit8 v1, v1, 0x7

    .line 98
    .line 99
    mul-int/lit8 v1, v1, 0x35

    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getAllowSpectatorJoin()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    invoke-static {v0}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    add-int/2addr v1, v0

    .line 110
    mul-int/lit8 v1, v1, 0x25

    .line 111
    .line 112
    add-int/lit8 v1, v1, 0x8

    .line 113
    .line 114
    mul-int/lit8 v1, v1, 0x35

    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getAllowPeripheralJoin()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    invoke-static {v0}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    add-int/2addr v1, v0

    .line 125
    mul-int/lit8 v1, v1, 0x25

    .line 126
    .line 127
    add-int/lit8 v1, v1, 0x9

    .line 128
    .line 129
    mul-int/lit8 v1, v1, 0x35

    .line 130
    .line 131
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getClosePosition()Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    invoke-static {v0}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    add-int/2addr v1, v0

    .line 140
    mul-int/lit8 v1, v1, 0x25

    .line 141
    .line 142
    add-int/lit8 v1, v1, 0xa

    .line 143
    .line 144
    mul-int/lit8 v1, v1, 0x35

    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getRoomPositionIndex()I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    add-int/2addr v1, v0

    .line 151
    mul-int/lit8 v1, v1, 0x25

    .line 152
    .line 153
    add-int/lit8 v1, v1, 0xb

    .line 154
    .line 155
    mul-int/lit8 v1, v1, 0x35

    .line 156
    .line 157
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->roomType_:I

    .line 158
    .line 159
    add-int/2addr v1, v0

    .line 160
    mul-int/lit8 v1, v1, 0x25

    .line 161
    .line 162
    add-int/lit8 v1, v1, 0xc

    .line 163
    .line 164
    mul-int/lit8 v1, v1, 0x35

    .line 165
    .line 166
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getSilent()Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    invoke-static {v0}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    add-int/2addr v1, v0

    .line 175
    mul-int/lit8 v1, v1, 0x25

    .line 176
    .line 177
    add-int/lit8 v1, v1, 0xd

    .line 178
    .line 179
    mul-int/lit8 v1, v1, 0x35

    .line 180
    .line 181
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getUsePeripheral()Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    invoke-static {v0}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    add-int/2addr v1, v0

    .line 190
    mul-int/lit8 v1, v1, 0x25

    .line 191
    .line 192
    add-int/lit8 v1, v1, 0xe

    .line 193
    .line 194
    mul-int/lit8 v1, v1, 0x35

    .line 195
    .line 196
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getFightId()J

    .line 197
    .line 198
    .line 199
    move-result-wide v2

    .line 200
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    add-int/2addr v1, v0

    .line 205
    mul-int/lit8 v1, v1, 0x25

    .line 206
    .line 207
    add-int/lit8 v1, v1, 0xf

    .line 208
    .line 209
    mul-int/lit8 v1, v1, 0x35

    .line 210
    .line 211
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getPingVal()I

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    add-int/2addr v1, v0

    .line 216
    mul-int/lit8 v1, v1, 0x25

    .line 217
    .line 218
    add-int/lit8 v1, v1, 0x10

    .line 219
    .line 220
    mul-int/lit8 v1, v1, 0x35

    .line 221
    .line 222
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getTimestamp()J

    .line 223
    .line 224
    .line 225
    move-result-wide v2

    .line 226
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    add-int/2addr v1, v0

    .line 231
    mul-int/lit8 v1, v1, 0x25

    .line 232
    .line 233
    add-int/lit8 v1, v1, 0x11

    .line 234
    .line 235
    mul-int/lit8 v1, v1, 0x35

    .line 236
    .line 237
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getDeviceId()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    add-int/2addr v1, v0

    .line 246
    mul-int/lit8 v1, v1, 0x25

    .line 247
    .line 248
    add-int/lit8 v1, v1, 0x13

    .line 249
    .line 250
    mul-int/lit8 v1, v1, 0x35

    .line 251
    .line 252
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->battleArea_:I

    .line 253
    .line 254
    add-int/2addr v1, v0

    .line 255
    mul-int/lit8 v1, v1, 0x25

    .line 256
    .line 257
    add-int/lit8 v1, v1, 0x14

    .line 258
    .line 259
    mul-int/lit8 v1, v1, 0x35

    .line 260
    .line 261
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->channelType_:I

    .line 262
    .line 263
    add-int/2addr v1, v0

    .line 264
    mul-int/lit8 v1, v1, 0x25

    .line 265
    .line 266
    add-int/lit8 v1, v1, 0x15

    .line 267
    .line 268
    mul-int/lit8 v1, v1, 0x35

    .line 269
    .line 270
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getCollectionId()I

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    add-int/2addr v1, v0

    .line 275
    mul-int/lit8 v1, v1, 0x25

    .line 276
    .line 277
    add-int/lit8 v1, v1, 0x16

    .line 278
    .line 279
    mul-int/lit8 v1, v1, 0x35

    .line 280
    .line 281
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getFromLive()Z

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    invoke-static {v0}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    add-int/2addr v1, v0

    .line 290
    mul-int/lit8 v1, v1, 0x25

    .line 291
    .line 292
    add-int/lit8 v1, v1, 0x17

    .line 293
    .line 294
    mul-int/lit8 v1, v1, 0x35

    .line 295
    .line 296
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->playMode_:I

    .line 297
    .line 298
    add-int/2addr v1, v0

    .line 299
    mul-int/lit8 v1, v1, 0x25

    .line 300
    .line 301
    add-int/lit8 v1, v1, 0x18

    .line 302
    .line 303
    mul-int/lit8 v1, v1, 0x35

    .line 304
    .line 305
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getAllowPCJoin()Z

    .line 306
    .line 307
    .line 308
    move-result v0

    .line 309
    invoke-static {v0}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    add-int/2addr v1, v0

    .line 314
    mul-int/lit8 v1, v1, 0x25

    .line 315
    .line 316
    add-int/lit8 v1, v1, 0x19

    .line 317
    .line 318
    mul-int/lit8 v1, v1, 0x35

    .line 319
    .line 320
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getDisableMobileJoin()Z

    .line 321
    .line 322
    .line 323
    move-result v0

    .line 324
    invoke-static {v0}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    .line 325
    .line 326
    .line 327
    move-result v0

    .line 328
    add-int/2addr v1, v0

    .line 329
    mul-int/lit8 v1, v1, 0x25

    .line 330
    .line 331
    add-int/lit8 v1, v1, 0x1a

    .line 332
    .line 333
    mul-int/lit8 v1, v1, 0x35

    .line 334
    .line 335
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getMergeMessageChannel()Z

    .line 336
    .line 337
    .line 338
    move-result v0

    .line 339
    invoke-static {v0}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

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
    add-int/lit8 v1, v1, 0x1b

    .line 347
    .line 348
    mul-int/lit8 v1, v1, 0x35

    .line 349
    .line 350
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getBattleScoreBoard()Ljava/lang/String;

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
    sget-object v0, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_Params_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    const-class v1, Lcom/papa91/battle/protocol/Params;

    .line 4
    .line 5
    const-class v2, Lcom/papa91/battle/protocol/Params$Builder;

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
    iget-byte v0, p0, Lcom/papa91/battle/protocol/Params;->memoizedIsInitialized:B

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
    iput-byte v1, p0, Lcom/papa91/battle/protocol/Params;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->newBuilderForType()Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Params;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->newBuilderForType()Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->newBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/papa91/battle/protocol/Params$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/papa91/battle/protocol/Params$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/papa91/battle/protocol/Params$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Lcom/papa91/battle/protocol/Params;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/papa91/battle/protocol/Params;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->toBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->toBuilder()Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/papa91/battle/protocol/Params;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/Params;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/papa91/battle/protocol/Params$Builder;

    invoke-direct {v0, v1}, Lcom/papa91/battle/protocol/Params$Builder;-><init>(Lcom/papa91/battle/protocol/Params$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/papa91/battle/protocol/Params$Builder;

    invoke-direct {v0, v1}, Lcom/papa91/battle/protocol/Params$Builder;-><init>(Lcom/papa91/battle/protocol/Params$1;)V

    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/Params$Builder;->mergeFrom(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Params$Builder;

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
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->uid_:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getTokenBytes()Lcom/google/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x2

    .line 20
    iget-object v1, p0, Lcom/papa91/battle/protocol/Params;->token_:Ljava/lang/Object;

    .line 21
    .line 22
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-wide v0, p0, Lcom/papa91/battle/protocol/Params;->gameId_:J

    .line 26
    .line 27
    const-wide/16 v2, 0x0

    .line 28
    .line 29
    cmp-long v4, v0, v2

    .line 30
    .line 31
    if-eqz v4, :cond_2

    .line 32
    .line 33
    const/4 v4, 0x3

    .line 34
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 35
    .line 36
    .line 37
    :cond_2
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->roomId_:I

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    const/4 v1, 0x4

    .line 42
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 43
    .line 44
    .line 45
    :cond_3
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->challengeCoins_:I

    .line 46
    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    const/4 v1, 0x5

    .line 50
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 51
    .line 52
    .line 53
    :cond_4
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getPasswordBytes()Lcom/google/protobuf/ByteString;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_5

    .line 62
    .line 63
    const/4 v0, 0x6

    .line 64
    iget-object v1, p0, Lcom/papa91/battle/protocol/Params;->password_:Ljava/lang/Object;

    .line 65
    .line 66
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :cond_5
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->allowSpectatorJoin_:Z

    .line 70
    .line 71
    if-eqz v0, :cond_6

    .line 72
    .line 73
    const/4 v1, 0x7

    .line 74
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 75
    .line 76
    .line 77
    :cond_6
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->allowPeripheralJoin_:Z

    .line 78
    .line 79
    if-eqz v0, :cond_7

    .line 80
    .line 81
    const/16 v1, 0x8

    .line 82
    .line 83
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 84
    .line 85
    .line 86
    :cond_7
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->closePosition_:Z

    .line 87
    .line 88
    if-eqz v0, :cond_8

    .line 89
    .line 90
    const/16 v1, 0x9

    .line 91
    .line 92
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 93
    .line 94
    .line 95
    :cond_8
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->roomPositionIndex_:I

    .line 96
    .line 97
    if-eqz v0, :cond_9

    .line 98
    .line 99
    const/16 v1, 0xa

    .line 100
    .line 101
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 102
    .line 103
    .line 104
    :cond_9
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->roomType_:I

    .line 105
    .line 106
    sget-object v1, Lcom/papa91/battle/protocol/Params$RoomType;->NORMAL:Lcom/papa91/battle/protocol/Params$RoomType;

    .line 107
    .line 108
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/Params$RoomType;->getNumber()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-eq v0, v1, :cond_a

    .line 113
    .line 114
    const/16 v0, 0xb

    .line 115
    .line 116
    iget v1, p0, Lcom/papa91/battle/protocol/Params;->roomType_:I

    .line 117
    .line 118
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 119
    .line 120
    .line 121
    :cond_a
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->silent_:Z

    .line 122
    .line 123
    if-eqz v0, :cond_b

    .line 124
    .line 125
    const/16 v1, 0xc

    .line 126
    .line 127
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 128
    .line 129
    .line 130
    :cond_b
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->usePeripheral_:Z

    .line 131
    .line 132
    if-eqz v0, :cond_c

    .line 133
    .line 134
    const/16 v1, 0xd

    .line 135
    .line 136
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 137
    .line 138
    .line 139
    :cond_c
    iget-wide v0, p0, Lcom/papa91/battle/protocol/Params;->fightId_:J

    .line 140
    .line 141
    cmp-long v4, v0, v2

    .line 142
    .line 143
    if-eqz v4, :cond_d

    .line 144
    .line 145
    const/16 v4, 0xe

    .line 146
    .line 147
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 148
    .line 149
    .line 150
    :cond_d
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->pingVal_:I

    .line 151
    .line 152
    if-eqz v0, :cond_e

    .line 153
    .line 154
    const/16 v1, 0xf

    .line 155
    .line 156
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 157
    .line 158
    .line 159
    :cond_e
    iget-wide v0, p0, Lcom/papa91/battle/protocol/Params;->timestamp_:J

    .line 160
    .line 161
    cmp-long v4, v0, v2

    .line 162
    .line 163
    if-eqz v4, :cond_f

    .line 164
    .line 165
    const/16 v2, 0x10

    .line 166
    .line 167
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 168
    .line 169
    .line 170
    :cond_f
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getDeviceIdBytes()Lcom/google/protobuf/ByteString;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-nez v0, :cond_10

    .line 179
    .line 180
    const/16 v0, 0x11

    .line 181
    .line 182
    iget-object v1, p0, Lcom/papa91/battle/protocol/Params;->deviceId_:Ljava/lang/Object;

    .line 183
    .line 184
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    :cond_10
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->battleArea_:I

    .line 188
    .line 189
    sget-object v1, Lcom/papa91/battle/protocol/BattleArea;->ALL:Lcom/papa91/battle/protocol/BattleArea;

    .line 190
    .line 191
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    if-eq v0, v1, :cond_11

    .line 196
    .line 197
    const/16 v0, 0x13

    .line 198
    .line 199
    iget v1, p0, Lcom/papa91/battle/protocol/Params;->battleArea_:I

    .line 200
    .line 201
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 202
    .line 203
    .line 204
    :cond_11
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->channelType_:I

    .line 205
    .line 206
    sget-object v1, Lcom/papa91/battle/protocol/Params$ChannelType;->ANDROID:Lcom/papa91/battle/protocol/Params$ChannelType;

    .line 207
    .line 208
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/Params$ChannelType;->getNumber()I

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    if-eq v0, v1, :cond_12

    .line 213
    .line 214
    const/16 v0, 0x14

    .line 215
    .line 216
    iget v1, p0, Lcom/papa91/battle/protocol/Params;->channelType_:I

    .line 217
    .line 218
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 219
    .line 220
    .line 221
    :cond_12
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->collectionId_:I

    .line 222
    .line 223
    if-eqz v0, :cond_13

    .line 224
    .line 225
    const/16 v1, 0x15

    .line 226
    .line 227
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 228
    .line 229
    .line 230
    :cond_13
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->fromLive_:Z

    .line 231
    .line 232
    if-eqz v0, :cond_14

    .line 233
    .line 234
    const/16 v1, 0x16

    .line 235
    .line 236
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 237
    .line 238
    .line 239
    :cond_14
    iget v0, p0, Lcom/papa91/battle/protocol/Params;->playMode_:I

    .line 240
    .line 241
    sget-object v1, Lcom/papa91/battle/protocol/Params$ServerPlayMode;->FAST:Lcom/papa91/battle/protocol/Params$ServerPlayMode;

    .line 242
    .line 243
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/Params$ServerPlayMode;->getNumber()I

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    if-eq v0, v1, :cond_15

    .line 248
    .line 249
    const/16 v0, 0x17

    .line 250
    .line 251
    iget v1, p0, Lcom/papa91/battle/protocol/Params;->playMode_:I

    .line 252
    .line 253
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 254
    .line 255
    .line 256
    :cond_15
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->allowPCJoin_:Z

    .line 257
    .line 258
    if-eqz v0, :cond_16

    .line 259
    .line 260
    const/16 v1, 0x18

    .line 261
    .line 262
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 263
    .line 264
    .line 265
    :cond_16
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->disableMobileJoin_:Z

    .line 266
    .line 267
    if-eqz v0, :cond_17

    .line 268
    .line 269
    const/16 v1, 0x19

    .line 270
    .line 271
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 272
    .line 273
    .line 274
    :cond_17
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params;->mergeMessageChannel_:Z

    .line 275
    .line 276
    if-eqz v0, :cond_18

    .line 277
    .line 278
    const/16 v1, 0x1a

    .line 279
    .line 280
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 281
    .line 282
    .line 283
    :cond_18
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params;->getBattleScoreBoardBytes()Lcom/google/protobuf/ByteString;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    if-nez v0, :cond_19

    .line 292
    .line 293
    const/16 v0, 0x1b

    .line 294
    .line 295
    iget-object v1, p0, Lcom/papa91/battle/protocol/Params;->battleScoreBoard_:Ljava/lang/Object;

    .line 296
    .line 297
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    :cond_19
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 301
    .line 302
    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 303
    .line 304
    .line 305
    return-void
.end method
