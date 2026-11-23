.class public final Lcom/papa91/battle/protocol/SimpleRoom;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/papa91/battle/protocol/SimpleRoomOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    }
.end annotation


# static fields
.field public static final ALLOWPCJOIN_FIELD_NUMBER:I = 0x1b

.field public static final ALLOWPERIPHERALJOIN_FIELD_NUMBER:I = 0xa

.field public static final ALLOWSPECTATORJOIN_FIELD_NUMBER:I = 0x9

.field public static final AVATAR_FIELD_NUMBER:I = 0x1a

.field public static final BATTLEAREA_FIELD_NUMBER:I = 0x16

.field public static final BATTLETITLECOLOR_FIELD_NUMBER:I = 0x14

.field public static final BATTLETITLE_FIELD_NUMBER:I = 0x13

.field public static final CHALLENGECOINS_FIELD_NUMBER:I = 0xc

.field public static final COLLECTIONID_FIELD_NUMBER:I = 0x18

.field public static final COPPER_FIELD_NUMBER:I = 0x11

.field public static final CREATEAT_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/SimpleRoom;

.field public static final ELITE_FIELD_NUMBER:I = 0x10

.field public static final GAMEID_FIELD_NUMBER:I = 0x2

.field public static final GAMENAME_FIELD_NUMBER:I = 0x17

.field public static final HASJOINPASSWORD_FIELD_NUMBER:I = 0x8

.field public static final HASPERIPHERALPLAYER_FIELD_NUMBER:I = 0x12

.field public static final LEADERID_FIELD_NUMBER:I = 0x1d

.field public static final NICKNAME_FIELD_NUMBER:I = 0x3

.field public static final OPENBATTLESCORE_FIELD_NUMBER:I = 0x1f

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/papa91/battle/protocol/SimpleRoom;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLAYERLIST_FIELD_NUMBER:I = 0x1c

.field public static final PLAYSECONDS_FIELD_NUMBER:I = 0xe

.field public static final PLAYTIMESTAMP_FIELD_NUMBER:I = 0x15

.field public static final ROOMCATEGORY_FIELD_NUMBER:I = 0x1e

.field public static final ROOMID_FIELD_NUMBER:I = 0x1

.field public static final SEATSNUMBER_FIELD_NUMBER:I = 0x6

.field public static final SITDOWNLOADNUMBER_FIELD_NUMBER:I = 0x7

.field public static final SPECTATORNUMBER_FIELD_NUMBER:I = 0x19

.field public static final STATE_FIELD_NUMBER:I = 0xd

.field public static final TITLE_FIELD_NUMBER:I = 0xf

.field public static final VIP_FIELD_NUMBER:I = 0x4

.field private static final serialVersionUID:J


# instance fields
.field private allowPCJoin_:Z

.field private allowPeripheralJoin_:Z

.field private allowSpectatorJoin_:Z

.field private volatile avatar_:Ljava/lang/Object;

.field private battleArea_:I

.field private volatile battleTitleColor_:Ljava/lang/Object;

.field private volatile battleTitle_:Ljava/lang/Object;

.field private challengeCoins_:I

.field private collectionId_:I

.field private copper_:I

.field private createAt_:J

.field private elite_:Z

.field private gameId_:J

.field private volatile gameName_:Ljava/lang/Object;

.field private hasJoinPassword_:Z

.field private hasPeripheralPlayer_:Z

.field private leaderId_:I

.field private memoizedIsInitialized:B

.field private volatile nickname_:Ljava/lang/Object;

.field private openBattleScore_:Z

.field private playSeconds_:I

.field private playTimestamp_:J

.field private playerList_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/papa91/battle/protocol/RoomPosition;",
            ">;"
        }
    .end annotation
.end field

.field private roomCategory_:I

.field private roomId_:I

.field private seatsNumber_:I

.field private sitDownloadNumber_:I

.field private spectatorNumber_:I

.field private state_:I

.field private title_:Lcom/papa91/battle/protocol/BattleTitle;

