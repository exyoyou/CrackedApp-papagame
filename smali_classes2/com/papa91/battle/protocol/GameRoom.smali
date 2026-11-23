.class public final Lcom/papa91/battle/protocol/GameRoom;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/papa91/battle/protocol/GameRoomOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/battle/protocol/GameRoom$Builder;,
        Lcom/papa91/battle/protocol/GameRoom$GameType;
    }
.end annotation


# static fields
.field public static final ALLOWPCJOIN_FIELD_NUMBER:I = 0x1d

.field public static final ALLOWPERIPHERALJOIN_FIELD_NUMBER:I = 0x6

.field public static final ALLOWSPECTATORJOIN_FIELD_NUMBER:I = 0x5

.field public static final BATTLEAREA_FIELD_NUMBER:I = 0x1a

.field public static final BATTLESERVERADDR_FIELD_NUMBER:I = 0x15

.field public static final CHALLENGECOINS_FIELD_NUMBER:I = 0xc

.field public static final CHATROOMID_FIELD_NUMBER:I = 0x21

.field public static final COLLECTIONID_FIELD_NUMBER:I = 0x1c

.field public static final CREATEAT_FIELD_NUMBER:I = 0x16

.field public static final CREATEBYUSER_FIELD_NUMBER:I = 0x20

.field private static final DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/GameRoom;

.field public static final DISABLEMOBILEJOIN_FIELD_NUMBER:I = 0x1f

.field public static final ELITE_FIELD_NUMBER:I = 0x12

.field public static final FASTMODE_FIELD_NUMBER:I = 0x13

.field public static final FIGHTID_FIELD_NUMBER:I = 0x14

.field public static final GAMEID_FIELD_NUMBER:I = 0x2

.field public static final GAMENAME_FIELD_NUMBER:I = 0x1b

.field public static final GAMETYPE_FIELD_NUMBER:I = 0x19

.field public static final HASJOINPASSWORD_FIELD_NUMBER:I = 0x4

.field public static final LEADER_FIELD_NUMBER:I = 0x10

.field public static final OPENBATTLESCORE_FIELD_NUMBER:I = 0x23

.field public static final OPENFASTMODEBTN_FIELD_NUMBER:I = 0x1e

.field public static final P1_FIELD_NUMBER:I = 0x8

.field public static final P2_FIELD_NUMBER:I = 0x9

.field public static final P3_FIELD_NUMBER:I = 0xa

.field public static final P4_FIELD_NUMBER:I = 0xb

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/papa91/battle/protocol/GameRoom;",
            ">;"
        }
    .end annotation
.end field

.field public static final PASSWORD_FIELD_NUMBER:I = 0x3

.field public static final PLAYERNUMBER_FIELD_NUMBER:I = 0xd

.field public static final PLAYERSECONDS_FIELD_NUMBER:I = 0x11

.field public static final PLAYTIMESTAMP_FIELD_NUMBER:I = 0x18

.field public static final ROOMCATEGORY_FIELD_NUMBER:I = 0x22

.field public static final ROOMID_FIELD_NUMBER:I = 0x1

.field public static final SEATSNUMBER_FIELD_NUMBER:I = 0xe

.field public static final SILENT_FIELD_NUMBER:I = 0x17

.field public static final SPECTATORNUMBER_FIELD_NUMBER:I = 0x7

.field public static final STATE_FIELD_NUMBER:I = 0xf

.field private static final serialVersionUID:J


# instance fields
.field private allowPCJoin_:Z

.field private allowPeripheralJoin_:Z

.field private allowSpectatorJoin_:Z

.field private battleArea_:I

.field private battleServerAddr_:Lcom/papa91/battle/protocol/BattleServerAddr;

.field private challengeCoins_:I

.field private volatile chatRoomId_:Ljava/lang/Object;

.field private collectionId_:I

.field private createAt_:J

.field private createByUser_:I

.field private disableMobileJoin_:Z

.field private elite_:Z

.field private fastMode_:Z

.field private fightId_:J

.field private gameId_:J

.field private volatile gameName_:Ljava/lang/Object;

.field private gameType_:I

.field private hasJoinPassword_:Z

.field private leader_:I

.field private memoizedIsInitialized:B

.field private openBattleScore_:Z

.field private openFastModeBtn_:Z

.field private p1_:Lcom/papa91/battle/protocol/RoomPosition;

.field private p2_:Lcom/papa91/battle/protocol/RoomPosition;

.field private p3_:Lcom/papa91/battle/protocol/RoomPosition;

.field private p4_:Lcom/papa91/battle/protocol/RoomPosition;

.field private volatile password_:Ljava/lang/Object;

.field private playTimestamp_:J

.field private playerNumber_:I

.field private playerSeconds_:I

.field private roomCategory_:I

.field private roomId_:I

.field private seatsNumber_:I

.field private silent_:Z

.field private spectatorNumber_:I

.field private state_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa91/battle/protocol/GameRoom;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa91/battle/protocol/GameRoom;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/papa91/battle/protocol/GameRoom;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/GameRoom;

    .line 7
    .line 8
    new-instance v0, Lcom/papa91/battle/protocol/GameRoom$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/papa91/battle/protocol/GameRoom$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/papa91/battle/protocol/GameRoom;->PARSER:Lcom/google/protobuf/Parser;

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
    iput-byte v0, p0, Lcom/papa91/battle/protocol/GameRoom;->memoizedIsInitialized:B

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->password_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lcom/papa91/battle/protocol/GameRoom;->state_:I

    .line 9
    iput v1, p0, Lcom/papa91/battle/protocol/GameRoom;->gameType_:I

    .line 10
    iput v1, p0, Lcom/papa91/battle/protocol/GameRoom;->battleArea_:I

    .line 11
    iput-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->gameName_:Ljava/lang/Object;

    .line 12
    iput-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->chatRoomId_:Ljava/lang/Object;

    .line 13
    iput v1, p0, Lcom/papa91/battle/protocol/GameRoom;->roomCategory_:I

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Lcom/papa91/battle/protocol/GameRoom;-><init>()V

    .line 15
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_6

    .line 17
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_0

    .line 18
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    goto/16 :goto_2

    .line 19
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/papa91/battle/protocol/GameRoom;->openBattleScore_:Z

    goto :goto_0

    .line 20
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 21
    iput v2, p0, Lcom/papa91/battle/protocol/GameRoom;->roomCategory_:I

    goto :goto_0

    .line 22
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 23
    iput-object v2, p0, Lcom/papa91/battle/protocol/GameRoom;->chatRoomId_:Ljava/lang/Object;

    goto :goto_0

    .line 24
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/papa91/battle/protocol/GameRoom;->createByUser_:I

    goto :goto_0

    .line 25
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/papa91/battle/protocol/GameRoom;->disableMobileJoin_:Z

    goto :goto_0

    .line 26
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/papa91/battle/protocol/GameRoom;->openFastModeBtn_:Z

    goto :goto_0

    .line 27
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/papa91/battle/protocol/GameRoom;->allowPCJoin_:Z

    goto :goto_0

    .line 28
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/papa91/battle/protocol/GameRoom;->collectionId_:I

    goto :goto_0

    .line 29
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 30
    iput-object v2, p0, Lcom/papa91/battle/protocol/GameRoom;->gameName_:Ljava/lang/Object;

    goto :goto_0

    .line 31
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 32
    iput v2, p0, Lcom/papa91/battle/protocol/GameRoom;->battleArea_:I

    goto :goto_0

    .line 33
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 34
    iput v2, p0, Lcom/papa91/battle/protocol/GameRoom;->gameType_:I

    goto :goto_0

    .line 35
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/papa91/battle/protocol/GameRoom;->playTimestamp_:J

    goto :goto_0

    .line 36
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/papa91/battle/protocol/GameRoom;->silent_:Z

    goto :goto_0

    .line 37
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/papa91/battle/protocol/GameRoom;->createAt_:J

    goto :goto_0

    .line 38
    :sswitch_e
    iget-object v2, p0, Lcom/papa91/battle/protocol/GameRoom;->battleServerAddr_:Lcom/papa91/battle/protocol/BattleServerAddr;

    if-eqz v2, :cond_1

    .line 39
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/BattleServerAddr;->toBuilder()Lcom/papa91/battle/protocol/BattleServerAddr$Builder;

    move-result-object v4

    .line 40
    :cond_1
    invoke-static {}, Lcom/papa91/battle/protocol/BattleServerAddr;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/papa91/battle/protocol/BattleServerAddr;

    iput-object v2, p0, Lcom/papa91/battle/protocol/GameRoom;->battleServerAddr_:Lcom/papa91/battle/protocol/BattleServerAddr;

    if-eqz v4, :cond_0

    .line 41
    invoke-virtual {v4, v2}, Lcom/papa91/battle/protocol/BattleServerAddr$Builder;->mergeFrom(Lcom/papa91/battle/protocol/BattleServerAddr;)Lcom/papa91/battle/protocol/BattleServerAddr$Builder;

    .line 42
    invoke-virtual {v4}, Lcom/papa91/battle/protocol/BattleServerAddr$Builder;->buildPartial()Lcom/papa91/battle/protocol/BattleServerAddr;

    move-result-object v2

    iput-object v2, p0, Lcom/papa91/battle/protocol/GameRoom;->battleServerAddr_:Lcom/papa91/battle/protocol/BattleServerAddr;

    goto/16 :goto_0

    .line 43
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/papa91/battle/protocol/GameRoom;->fightId_:J

    goto/16 :goto_0

    .line 44
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/papa91/battle/protocol/GameRoom;->fastMode_:Z

    goto/16 :goto_0

    .line 45
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/papa91/battle/protocol/GameRoom;->elite_:Z

    goto/16 :goto_0

    .line 46
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/papa91/battle/protocol/GameRoom;->playerSeconds_:I

    goto/16 :goto_0

    .line 47
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/papa91/battle/protocol/GameRoom;->leader_:I

    goto/16 :goto_0

    .line 48
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 49
    iput v2, p0, Lcom/papa91/battle/protocol/GameRoom;->state_:I

    goto/16 :goto_0

    .line 50
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/papa91/battle/protocol/GameRoom;->seatsNumber_:I

    goto/16 :goto_0

    .line 51
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/papa91/battle/protocol/GameRoom;->playerNumber_:I

    goto/16 :goto_0

    .line 52
    :sswitch_17
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/papa91/battle/protocol/GameRoom;->challengeCoins_:I

    goto/16 :goto_0

    .line 53
    :sswitch_18
    iget-object v2, p0, Lcom/papa91/battle/protocol/GameRoom;->p4_:Lcom/papa91/battle/protocol/RoomPosition;

    if-eqz v2, :cond_2

    .line 54
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/RoomPosition;->toBuilder()Lcom/papa91/battle/protocol/RoomPosition$Builder;

    move-result-object v4

    .line 55
    :cond_2
    invoke-static {}, Lcom/papa91/battle/protocol/RoomPosition;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/papa91/battle/protocol/RoomPosition;

    iput-object v2, p0, Lcom/papa91/battle/protocol/GameRoom;->p4_:Lcom/papa91/battle/protocol/RoomPosition;

    if-eqz v4, :cond_0

    .line 56
    invoke-virtual {v4, v2}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->mergeFrom(Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    .line 57
    invoke-virtual {v4}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->buildPartial()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v2

    iput-object v2, p0, Lcom/papa91/battle/protocol/GameRoom;->p4_:Lcom/papa91/battle/protocol/RoomPosition;

    goto/16 :goto_0

    .line 58
    :sswitch_19
    iget-object v2, p0, Lcom/papa91/battle/protocol/GameRoom;->p3_:Lcom/papa91/battle/protocol/RoomPosition;

    if-eqz v2, :cond_3

    .line 59
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/RoomPosition;->toBuilder()Lcom/papa91/battle/protocol/RoomPosition$Builder;

    move-result-object v4

    .line 60
    :cond_3
    invoke-static {}, Lcom/papa91/battle/protocol/RoomPosition;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/papa91/battle/protocol/RoomPosition;

    iput-object v2, p0, Lcom/papa91/battle/protocol/GameRoom;->p3_:Lcom/papa91/battle/protocol/RoomPosition;

    if-eqz v4, :cond_0

    .line 61
    invoke-virtual {v4, v2}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->mergeFrom(Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    .line 62
    invoke-virtual {v4}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->buildPartial()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v2

    iput-object v2, p0, Lcom/papa91/battle/protocol/GameRoom;->p3_:Lcom/papa91/battle/protocol/RoomPosition;

    goto/16 :goto_0

    .line 63
    :sswitch_1a
    iget-object v2, p0, Lcom/papa91/battle/protocol/GameRoom;->p2_:Lcom/papa91/battle/protocol/RoomPosition;

    if-eqz v2, :cond_4

    .line 64
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/RoomPosition;->toBuilder()Lcom/papa91/battle/protocol/RoomPosition$Builder;

    move-result-object v4

    .line 65
    :cond_4
    invoke-static {}, Lcom/papa91/battle/protocol/RoomPosition;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/papa91/battle/protocol/RoomPosition;

    iput-object v2, p0, Lcom/papa91/battle/protocol/GameRoom;->p2_:Lcom/papa91/battle/protocol/RoomPosition;

    if-eqz v4, :cond_0

    .line 66
    invoke-virtual {v4, v2}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->mergeFrom(Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    .line 67
    invoke-virtual {v4}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->buildPartial()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v2

    iput-object v2, p0, Lcom/papa91/battle/protocol/GameRoom;->p2_:Lcom/papa91/battle/protocol/RoomPosition;

    goto/16 :goto_0

    .line 68
    :sswitch_1b
    iget-object v2, p0, Lcom/papa91/battle/protocol/GameRoom;->p1_:Lcom/papa91/battle/protocol/RoomPosition;

    if-eqz v2, :cond_5

    .line 69
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/RoomPosition;->toBuilder()Lcom/papa91/battle/protocol/RoomPosition$Builder;

    move-result-object v4

    .line 70
    :cond_5
    invoke-static {}, Lcom/papa91/battle/protocol/RoomPosition;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/papa91/battle/protocol/RoomPosition;

    iput-object v2, p0, Lcom/papa91/battle/protocol/GameRoom;->p1_:Lcom/papa91/battle/protocol/RoomPosition;

    if-eqz v4, :cond_0

    .line 71
    invoke-virtual {v4, v2}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->mergeFrom(Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    .line 72
    invoke-virtual {v4}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->buildPartial()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v2

    iput-object v2, p0, Lcom/papa91/battle/protocol/GameRoom;->p1_:Lcom/papa91/battle/protocol/RoomPosition;

    goto/16 :goto_0

    .line 73
    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/papa91/battle/protocol/GameRoom;->spectatorNumber_:I

    goto/16 :goto_0

    .line 74
    :sswitch_1d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/papa91/battle/protocol/GameRoom;->allowPeripheralJoin_:Z

    goto/16 :goto_0

    .line 75
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/papa91/battle/protocol/GameRoom;->allowSpectatorJoin_:Z

    goto/16 :goto_0

    .line 76
    :sswitch_1f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/papa91/battle/protocol/GameRoom;->hasJoinPassword_:Z

    goto/16 :goto_0

    .line 77
    :sswitch_20
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 78
    iput-object v2, p0, Lcom/papa91/battle/protocol/GameRoom;->password_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 79
    :sswitch_21
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/papa91/battle/protocol/GameRoom;->gameId_:J

    goto/16 :goto_0

    .line 80
    :sswitch_22
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/papa91/battle/protocol/GameRoom;->roomId_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_23
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

    .line 81
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 82
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 83
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 85
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 86
    throw p1

    .line 87
    :cond_6
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 88
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_23
        0x8 -> :sswitch_22
        0x10 -> :sswitch_21
        0x1a -> :sswitch_20
        0x20 -> :sswitch_1f
        0x28 -> :sswitch_1e
        0x30 -> :sswitch_1d
        0x38 -> :sswitch_1c
        0x42 -> :sswitch_1b
        0x4a -> :sswitch_1a
        0x52 -> :sswitch_19
        0x5a -> :sswitch_18
        0x60 -> :sswitch_17
        0x68 -> :sswitch_16
        0x70 -> :sswitch_15
        0x78 -> :sswitch_14
        0x80 -> :sswitch_13
        0x88 -> :sswitch_12
        0x90 -> :sswitch_11
        0x98 -> :sswitch_10
        0xa0 -> :sswitch_f
        0xaa -> :sswitch_e
        0xb0 -> :sswitch_d
        0xb8 -> :sswitch_c
        0xc0 -> :sswitch_b
        0xc8 -> :sswitch_a
        0xd0 -> :sswitch_9
        0xda -> :sswitch_8
        0xe0 -> :sswitch_7
        0xe8 -> :sswitch_6
        0xf0 -> :sswitch_5
        0xf8 -> :sswitch_4
        0x100 -> :sswitch_3
        0x10a -> :sswitch_2
        0x110 -> :sswitch_1
        0x118 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/papa91/battle/protocol/GameRoom$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa91/battle/protocol/GameRoom;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    iput-byte p1, p0, Lcom/papa91/battle/protocol/GameRoom;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/papa91/battle/protocol/GameRoom$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/GameRoom;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/papa91/battle/protocol/GameRoom;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->spectatorNumber_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1102(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/RoomPosition;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->p1_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1202(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/RoomPosition;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->p2_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1302(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/RoomPosition;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->p3_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1402(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/RoomPosition;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->p4_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1502(Lcom/papa91/battle/protocol/GameRoom;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->challengeCoins_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1602(Lcom/papa91/battle/protocol/GameRoom;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->playerNumber_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1702(Lcom/papa91/battle/protocol/GameRoom;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->seatsNumber_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1800(Lcom/papa91/battle/protocol/GameRoom;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa91/battle/protocol/GameRoom;->state_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1802(Lcom/papa91/battle/protocol/GameRoom;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->state_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1902(Lcom/papa91/battle/protocol/GameRoom;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->leader_:I

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

.method static synthetic access$2002(Lcom/papa91/battle/protocol/GameRoom;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->playerSeconds_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$2102(Lcom/papa91/battle/protocol/GameRoom;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom;->elite_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$2202(Lcom/papa91/battle/protocol/GameRoom;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom;->fastMode_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$2302(Lcom/papa91/battle/protocol/GameRoom;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa91/battle/protocol/GameRoom;->fightId_:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$2402(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/BattleServerAddr;)Lcom/papa91/battle/protocol/BattleServerAddr;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->battleServerAddr_:Lcom/papa91/battle/protocol/BattleServerAddr;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$2502(Lcom/papa91/battle/protocol/GameRoom;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa91/battle/protocol/GameRoom;->createAt_:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$2602(Lcom/papa91/battle/protocol/GameRoom;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom;->silent_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$2702(Lcom/papa91/battle/protocol/GameRoom;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa91/battle/protocol/GameRoom;->playTimestamp_:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$2800(Lcom/papa91/battle/protocol/GameRoom;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa91/battle/protocol/GameRoom;->gameType_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$2802(Lcom/papa91/battle/protocol/GameRoom;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->gameType_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$2900(Lcom/papa91/battle/protocol/GameRoom;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa91/battle/protocol/GameRoom;->battleArea_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$2902(Lcom/papa91/battle/protocol/GameRoom;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->battleArea_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$3000(Lcom/papa91/battle/protocol/GameRoom;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/battle/protocol/GameRoom;->gameName_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$3002(Lcom/papa91/battle/protocol/GameRoom;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->gameName_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$3102(Lcom/papa91/battle/protocol/GameRoom;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->collectionId_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$3202(Lcom/papa91/battle/protocol/GameRoom;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom;->allowPCJoin_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$3302(Lcom/papa91/battle/protocol/GameRoom;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom;->openFastModeBtn_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$3402(Lcom/papa91/battle/protocol/GameRoom;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom;->disableMobileJoin_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$3502(Lcom/papa91/battle/protocol/GameRoom;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->createByUser_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$3600(Lcom/papa91/battle/protocol/GameRoom;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/battle/protocol/GameRoom;->chatRoomId_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$3602(Lcom/papa91/battle/protocol/GameRoom;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->chatRoomId_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$3700(Lcom/papa91/battle/protocol/GameRoom;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa91/battle/protocol/GameRoom;->roomCategory_:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$3702(Lcom/papa91/battle/protocol/GameRoom;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->roomCategory_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$3802(Lcom/papa91/battle/protocol/GameRoom;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom;->openBattleScore_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$3900(Lcom/papa91/battle/protocol/GameRoom;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$4000()Lcom/google/protobuf/Parser;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/GameRoom;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$402(Lcom/papa91/battle/protocol/GameRoom;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom;->roomId_:I

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

.method static synthetic access$4200(Lcom/google/protobuf/ByteString;)V
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

.method static synthetic access$4300(Lcom/google/protobuf/ByteString;)V
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

.method static synthetic access$502(Lcom/papa91/battle/protocol/GameRoom;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa91/battle/protocol/GameRoom;->gameId_:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$600(Lcom/papa91/battle/protocol/GameRoom;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/battle/protocol/GameRoom;->password_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$602(Lcom/papa91/battle/protocol/GameRoom;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom;->password_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$702(Lcom/papa91/battle/protocol/GameRoom;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom;->hasJoinPassword_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$802(Lcom/papa91/battle/protocol/GameRoom;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom;->allowSpectatorJoin_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$902(Lcom/papa91/battle/protocol/GameRoom;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom;->allowPeripheralJoin_:Z

    .line 2
    .line 3
    return p1
.end method

.method public static getDefaultInstance()Lcom/papa91/battle/protocol/GameRoom;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/GameRoom;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/GameRoom;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_GameRoom_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/GameRoom;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->toBuilder()Lcom/papa91/battle/protocol/GameRoom$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/papa91/battle/protocol/GameRoom;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/papa91/battle/protocol/GameRoom;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->toBuilder()Lcom/papa91/battle/protocol/GameRoom$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->mergeFrom(Lcom/papa91/battle/protocol/GameRoom;)Lcom/papa91/battle/protocol/GameRoom$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/papa91/battle/protocol/GameRoom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/GameRoom;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/GameRoom;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/GameRoom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/papa91/battle/protocol/GameRoom;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/GameRoom;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/GameRoom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/papa91/battle/protocol/GameRoom;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/GameRoom;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/GameRoom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/papa91/battle/protocol/GameRoom;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/GameRoom;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/papa91/battle/protocol/GameRoom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/papa91/battle/protocol/GameRoom;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/GameRoom;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/GameRoom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/papa91/battle/protocol/GameRoom;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/GameRoom;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/papa91/battle/protocol/GameRoom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/papa91/battle/protocol/GameRoom;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/GameRoom;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/GameRoom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/papa91/battle/protocol/GameRoom;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/GameRoom;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/papa91/battle/protocol/GameRoom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/GameRoom;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/GameRoom;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/GameRoom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/papa91/battle/protocol/GameRoom;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/GameRoom;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/papa91/battle/protocol/GameRoom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/papa91/battle/protocol/GameRoom;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/GameRoom;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/GameRoom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/papa91/battle/protocol/GameRoom;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/papa91/battle/protocol/GameRoom;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/papa91/battle/protocol/GameRoom;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/GameRoom;->PARSER:Lcom/google/protobuf/Parser;

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
    instance-of v1, p1, Lcom/papa91/battle/protocol/GameRoom;

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
    check-cast p1, Lcom/papa91/battle/protocol/GameRoom;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

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
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    .line 29
    .line 30
    .line 31
    move-result-wide v1

    .line 32
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

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
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getPassword()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getPassword()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getHasJoinPassword()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getHasJoinPassword()Z

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
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getAllowSpectatorJoin()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getAllowSpectatorJoin()Z

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
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getAllowPeripheralJoin()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getAllowPeripheralJoin()Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eq v1, v2, :cond_7

    .line 87
    .line 88
    return v3

    .line 89
    :cond_7
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getSpectatorNumber()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getSpectatorNumber()I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-eq v1, v2, :cond_8

    .line 98
    .line 99
    return v3

    .line 100
    :cond_8
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->hasP1()Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->hasP1()Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-eq v1, v2, :cond_9

    .line 109
    .line 110
    return v3

    .line 111
    :cond_9
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->hasP1()Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_a

    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v1, v2}, Lcom/papa91/battle/protocol/RoomPosition;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-nez v1, :cond_a

    .line 130
    .line 131
    return v3

    .line 132
    :cond_a
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->hasP2()Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->hasP2()Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-eq v1, v2, :cond_b

    .line 141
    .line 142
    return v3

    .line 143
    :cond_b
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->hasP2()Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-eqz v1, :cond_c

    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-virtual {v1, v2}, Lcom/papa91/battle/protocol/RoomPosition;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-nez v1, :cond_c

    .line 162
    .line 163
    return v3

    .line 164
    :cond_c
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->hasP3()Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->hasP3()Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-eq v1, v2, :cond_d

    .line 173
    .line 174
    return v3

    .line 175
    :cond_d
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->hasP3()Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-eqz v1, :cond_e

    .line 180
    .line 181
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP3()Lcom/papa91/battle/protocol/RoomPosition;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP3()Lcom/papa91/battle/protocol/RoomPosition;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-virtual {v1, v2}, Lcom/papa91/battle/protocol/RoomPosition;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-nez v1, :cond_e

    .line 194
    .line 195
    return v3

    .line 196
    :cond_e
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->hasP4()Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->hasP4()Z

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    if-eq v1, v2, :cond_f

    .line 205
    .line 206
    return v3

    .line 207
    :cond_f
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->hasP4()Z

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    if-eqz v1, :cond_10

    .line 212
    .line 213
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP4()Lcom/papa91/battle/protocol/RoomPosition;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP4()Lcom/papa91/battle/protocol/RoomPosition;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    invoke-virtual {v1, v2}, Lcom/papa91/battle/protocol/RoomPosition;->equals(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    if-nez v1, :cond_10

    .line 226
    .line 227
    return v3

    .line 228
    :cond_10
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getChallengeCoins()I

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getChallengeCoins()I

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    if-eq v1, v2, :cond_11

    .line 237
    .line 238
    return v3

    .line 239
    :cond_11
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getPlayerNumber()I

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getPlayerNumber()I

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
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getSeatsNumber()I

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getSeatsNumber()I

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    if-eq v1, v2, :cond_13

    .line 259
    .line 260
    return v3

    .line 261
    :cond_13
    iget v1, p0, Lcom/papa91/battle/protocol/GameRoom;->state_:I

    .line 262
    .line 263
    iget v2, p1, Lcom/papa91/battle/protocol/GameRoom;->state_:I

    .line 264
    .line 265
    if-eq v1, v2, :cond_14

    .line 266
    .line 267
    return v3

    .line 268
    :cond_14
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getLeader()I

    .line 269
    .line 270
    .line 271
    move-result v1

    .line 272
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getLeader()I

    .line 273
    .line 274
    .line 275
    move-result v2

    .line 276
    if-eq v1, v2, :cond_15

    .line 277
    .line 278
    return v3

    .line 279
    :cond_15
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getPlayerSeconds()I

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getPlayerSeconds()I

    .line 284
    .line 285
    .line 286
    move-result v2

    .line 287
    if-eq v1, v2, :cond_16

    .line 288
    .line 289
    return v3

    .line 290
    :cond_16
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getElite()Z

    .line 291
    .line 292
    .line 293
    move-result v1

    .line 294
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getElite()Z

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    if-eq v1, v2, :cond_17

    .line 299
    .line 300
    return v3

    .line 301
    :cond_17
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getFastMode()Z

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getFastMode()Z

    .line 306
    .line 307
    .line 308
    move-result v2

    .line 309
    if-eq v1, v2, :cond_18

    .line 310
    .line 311
    return v3

    .line 312
    :cond_18
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getFightId()J

    .line 313
    .line 314
    .line 315
    move-result-wide v1

    .line 316
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getFightId()J

    .line 317
    .line 318
    .line 319
    move-result-wide v4

    .line 320
    cmp-long v6, v1, v4

    .line 321
    .line 322
    if-eqz v6, :cond_19

    .line 323
    .line 324
    return v3

    .line 325
    :cond_19
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->hasBattleServerAddr()Z

    .line 326
    .line 327
    .line 328
    move-result v1

    .line 329
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->hasBattleServerAddr()Z

    .line 330
    .line 331
    .line 332
    move-result v2

    .line 333
    if-eq v1, v2, :cond_1a

    .line 334
    .line 335
    return v3

    .line 336
    :cond_1a
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->hasBattleServerAddr()Z

    .line 337
    .line 338
    .line 339
    move-result v1

    .line 340
    if-eqz v1, :cond_1b

    .line 341
    .line 342
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getBattleServerAddr()Lcom/papa91/battle/protocol/BattleServerAddr;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getBattleServerAddr()Lcom/papa91/battle/protocol/BattleServerAddr;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    invoke-virtual {v1, v2}, Lcom/papa91/battle/protocol/BattleServerAddr;->equals(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    if-nez v1, :cond_1b

    .line 355
    .line 356
    return v3

    .line 357
    :cond_1b
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getCreateAt()J

    .line 358
    .line 359
    .line 360
    move-result-wide v1

    .line 361
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getCreateAt()J

    .line 362
    .line 363
    .line 364
    move-result-wide v4

    .line 365
    cmp-long v6, v1, v4

    .line 366
    .line 367
    if-eqz v6, :cond_1c

    .line 368
    .line 369
    return v3

    .line 370
    :cond_1c
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getSilent()Z

    .line 371
    .line 372
    .line 373
    move-result v1

    .line 374
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getSilent()Z

    .line 375
    .line 376
    .line 377
    move-result v2

    .line 378
    if-eq v1, v2, :cond_1d

    .line 379
    .line 380
    return v3

    .line 381
    :cond_1d
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getPlayTimestamp()J

    .line 382
    .line 383
    .line 384
    move-result-wide v1

    .line 385
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getPlayTimestamp()J

    .line 386
    .line 387
    .line 388
    move-result-wide v4

    .line 389
    cmp-long v6, v1, v4

    .line 390
    .line 391
    if-eqz v6, :cond_1e

    .line 392
    .line 393
    return v3

    .line 394
    :cond_1e
    iget v1, p0, Lcom/papa91/battle/protocol/GameRoom;->gameType_:I

    .line 395
    .line 396
    iget v2, p1, Lcom/papa91/battle/protocol/GameRoom;->gameType_:I

    .line 397
    .line 398
    if-eq v1, v2, :cond_1f

    .line 399
    .line 400
    return v3

    .line 401
    :cond_1f
    iget v1, p0, Lcom/papa91/battle/protocol/GameRoom;->battleArea_:I

    .line 402
    .line 403
    iget v2, p1, Lcom/papa91/battle/protocol/GameRoom;->battleArea_:I

    .line 404
    .line 405
    if-eq v1, v2, :cond_20

    .line 406
    .line 407
    return v3

    .line 408
    :cond_20
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getGameName()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v1

    .line 412
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getGameName()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v2

    .line 416
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 417
    .line 418
    .line 419
    move-result v1

    .line 420
    if-nez v1, :cond_21

    .line 421
    .line 422
    return v3

    .line 423
    :cond_21
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getCollectionId()I

    .line 424
    .line 425
    .line 426
    move-result v1

    .line 427
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getCollectionId()I

    .line 428
    .line 429
    .line 430
    move-result v2

    .line 431
    if-eq v1, v2, :cond_22

    .line 432
    .line 433
    return v3

    .line 434
    :cond_22
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getAllowPCJoin()Z

    .line 435
    .line 436
    .line 437
    move-result v1

    .line 438
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getAllowPCJoin()Z

    .line 439
    .line 440
    .line 441
    move-result v2

    .line 442
    if-eq v1, v2, :cond_23

    .line 443
    .line 444
    return v3

    .line 445
    :cond_23
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getOpenFastModeBtn()Z

    .line 446
    .line 447
    .line 448
    move-result v1

    .line 449
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getOpenFastModeBtn()Z

    .line 450
    .line 451
    .line 452
    move-result v2

    .line 453
    if-eq v1, v2, :cond_24

    .line 454
    .line 455
    return v3

    .line 456
    :cond_24
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getDisableMobileJoin()Z

    .line 457
    .line 458
    .line 459
    move-result v1

    .line 460
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getDisableMobileJoin()Z

    .line 461
    .line 462
    .line 463
    move-result v2

    .line 464
    if-eq v1, v2, :cond_25

    .line 465
    .line 466
    return v3

    .line 467
    :cond_25
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getCreateByUser()I

    .line 468
    .line 469
    .line 470
    move-result v1

    .line 471
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getCreateByUser()I

    .line 472
    .line 473
    .line 474
    move-result v2

    .line 475
    if-eq v1, v2, :cond_26

    .line 476
    .line 477
    return v3

    .line 478
    :cond_26
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getChatRoomId()Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v1

    .line 482
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getChatRoomId()Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v2

    .line 486
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 487
    .line 488
    .line 489
    move-result v1

    .line 490
    if-nez v1, :cond_27

    .line 491
    .line 492
    return v3

    .line 493
    :cond_27
    iget v1, p0, Lcom/papa91/battle/protocol/GameRoom;->roomCategory_:I

    .line 494
    .line 495
    iget v2, p1, Lcom/papa91/battle/protocol/GameRoom;->roomCategory_:I

    .line 496
    .line 497
    if-eq v1, v2, :cond_28

    .line 498
    .line 499
    return v3

    .line 500
    :cond_28
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getOpenBattleScore()Z

    .line 501
    .line 502
    .line 503
    move-result v1

    .line 504
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getOpenBattleScore()Z

    .line 505
    .line 506
    .line 507
    move-result v2

    .line 508
    if-eq v1, v2, :cond_29

    .line 509
    .line 510
    return v3

    .line 511
    :cond_29
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 512
    .line 513
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 514
    .line 515
    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    .line 516
    .line 517
    .line 518
    move-result p1

    .line 519
    if-nez p1, :cond_2a

    .line 520
    .line 521
    return v3

    .line 522
    :cond_2a
    return v0
.end method

.method public getAllowPCJoin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->allowPCJoin_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getAllowPeripheralJoin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->allowPeripheralJoin_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getAllowSpectatorJoin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->allowSpectatorJoin_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getBattleArea()Lcom/papa91/battle/protocol/BattleArea;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->battleArea_:I

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
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->battleArea_:I

    .line 2
    .line 3
    return v0
.end method

.method public getBattleServerAddr()Lcom/papa91/battle/protocol/BattleServerAddr;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->battleServerAddr_:Lcom/papa91/battle/protocol/BattleServerAddr;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/papa91/battle/protocol/BattleServerAddr;->getDefaultInstance()Lcom/papa91/battle/protocol/BattleServerAddr;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getBattleServerAddrOrBuilder()Lcom/papa91/battle/protocol/BattleServerAddrOrBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getBattleServerAddr()Lcom/papa91/battle/protocol/BattleServerAddr;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getChallengeCoins()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->challengeCoins_:I

    .line 2
    .line 3
    return v0
.end method

.method public getChatRoomId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->chatRoomId_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->chatRoomId_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getChatRoomIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->chatRoomId_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->chatRoomId_:Ljava/lang/Object;

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

.method public getCollectionId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->collectionId_:I

    .line 2
    .line 3
    return v0
.end method

.method public getCreateAt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa91/battle/protocol/GameRoom;->createAt_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getCreateByUser()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->createByUser_:I

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getDefaultInstanceForType()Lcom/papa91/battle/protocol/GameRoom;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getDefaultInstanceForType()Lcom/papa91/battle/protocol/GameRoom;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/papa91/battle/protocol/GameRoom;
    .locals 1

    .line 3
    sget-object v0, Lcom/papa91/battle/protocol/GameRoom;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/GameRoom;

    return-object v0
.end method

.method public getDisableMobileJoin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->disableMobileJoin_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getElite()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->elite_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getFastMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->fastMode_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getFightId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa91/battle/protocol/GameRoom;->fightId_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getGameId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa91/battle/protocol/GameRoom;->gameId_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getGameName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->gameName_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->gameName_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getGameNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->gameName_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->gameName_:Ljava/lang/Object;

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

.method public getGameType()Lcom/papa91/battle/protocol/GameRoom$GameType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->gameType_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa91/battle/protocol/GameRoom$GameType;->valueOf(I)Lcom/papa91/battle/protocol/GameRoom$GameType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/papa91/battle/protocol/GameRoom$GameType;->UNRECOGNIZED:Lcom/papa91/battle/protocol/GameRoom$GameType;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getGameTypeValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->gameType_:I

    .line 2
    .line 3
    return v0
.end method

.method public getHasJoinPassword()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->hasJoinPassword_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getLeader()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->leader_:I

    .line 2
    .line 3
    return v0
.end method

.method public getOpenBattleScore()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->openBattleScore_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getOpenFastModeBtn()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->openFastModeBtn_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getP1()Lcom/papa91/battle/protocol/RoomPosition;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->p1_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/papa91/battle/protocol/RoomPosition;->getDefaultInstance()Lcom/papa91/battle/protocol/RoomPosition;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getP1OrBuilder()Lcom/papa91/battle/protocol/RoomPositionOrBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getP2()Lcom/papa91/battle/protocol/RoomPosition;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->p2_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/papa91/battle/protocol/RoomPosition;->getDefaultInstance()Lcom/papa91/battle/protocol/RoomPosition;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getP2OrBuilder()Lcom/papa91/battle/protocol/RoomPositionOrBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getP3()Lcom/papa91/battle/protocol/RoomPosition;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->p3_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/papa91/battle/protocol/RoomPosition;->getDefaultInstance()Lcom/papa91/battle/protocol/RoomPosition;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getP3OrBuilder()Lcom/papa91/battle/protocol/RoomPositionOrBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP3()Lcom/papa91/battle/protocol/RoomPosition;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getP4()Lcom/papa91/battle/protocol/RoomPosition;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->p4_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/papa91/battle/protocol/RoomPosition;->getDefaultInstance()Lcom/papa91/battle/protocol/RoomPosition;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getP4OrBuilder()Lcom/papa91/battle/protocol/RoomPositionOrBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP4()Lcom/papa91/battle/protocol/RoomPosition;

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
            "Lcom/papa91/battle/protocol/GameRoom;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/GameRoom;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->password_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->password_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getPasswordBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->password_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->password_:Ljava/lang/Object;

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

.method public getPlayTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa91/battle/protocol/GameRoom;->playTimestamp_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getPlayerNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->playerNumber_:I

    .line 2
    .line 3
    return v0
.end method

.method public getPlayerSeconds()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->playerSeconds_:I

    .line 2
    .line 3
    return v0
.end method

.method public getRoomCategory()Lcom/papa91/battle/protocol/RoomCategory;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->roomCategory_:I

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
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->roomCategory_:I

    .line 2
    .line 3
    return v0
.end method

.method public getRoomId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->roomId_:I

    .line 2
    .line 3
    return v0
.end method

.method public getSeatsNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->seatsNumber_:I

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
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->roomId_:I

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
    iget-wide v2, p0, Lcom/papa91/battle/protocol/GameRoom;->gameId_:J

    .line 19
    .line 20
    const-wide/16 v4, 0x0

    .line 21
    .line 22
    cmp-long v0, v2, v4

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    const/4 v0, 0x2

    .line 27
    invoke-static {v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    add-int/2addr v1, v0

    .line 32
    :cond_2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getPasswordBytes()Lcom/google/protobuf/ByteString;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_3

    .line 41
    .line 42
    const/4 v0, 0x3

    .line 43
    iget-object v2, p0, Lcom/papa91/battle/protocol/GameRoom;->password_:Ljava/lang/Object;

    .line 44
    .line 45
    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    add-int/2addr v1, v0

    .line 50
    :cond_3
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->hasJoinPassword_:Z

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    const/4 v2, 0x4

    .line 55
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    add-int/2addr v1, v0

    .line 60
    :cond_4
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->allowSpectatorJoin_:Z

    .line 61
    .line 62
    if-eqz v0, :cond_5

    .line 63
    .line 64
    const/4 v2, 0x5

    .line 65
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    add-int/2addr v1, v0

    .line 70
    :cond_5
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->allowPeripheralJoin_:Z

    .line 71
    .line 72
    if-eqz v0, :cond_6

    .line 73
    .line 74
    const/4 v2, 0x6

    .line 75
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    add-int/2addr v1, v0

    .line 80
    :cond_6
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->spectatorNumber_:I

    .line 81
    .line 82
    if-eqz v0, :cond_7

    .line 83
    .line 84
    const/4 v2, 0x7

    .line 85
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    add-int/2addr v1, v0

    .line 90
    :cond_7
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->p1_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 91
    .line 92
    if-eqz v0, :cond_8

    .line 93
    .line 94
    const/16 v0, 0x8

    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    add-int/2addr v1, v0

    .line 105
    :cond_8
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->p2_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 106
    .line 107
    if-eqz v0, :cond_9

    .line 108
    .line 109
    const/16 v0, 0x9

    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    add-int/2addr v1, v0

    .line 120
    :cond_9
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->p3_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 121
    .line 122
    if-eqz v0, :cond_a

    .line 123
    .line 124
    const/16 v0, 0xa

    .line 125
    .line 126
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP3()Lcom/papa91/battle/protocol/RoomPosition;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    add-int/2addr v1, v0

    .line 135
    :cond_a
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->p4_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 136
    .line 137
    if-eqz v0, :cond_b

    .line 138
    .line 139
    const/16 v0, 0xb

    .line 140
    .line 141
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP4()Lcom/papa91/battle/protocol/RoomPosition;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    add-int/2addr v1, v0

    .line 150
    :cond_b
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->challengeCoins_:I

    .line 151
    .line 152
    if-eqz v0, :cond_c

    .line 153
    .line 154
    const/16 v2, 0xc

    .line 155
    .line 156
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    add-int/2addr v1, v0

    .line 161
    :cond_c
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->playerNumber_:I

    .line 162
    .line 163
    if-eqz v0, :cond_d

    .line 164
    .line 165
    const/16 v2, 0xd

    .line 166
    .line 167
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    add-int/2addr v1, v0

    .line 172
    :cond_d
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->seatsNumber_:I

    .line 173
    .line 174
    if-eqz v0, :cond_e

    .line 175
    .line 176
    const/16 v2, 0xe

    .line 177
    .line 178
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    add-int/2addr v1, v0

    .line 183
    :cond_e
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->state_:I

    .line 184
    .line 185
    sget-object v2, Lcom/papa91/battle/protocol/RoomState;->EMPTY:Lcom/papa91/battle/protocol/RoomState;

    .line 186
    .line 187
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/RoomState;->getNumber()I

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    if-eq v0, v2, :cond_f

    .line 192
    .line 193
    const/16 v0, 0xf

    .line 194
    .line 195
    iget v2, p0, Lcom/papa91/battle/protocol/GameRoom;->state_:I

    .line 196
    .line 197
    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    add-int/2addr v1, v0

    .line 202
    :cond_f
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->leader_:I

    .line 203
    .line 204
    if-eqz v0, :cond_10

    .line 205
    .line 206
    const/16 v2, 0x10

    .line 207
    .line 208
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    add-int/2addr v1, v0

    .line 213
    :cond_10
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->playerSeconds_:I

    .line 214
    .line 215
    if-eqz v0, :cond_11

    .line 216
    .line 217
    const/16 v2, 0x11

    .line 218
    .line 219
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    add-int/2addr v1, v0

    .line 224
    :cond_11
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->elite_:Z

    .line 225
    .line 226
    if-eqz v0, :cond_12

    .line 227
    .line 228
    const/16 v2, 0x12

    .line 229
    .line 230
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    add-int/2addr v1, v0

    .line 235
    :cond_12
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->fastMode_:Z

    .line 236
    .line 237
    if-eqz v0, :cond_13

    .line 238
    .line 239
    const/16 v2, 0x13

    .line 240
    .line 241
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    add-int/2addr v1, v0

    .line 246
    :cond_13
    iget-wide v2, p0, Lcom/papa91/battle/protocol/GameRoom;->fightId_:J

    .line 247
    .line 248
    cmp-long v0, v2, v4

    .line 249
    .line 250
    if-eqz v0, :cond_14

    .line 251
    .line 252
    const/16 v0, 0x14

    .line 253
    .line 254
    invoke-static {v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    add-int/2addr v1, v0

    .line 259
    :cond_14
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->battleServerAddr_:Lcom/papa91/battle/protocol/BattleServerAddr;

    .line 260
    .line 261
    if-eqz v0, :cond_15

    .line 262
    .line 263
    const/16 v0, 0x15

    .line 264
    .line 265
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getBattleServerAddr()Lcom/papa91/battle/protocol/BattleServerAddr;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    add-int/2addr v1, v0

    .line 274
    :cond_15
    iget-wide v2, p0, Lcom/papa91/battle/protocol/GameRoom;->createAt_:J

    .line 275
    .line 276
    cmp-long v0, v2, v4

    .line 277
    .line 278
    if-eqz v0, :cond_16

    .line 279
    .line 280
    const/16 v0, 0x16

    .line 281
    .line 282
    invoke-static {v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    add-int/2addr v1, v0

    .line 287
    :cond_16
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->silent_:Z

    .line 288
    .line 289
    if-eqz v0, :cond_17

    .line 290
    .line 291
    const/16 v2, 0x17

    .line 292
    .line 293
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 294
    .line 295
    .line 296
    move-result v0

    .line 297
    add-int/2addr v1, v0

    .line 298
    :cond_17
    iget-wide v2, p0, Lcom/papa91/battle/protocol/GameRoom;->playTimestamp_:J

    .line 299
    .line 300
    cmp-long v0, v2, v4

    .line 301
    .line 302
    if-eqz v0, :cond_18

    .line 303
    .line 304
    const/16 v0, 0x18

    .line 305
    .line 306
    invoke-static {v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    .line 307
    .line 308
    .line 309
    move-result v0

    .line 310
    add-int/2addr v1, v0

    .line 311
    :cond_18
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->gameType_:I

    .line 312
    .line 313
    sget-object v2, Lcom/papa91/battle/protocol/GameRoom$GameType;->FIGHT:Lcom/papa91/battle/protocol/GameRoom$GameType;

    .line 314
    .line 315
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/GameRoom$GameType;->getNumber()I

    .line 316
    .line 317
    .line 318
    move-result v2

    .line 319
    if-eq v0, v2, :cond_19

    .line 320
    .line 321
    const/16 v0, 0x19

    .line 322
    .line 323
    iget v2, p0, Lcom/papa91/battle/protocol/GameRoom;->gameType_:I

    .line 324
    .line 325
    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 326
    .line 327
    .line 328
    move-result v0

    .line 329
    add-int/2addr v1, v0

    .line 330
    :cond_19
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->battleArea_:I

    .line 331
    .line 332
    sget-object v2, Lcom/papa91/battle/protocol/BattleArea;->ALL:Lcom/papa91/battle/protocol/BattleArea;

    .line 333
    .line 334
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    .line 335
    .line 336
    .line 337
    move-result v2

    .line 338
    if-eq v0, v2, :cond_1a

    .line 339
    .line 340
    const/16 v0, 0x1a

    .line 341
    .line 342
    iget v2, p0, Lcom/papa91/battle/protocol/GameRoom;->battleArea_:I

    .line 343
    .line 344
    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 345
    .line 346
    .line 347
    move-result v0

    .line 348
    add-int/2addr v1, v0

    .line 349
    :cond_1a
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getGameNameBytes()Lcom/google/protobuf/ByteString;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 354
    .line 355
    .line 356
    move-result v0

    .line 357
    if-nez v0, :cond_1b

    .line 358
    .line 359
    const/16 v0, 0x1b

    .line 360
    .line 361
    iget-object v2, p0, Lcom/papa91/battle/protocol/GameRoom;->gameName_:Ljava/lang/Object;

    .line 362
    .line 363
    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    add-int/2addr v1, v0

    .line 368
    :cond_1b
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->collectionId_:I

    .line 369
    .line 370
    if-eqz v0, :cond_1c

    .line 371
    .line 372
    const/16 v2, 0x1c

    .line 373
    .line 374
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 375
    .line 376
    .line 377
    move-result v0

    .line 378
    add-int/2addr v1, v0

    .line 379
    :cond_1c
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->allowPCJoin_:Z

    .line 380
    .line 381
    if-eqz v0, :cond_1d

    .line 382
    .line 383
    const/16 v2, 0x1d

    .line 384
    .line 385
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 386
    .line 387
    .line 388
    move-result v0

    .line 389
    add-int/2addr v1, v0

    .line 390
    :cond_1d
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->openFastModeBtn_:Z

    .line 391
    .line 392
    if-eqz v0, :cond_1e

    .line 393
    .line 394
    const/16 v2, 0x1e

    .line 395
    .line 396
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 397
    .line 398
    .line 399
    move-result v0

    .line 400
    add-int/2addr v1, v0

    .line 401
    :cond_1e
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->disableMobileJoin_:Z

    .line 402
    .line 403
    if-eqz v0, :cond_1f

    .line 404
    .line 405
    const/16 v2, 0x1f

    .line 406
    .line 407
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 408
    .line 409
    .line 410
    move-result v0

    .line 411
    add-int/2addr v1, v0

    .line 412
    :cond_1f
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->createByUser_:I

    .line 413
    .line 414
    if-eqz v0, :cond_20

    .line 415
    .line 416
    const/16 v2, 0x20

    .line 417
    .line 418
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    .line 419
    .line 420
    .line 421
    move-result v0

    .line 422
    add-int/2addr v1, v0

    .line 423
    :cond_20
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getChatRoomIdBytes()Lcom/google/protobuf/ByteString;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 428
    .line 429
    .line 430
    move-result v0

    .line 431
    if-nez v0, :cond_21

    .line 432
    .line 433
    const/16 v0, 0x21

    .line 434
    .line 435
    iget-object v2, p0, Lcom/papa91/battle/protocol/GameRoom;->chatRoomId_:Ljava/lang/Object;

    .line 436
    .line 437
    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 438
    .line 439
    .line 440
    move-result v0

    .line 441
    add-int/2addr v1, v0

    .line 442
    :cond_21
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->roomCategory_:I

    .line 443
    .line 444
    sget-object v2, Lcom/papa91/battle/protocol/RoomCategory;->NORMAL:Lcom/papa91/battle/protocol/RoomCategory;

    .line 445
    .line 446
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/RoomCategory;->getNumber()I

    .line 447
    .line 448
    .line 449
    move-result v2

    .line 450
    if-eq v0, v2, :cond_22

    .line 451
    .line 452
    const/16 v0, 0x22

    .line 453
    .line 454
    iget v2, p0, Lcom/papa91/battle/protocol/GameRoom;->roomCategory_:I

    .line 455
    .line 456
    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    .line 457
    .line 458
    .line 459
    move-result v0

    .line 460
    add-int/2addr v1, v0

    .line 461
    :cond_22
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->openBattleScore_:Z

    .line 462
    .line 463
    if-eqz v0, :cond_23

    .line 464
    .line 465
    const/16 v2, 0x23

    .line 466
    .line 467
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 468
    .line 469
    .line 470
    move-result v0

    .line 471
    add-int/2addr v1, v0

    .line 472
    :cond_23
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 473
    .line 474
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    .line 475
    .line 476
    .line 477
    move-result v0

    .line 478
    add-int/2addr v1, v0

    .line 479
    iput v1, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 480
    .line 481
    return v1
.end method

.method public getSilent()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->silent_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getSpectatorNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->spectatorNumber_:I

    .line 2
    .line 3
    return v0
.end method

.method public getState()Lcom/papa91/battle/protocol/RoomState;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->state_:I

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
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->state_:I

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

.method public hasBattleServerAddr()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->battleServerAddr_:Lcom/papa91/battle/protocol/BattleServerAddr;

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

.method public hasP1()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->p1_:Lcom/papa91/battle/protocol/RoomPosition;

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

.method public hasP2()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->p2_:Lcom/papa91/battle/protocol/RoomPosition;

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

.method public hasP3()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->p3_:Lcom/papa91/battle/protocol/RoomPosition;

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

.method public hasP4()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->p4_:Lcom/papa91/battle/protocol/RoomPosition;

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
    invoke-static {}, Lcom/papa91/battle/protocol/GameRoom;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

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
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

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
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getPassword()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getHasJoinPassword()Z

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
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getAllowSpectatorJoin()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    invoke-static {v0}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

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
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getAllowPeripheralJoin()Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    invoke-static {v0}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    add-int/2addr v1, v0

    .line 103
    mul-int/lit8 v1, v1, 0x25

    .line 104
    .line 105
    add-int/lit8 v1, v1, 0x7

    .line 106
    .line 107
    mul-int/lit8 v1, v1, 0x35

    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getSpectatorNumber()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    add-int/2addr v1, v0

    .line 114
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->hasP1()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_1

    .line 119
    .line 120
    mul-int/lit8 v1, v1, 0x25

    .line 121
    .line 122
    add-int/lit8 v1, v1, 0x8

    .line 123
    .line 124
    mul-int/lit8 v1, v1, 0x35

    .line 125
    .line 126
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->hashCode()I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    add-int/2addr v1, v0

    .line 135
    :cond_1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->hasP2()Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_2

    .line 140
    .line 141
    mul-int/lit8 v1, v1, 0x25

    .line 142
    .line 143
    add-int/lit8 v1, v1, 0x9

    .line 144
    .line 145
    mul-int/lit8 v1, v1, 0x35

    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->hashCode()I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    add-int/2addr v1, v0

    .line 156
    :cond_2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->hasP3()Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-eqz v0, :cond_3

    .line 161
    .line 162
    mul-int/lit8 v1, v1, 0x25

    .line 163
    .line 164
    add-int/lit8 v1, v1, 0xa

    .line 165
    .line 166
    mul-int/lit8 v1, v1, 0x35

    .line 167
    .line 168
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP3()Lcom/papa91/battle/protocol/RoomPosition;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->hashCode()I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    add-int/2addr v1, v0

    .line 177
    :cond_3
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->hasP4()Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-eqz v0, :cond_4

    .line 182
    .line 183
    mul-int/lit8 v1, v1, 0x25

    .line 184
    .line 185
    add-int/lit8 v1, v1, 0xb

    .line 186
    .line 187
    mul-int/lit8 v1, v1, 0x35

    .line 188
    .line 189
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP4()Lcom/papa91/battle/protocol/RoomPosition;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->hashCode()I

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    add-int/2addr v1, v0

    .line 198
    :cond_4
    mul-int/lit8 v1, v1, 0x25

    .line 199
    .line 200
    add-int/lit8 v1, v1, 0xc

    .line 201
    .line 202
    mul-int/lit8 v1, v1, 0x35

    .line 203
    .line 204
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getChallengeCoins()I

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    add-int/2addr v1, v0

    .line 209
    mul-int/lit8 v1, v1, 0x25

    .line 210
    .line 211
    add-int/lit8 v1, v1, 0xd

    .line 212
    .line 213
    mul-int/lit8 v1, v1, 0x35

    .line 214
    .line 215
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getPlayerNumber()I

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    add-int/2addr v1, v0

    .line 220
    mul-int/lit8 v1, v1, 0x25

    .line 221
    .line 222
    add-int/lit8 v1, v1, 0xe

    .line 223
    .line 224
    mul-int/lit8 v1, v1, 0x35

    .line 225
    .line 226
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getSeatsNumber()I

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
    add-int/lit8 v1, v1, 0xf

    .line 234
    .line 235
    mul-int/lit8 v1, v1, 0x35

    .line 236
    .line 237
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->state_:I

    .line 238
    .line 239
    add-int/2addr v1, v0

    .line 240
    mul-int/lit8 v1, v1, 0x25

    .line 241
    .line 242
    add-int/lit8 v1, v1, 0x10

    .line 243
    .line 244
    mul-int/lit8 v1, v1, 0x35

    .line 245
    .line 246
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getLeader()I

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    add-int/2addr v1, v0

    .line 251
    mul-int/lit8 v1, v1, 0x25

    .line 252
    .line 253
    add-int/lit8 v1, v1, 0x11

    .line 254
    .line 255
    mul-int/lit8 v1, v1, 0x35

    .line 256
    .line 257
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getPlayerSeconds()I

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    add-int/2addr v1, v0

    .line 262
    mul-int/lit8 v1, v1, 0x25

    .line 263
    .line 264
    add-int/lit8 v1, v1, 0x12

    .line 265
    .line 266
    mul-int/lit8 v1, v1, 0x35

    .line 267
    .line 268
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getElite()Z

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    invoke-static {v0}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    add-int/2addr v1, v0

    .line 277
    mul-int/lit8 v1, v1, 0x25

    .line 278
    .line 279
    add-int/lit8 v1, v1, 0x13

    .line 280
    .line 281
    mul-int/lit8 v1, v1, 0x35

    .line 282
    .line 283
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getFastMode()Z

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    invoke-static {v0}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    add-int/2addr v1, v0

    .line 292
    mul-int/lit8 v1, v1, 0x25

    .line 293
    .line 294
    add-int/lit8 v1, v1, 0x14

    .line 295
    .line 296
    mul-int/lit8 v1, v1, 0x35

    .line 297
    .line 298
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getFightId()J

    .line 299
    .line 300
    .line 301
    move-result-wide v2

    .line 302
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    add-int/2addr v1, v0

    .line 307
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->hasBattleServerAddr()Z

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    if-eqz v0, :cond_5

    .line 312
    .line 313
    mul-int/lit8 v1, v1, 0x25

    .line 314
    .line 315
    add-int/lit8 v1, v1, 0x15

    .line 316
    .line 317
    mul-int/lit8 v1, v1, 0x35

    .line 318
    .line 319
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getBattleServerAddr()Lcom/papa91/battle/protocol/BattleServerAddr;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/BattleServerAddr;->hashCode()I

    .line 324
    .line 325
    .line 326
    move-result v0

    .line 327
    add-int/2addr v1, v0

    .line 328
    :cond_5
    mul-int/lit8 v1, v1, 0x25

    .line 329
    .line 330
    add-int/lit8 v1, v1, 0x16

    .line 331
    .line 332
    mul-int/lit8 v1, v1, 0x35

    .line 333
    .line 334
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getCreateAt()J

    .line 335
    .line 336
    .line 337
    move-result-wide v2

    .line 338
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    .line 339
    .line 340
    .line 341
    move-result v0

    .line 342
    add-int/2addr v1, v0

    .line 343
    mul-int/lit8 v1, v1, 0x25

    .line 344
    .line 345
    add-int/lit8 v1, v1, 0x17

    .line 346
    .line 347
    mul-int/lit8 v1, v1, 0x35

    .line 348
    .line 349
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getSilent()Z

    .line 350
    .line 351
    .line 352
    move-result v0

    .line 353
    invoke-static {v0}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    .line 354
    .line 355
    .line 356
    move-result v0

    .line 357
    add-int/2addr v1, v0

    .line 358
    mul-int/lit8 v1, v1, 0x25

    .line 359
    .line 360
    add-int/lit8 v1, v1, 0x18

    .line 361
    .line 362
    mul-int/lit8 v1, v1, 0x35

    .line 363
    .line 364
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getPlayTimestamp()J

    .line 365
    .line 366
    .line 367
    move-result-wide v2

    .line 368
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    .line 369
    .line 370
    .line 371
    move-result v0

    .line 372
    add-int/2addr v1, v0

    .line 373
    mul-int/lit8 v1, v1, 0x25

    .line 374
    .line 375
    add-int/lit8 v1, v1, 0x19

    .line 376
    .line 377
    mul-int/lit8 v1, v1, 0x35

    .line 378
    .line 379
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->gameType_:I

    .line 380
    .line 381
    add-int/2addr v1, v0

    .line 382
    mul-int/lit8 v1, v1, 0x25

    .line 383
    .line 384
    add-int/lit8 v1, v1, 0x1a

    .line 385
    .line 386
    mul-int/lit8 v1, v1, 0x35

    .line 387
    .line 388
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->battleArea_:I

    .line 389
    .line 390
    add-int/2addr v1, v0

    .line 391
    mul-int/lit8 v1, v1, 0x25

    .line 392
    .line 393
    add-int/lit8 v1, v1, 0x1b

    .line 394
    .line 395
    mul-int/lit8 v1, v1, 0x35

    .line 396
    .line 397
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getGameName()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 402
    .line 403
    .line 404
    move-result v0

    .line 405
    add-int/2addr v1, v0

    .line 406
    mul-int/lit8 v1, v1, 0x25

    .line 407
    .line 408
    add-int/lit8 v1, v1, 0x1c

    .line 409
    .line 410
    mul-int/lit8 v1, v1, 0x35

    .line 411
    .line 412
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getCollectionId()I

    .line 413
    .line 414
    .line 415
    move-result v0

    .line 416
    add-int/2addr v1, v0

    .line 417
    mul-int/lit8 v1, v1, 0x25

    .line 418
    .line 419
    add-int/lit8 v1, v1, 0x1d

    .line 420
    .line 421
    mul-int/lit8 v1, v1, 0x35

    .line 422
    .line 423
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getAllowPCJoin()Z

    .line 424
    .line 425
    .line 426
    move-result v0

    .line 427
    invoke-static {v0}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    .line 428
    .line 429
    .line 430
    move-result v0

    .line 431
    add-int/2addr v1, v0

    .line 432
    mul-int/lit8 v1, v1, 0x25

    .line 433
    .line 434
    add-int/lit8 v1, v1, 0x1e

    .line 435
    .line 436
    mul-int/lit8 v1, v1, 0x35

    .line 437
    .line 438
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getOpenFastModeBtn()Z

    .line 439
    .line 440
    .line 441
    move-result v0

    .line 442
    invoke-static {v0}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    .line 443
    .line 444
    .line 445
    move-result v0

    .line 446
    add-int/2addr v1, v0

    .line 447
    mul-int/lit8 v1, v1, 0x25

    .line 448
    .line 449
    add-int/lit8 v1, v1, 0x1f

    .line 450
    .line 451
    mul-int/lit8 v1, v1, 0x35

    .line 452
    .line 453
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getDisableMobileJoin()Z

    .line 454
    .line 455
    .line 456
    move-result v0

    .line 457
    invoke-static {v0}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    .line 458
    .line 459
    .line 460
    move-result v0

    .line 461
    add-int/2addr v1, v0

    .line 462
    mul-int/lit8 v1, v1, 0x25

    .line 463
    .line 464
    add-int/lit8 v1, v1, 0x20

    .line 465
    .line 466
    mul-int/lit8 v1, v1, 0x35

    .line 467
    .line 468
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getCreateByUser()I

    .line 469
    .line 470
    .line 471
    move-result v0

    .line 472
    add-int/2addr v1, v0

    .line 473
    mul-int/lit8 v1, v1, 0x25

    .line 474
    .line 475
    add-int/lit8 v1, v1, 0x21

    .line 476
    .line 477
    mul-int/lit8 v1, v1, 0x35

    .line 478
    .line 479
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getChatRoomId()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 484
    .line 485
    .line 486
    move-result v0

    .line 487
    add-int/2addr v1, v0

    .line 488
    mul-int/lit8 v1, v1, 0x25

    .line 489
    .line 490
    add-int/lit8 v1, v1, 0x22

    .line 491
    .line 492
    mul-int/lit8 v1, v1, 0x35

    .line 493
    .line 494
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->roomCategory_:I

    .line 495
    .line 496
    add-int/2addr v1, v0

    .line 497
    mul-int/lit8 v1, v1, 0x25

    .line 498
    .line 499
    add-int/lit8 v1, v1, 0x23

    .line 500
    .line 501
    mul-int/lit8 v1, v1, 0x35

    .line 502
    .line 503
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getOpenBattleScore()Z

    .line 504
    .line 505
    .line 506
    move-result v0

    .line 507
    invoke-static {v0}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    .line 508
    .line 509
    .line 510
    move-result v0

    .line 511
    add-int/2addr v1, v0

    .line 512
    mul-int/lit8 v1, v1, 0x1d

    .line 513
    .line 514
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 515
    .line 516
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    .line 517
    .line 518
    .line 519
    move-result v0

    .line 520
    add-int/2addr v1, v0

    .line 521
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 522
    .line 523
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_GameRoom_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    const-class v1, Lcom/papa91/battle/protocol/GameRoom;

    .line 4
    .line 5
    const-class v2, Lcom/papa91/battle/protocol/GameRoom$Builder;

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
    iget-byte v0, p0, Lcom/papa91/battle/protocol/GameRoom;->memoizedIsInitialized:B

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
    iput-byte v1, p0, Lcom/papa91/battle/protocol/GameRoom;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->newBuilderForType()Lcom/papa91/battle/protocol/GameRoom$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/GameRoom;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/papa91/battle/protocol/GameRoom$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->newBuilderForType()Lcom/papa91/battle/protocol/GameRoom$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/papa91/battle/protocol/GameRoom;->newBuilder()Lcom/papa91/battle/protocol/GameRoom$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/papa91/battle/protocol/GameRoom$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/papa91/battle/protocol/GameRoom$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/papa91/battle/protocol/GameRoom$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Lcom/papa91/battle/protocol/GameRoom;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/papa91/battle/protocol/GameRoom;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->toBuilder()Lcom/papa91/battle/protocol/GameRoom$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->toBuilder()Lcom/papa91/battle/protocol/GameRoom$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/papa91/battle/protocol/GameRoom;->DEFAULT_INSTANCE:Lcom/papa91/battle/protocol/GameRoom;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/papa91/battle/protocol/GameRoom$Builder;

    invoke-direct {v0, v1}, Lcom/papa91/battle/protocol/GameRoom$Builder;-><init>(Lcom/papa91/battle/protocol/GameRoom$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/papa91/battle/protocol/GameRoom$Builder;

    invoke-direct {v0, v1}, Lcom/papa91/battle/protocol/GameRoom$Builder;-><init>(Lcom/papa91/battle/protocol/GameRoom$1;)V

    invoke-virtual {v0, p0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->mergeFrom(Lcom/papa91/battle/protocol/GameRoom;)Lcom/papa91/battle/protocol/GameRoom$Builder;

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
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->roomId_:I

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
    iget-wide v0, p0, Lcom/papa91/battle/protocol/GameRoom;->gameId_:J

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
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getPasswordBytes()Lcom/google/protobuf/ByteString;

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
    iget-object v1, p0, Lcom/papa91/battle/protocol/GameRoom;->password_:Ljava/lang/Object;

    .line 33
    .line 34
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_2
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->hasJoinPassword_:Z

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
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->allowSpectatorJoin_:Z

    .line 46
    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    const/4 v1, 0x5

    .line 50
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 51
    .line 52
    .line 53
    :cond_4
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->allowPeripheralJoin_:Z

    .line 54
    .line 55
    if-eqz v0, :cond_5

    .line 56
    .line 57
    const/4 v1, 0x6

    .line 58
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 59
    .line 60
    .line 61
    :cond_5
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->spectatorNumber_:I

    .line 62
    .line 63
    if-eqz v0, :cond_6

    .line 64
    .line 65
    const/4 v1, 0x7

    .line 66
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 67
    .line 68
    .line 69
    :cond_6
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->p1_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 70
    .line 71
    if-eqz v0, :cond_7

    .line 72
    .line 73
    const/16 v0, 0x8

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 80
    .line 81
    .line 82
    :cond_7
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->p2_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 83
    .line 84
    if-eqz v0, :cond_8

    .line 85
    .line 86
    const/16 v0, 0x9

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 93
    .line 94
    .line 95
    :cond_8
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->p3_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 96
    .line 97
    if-eqz v0, :cond_9

    .line 98
    .line 99
    const/16 v0, 0xa

    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP3()Lcom/papa91/battle/protocol/RoomPosition;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 106
    .line 107
    .line 108
    :cond_9
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->p4_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 109
    .line 110
    if-eqz v0, :cond_a

    .line 111
    .line 112
    const/16 v0, 0xb

    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getP4()Lcom/papa91/battle/protocol/RoomPosition;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 119
    .line 120
    .line 121
    :cond_a
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->challengeCoins_:I

    .line 122
    .line 123
    if-eqz v0, :cond_b

    .line 124
    .line 125
    const/16 v1, 0xc

    .line 126
    .line 127
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 128
    .line 129
    .line 130
    :cond_b
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->playerNumber_:I

    .line 131
    .line 132
    if-eqz v0, :cond_c

    .line 133
    .line 134
    const/16 v1, 0xd

    .line 135
    .line 136
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 137
    .line 138
    .line 139
    :cond_c
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->seatsNumber_:I

    .line 140
    .line 141
    if-eqz v0, :cond_d

    .line 142
    .line 143
    const/16 v1, 0xe

    .line 144
    .line 145
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 146
    .line 147
    .line 148
    :cond_d
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->state_:I

    .line 149
    .line 150
    sget-object v1, Lcom/papa91/battle/protocol/RoomState;->EMPTY:Lcom/papa91/battle/protocol/RoomState;

    .line 151
    .line 152
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/RoomState;->getNumber()I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-eq v0, v1, :cond_e

    .line 157
    .line 158
    const/16 v0, 0xf

    .line 159
    .line 160
    iget v1, p0, Lcom/papa91/battle/protocol/GameRoom;->state_:I

    .line 161
    .line 162
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 163
    .line 164
    .line 165
    :cond_e
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->leader_:I

    .line 166
    .line 167
    if-eqz v0, :cond_f

    .line 168
    .line 169
    const/16 v1, 0x10

    .line 170
    .line 171
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 172
    .line 173
    .line 174
    :cond_f
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->playerSeconds_:I

    .line 175
    .line 176
    if-eqz v0, :cond_10

    .line 177
    .line 178
    const/16 v1, 0x11

    .line 179
    .line 180
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 181
    .line 182
    .line 183
    :cond_10
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->elite_:Z

    .line 184
    .line 185
    if-eqz v0, :cond_11

    .line 186
    .line 187
    const/16 v1, 0x12

    .line 188
    .line 189
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 190
    .line 191
    .line 192
    :cond_11
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->fastMode_:Z

    .line 193
    .line 194
    if-eqz v0, :cond_12

    .line 195
    .line 196
    const/16 v1, 0x13

    .line 197
    .line 198
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 199
    .line 200
    .line 201
    :cond_12
    iget-wide v0, p0, Lcom/papa91/battle/protocol/GameRoom;->fightId_:J

    .line 202
    .line 203
    cmp-long v4, v0, v2

    .line 204
    .line 205
    if-eqz v4, :cond_13

    .line 206
    .line 207
    const/16 v4, 0x14

    .line 208
    .line 209
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 210
    .line 211
    .line 212
    :cond_13
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom;->battleServerAddr_:Lcom/papa91/battle/protocol/BattleServerAddr;

    .line 213
    .line 214
    if-eqz v0, :cond_14

    .line 215
    .line 216
    const/16 v0, 0x15

    .line 217
    .line 218
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getBattleServerAddr()Lcom/papa91/battle/protocol/BattleServerAddr;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 223
    .line 224
    .line 225
    :cond_14
    iget-wide v0, p0, Lcom/papa91/battle/protocol/GameRoom;->createAt_:J

    .line 226
    .line 227
    cmp-long v4, v0, v2

    .line 228
    .line 229
    if-eqz v4, :cond_15

    .line 230
    .line 231
    const/16 v4, 0x16

    .line 232
    .line 233
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 234
    .line 235
    .line 236
    :cond_15
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->silent_:Z

    .line 237
    .line 238
    if-eqz v0, :cond_16

    .line 239
    .line 240
    const/16 v1, 0x17

    .line 241
    .line 242
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 243
    .line 244
    .line 245
    :cond_16
    iget-wide v0, p0, Lcom/papa91/battle/protocol/GameRoom;->playTimestamp_:J

    .line 246
    .line 247
    cmp-long v4, v0, v2

    .line 248
    .line 249
    if-eqz v4, :cond_17

    .line 250
    .line 251
    const/16 v2, 0x18

    .line 252
    .line 253
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 254
    .line 255
    .line 256
    :cond_17
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->gameType_:I

    .line 257
    .line 258
    sget-object v1, Lcom/papa91/battle/protocol/GameRoom$GameType;->FIGHT:Lcom/papa91/battle/protocol/GameRoom$GameType;

    .line 259
    .line 260
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/GameRoom$GameType;->getNumber()I

    .line 261
    .line 262
    .line 263
    move-result v1

    .line 264
    if-eq v0, v1, :cond_18

    .line 265
    .line 266
    const/16 v0, 0x19

    .line 267
    .line 268
    iget v1, p0, Lcom/papa91/battle/protocol/GameRoom;->gameType_:I

    .line 269
    .line 270
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 271
    .line 272
    .line 273
    :cond_18
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->battleArea_:I

    .line 274
    .line 275
    sget-object v1, Lcom/papa91/battle/protocol/BattleArea;->ALL:Lcom/papa91/battle/protocol/BattleArea;

    .line 276
    .line 277
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    if-eq v0, v1, :cond_19

    .line 282
    .line 283
    const/16 v0, 0x1a

    .line 284
    .line 285
    iget v1, p0, Lcom/papa91/battle/protocol/GameRoom;->battleArea_:I

    .line 286
    .line 287
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 288
    .line 289
    .line 290
    :cond_19
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getGameNameBytes()Lcom/google/protobuf/ByteString;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    if-nez v0, :cond_1a

    .line 299
    .line 300
    const/16 v0, 0x1b

    .line 301
    .line 302
    iget-object v1, p0, Lcom/papa91/battle/protocol/GameRoom;->gameName_:Ljava/lang/Object;

    .line 303
    .line 304
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 305
    .line 306
    .line 307
    :cond_1a
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->collectionId_:I

    .line 308
    .line 309
    if-eqz v0, :cond_1b

    .line 310
    .line 311
    const/16 v1, 0x1c

    .line 312
    .line 313
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 314
    .line 315
    .line 316
    :cond_1b
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->allowPCJoin_:Z

    .line 317
    .line 318
    if-eqz v0, :cond_1c

    .line 319
    .line 320
    const/16 v1, 0x1d

    .line 321
    .line 322
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 323
    .line 324
    .line 325
    :cond_1c
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->openFastModeBtn_:Z

    .line 326
    .line 327
    if-eqz v0, :cond_1d

    .line 328
    .line 329
    const/16 v1, 0x1e

    .line 330
    .line 331
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 332
    .line 333
    .line 334
    :cond_1d
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->disableMobileJoin_:Z

    .line 335
    .line 336
    if-eqz v0, :cond_1e

    .line 337
    .line 338
    const/16 v1, 0x1f

    .line 339
    .line 340
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 341
    .line 342
    .line 343
    :cond_1e
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->createByUser_:I

    .line 344
    .line 345
    if-eqz v0, :cond_1f

    .line 346
    .line 347
    const/16 v1, 0x20

    .line 348
    .line 349
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 350
    .line 351
    .line 352
    :cond_1f
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom;->getChatRoomIdBytes()Lcom/google/protobuf/ByteString;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 357
    .line 358
    .line 359
    move-result v0

    .line 360
    if-nez v0, :cond_20

    .line 361
    .line 362
    const/16 v0, 0x21

    .line 363
    .line 364
    iget-object v1, p0, Lcom/papa91/battle/protocol/GameRoom;->chatRoomId_:Ljava/lang/Object;

    .line 365
    .line 366
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 367
    .line 368
    .line 369
    :cond_20
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom;->roomCategory_:I

    .line 370
    .line 371
    sget-object v1, Lcom/papa91/battle/protocol/RoomCategory;->NORMAL:Lcom/papa91/battle/protocol/RoomCategory;

    .line 372
    .line 373
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/RoomCategory;->getNumber()I

    .line 374
    .line 375
    .line 376
    move-result v1

    .line 377
    if-eq v0, v1, :cond_21

    .line 378
    .line 379
    const/16 v0, 0x22

    .line 380
    .line 381
    iget v1, p0, Lcom/papa91/battle/protocol/GameRoom;->roomCategory_:I

    .line 382
    .line 383
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 384
    .line 385
    .line 386
    :cond_21
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom;->openBattleScore_:Z

    .line 387
    .line 388
    if-eqz v0, :cond_22

    .line 389
    .line 390
    const/16 v1, 0x23

    .line 391
    .line 392
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 393
    .line 394
    .line 395
    :cond_22
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 396
    .line 397
    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 398
    .line 399
    .line 400
    return-void
.end method