.field private vip_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa91/battle/protocol/SimpleRoom;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa91/battle/protocol/SimpleRoom;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/papa91/battle/protocol/SimpleRoom;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/SimpleRoom;

    .line 7
    .line 8
    new-instance v0, Lcom/papa91/battle/protocol/SimpleRoom$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/papa91/battle/protocol/SimpleRoom$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/papa91/battle/protocol/SimpleRoom;->PARSER:Lcom/google/protobuf/Parser;

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
    iput-byte v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->memoizedIsInitialized:B

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->nickname_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->state_:I

    .line 9
    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleTitle_:Ljava/lang/Object;

    .line 10
    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleTitleColor_:Ljava/lang/Object;

    .line 11
    iput v1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleArea_:I

    .line 12
    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->gameName_:Ljava/lang/Object;

    .line 13
    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->avatar_:Ljava/lang/Object;

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playerList_:Ljava/util/List;

    .line 15
    iput v1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->roomCategory_:I

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom;-><init>()V

    .line 17
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-nez v1, :cond_4

    .line 19
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 20
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    goto/16 :goto_3

    .line 21
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/papa91/battle/protocol/SimpleRoom;->openBattleScore_:Z

    goto :goto_0

    .line 22
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 23
    iput v4, p0, Lcom/papa91/battle/protocol/SimpleRoom;->roomCategory_:I

    goto :goto_0

    .line 24
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/papa91/battle/protocol/SimpleRoom;->leaderId_:I

    goto :goto_0

    :sswitch_3
    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_1

    .line 25
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playerList_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 26
    :cond_1
    iget-object v4, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playerList_:Ljava/util/List;

    .line 27
    invoke-static {}, Lcom/papa91/battle/protocol/RoomPosition;->parser()Lcom/google/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/papa91/battle/protocol/RoomPosition;

    .line 28
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 29
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/papa91/battle/protocol/SimpleRoom;->allowPCJoin_:Z

    goto :goto_0

    .line 30
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 31
    iput-object v4, p0, Lcom/papa91/battle/protocol/SimpleRoom;->avatar_:Ljava/lang/Object;

    goto :goto_0

    .line 32
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/papa91/battle/protocol/SimpleRoom;->spectatorNumber_:I

    goto :goto_0

    .line 33
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/papa91/battle/protocol/SimpleRoom;->collectionId_:I

    goto :goto_0

    .line 34
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 35
    iput-object v4, p0, Lcom/papa91/battle/protocol/SimpleRoom;->gameName_:Ljava/lang/Object;

    goto :goto_0

    .line 36
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 37
    iput v4, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleArea_:I

    goto :goto_0

    .line 38
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playTimestamp_:J

    goto :goto_0

    .line 39
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 40
    iput-object v4, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleTitleColor_:Ljava/lang/Object;

    goto :goto_0

    .line 41
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 42
    iput-object v4, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleTitle_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 43
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/papa91/battle/protocol/SimpleRoom;->hasPeripheralPlayer_:Z

    goto/16 :goto_0

    .line 44
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/papa91/battle/protocol/SimpleRoom;->copper_:I

    goto/16 :goto_0

    .line 45
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/papa91/battle/protocol/SimpleRoom;->elite_:Z

    goto/16 :goto_0

    .line 46
    :sswitch_10
    iget-object v4, p0, Lcom/papa91/battle/protocol/SimpleRoom;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    if-eqz v4, :cond_2

    .line 47
    invoke-virtual {v4}, Lcom/papa91/battle/protocol/BattleTitle;->toBuilder()Lcom/papa91/battle/protocol/BattleTitle$Builder;

    move-result-object v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 48
    :goto_1
    invoke-static {}, Lcom/papa91/battle/protocol/BattleTitle;->parser()Lcom/google/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/papa91/battle/protocol/BattleTitle;

    iput-object v5, p0, Lcom/papa91/battle/protocol/SimpleRoom;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    if-eqz v4, :cond_0

    .line 49
    invoke-virtual {v4, v5}, Lcom/papa91/battle/protocol/BattleTitle$Builder;->mergeFrom(Lcom/papa91/battle/protocol/BattleTitle;)Lcom/papa91/battle/protocol/BattleTitle$Builder;

    .line 50
    invoke-virtual {v4}, Lcom/papa91/battle/protocol/BattleTitle$Builder;->buildPartial()Lcom/papa91/battle/protocol/BattleTitle;

    move-result-object v4

    iput-object v4, p0, Lcom/papa91/battle/protocol/SimpleRoom;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    goto/16 :goto_0

    .line 51
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playSeconds_:I

    goto/16 :goto_0

    .line 52
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 53
    iput v4, p0, Lcom/papa91/battle/protocol/SimpleRoom;->state_:I

    goto/16 :goto_0

    .line 54
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/papa91/battle/protocol/SimpleRoom;->challengeCoins_:I

    goto/16 :goto_0

    .line 55
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/papa91/battle/protocol/SimpleRoom;->allowPeripheralJoin_:Z

    goto/16 :goto_0

    .line 56
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/papa91/battle/protocol/SimpleRoom;->allowSpectatorJoin_:Z

    goto/16 :goto_0

    .line 57
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/papa91/battle/protocol/SimpleRoom;->hasJoinPassword_:Z

    goto/16 :goto_0

    .line 58
    :sswitch_17
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/papa91/battle/protocol/SimpleRoom;->sitDownloadNumber_:I

    goto/16 :goto_0

    .line 59
    :sswitch_18
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/papa91/battle/protocol/SimpleRoom;->seatsNumber_:I

    goto/16 :goto_0

    .line 60
    :sswitch_19
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/papa91/battle/protocol/SimpleRoom;->createAt_:J

    goto/16 :goto_0

    .line 61
    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/papa91/battle/protocol/SimpleRoom;->vip_:Z

    goto/16 :goto_0

    .line 62
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 63
    iput-object v4, p0, Lcom/papa91/battle/protocol/SimpleRoom;->nickname_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 64
    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/papa91/battle/protocol/SimpleRoom;->gameId_:J

    goto/16 :goto_0

    .line 65
    :sswitch_1d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/papa91/battle/protocol/SimpleRoom;->roomId_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_2
    :sswitch_1e
    const/4 v1, 0x1

    goto/16 :goto_0

    :goto_3
    if-nez v4, :cond_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 66
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 67
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 68
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_3

    .line 69
    iget-object p2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playerList_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playerList_:Ljava/util/List;

    .line 70
    :cond_3
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 71
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 72
    throw p1

    :cond_4
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_5

    .line 73
    iget-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playerList_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playerList_:Ljava/util/List;

    .line 74
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 75
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1e
        0x8 -> :sswitch_1d
        0x10 -> :sswitch_1c
        0x1a -> :sswitch_1b
        0x20 -> :sswitch_1a
        0x28 -> :sswitch_19
        0x30 -> :sswitch_18
        0x38 -> :sswitch_17
        0x40 -> :sswitch_16
        0x48 -> :sswitch_15
        0x50 -> :sswitch_14
        0x60 -> :sswitch_13
        0x68 -> :sswitch_12
        0x70 -> :sswitch_11
        0x7a -> :sswitch_10
        0x80 -> :sswitch_f
        0x88 -> :sswitch_e
        0x90 -> :sswitch_d
        0x9a -> :sswitch_c
        0xa2 -> :sswitch_b
        0xa8 -> :sswitch_a
        0xb0 -> :sswitch_9
        0xba -> :sswitch_8
        0xc0 -> :sswitch_7
        0xc8 -> :sswitch_6
        0xd2 -> :sswitch_5
        0xd8 -> :sswitch_4
        0xe2 -> :sswitch_3
        0xe8 -> :sswitch_2
        0xf0 -> :sswitch_1
        0xf8 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/papa91/battle/protocol/SimpleRoom$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa91/battle/protocol/SimpleRoom;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    iput-byte p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/papa91/battle/protocol/SimpleRoom$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/papa91/battle/protocol/SimpleRoom;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->sitDownloadNumber_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1102(Lcom/papa91/battle/protocol/SimpleRoom;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->hasJoinPassword_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1202(Lcom/papa91/battle/protocol/SimpleRoom;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->allowSpectatorJoin_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1302(Lcom/papa91/battle/protocol/SimpleRoom;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->allowPeripheralJoin_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1402(Lcom/papa91/battle/protocol/SimpleRoom;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->challengeCoins_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1500(Lcom/papa91/battle/protocol/SimpleRoom;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->state_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1502(Lcom/papa91/battle/protocol/SimpleRoom;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->state_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1602(Lcom/papa91/battle/protocol/SimpleRoom;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playSeconds_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1702(Lcom/papa91/battle/protocol/SimpleRoom;Lcom/papa91/battle/protocol/BattleTitle;)Lcom/papa91/battle/protocol/BattleTitle;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1802(Lcom/papa91/battle/protocol/SimpleRoom;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->elite_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1902(Lcom/papa91/battle/protocol/SimpleRoom;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->copper_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$2002(Lcom/papa91/battle/protocol/SimpleRoom;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->hasPeripheralPlayer_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$2100(Lcom/papa91/battle/protocol/SimpleRoom;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleTitle_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2102(Lcom/papa91/battle/protocol/SimpleRoom;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleTitle_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$2200(Lcom/papa91/battle/protocol/SimpleRoom;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleTitleColor_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2202(Lcom/papa91/battle/protocol/SimpleRoom;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleTitleColor_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$2302(Lcom/papa91/battle/protocol/SimpleRoom;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playTimestamp_:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$2400(Lcom/papa91/battle/protocol/SimpleRoom;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleArea_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$2402(Lcom/papa91/battle/protocol/SimpleRoom;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleArea_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$2500(Lcom/papa91/battle/protocol/SimpleRoom;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->gameName_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2502(Lcom/papa91/battle/protocol/SimpleRoom;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->gameName_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$2602(Lcom/papa91/battle/protocol/SimpleRoom;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->collectionId_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$2702(Lcom/papa91/battle/protocol/SimpleRoom;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->spectatorNumber_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$2800(Lcom/papa91/battle/protocol/SimpleRoom;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->avatar_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2802(Lcom/papa91/battle/protocol/SimpleRoom;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->avatar_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$2902(Lcom/papa91/battle/protocol/SimpleRoom;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->allowPCJoin_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$3000(Lcom/papa91/battle/protocol/SimpleRoom;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playerList_:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$3002(Lcom/papa91/battle/protocol/SimpleRoom;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playerList_:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$3102(Lcom/papa91/battle/protocol/SimpleRoom;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->leaderId_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$3200(Lcom/papa91/battle/protocol/SimpleRoom;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->roomCategory_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$3202(Lcom/papa91/battle/protocol/SimpleRoom;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->roomCategory_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$3302(Lcom/papa91/battle/protocol/SimpleRoom;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->openBattleScore_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$3400()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$3500(Lcom/papa91/battle/protocol/SimpleRoom;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$3600()Lcom/google/protobuf/Parser;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/SimpleRoom;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$3700(Lcom/google/protobuf/ByteString;)V
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

.method static synthetic access$3800(Lcom/google/protobuf/ByteString;)V
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

.method static synthetic access$3900(Lcom/google/protobuf/ByteString;)V
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

.method static synthetic access$4000(Lcom/google/protobuf/ByteString;)V
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

.method static synthetic access$402(Lcom/papa91/battle/protocol/SimpleRoom;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->roomId_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$4100(Lcom/google/protobuf/ByteString;)V
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

.method static synthetic access$502(Lcom/papa91/battle/protocol/SimpleRoom;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->gameId_:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$600(Lcom/papa91/battle/protocol/SimpleRoom;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->nickname_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$602(Lcom/papa91/battle/protocol/SimpleRoom;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->nickname_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$702(Lcom/papa91/battle/protocol/SimpleRoom;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->vip_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$802(Lcom/papa91/battle/protocol/SimpleRoom;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->createAt_:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$902(Lcom/papa91/battle/protocol/SimpleRoom;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->seatsNumber_:I

    .line 2
    .line 3
    return p1
.end method

.method public static getDefaultInstance()Lcom/papa91/battle/protocol/SimpleRoom;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/SimpleRoom;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/SimpleRoom;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_SimpleRoom_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/SimpleRoom;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->toBuilder()Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/papa91/battle/protocol/SimpleRoom;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/papa91/battle/protocol/SimpleRoom;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->toBuilder()Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->mergeFrom(Lcom/papa91/battle/protocol/SimpleRoom;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/papa91/battle/protocol/SimpleRoom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/SimpleRoom;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/SimpleRoom;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/SimpleRoom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/papa91/battle/protocol/SimpleRoom;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/SimpleRoom;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/SimpleRoom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/papa91/battle/protocol/SimpleRoom;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/SimpleRoom;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/SimpleRoom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/papa91/battle/protocol/SimpleRoom;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/SimpleRoom;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/papa91/battle/protocol/SimpleRoom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/papa91/battle/protocol/SimpleRoom;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/SimpleRoom;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/SimpleRoom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/papa91/battle/protocol/SimpleRoom;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/SimpleRoom;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/papa91/battle/protocol/SimpleRoom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/papa91/battle/protocol/SimpleRoom;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/SimpleRoom;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/SimpleRoom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/papa91/battle/protocol/SimpleRoom;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/SimpleRoom;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/papa91/battle/protocol/SimpleRoom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/SimpleRoom;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/SimpleRoom;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/SimpleRoom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/papa91/battle/protocol/SimpleRoom;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/SimpleRoom;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/papa91/battle/protocol/SimpleRoom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/papa91/battle/protocol/SimpleRoom;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/SimpleRoom;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/SimpleRoom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/papa91/battle/protocol/SimpleRoom;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/SimpleRoom;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/papa91/battle/protocol/SimpleRoom;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/SimpleRoom;->PARSER:Lcom/google/protobuf/Parser;

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
    instance-of v1, p1, Lcom/papa91/battle/protocol/SimpleRoom;

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
    check-cast p1, Lcom/papa91/battle/protocol/SimpleRoom;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getRoomId()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getRoomId()I

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
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getGameId()J

    .line 29
    .line 30
    .line 31
    move-result-wide v1

    .line 32
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getGameId()J

    .line 33
    .line 34
    .line 35
    move-result-wide v4

    .line 36
    cmp-long v6, v1, v4

    .line 37
    .line 38
    if-eqz v6, :cond_3

    .line 39
    .line 40
    return v3

    .line 41
    :cond_3
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getNickname()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getNickname()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_4

    .line 54
    .line 55
    return v3

    .line 56
    :cond_4
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getVip()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getVip()Z

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
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getCreateAt()J

    .line 68
    .line 69
    .line 70
    move-result-wide v1

    .line 71
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getCreateAt()J

    .line 72
    .line 73
    .line 74
    move-result-wide v4

    .line 75
    cmp-long v6, v1, v4

    .line 76
    .line 77
    if-eqz v6, :cond_6

    .line 78
    .line 79
    return v3

    .line 80
    :cond_6
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getSeatsNumber()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getSeatsNumber()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eq v1, v2, :cond_7

    .line 89
    .line 90
    return v3

    .line 91
    :cond_7
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getSitDownloadNumber()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getSitDownloadNumber()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eq v1, v2, :cond_8

    .line 100
    .line 101
    return v3

    .line 102
    :cond_8
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getHasJoinPassword()Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getHasJoinPassword()Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eq v1, v2, :cond_9

    .line 111
    .line 112
    return v3

    .line 113
    :cond_9
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getAllowSpectatorJoin()Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getAllowSpectatorJoin()Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-eq v1, v2, :cond_a

    .line 122
    .line 123
    return v3

    .line 124
    :cond_a
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getAllowPeripheralJoin()Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getAllowPeripheralJoin()Z

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-eq v1, v2, :cond_b

    .line 133
    .line 134
    return v3

    .line 135
    :cond_b
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getChallengeCoins()I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getChallengeCoins()I

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    if-eq v1, v2, :cond_c

    .line 144
    .line 145
    return v3

    .line 146
    :cond_c
    iget v1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->state_:I

    .line 147
    .line 148
    iget v2, p1, Lcom/papa91/battle/protocol/SimpleRoom;->state_:I

    .line 149
    .line 150
    if-eq v1, v2, :cond_d

    .line 151
    .line 152
    return v3

    .line 153
    :cond_d
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlaySeconds()I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlaySeconds()I

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    if-eq v1, v2, :cond_e

    .line 162
    .line 163
    return v3

    .line 164
    :cond_e
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->hasTitle()Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->hasTitle()Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-eq v1, v2, :cond_f

    .line 173
    .line 174
    return v3

    .line 175
    :cond_f
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->hasTitle()Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-eqz v1, :cond_10

    .line 180
    .line 181
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getTitle()Lcom/papa91/battle/protocol/BattleTitle;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getTitle()Lcom/papa91/battle/protocol/BattleTitle;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-virtual {v1, v2}, Lcom/papa91/battle/protocol/BattleTitle;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-nez v1, :cond_10

    .line 194
    .line 195
    return v3

    .line 196
    :cond_10
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getElite()Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getElite()Z

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    if-eq v1, v2, :cond_11

    .line 205
    .line 206
    return v3

    .line 207
    :cond_11
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getCopper()I

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getCopper()I

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    if-eq v1, v2, :cond_12

    .line 216
    .line 217
    return v3

    .line 218
    :cond_12
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getHasPeripheralPlayer()Z

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getHasPeripheralPlayer()Z

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    if-eq v1, v2, :cond_13

    .line 227
    .line 228
    return v3

    .line 229
    :cond_13
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getBattleTitle()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getBattleTitle()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    if-nez v1, :cond_14

    .line 242
    .line 243
    return v3

    .line 244
    :cond_14
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getBattleTitleColor()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getBattleTitleColor()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    if-nez v1, :cond_15

    .line 257
    .line 258
    return v3

    .line 259
    :cond_15
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlayTimestamp()J

    .line 260
    .line 261
    .line 262
    move-result-wide v1

    .line 263
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlayTimestamp()J

    .line 264
    .line 265
    .line 266
    move-result-wide v4

    .line 267
    cmp-long v6, v1, v4

    .line 268
    .line 269
    if-eqz v6, :cond_16

    .line 270
    .line 271
    return v3

    .line 272
    :cond_16
    iget v1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleArea_:I

    .line 273
    .line 274
    iget v2, p1, Lcom/papa91/battle/protocol/SimpleRoom;->battleArea_:I

    .line 275
    .line 276
    if-eq v1, v2, :cond_17

    .line 277
    .line 278
    return v3

    .line 279
    :cond_17
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getGameName()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getGameName()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v1

    .line 291
    if-nez v1, :cond_18

    .line 292
    .line 293
    return v3

    .line 294
    :cond_18
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getCollectionId()I

    .line 295
    .line 296
    .line 297
    move-result v1

    .line 298
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getCollectionId()I

    .line 299
    .line 300
    .line 301
    move-result v2

    .line 302
    if-eq v1, v2, :cond_19

    .line 303
    .line 304
    return v3

    .line 305
    :cond_19
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getSpectatorNumber()I

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getSpectatorNumber()I

    .line 310
    .line 311
    .line 312
    move-result v2

    .line 313
    if-eq v1, v2, :cond_1a

    .line 314
    .line 315
    return v3

    .line 316
    :cond_1a
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getAvatar()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getAvatar()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v2

    .line 324
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result v1

    .line 328
    if-nez v1, :cond_1b

    .line 329
    .line 330
    return v3

    .line 331
    :cond_1b
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getAllowPCJoin()Z

    .line 332
    .line 333
    .line 334
    move-result v1

    .line 335
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getAllowPCJoin()Z

    .line 336
    .line 337
    .line 338
    move-result v2

    .line 339
    if-eq v1, v2, :cond_1c

    .line 340
    .line 341
    return v3

    .line 342
    :cond_1c
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlayerListList()Ljava/util/List;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlayerListList()Ljava/util/List;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    if-nez v1, :cond_1d

    .line 355
    .line 356
    return v3

    .line 357
    :cond_1d
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getLeaderId()I

    .line 358
    .line 359
    .line 360
    move-result v1

    .line 361
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getLeaderId()I

    .line 362
    .line 363
    .line 364
    move-result v2

    .line 365
    if-eq v1, v2, :cond_1e

    .line 366
    .line 367
    return v3

    .line 368
    :cond_1e
    iget v1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->roomCategory_:I

    .line 369
    .line 370
    iget v2, p1, Lcom/papa91/battle/protocol/SimpleRoom;->roomCategory_:I

    .line 371
    .line 372
    if-eq v1, v2, :cond_1f

    .line 373
    .line 374
    return v3

    .line 375
    :cond_1f
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getOpenBattleScore()Z

    .line 376
    .line 377
    .line 378
    move-result v1

    .line 379
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getOpenBattleScore()Z

    .line 380
    .line 381
    .line 382
    move-result v2

    .line 383
    if-eq v1, v2, :cond_20

    .line 384
    .line 385
    return v3

    .line 386
    :cond_20
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 387
    .line 388
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 389
    .line 390
    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    move-result p1

    .line 394
    if-nez p1, :cond_21

    .line 395
    .line 396
    return v3

    .line 397
    :cond_21
    return v0
.end method

.method public getAllowPCJoin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->allowPCJoin_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getAllowPeripheralJoin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->allowPeripheralJoin_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getAllowSpectatorJoin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->allowSpectatorJoin_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->avatar_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->avatar_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getAvatarBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->avatar_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->avatar_:Ljava/lang/Object;

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

.method public getBattleArea()Lcom/papa91/battle/protocol/BattleArea;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleArea_:I

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
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleArea_:I

    .line 2
    .line 3
    return v0
.end method

.method public getBattleTitle()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleTitle_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleTitle_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getBattleTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleTitle_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleTitle_:Ljava/lang/Object;

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

.method public getBattleTitleColor()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleTitleColor_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleTitleColor_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getBattleTitleColorBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleTitleColor_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleTitleColor_:Ljava/lang/Object;

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
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->challengeCoins_:I

    .line 2
    .line 3
    return v0
.end method

.method public getCollectionId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->collectionId_:I

    .line 2
    .line 3
    return v0
.end method

.method public getCopper()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->copper_:I

    .line 2
    .line 3
    return v0
.end method

.method public getCreateAt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->createAt_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getDefaultInstanceForType()Lcom/papa91/battle/protocol/SimpleRoom;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getDefaultInstanceForType()Lcom/papa91/battle/protocol/SimpleRoom;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/papa91/battle/protocol/SimpleRoom;
    .locals 1

    .line 3
    sget-object v0, Lcom/papa91/battle/protocol/SimpleRoom;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/SimpleRoom;

    return-object v0
.end method

.method public getElite()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->elite_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getGameId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->gameId_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getGameName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->gameName_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->gameName_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getGameNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->gameName_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->gameName_:Ljava/lang/Object;

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

.method public getHasJoinPassword()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->hasJoinPassword_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getHasPeripheralPlayer()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->hasPeripheralPlayer_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getLeaderId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->leaderId_:I

    .line 2
    .line 3
    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->nickname_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->nickname_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getNicknameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->nickname_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->nickname_:Ljava/lang/Object;

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

.method public getOpenBattleScore()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->openBattleScore_:Z

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
            "Lcom/papa91/battle/protocol/SimpleRoom;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/SimpleRoom;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlaySeconds()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playSeconds_:I

    .line 2
    .line 3
    return v0
.end method

.method public getPlayTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playTimestamp_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getPlayerList(I)Lcom/papa91/battle/protocol/RoomPosition;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playerList_:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/papa91/battle/protocol/RoomPosition;

    .line 8
    .line 9
    return-object p1
.end method

.method public getPlayerListCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playerList_:Ljava/util/List;

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

.method public getPlayerListList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/papa91/battle/protocol/RoomPosition;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playerList_:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlayerListOrBuilder(I)Lcom/papa91/battle/protocol/RoomPositionOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playerList_:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/papa91/battle/protocol/RoomPositionOrBuilder;

    .line 8
    .line 9
    return-object p1
.end method

.method public getPlayerListOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/papa91/battle/protocol/RoomPositionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playerList_:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRoomCategory()Lcom/papa91/battle/protocol/RoomCategory;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->roomCategory_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa91/battle/protocol/RoomCategory;->valueOf(I)Lcom/papa91/battle/protocol/RoomCategory;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/papa91/battle/protocol/RoomCategory;->UNRECOGNIZED:Lcom/papa91/battle/protocol/RoomCategory;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getRoomCategoryValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->roomCategory_:I

    .line 2
    .line 3
    return v0
.end method

.method public getRoomId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->roomId_:I

    .line 2
    .line 3
    return v0
.end method

.method public getSeatsNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->seatsNumber_:I

    .line 2
    .line 3
    return v0
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
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->roomId_:I

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
    add-int/2addr v0, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    :goto_0
    iget-wide v2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->gameId_:J

    .line 21
    .line 22
    const-wide/16 v4, 0x0

    .line 23
    .line 24
    cmp-long v6, v2, v4

    .line 25
    .line 26
    if-eqz v6, :cond_2

    .line 27
    .line 28
    const/4 v6, 0x2

    .line 29
    invoke-static {v6, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    add-int/2addr v0, v2

    .line 34
    :cond_2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getNicknameBytes()Lcom/google/protobuf/ByteString;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_3

    .line 43
    .line 44
    const/4 v2, 0x3

    .line 45
    iget-object v3, p0, Lcom/papa91/battle/protocol/SimpleRoom;->nickname_:Ljava/lang/Object;

    .line 46
    .line 47
    invoke-static {v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    add-int/2addr v0, v2

    .line 52
    :cond_3
    iget-boolean v2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->vip_:Z

    .line 53
    .line 54
    if-eqz v2, :cond_4

    .line 55
    .line 56
    const/4 v3, 0x4

    .line 57
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    add-int/2addr v0, v2

    .line 62
    :cond_4
    iget-wide v2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->createAt_:J

    .line 63
    .line 64
    cmp-long v6, v2, v4

    .line 65
    .line 66
    if-eqz v6, :cond_5

    .line 67
    .line 68
    const/4 v6, 0x5

    .line 69
    invoke-static {v6, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    add-int/2addr v0, v2

    .line 74
    :cond_5
    iget v2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->seatsNumber_:I

    .line 75
    .line 76
    if-eqz v2, :cond_6

    .line 77
    .line 78
    const/4 v3, 0x6

    .line 79
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    add-int/2addr v0, v2

    .line 84
    :cond_6
    iget v2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->sitDownloadNumber_:I

    .line 85
    .line 86
    if-eqz v2, :cond_7

    .line 87
    .line 88
    const/4 v3, 0x7

    .line 89
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    add-int/2addr v0, v2

    .line 94
    :cond_7
    iget-boolean v2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->hasJoinPassword_:Z

    .line 95
    .line 96
    if-eqz v2, :cond_8

    .line 97
    .line 98
    const/16 v3, 0x8

    .line 99
    .line 100
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    add-int/2addr v0, v2

    .line 105
    :cond_8
    iget-boolean v2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->allowSpectatorJoin_:Z

    .line 106
    .line 107
    if-eqz v2, :cond_9

    .line 108
    .line 109
    const/16 v3, 0x9

    .line 110
    .line 111
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    add-int/2addr v0, v2

    .line 116
    :cond_9
    iget-boolean v2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->allowPeripheralJoin_:Z

    .line 117
    .line 118
    if-eqz v2, :cond_a

    .line 119
    .line 120
    const/16 v3, 0xa

    .line 121
    .line 122
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    add-int/2addr v0, v2

    .line 127
    :cond_a
    iget v2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->challengeCoins_:I

    .line 128
    .line 129
    if-eqz v2, :cond_b

    .line 130
    .line 131
    const/16 v3, 0xc

    .line 132
    .line 133
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    add-int/2addr v0, v2

    .line 138
    :cond_b
    iget v2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->state_:I

    .line 139
    .line 140
    sget-object v3, Lcom/papa91/battle/protocol/RoomState;->EMPTY:Lcom/papa91/battle/protocol/RoomState;

    .line 141
    .line 142
    invoke-virtual {v3}, Lcom/papa91/battle/protocol/RoomState;->getNumber()I

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    if-eq v2, v3, :cond_c

    .line 147
    .line 148
    const/16 v2, 0xd

    .line 149
    .line 150
    iget v3, p0, Lcom/papa91/battle/protocol/SimpleRoom;->state_:I

    .line 151
    .line 152
    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    add-int/2addr v0, v2

    .line 157
    :cond_c
    iget v2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playSeconds_:I

    .line 158
    .line 159
    if-eqz v2, :cond_d

    .line 160
    .line 161
    const/16 v3, 0xe

    .line 162
    .line 163
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    add-int/2addr v0, v2

    .line 168
    :cond_d
    iget-object v2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    .line 169
    .line 170
    if-eqz v2, :cond_e

    .line 171
    .line 172
    const/16 v2, 0xf

    .line 173
    .line 174
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getTitle()Lcom/papa91/battle/protocol/BattleTitle;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    add-int/2addr v0, v2

    .line 183
    :cond_e
    iget-boolean v2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->elite_:Z

    .line 184
    .line 185
    if-eqz v2, :cond_f

    .line 186
    .line 187
    const/16 v3, 0x10

    .line 188
    .line 189
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    add-int/2addr v0, v2

    .line 194
    :cond_f
    iget v2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->copper_:I

    .line 195
    .line 196
    if-eqz v2, :cond_10

    .line 197
    .line 198
    const/16 v3, 0x11

    .line 199
    .line 200
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    add-int/2addr v0, v2

    .line 205
    :cond_10
    iget-boolean v2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->hasPeripheralPlayer_:Z

    .line 206
    .line 207
    if-eqz v2, :cond_11

    .line 208
    .line 209
    const/16 v3, 0x12

    .line 210
    .line 211
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    add-int/2addr v0, v2

    .line 216
    :cond_11
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getBattleTitleBytes()Lcom/google/protobuf/ByteString;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    if-nez v2, :cond_12

    .line 225
    .line 226
    const/16 v2, 0x13

    .line 227
    .line 228
    iget-object v3, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleTitle_:Ljava/lang/Object;

    .line 229
    .line 230
    invoke-static {v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 231
    .line 232
    .line 233
    move-result v2

    .line 234
    add-int/2addr v0, v2

    .line 235
    :cond_12
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getBattleTitleColorBytes()Lcom/google/protobuf/ByteString;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    if-nez v2, :cond_13

    .line 244
    .line 245
    const/16 v2, 0x14

    .line 246
    .line 247
    iget-object v3, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleTitleColor_:Ljava/lang/Object;

    .line 248
    .line 249
    invoke-static {v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    add-int/2addr v0, v2

    .line 254
    :cond_13
    iget-wide v2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playTimestamp_:J

    .line 255
    .line 256
    cmp-long v6, v2, v4

    .line 257
    .line 258
    if-eqz v6, :cond_14

    .line 259
    .line 260
    const/16 v4, 0x15

    .line 261
    .line 262
    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    add-int/2addr v0, v2

    .line 267
    :cond_14
    iget v2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleArea_:I

    .line 268
    .line 269
    sget-object v3, Lcom/papa91/battle/protocol/BattleArea;->ALL:Lcom/papa91/battle/protocol/BattleArea;

    .line 270
    .line 271
    invoke-virtual {v3}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    .line 272
    .line 273
    .line 274
    move-result v3

    .line 275
    if-eq v2, v3, :cond_15

    .line 276
    .line 277
    const/16 v2, 0x16

    .line 278
    .line 279
    iget v3, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleArea_:I

    .line 280
    .line 281
    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 282
    .line 283
    .line 284
    move-result v2

    .line 285
    add-int/2addr v0, v2

    .line 286
    :cond_15
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getGameNameBytes()Lcom/google/protobuf/ByteString;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 291
    .line 292
    .line 293
    move-result v2

    .line 294
    if-nez v2, :cond_16

    .line 295
    .line 296
    const/16 v2, 0x17

    .line 297
    .line 298
    iget-object v3, p0, Lcom/papa91/battle/protocol/SimpleRoom;->gameName_:Ljava/lang/Object;

    .line 299
    .line 300
    invoke-static {v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 301
    .line 302
    .line 303
    move-result v2

    .line 304
    add-int/2addr v0, v2

    .line 305
    :cond_16
    iget v2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->collectionId_:I

    .line 306
    .line 307
    if-eqz v2, :cond_17

    .line 308
    .line 309
    const/16 v3, 0x18

    .line 310
    .line 311
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 312
    .line 313
    .line 314
    move-result v2

    .line 315
    add-int/2addr v0, v2

    .line 316
    :cond_17
    iget v2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->spectatorNumber_:I

    .line 317
    .line 318
    if-eqz v2, :cond_18

    .line 319
    .line 320
    const/16 v3, 0x19

    .line 321
    .line 322
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 323
    .line 324
    .line 325
    move-result v2

    .line 326
    add-int/2addr v0, v2

    .line 327
    :cond_18
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getAvatarBytes()Lcom/google/protobuf/ByteString;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 332
    .line 333
    .line 334
    move-result v2

    .line 335
    if-nez v2, :cond_19

    .line 336
    .line 337
    const/16 v2, 0x1a

    .line 338
    .line 339
    iget-object v3, p0, Lcom/papa91/battle/protocol/SimpleRoom;->avatar_:Ljava/lang/Object;

    .line 340
    .line 341
    invoke-static {v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 342
    .line 343
    .line 344
    move-result v2

    .line 345
    add-int/2addr v0, v2

    .line 346
    :cond_19
    iget-boolean v2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->allowPCJoin_:Z

    .line 347
    .line 348
    if-eqz v2, :cond_1a

    .line 349
    .line 350
    const/16 v3, 0x1b

    .line 351
    .line 352
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 353
    .line 354
    .line 355
    move-result v2

    .line 356
    add-int/2addr v0, v2

    .line 357
    :cond_1a
    :goto_1
    iget-object v2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playerList_:Ljava/util/List;

    .line 358
    .line 359
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 360
    .line 361
    .line 362
    move-result v2

    .line 363
    if-ge v1, v2, :cond_1b

    .line 364
    .line 365
    iget-object v2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playerList_:Ljava/util/List;

    .line 366
    .line 367
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v2

    .line 371
    check-cast v2, Lcom/google/protobuf/MessageLite;

    .line 372
    .line 373
    const/16 v3, 0x1c

    .line 374
    .line 375
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 376
    .line 377
    .line 378
    move-result v2

    .line 379
    add-int/2addr v0, v2

    .line 380
    add-int/lit8 v1, v1, 0x1

    .line 381
    .line 382
    goto :goto_1

    .line 383
    :cond_1b
    iget v1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->leaderId_:I

    .line 384
    .line 385
    if-eqz v1, :cond_1c

    .line 386
    .line 387
    const/16 v2, 0x1d

    .line 388
    .line 389
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 390
    .line 391
    .line 392
    move-result v1

    .line 393
    add-int/2addr v0, v1

    .line 394
    :cond_1c
    iget v1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->roomCategory_:I

    .line 395
    .line 396
    sget-object v2, Lcom/papa91/battle/protocol/RoomCategory;->NORMAL:Lcom/papa91/battle/protocol/RoomCategory;

    .line 397
    .line 398
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/RoomCategory;->getNumber()I

    .line 399
    .line 400
    .line 401
    move-result v2

    .line 402
    if-eq v1, v2, :cond_1d

    .line 403
    .line 404
    const/16 v1, 0x1e

    .line 405
    .line 406
    iget v2, p0, Lcom/papa91/battle/protocol/SimpleRoom;->roomCategory_:I

    .line 407
    .line 408
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 409
    .line 410
    .line 411
    move-result v1

    .line 412
    add-int/2addr v0, v1

    .line 413
    :cond_1d
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->openBattleScore_:Z

    .line 414
    .line 415
    if-eqz v1, :cond_1e

    .line 416
    .line 417
    const/16 v2, 0x1f

    .line 418
    .line 419
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 420
    .line 421
    .line 422
    move-result v1

    .line 423
    add-int/2addr v0, v1

    .line 424
    :cond_1e
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 425
    .line 426
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    .line 427
    .line 428
    .line 429
    move-result v1

    .line 430
    add-int/2addr v0, v1

    .line 431
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 432
    .line 433
    return v0
.end method

.method public getSitDownloadNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->sitDownloadNumber_:I

    .line 2
    .line 3
    return v0
.end method

.method public getSpectatorNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->spectatorNumber_:I

    .line 2
    .line 3
    return v0
.end method

.method public getState()Lcom/papa91/battle/protocol/RoomState;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->state_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa91/battle/protocol/RoomState;->valueOf(I)Lcom/papa91/battle/protocol/RoomState;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/papa91/battle/protocol/RoomState;->UNRECOGNIZED:Lcom/papa91/battle/protocol/RoomState;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getStateValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->state_:I

    .line 2
    .line 3
    return v0
.end method

.method public getTitle()Lcom/papa91/battle/protocol/BattleTitle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/papa91/battle/protocol/BattleTitle;->getDefaultInstance()Lcom/papa91/battle/protocol/BattleTitle;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getTitleOrBuilder()Lcom/papa91/battle/protocol/BattleTitleOrBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getTitle()Lcom/papa91/battle/protocol/BattleTitle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVip()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->vip_:Z

    .line 2
    .line 3
    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->title_:Lcom/papa91/battle/protocol/BattleTitle;

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
    invoke-static {}, Lcom/papa91/battle/protocol/SimpleRoom;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getRoomId()I

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
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getGameId()J

    .line 35
    .line 36
    .line 37
    move-result-wide v2

    .line 38
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

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
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getNickname()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

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
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getVip()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-static {v0}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    add-int/2addr v1, v0

    .line 73
    mul-int/lit8 v1, v1, 0x25

    .line 74
    .line 75
    add-int/lit8 v1, v1, 0x5

    .line 76
    .line 77
    mul-int/lit8 v1, v1, 0x35

    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getCreateAt()J

    .line 80
    .line 81
    .line 82
    move-result-wide v2

    .line 83
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    add-int/2addr v1, v0

    .line 88
    mul-int/lit8 v1, v1, 0x25

    .line 89
    .line 90
    add-int/lit8 v1, v1, 0x6

    .line 91
    .line 92
    mul-int/lit8 v1, v1, 0x35

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getSeatsNumber()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    add-int/2addr v1, v0

    .line 99
    mul-int/lit8 v1, v1, 0x25

    .line 100
    .line 101
    add-int/lit8 v1, v1, 0x7

    .line 102
    .line 103
    mul-int/lit8 v1, v1, 0x35

    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getSitDownloadNumber()I

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
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getHasJoinPassword()Z

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
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getAllowSpectatorJoin()Z

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
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getAllowPeripheralJoin()Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    invoke-static {v0}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    add-int/2addr v1, v0

    .line 155
    mul-int/lit8 v1, v1, 0x25

    .line 156
    .line 157
    add-int/lit8 v1, v1, 0xc

    .line 158
    .line 159
    mul-int/lit8 v1, v1, 0x35

    .line 160
    .line 161
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getChallengeCoins()I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    add-int/2addr v1, v0

    .line 166
    mul-int/lit8 v1, v1, 0x25

    .line 167
    .line 168
    add-int/lit8 v1, v1, 0xd

    .line 169
    .line 170
    mul-int/lit8 v1, v1, 0x35

    .line 171
    .line 172
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->state_:I

    .line 173
    .line 174
    add-int/2addr v1, v0

    .line 175
    mul-int/lit8 v1, v1, 0x25

    .line 176
    .line 177
    add-int/lit8 v1, v1, 0xe

    .line 178
    .line 179
    mul-int/lit8 v1, v1, 0x35

    .line 180
    .line 181
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlaySeconds()I

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    add-int/2addr v1, v0

    .line 186
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->hasTitle()Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-eqz v0, :cond_1

    .line 191
    .line 192
    mul-int/lit8 v1, v1, 0x25

    .line 193
    .line 194
    add-int/lit8 v1, v1, 0xf

    .line 195
    .line 196
    mul-int/lit8 v1, v1, 0x35

    .line 197
    .line 198
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getTitle()Lcom/papa91/battle/protocol/BattleTitle;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/BattleTitle;->hashCode()I

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    add-int/2addr v1, v0

    .line 207
    :cond_1
    mul-int/lit8 v1, v1, 0x25

    .line 208
    .line 209
    add-int/lit8 v1, v1, 0x10

    .line 210
    .line 211
    mul-int/lit8 v1, v1, 0x35

    .line 212
    .line 213
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getElite()Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    invoke-static {v0}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    add-int/2addr v1, v0

    .line 222
    mul-int/lit8 v1, v1, 0x25

    .line 223
    .line 224
    add-int/lit8 v1, v1, 0x11

    .line 225
    .line 226
    mul-int/lit8 v1, v1, 0x35

    .line 227
    .line 228
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getCopper()I

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    add-int/2addr v1, v0

    .line 233
    mul-int/lit8 v1, v1, 0x25

    .line 234
    .line 235
    add-int/lit8 v1, v1, 0x12

    .line 236
    .line 237
    mul-int/lit8 v1, v1, 0x35

    .line 238
    .line 239
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getHasPeripheralPlayer()Z

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    invoke-static {v0}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    add-int/2addr v1, v0

    .line 248
    mul-int/lit8 v1, v1, 0x25

    .line 249
    .line 250
    add-int/lit8 v1, v1, 0x13

    .line 251
    .line 252
    mul-int/lit8 v1, v1, 0x35

    .line 253
    .line 254
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getBattleTitle()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    add-int/2addr v1, v0

    .line 263
    mul-int/lit8 v1, v1, 0x25

    .line 264
    .line 265
    add-int/lit8 v1, v1, 0x14

    .line 266
    .line 267
    mul-int/lit8 v1, v1, 0x35

    .line 268
    .line 269
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getBattleTitleColor()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    add-int/2addr v1, v0

    .line 278
    mul-int/lit8 v1, v1, 0x25

    .line 279
    .line 280
    add-int/lit8 v1, v1, 0x15

    .line 281
    .line 282
    mul-int/lit8 v1, v1, 0x35

    .line 283
    .line 284
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlayTimestamp()J

    .line 285
    .line 286
    .line 287
    move-result-wide v2

    .line 288
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    add-int/2addr v1, v0

    .line 293
    mul-int/lit8 v1, v1, 0x25

    .line 294
    .line 295
    add-int/lit8 v1, v1, 0x16

    .line 296
    .line 297
    mul-int/lit8 v1, v1, 0x35

    .line 298
    .line 299
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleArea_:I

    .line 300
    .line 301
    add-int/2addr v1, v0

    .line 302
    mul-int/lit8 v1, v1, 0x25

    .line 303
    .line 304
    add-int/lit8 v1, v1, 0x17

    .line 305
    .line 306
    mul-int/lit8 v1, v1, 0x35

    .line 307
    .line 308
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getGameName()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 313
    .line 314
    .line 315
    move-result v0

    .line 316
    add-int/2addr v1, v0

    .line 317
    mul-int/lit8 v1, v1, 0x25

    .line 318
    .line 319
    add-int/lit8 v1, v1, 0x18

    .line 320
    .line 321
    mul-int/lit8 v1, v1, 0x35

    .line 322
    .line 323
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getCollectionId()I

    .line 324
    .line 325
    .line 326
    move-result v0

    .line 327
    add-int/2addr v1, v0

    .line 328
    mul-int/lit8 v1, v1, 0x25

    .line 329
    .line 330
    add-int/lit8 v1, v1, 0x19

    .line 331
    .line 332
    mul-int/lit8 v1, v1, 0x35

    .line 333
    .line 334
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getSpectatorNumber()I

    .line 335
    .line 336
    .line 337
    move-result v0

    .line 338
    add-int/2addr v1, v0

    .line 339
    mul-int/lit8 v1, v1, 0x25

    .line 340
    .line 341
    add-int/lit8 v1, v1, 0x1a

    .line 342
    .line 343
    mul-int/lit8 v1, v1, 0x35

    .line 344
    .line 345
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getAvatar()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 350
    .line 351
    .line 352
    move-result v0

    .line 353
    add-int/2addr v1, v0

    .line 354
    mul-int/lit8 v1, v1, 0x25

    .line 355
    .line 356
    add-int/lit8 v1, v1, 0x1b

    .line 357
    .line 358
    mul-int/lit8 v1, v1, 0x35

    .line 359
    .line 360
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getAllowPCJoin()Z

    .line 361
    .line 362
    .line 363
    move-result v0

    .line 364
    invoke-static {v0}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    .line 365
    .line 366
    .line 367
    move-result v0

    .line 368
    add-int/2addr v1, v0

    .line 369
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlayerListCount()I

    .line 370
    .line 371
    .line 372
    move-result v0

    .line 373
    if-lez v0, :cond_2

    .line 374
    .line 375
    mul-int/lit8 v1, v1, 0x25

    .line 376
    .line 377
    add-int/lit8 v1, v1, 0x1c

    .line 378
    .line 379
    mul-int/lit8 v1, v1, 0x35

    .line 380
    .line 381
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlayerListList()Ljava/util/List;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    .line 386
    .line 387
    .line 388
    move-result v0

    .line 389
    add-int/2addr v1, v0

    .line 390
    :cond_2
    mul-int/lit8 v1, v1, 0x25

    .line 391
    .line 392
    add-int/lit8 v1, v1, 0x1d

    .line 393
    .line 394
    mul-int/lit8 v1, v1, 0x35

    .line 395
    .line 396
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getLeaderId()I

    .line 397
    .line 398
    .line 399
    move-result v0

    .line 400
    add-int/2addr v1, v0

    .line 401
    mul-int/lit8 v1, v1, 0x25

    .line 402
    .line 403
    add-int/lit8 v1, v1, 0x1e

    .line 404
    .line 405
    mul-int/lit8 v1, v1, 0x35

    .line 406
    .line 407
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->roomCategory_:I

    .line 408
    .line 409
    add-int/2addr v1, v0

    .line 410
    mul-int/lit8 v1, v1, 0x25

    .line 411
    .line 412
    add-int/lit8 v1, v1, 0x1f

    .line 413
    .line 414
    mul-int/lit8 v1, v1, 0x35

    .line 415
    .line 416
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getOpenBattleScore()Z

    .line 417
    .line 418
    .line 419
    move-result v0

    .line 420
    invoke-static {v0}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    .line 421
    .line 422
    .line 423
    move-result v0

    .line 424
    add-int/2addr v1, v0

    .line 425
    mul-int/lit8 v1, v1, 0x1d

    .line 426
    .line 427
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 428
    .line 429
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    .line 430
    .line 431
    .line 432
    move-result v0

    .line 433
    add-int/2addr v1, v0

    .line 434
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 435
    .line 436
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_SimpleRoom_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    const-class v1, Lcom/papa91/battle/protocol/SimpleRoom;

    .line 4
    .line 5
    const-class v2, Lcom/papa91/battle/protocol/SimpleRoom$Builder;

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
    iget-byte v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->memoizedIsInitialized:B

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
    iput-byte v1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->newBuilderForType()Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->newBuilderForType()Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/papa91/battle/protocol/SimpleRoom;->newBuilder()Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/papa91/battle/protocol/SimpleRoom$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Lcom/papa91/battle/protocol/SimpleRoom;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/papa91/battle/protocol/SimpleRoom;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->toBuilder()Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->toBuilder()Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/papa91/battle/protocol/SimpleRoom;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/SimpleRoom;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    invoke-direct {v0, v1}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;-><init>(Lcom/papa91/battle/protocol/SimpleRoom$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    invoke-direct {v0, v1}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;-><init>(Lcom/papa91/battle/protocol/SimpleRoom$1;)V

    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->mergeFrom(Lcom/papa91/battle/protocol/SimpleRoom;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

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
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->roomId_:I

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
    iget-wide v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->gameId_:J

    .line 10
    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    cmp-long v4, v0, v2

    .line 14
    .line 15
    if-eqz v4, :cond_1

    .line 16
    .line 17
    const/4 v4, 0x2

    .line 18
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getNicknameBytes()Lcom/google/protobuf/ByteString;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    const/4 v0, 0x3

    .line 32
    iget-object v1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->nickname_:Ljava/lang/Object;

    .line 33
    .line 34
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_2
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->vip_:Z

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    const/4 v1, 0x4

    .line 42
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 43
    .line 44
    .line 45
    :cond_3
    iget-wide v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->createAt_:J

    .line 46
    .line 47
    cmp-long v4, v0, v2

    .line 48
    .line 49
    if-eqz v4, :cond_4

    .line 50
    .line 51
    const/4 v4, 0x5

    .line 52
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 53
    .line 54
    .line 55
    :cond_4
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->seatsNumber_:I

    .line 56
    .line 57
    if-eqz v0, :cond_5

    .line 58
    .line 59
    const/4 v1, 0x6

    .line 60
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 61
    .line 62
    .line 63
    :cond_5
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->sitDownloadNumber_:I

    .line 64
    .line 65
    if-eqz v0, :cond_6

    .line 66
    .line 67
    const/4 v1, 0x7

    .line 68
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 69
    .line 70
    .line 71
    :cond_6
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->hasJoinPassword_:Z

    .line 72
    .line 73
    if-eqz v0, :cond_7

    .line 74
    .line 75
    const/16 v1, 0x8

    .line 76
    .line 77
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 78
    .line 79
    .line 80
    :cond_7
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->allowSpectatorJoin_:Z

    .line 81
    .line 82
    if-eqz v0, :cond_8

    .line 83
    .line 84
    const/16 v1, 0x9

    .line 85
    .line 86
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 87
    .line 88
    .line 89
    :cond_8
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->allowPeripheralJoin_:Z

    .line 90
    .line 91
    if-eqz v0, :cond_9

    .line 92
    .line 93
    const/16 v1, 0xa

    .line 94
    .line 95
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 96
    .line 97
    .line 98
    :cond_9
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->challengeCoins_:I

    .line 99
    .line 100
    if-eqz v0, :cond_a

    .line 101
    .line 102
    const/16 v1, 0xc

    .line 103
    .line 104
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 105
    .line 106
    .line 107
    :cond_a
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->state_:I

    .line 108
    .line 109
    sget-object v1, Lcom/papa91/battle/protocol/RoomState;->EMPTY:Lcom/papa91/battle/protocol/RoomState;

    .line 110
    .line 111
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/RoomState;->getNumber()I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-eq v0, v1, :cond_b

    .line 116
    .line 117
    const/16 v0, 0xd

    .line 118
    .line 119
    iget v1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->state_:I

    .line 120
    .line 121
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 122
    .line 123
    .line 124
    :cond_b
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playSeconds_:I

    .line 125
    .line 126
    if-eqz v0, :cond_c

    .line 127
    .line 128
    const/16 v1, 0xe

    .line 129
    .line 130
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 131
    .line 132
    .line 133
    :cond_c
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    .line 134
    .line 135
    if-eqz v0, :cond_d

    .line 136
    .line 137
    const/16 v0, 0xf

    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getTitle()Lcom/papa91/battle/protocol/BattleTitle;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 144
    .line 145
    .line 146
    :cond_d
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->elite_:Z

    .line 147
    .line 148
    if-eqz v0, :cond_e

    .line 149
    .line 150
    const/16 v1, 0x10

    .line 151
    .line 152
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 153
    .line 154
    .line 155
    :cond_e
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->copper_:I

    .line 156
    .line 157
    if-eqz v0, :cond_f

    .line 158
    .line 159
    const/16 v1, 0x11

    .line 160
    .line 161
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 162
    .line 163
    .line 164
    :cond_f
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->hasPeripheralPlayer_:Z

    .line 165
    .line 166
    if-eqz v0, :cond_10

    .line 167
    .line 168
    const/16 v1, 0x12

    .line 169
    .line 170
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 171
    .line 172
    .line 173
    :cond_10
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getBattleTitleBytes()Lcom/google/protobuf/ByteString;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-nez v0, :cond_11

    .line 182
    .line 183
    const/16 v0, 0x13

    .line 184
    .line 185
    iget-object v1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleTitle_:Ljava/lang/Object;

    .line 186
    .line 187
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    :cond_11
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getBattleTitleColorBytes()Lcom/google/protobuf/ByteString;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    if-nez v0, :cond_12

    .line 199
    .line 200
    const/16 v0, 0x14

    .line 201
    .line 202
    iget-object v1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleTitleColor_:Ljava/lang/Object;

    .line 203
    .line 204
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    :cond_12
    iget-wide v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playTimestamp_:J

    .line 208
    .line 209
    cmp-long v4, v0, v2

    .line 210
    .line 211
    if-eqz v4, :cond_13

    .line 212
    .line 213
    const/16 v2, 0x15

    .line 214
    .line 215
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 216
    .line 217
    .line 218
    :cond_13
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleArea_:I

    .line 219
    .line 220
    sget-object v1, Lcom/papa91/battle/protocol/BattleArea;->ALL:Lcom/papa91/battle/protocol/BattleArea;

    .line 221
    .line 222
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    if-eq v0, v1, :cond_14

    .line 227
    .line 228
    const/16 v0, 0x16

    .line 229
    .line 230
    iget v1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->battleArea_:I

    .line 231
    .line 232
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 233
    .line 234
    .line 235
    :cond_14
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getGameNameBytes()Lcom/google/protobuf/ByteString;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    if-nez v0, :cond_15

    .line 244
    .line 245
    const/16 v0, 0x17

    .line 246
    .line 247
    iget-object v1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->gameName_:Ljava/lang/Object;

    .line 248
    .line 249
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    :cond_15
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->collectionId_:I

    .line 253
    .line 254
    if-eqz v0, :cond_16

    .line 255
    .line 256
    const/16 v1, 0x18

    .line 257
    .line 258
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 259
    .line 260
    .line 261
    :cond_16
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->spectatorNumber_:I

    .line 262
    .line 263
    if-eqz v0, :cond_17

    .line 264
    .line 265
    const/16 v1, 0x19

    .line 266
    .line 267
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 268
    .line 269
    .line 270
    :cond_17
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom;->getAvatarBytes()Lcom/google/protobuf/ByteString;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    if-nez v0, :cond_18

    .line 279
    .line 280
    const/16 v0, 0x1a

    .line 281
    .line 282
    iget-object v1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->avatar_:Ljava/lang/Object;

    .line 283
    .line 284
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    :cond_18
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->allowPCJoin_:Z

    .line 288
    .line 289
    if-eqz v0, :cond_19

    .line 290
    .line 291
    const/16 v1, 0x1b

    .line 292
    .line 293
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 294
    .line 295
    .line 296
    :cond_19
    const/4 v0, 0x0

    .line 297
    :goto_0
    iget-object v1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playerList_:Ljava/util/List;

    .line 298
    .line 299
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 300
    .line 301
    .line 302
    move-result v1

    .line 303
    if-ge v0, v1, :cond_1a

    .line 304
    .line 305
    iget-object v1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->playerList_:Ljava/util/List;

    .line 306
    .line 307
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    check-cast v1, Lcom/google/protobuf/MessageLite;

    .line 312
    .line 313
    const/16 v2, 0x1c

    .line 314
    .line 315
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 316
    .line 317
    .line 318
    add-int/lit8 v0, v0, 0x1

    .line 319
    .line 320
    goto :goto_0

    .line 321
    :cond_1a
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->leaderId_:I

    .line 322
    .line 323
    if-eqz v0, :cond_1b

    .line 324
    .line 325
    const/16 v1, 0x1d

    .line 326
    .line 327
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 328
    .line 329
    .line 330
    :cond_1b
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->roomCategory_:I

    .line 331
    .line 332
    sget-object v1, Lcom/papa91/battle/protocol/RoomCategory;->NORMAL:Lcom/papa91/battle/protocol/RoomCategory;

    .line 333
    .line 334
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/RoomCategory;->getNumber()I

    .line 335
    .line 336
    .line 337
    move-result v1

    .line 338
    if-eq v0, v1, :cond_1c

    .line 339
    .line 340
    const/16 v0, 0x1e

    .line 341
    .line 342
    iget v1, p0, Lcom/papa91/battle/protocol/SimpleRoom;->roomCategory_:I

    .line 343
    .line 344
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 345
    .line 346
    .line 347
    :cond_1c
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom;->openBattleScore_:Z

    .line 348
    .line 349
    if-eqz v0, :cond_1d

    .line 350
    .line 351
    const/16 v1, 0x1f

    .line 352
    .line 353
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 354
    .line 355
    .line 356
    :cond_1d
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 357
    .line 358
    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 359
    .line 360
    .line 361
    return-void
.end method
