.class public final Lcom/papa91/battle/protocol/GameRoom$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/papa91/battle/protocol/GameRoomOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/battle/protocol/GameRoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/papa91/battle/protocol/GameRoom$Builder;",
        ">;",
        "Lcom/papa91/battle/protocol/GameRoomOrBuilder;"
    }
.end annotation


# instance fields
.field private allowPCJoin_:Z

.field private allowPeripheralJoin_:Z

.field private allowSpectatorJoin_:Z

.field private battleArea_:I

.field private battleServerAddrBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/papa91/battle/protocol/BattleServerAddr;",
            "Lcom/papa91/battle/protocol/BattleServerAddr$Builder;",
            "Lcom/papa91/battle/protocol/BattleServerAddrOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private battleServerAddr_:Lcom/papa91/battle/protocol/BattleServerAddr;

.field private challengeCoins_:I

.field private chatRoomId_:Ljava/lang/Object;

.field private collectionId_:I

.field private createAt_:J

.field private createByUser_:I

.field private disableMobileJoin_:Z

.field private elite_:Z

.field private fastMode_:Z

.field private fightId_:J

.field private gameId_:J

.field private gameName_:Ljava/lang/Object;

.field private gameType_:I

.field private hasJoinPassword_:Z

.field private leader_:I

.field private openBattleScore_:Z

.field private openFastModeBtn_:Z

.field private p1Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/papa91/battle/protocol/RoomPosition;",
            "Lcom/papa91/battle/protocol/RoomPosition$Builder;",
            "Lcom/papa91/battle/protocol/RoomPositionOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private p1_:Lcom/papa91/battle/protocol/RoomPosition;

.field private p2Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/papa91/battle/protocol/RoomPosition;",
            "Lcom/papa91/battle/protocol/RoomPosition$Builder;",
            "Lcom/papa91/battle/protocol/RoomPositionOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private p2_:Lcom/papa91/battle/protocol/RoomPosition;

.field private p3Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/papa91/battle/protocol/RoomPosition;",
            "Lcom/papa91/battle/protocol/RoomPosition$Builder;",
            "Lcom/papa91/battle/protocol/RoomPositionOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private p3_:Lcom/papa91/battle/protocol/RoomPosition;

.field private p4Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/papa91/battle/protocol/RoomPosition;",
            "Lcom/papa91/battle/protocol/RoomPosition$Builder;",
            "Lcom/papa91/battle/protocol/RoomPositionOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private p4_:Lcom/papa91/battle/protocol/RoomPosition;

.field private password_:Ljava/lang/Object;

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
.method private constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->password_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->state_:I

    .line 6
    iput v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->gameType_:I

    .line 7
    iput v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->battleArea_:I

    .line 8
    iput-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->gameName_:Ljava/lang/Object;

    .line 9
    iput-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->chatRoomId_:Ljava/lang/Object;

    .line 10
    iput v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->roomCategory_:I

    .line 11
    invoke-direct {p0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1

    .line 12
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 13
    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->password_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->state_:I

    .line 15
    iput v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->gameType_:I

    .line 16
    iput v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->battleArea_:I

    .line 17
    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->gameName_:Ljava/lang/Object;

    .line 18
    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->chatRoomId_:Ljava/lang/Object;

    .line 19
    iput v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->roomCategory_:I

    .line 20
    invoke-direct {p0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/papa91/battle/protocol/GameRoom$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/GameRoom$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/papa91/battle/protocol/GameRoom$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/papa91/battle/protocol/GameRoom$Builder;-><init>()V

    return-void
.end method

.method private getBattleServerAddrFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/papa91/battle/protocol/BattleServerAddr;",
            "Lcom/papa91/battle/protocol/BattleServerAddr$Builder;",
            "Lcom/papa91/battle/protocol/BattleServerAddrOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->battleServerAddrBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->getBattleServerAddr()Lcom/papa91/battle/protocol/BattleServerAddr;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->battleServerAddrBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->battleServerAddr_:Lcom/papa91/battle/protocol/BattleServerAddr;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->battleServerAddrBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
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

.method private getP1FieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/papa91/battle/protocol/RoomPosition;",
            "Lcom/papa91/battle/protocol/RoomPosition$Builder;",
            "Lcom/papa91/battle/protocol/RoomPositionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p1Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p1Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p1_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p1Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getP2FieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/papa91/battle/protocol/RoomPosition;",
            "Lcom/papa91/battle/protocol/RoomPosition$Builder;",
            "Lcom/papa91/battle/protocol/RoomPositionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p2Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p2Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p2_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p2Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getP3FieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/papa91/battle/protocol/RoomPosition;",
            "Lcom/papa91/battle/protocol/RoomPosition$Builder;",
            "Lcom/papa91/battle/protocol/RoomPositionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p3Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->getP3()Lcom/papa91/battle/protocol/RoomPosition;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p3Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p3_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p3Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getP4FieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/papa91/battle/protocol/RoomPosition;",
            "Lcom/papa91/battle/protocol/RoomPosition$Builder;",
            "Lcom/papa91/battle/protocol/RoomPositionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p4Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->getP4()Lcom/papa91/battle/protocol/RoomPosition;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p4Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p4_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p4Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/GameRoom;->access$200()Z

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/GameRoom$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/papa91/battle/protocol/GameRoom$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/GameRoom$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/papa91/battle/protocol/GameRoom$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/GameRoom$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->build()Lcom/papa91/battle/protocol/GameRoom;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->build()Lcom/papa91/battle/protocol/GameRoom;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/papa91/battle/protocol/GameRoom;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->buildPartial()Lcom/papa91/battle/protocol/GameRoom;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->buildPartial()Lcom/papa91/battle/protocol/GameRoom;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->buildPartial()Lcom/papa91/battle/protocol/GameRoom;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/papa91/battle/protocol/GameRoom;
    .locals 3

    .line 3
    new-instance v0, Lcom/papa91/battle/protocol/GameRoom;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/papa91/battle/protocol/GameRoom;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/papa91/battle/protocol/GameRoom$1;)V

    .line 4
    iget v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->roomId_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/GameRoom;->access$402(Lcom/papa91/battle/protocol/GameRoom;I)I

    .line 5
    iget-wide v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->gameId_:J

    invoke-static {v0, v1, v2}, Lcom/papa91/battle/protocol/GameRoom;->access$502(Lcom/papa91/battle/protocol/GameRoom;J)J

    .line 6
    iget-object v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->password_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/GameRoom;->access$602(Lcom/papa91/battle/protocol/GameRoom;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->hasJoinPassword_:Z

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/GameRoom;->access$702(Lcom/papa91/battle/protocol/GameRoom;Z)Z

    .line 8
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->allowSpectatorJoin_:Z

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/GameRoom;->access$802(Lcom/papa91/battle/protocol/GameRoom;Z)Z

    .line 9
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->allowPeripheralJoin_:Z

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/GameRoom;->access$902(Lcom/papa91/battle/protocol/GameRoom;Z)Z

    .line 10
    iget v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->spectatorNumber_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/GameRoom;->access$1002(Lcom/papa91/battle/protocol/GameRoom;I)I

    .line 11
    iget-object v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p1Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_0

    .line 12
    iget-object v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p1_:Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/GameRoom;->access$1102(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/RoomPosition;

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/GameRoom;->access$1102(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/RoomPosition;

    .line 14
    :goto_0
    iget-object v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p2Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_1

    .line 15
    iget-object v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p2_:Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/GameRoom;->access$1202(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/RoomPosition;

    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/GameRoom;->access$1202(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/RoomPosition;

    .line 17
    :goto_1
    iget-object v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p3Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_2

    .line 18
    iget-object v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p3_:Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/GameRoom;->access$1302(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/RoomPosition;

    goto :goto_2

    .line 19
    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/GameRoom;->access$1302(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/RoomPosition;

    .line 20
    :goto_2
    iget-object v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p4Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_3

    .line 21
    iget-object v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p4_:Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/GameRoom;->access$1402(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/RoomPosition;

    goto :goto_3

    .line 22
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/papa91/battle/protocol/RoomPosition;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/GameRoom;->access$1402(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/RoomPosition;

    .line 23
    :goto_3
    iget v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->challengeCoins_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/GameRoom;->access$1502(Lcom/papa91/battle/protocol/GameRoom;I)I

    .line 24
    iget v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->playerNumber_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/GameRoom;->access$1602(Lcom/papa91/battle/protocol/GameRoom;I)I

    .line 25
    iget v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->seatsNumber_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/GameRoom;->access$1702(Lcom/papa91/battle/protocol/GameRoom;I)I

    .line 26
    iget v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->state_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/GameRoom;->access$1802(Lcom/papa91/battle/protocol/GameRoom;I)I

    .line 27
    iget v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->leader_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/GameRoom;->access$1902(Lcom/papa91/battle/protocol/GameRoom;I)I

    .line 28
    iget v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->playerSeconds_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/GameRoom;->access$2002(Lcom/papa91/battle/protocol/GameRoom;I)I

    .line 29
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->elite_:Z

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/GameRoom;->access$2102(Lcom/papa91/battle/protocol/GameRoom;Z)Z

    .line 30
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->fastMode_:Z

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/GameRoom;->access$2202(Lcom/papa91/battle/protocol/GameRoom;Z)Z

    .line 31
    iget-wide v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->fightId_:J

    invoke-static {v0, v1, v2}, Lcom/papa91/battle/protocol/GameRoom;->access$2302(Lcom/papa91/battle/protocol/GameRoom;J)J

    .line 32
    iget-object v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->battleServerAddrBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_4

    .line 33
    iget-object v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->battleServerAddr_:Lcom/papa91/battle/protocol/BattleServerAddr;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/GameRoom;->access$2402(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/BattleServerAddr;)Lcom/papa91/battle/protocol/BattleServerAddr;

    goto :goto_4

    .line 34
    :cond_4
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/papa91/battle/protocol/BattleServerAddr;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/GameRoom;->access$2402(Lcom/papa91/battle/protocol/GameRoom;Lcom/papa91/battle/protocol/BattleServerAddr;)Lcom/papa91/battle/protocol/BattleServerAddr;

    .line 35
    :goto_4
    iget-wide v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->createAt_:J

    invoke-static {v0, v1, v2}, Lcom/papa91/battle/protocol/GameRoom;->access$2502(Lcom/papa91/battle/protocol/GameRoom;J)J

    .line 36
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->silent_:Z

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/GameRoom;->access$2602(Lcom/papa91/battle/protocol/GameRoom;Z)Z

    .line 37
    iget-wide v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->playTimestamp_:J

    invoke-static {v0, v1, v2}, Lcom/papa91/battle/protocol/GameRoom;->access$2702(Lcom/papa91/battle/protocol/GameRoom;J)J

    .line 38
    iget v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->gameType_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/GameRoom;->access$2802(Lcom/papa91/battle/protocol/GameRoom;I)I

    .line 39
    iget v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->battleArea_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/GameRoom;->access$2902(Lcom/papa91/battle/protocol/GameRoom;I)I

    .line 40
    iget-object v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->gameName_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/GameRoom;->access$3002(Lcom/papa91/battle/protocol/GameRoom;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->collectionId_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/GameRoom;->access$3102(Lcom/papa91/battle/protocol/GameRoom;I)I

    .line 42
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->allowPCJoin_:Z

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/GameRoom;->access$3202(Lcom/papa91/battle/protocol/GameRoom;Z)Z

    .line 43
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->openFastModeBtn_:Z

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/GameRoom;->access$3302(Lcom/papa91/battle/protocol/GameRoom;Z)Z

    .line 44
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->disableMobileJoin_:Z

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/GameRoom;->access$3402(Lcom/papa91/battle/protocol/GameRoom;Z)Z

    .line 45
    iget v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->createByUser_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/GameRoom;->access$3502(Lcom/papa91/battle/protocol/GameRoom;I)I

    .line 46
    iget-object v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->chatRoomId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/GameRoom;->access$3602(Lcom/papa91/battle/protocol/GameRoom;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->roomCategory_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/GameRoom;->access$3702(Lcom/papa91/battle/protocol/GameRoom;I)I

    .line 48
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->openBattleScore_:Z

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/GameRoom;->access$3802(Lcom/papa91/battle/protocol/GameRoom;Z)Z

    .line 49
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->clear()Lcom/papa91/battle/protocol/GameRoom$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->clear()Lcom/papa91/battle/protocol/GameRoom$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->clear()Lcom/papa91/battle/protocol/GameRoom$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->clear()Lcom/papa91/battle/protocol/GameRoom$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 6

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->roomId_:I

    const-wide/16 v1, 0x0

    .line 7
    iput-wide v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->gameId_:J

    const-string v3, ""

    .line 8
    iput-object v3, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->password_:Ljava/lang/Object;

    .line 9
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->hasJoinPassword_:Z

    .line 10
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->allowSpectatorJoin_:Z

    .line 11
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->allowPeripheralJoin_:Z

    .line 12
    iput v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->spectatorNumber_:I

    .line 13
    iget-object v4, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p1Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 14
    iput-object v5, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p1_:Lcom/papa91/battle/protocol/RoomPosition;

    goto :goto_0

    .line 15
    :cond_0
    iput-object v5, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p1_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 16
    iput-object v5, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p1Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 17
    :goto_0
    iget-object v4, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p2Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v4, :cond_1

    .line 18
    iput-object v5, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p2_:Lcom/papa91/battle/protocol/RoomPosition;

    goto :goto_1

    .line 19
    :cond_1
    iput-object v5, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p2_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 20
    iput-object v5, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p2Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 21
    :goto_1
    iget-object v4, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p3Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v4, :cond_2

    .line 22
    iput-object v5, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p3_:Lcom/papa91/battle/protocol/RoomPosition;

    goto :goto_2

    .line 23
    :cond_2
    iput-object v5, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p3_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 24
    iput-object v5, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p3Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 25
    :goto_2
    iget-object v4, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p4Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v4, :cond_3

    .line 26
    iput-object v5, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p4_:Lcom/papa91/battle/protocol/RoomPosition;

    goto :goto_3

    .line 27
    :cond_3
    iput-object v5, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p4_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 28
    iput-object v5, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p4Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 29
    :goto_3
    iput v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->challengeCoins_:I

    .line 30
    iput v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->playerNumber_:I

    .line 31
    iput v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->seatsNumber_:I

    .line 32
    iput v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->state_:I

    .line 33
    iput v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->leader_:I

    .line 34
    iput v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->playerSeconds_:I

    .line 35
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->elite_:Z

    .line 36
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->fastMode_:Z

    .line 37
    iput-wide v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->fightId_:J

    .line 38
    iget-object v4, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->battleServerAddrBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v4, :cond_4

    .line 39
    iput-object v5, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->battleServerAddr_:Lcom/papa91/battle/protocol/BattleServerAddr;

    goto :goto_4

    .line 40
    :cond_4
    iput-object v5, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->battleServerAddr_:Lcom/papa91/battle/protocol/BattleServerAddr;

    .line 41
    iput-object v5, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->battleServerAddrBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 42
    :goto_4
    iput-wide v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->createAt_:J

    .line 43
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->silent_:Z

    .line 44
    iput-wide v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->playTimestamp_:J

    .line 45
    iput v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->gameType_:I

    .line 46
    iput v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->battleArea_:I

    .line 47
    iput-object v3, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->gameName_:Ljava/lang/Object;

    .line 48
    iput v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->collectionId_:I

    .line 49
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->allowPCJoin_:Z

    .line 50
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->openFastModeBtn_:Z

    .line 51
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->disableMobileJoin_:Z

    .line 52
    iput v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->createByUser_:I

    .line 53
    iput-object v3, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->chatRoomId_:Ljava/lang/Object;

    .line 54
    iput v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->roomCategory_:I

    .line 55
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->openBattleScore_:Z

    return-object p0
.end method

.method public clearAllowPCJoin()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->allowPCJoin_:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearAllowPeripheralJoin()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->allowPeripheralJoin_:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearAllowSpectatorJoin()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->allowSpectatorJoin_:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearBattleArea()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->battleArea_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearBattleServerAddr()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->battleServerAddrBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->battleServerAddr_:Lcom/papa91/battle/protocol/BattleServerAddr;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->battleServerAddr_:Lcom/papa91/battle/protocol/BattleServerAddr;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->battleServerAddrBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearChallengeCoins()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->challengeCoins_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearChatRoomId()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/GameRoom;->getDefaultInstance()Lcom/papa91/battle/protocol/GameRoom;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getChatRoomId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->chatRoomId_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearCollectionId()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->collectionId_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearCreateAt()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->createAt_:J

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public clearCreateByUser()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->createByUser_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearDisableMobileJoin()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->disableMobileJoin_:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearElite()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->elite_:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearFastMode()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->fastMode_:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/GameRoom$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/papa91/battle/protocol/GameRoom$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/GameRoom$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/papa91/battle/protocol/GameRoom$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/GameRoom$Builder;

    return-object p1
.end method

.method public clearFightId()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->fightId_:J

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public clearGameId()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->gameId_:J

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public clearGameName()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/GameRoom;->getDefaultInstance()Lcom/papa91/battle/protocol/GameRoom;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getGameName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->gameName_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearGameType()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->gameType_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearHasJoinPassword()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->hasJoinPassword_:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearLeader()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->leader_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/GameRoom$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/papa91/battle/protocol/GameRoom$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/GameRoom$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/papa91/battle/protocol/GameRoom$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/GameRoom$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/papa91/battle/protocol/GameRoom$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/GameRoom$Builder;

    return-object p1
.end method

.method public clearOpenBattleScore()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->openBattleScore_:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearOpenFastModeBtn()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->openFastModeBtn_:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearP1()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p1Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p1_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p1_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p1Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearP2()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p2Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p2_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p2_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p2Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearP3()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p3Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p3_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p3_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p3Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearP4()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p4Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p4_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p4_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p4Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearPassword()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/GameRoom;->getDefaultInstance()Lcom/papa91/battle/protocol/GameRoom;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getPassword()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->password_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearPlayTimestamp()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->playTimestamp_:J

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public clearPlayerNumber()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->playerNumber_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearPlayerSeconds()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->playerSeconds_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearRoomCategory()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->roomCategory_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearRoomId()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->roomId_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearSeatsNumber()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->seatsNumber_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearSilent()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->silent_:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearSpectatorNumber()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->spectatorNumber_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearState()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->state_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->clone()Lcom/papa91/battle/protocol/GameRoom$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->clone()Lcom/papa91/battle/protocol/GameRoom$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->clone()Lcom/papa91/battle/protocol/GameRoom$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->clone()Lcom/papa91/battle/protocol/GameRoom$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->clone()Lcom/papa91/battle/protocol/GameRoom$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/papa91/battle/protocol/GameRoom$Builder;

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
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->clone()Lcom/papa91/battle/protocol/GameRoom$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAllowPCJoin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->allowPCJoin_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getAllowPeripheralJoin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->allowPeripheralJoin_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getAllowSpectatorJoin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->allowSpectatorJoin_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getBattleArea()Lcom/papa91/battle/protocol/BattleArea;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->battleArea_:I

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
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->battleArea_:I

    .line 2
    .line 3
    return v0
.end method

.method public getBattleServerAddr()Lcom/papa91/battle/protocol/BattleServerAddr;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->battleServerAddrBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->battleServerAddr_:Lcom/papa91/battle/protocol/BattleServerAddr;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/papa91/battle/protocol/BattleServerAddr;->getDefaultInstance()Lcom/papa91/battle/protocol/BattleServerAddr;

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
    check-cast v0, Lcom/papa91/battle/protocol/BattleServerAddr;

    .line 19
    .line 20
    return-object v0
.end method

.method public getBattleServerAddrBuilder()Lcom/papa91/battle/protocol/BattleServerAddr$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->getBattleServerAddrFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/papa91/battle/protocol/BattleServerAddr$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getBattleServerAddrOrBuilder()Lcom/papa91/battle/protocol/BattleServerAddrOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->battleServerAddrBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/papa91/battle/protocol/BattleServerAddrOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->battleServerAddr_:Lcom/papa91/battle/protocol/BattleServerAddr;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/papa91/battle/protocol/BattleServerAddr;->getDefaultInstance()Lcom/papa91/battle/protocol/BattleServerAddr;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getChallengeCoins()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->challengeCoins_:I

    .line 2
    .line 3
    return v0
.end method

.method public getChatRoomId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->chatRoomId_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->chatRoomId_:Ljava/lang/Object;

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

.method public getChatRoomIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->chatRoomId_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->chatRoomId_:Ljava/lang/Object;

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
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->collectionId_:I

    .line 2
    .line 3
    return v0
.end method

.method public getCreateAt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->createAt_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getCreateByUser()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->createByUser_:I

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->getDefaultInstanceForType()Lcom/papa91/battle/protocol/GameRoom;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->getDefaultInstanceForType()Lcom/papa91/battle/protocol/GameRoom;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/papa91/battle/protocol/GameRoom;
    .locals 1

    .line 3
    invoke-static {}, Lcom/papa91/battle/protocol/GameRoom;->getDefaultInstance()Lcom/papa91/battle/protocol/GameRoom;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_GameRoom_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDisableMobileJoin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->disableMobileJoin_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getElite()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->elite_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getFastMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->fastMode_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getFightId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->fightId_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getGameId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->gameId_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getGameName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->gameName_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->gameName_:Ljava/lang/Object;

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

.method public getGameNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->gameName_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->gameName_:Ljava/lang/Object;

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
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->gameType_:I

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
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->gameType_:I

    .line 2
    .line 3
    return v0
.end method

.method public getHasJoinPassword()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->hasJoinPassword_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getLeader()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->leader_:I

    .line 2
    .line 3
    return v0
.end method

.method public getOpenBattleScore()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->openBattleScore_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getOpenFastModeBtn()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->openFastModeBtn_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getP1()Lcom/papa91/battle/protocol/RoomPosition;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p1Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p1_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/papa91/battle/protocol/RoomPosition;->getDefaultInstance()Lcom/papa91/battle/protocol/RoomPosition;

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
    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    .line 19
    .line 20
    return-object v0
.end method

.method public getP1Builder()Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->getP1FieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getP1OrBuilder()Lcom/papa91/battle/protocol/RoomPositionOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p1Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/papa91/battle/protocol/RoomPositionOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p1_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/papa91/battle/protocol/RoomPosition;->getDefaultInstance()Lcom/papa91/battle/protocol/RoomPosition;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getP2()Lcom/papa91/battle/protocol/RoomPosition;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p2Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p2_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/papa91/battle/protocol/RoomPosition;->getDefaultInstance()Lcom/papa91/battle/protocol/RoomPosition;

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
    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    .line 19
    .line 20
    return-object v0
.end method

.method public getP2Builder()Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->getP2FieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getP2OrBuilder()Lcom/papa91/battle/protocol/RoomPositionOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p2Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/papa91/battle/protocol/RoomPositionOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p2_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/papa91/battle/protocol/RoomPosition;->getDefaultInstance()Lcom/papa91/battle/protocol/RoomPosition;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getP3()Lcom/papa91/battle/protocol/RoomPosition;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p3Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p3_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/papa91/battle/protocol/RoomPosition;->getDefaultInstance()Lcom/papa91/battle/protocol/RoomPosition;

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
    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    .line 19
    .line 20
    return-object v0
.end method

.method public getP3Builder()Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->getP3FieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getP3OrBuilder()Lcom/papa91/battle/protocol/RoomPositionOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p3Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/papa91/battle/protocol/RoomPositionOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p3_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/papa91/battle/protocol/RoomPosition;->getDefaultInstance()Lcom/papa91/battle/protocol/RoomPosition;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getP4()Lcom/papa91/battle/protocol/RoomPosition;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p4Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p4_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/papa91/battle/protocol/RoomPosition;->getDefaultInstance()Lcom/papa91/battle/protocol/RoomPosition;

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
    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition;

    .line 19
    .line 20
    return-object v0
.end method

.method public getP4Builder()Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->getP4FieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getP4OrBuilder()Lcom/papa91/battle/protocol/RoomPositionOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p4Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/papa91/battle/protocol/RoomPositionOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p4_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/papa91/battle/protocol/RoomPosition;->getDefaultInstance()Lcom/papa91/battle/protocol/RoomPosition;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->password_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->password_:Ljava/lang/Object;

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

.method public getPasswordBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->password_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->password_:Ljava/lang/Object;

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
    iget-wide v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->playTimestamp_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getPlayerNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->playerNumber_:I

    .line 2
    .line 3
    return v0
.end method

.method public getPlayerSeconds()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->playerSeconds_:I

    .line 2
    .line 3
    return v0
.end method

.method public getRoomCategory()Lcom/papa91/battle/protocol/RoomCategory;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->roomCategory_:I

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
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->roomCategory_:I

    .line 2
    .line 3
    return v0
.end method

.method public getRoomId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->roomId_:I

    .line 2
    .line 3
    return v0
.end method

.method public getSeatsNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->seatsNumber_:I

    .line 2
    .line 3
    return v0
.end method

.method public getSilent()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->silent_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getSpectatorNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->spectatorNumber_:I

    .line 2
    .line 3
    return v0
.end method

.method public getState()Lcom/papa91/battle/protocol/RoomState;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->state_:I

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
    iget v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->state_:I

    .line 2
    .line 3
    return v0
.end method

.method public hasBattleServerAddr()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->battleServerAddrBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->battleServerAddr_:Lcom/papa91/battle/protocol/BattleServerAddr;

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

.method public hasP1()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p1Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p1_:Lcom/papa91/battle/protocol/RoomPosition;

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

.method public hasP2()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p2Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p2_:Lcom/papa91/battle/protocol/RoomPosition;

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

.method public hasP3()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p3Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p3_:Lcom/papa91/battle/protocol/RoomPosition;

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

.method public hasP4()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p4Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p4_:Lcom/papa91/battle/protocol/RoomPosition;

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
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeBattleServerAddr(Lcom/papa91/battle/protocol/BattleServerAddr;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->battleServerAddrBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->battleServerAddr_:Lcom/papa91/battle/protocol/BattleServerAddr;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/papa91/battle/protocol/BattleServerAddr;->newBuilder(Lcom/papa91/battle/protocol/BattleServerAddr;)Lcom/papa91/battle/protocol/BattleServerAddr$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/papa91/battle/protocol/BattleServerAddr$Builder;->mergeFrom(Lcom/papa91/battle/protocol/BattleServerAddr;)Lcom/papa91/battle/protocol/BattleServerAddr$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/BattleServerAddr$Builder;->buildPartial()Lcom/papa91/battle/protocol/BattleServerAddr;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->battleServerAddr_:Lcom/papa91/battle/protocol/BattleServerAddr;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->battleServerAddr_:Lcom/papa91/battle/protocol/BattleServerAddr;

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
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/GameRoom$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/GameRoom$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/GameRoom$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/papa91/battle/protocol/GameRoom$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/GameRoom$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/GameRoom$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/GameRoom$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/GameRoom$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/GameRoom$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/papa91/battle/protocol/GameRoom$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/GameRoom$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/GameRoom$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 86
    :try_start_0
    invoke-static {}, Lcom/papa91/battle/protocol/GameRoom;->access$4000()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/GameRoom;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/GameRoom$Builder;->mergeFrom(Lcom/papa91/battle/protocol/GameRoom;)Lcom/papa91/battle/protocol/GameRoom$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 88
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/papa91/battle/protocol/GameRoom;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
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

    .line 90
    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->mergeFrom(Lcom/papa91/battle/protocol/GameRoom;)Lcom/papa91/battle/protocol/GameRoom$Builder;

    .line 91
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/papa91/battle/protocol/GameRoom;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/GameRoom$Builder;->mergeFrom(Lcom/papa91/battle/protocol/GameRoom;)Lcom/papa91/battle/protocol/GameRoom$Builder;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/papa91/battle/protocol/GameRoom;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 5

    .line 10
    invoke-static {}, Lcom/papa91/battle/protocol/GameRoom;->getDefaultInstance()Lcom/papa91/battle/protocol/GameRoom;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->setRoomId(I)Lcom/papa91/battle/protocol/GameRoom$Builder;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/papa91/battle/protocol/GameRoom$Builder;->setGameId(J)Lcom/papa91/battle/protocol/GameRoom$Builder;

    .line 15
    :cond_2
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 16
    invoke-static {p1}, Lcom/papa91/battle/protocol/GameRoom;->access$600(Lcom/papa91/battle/protocol/GameRoom;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->password_:Ljava/lang/Object;

    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 18
    :cond_3
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getHasJoinPassword()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 19
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getHasJoinPassword()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->setHasJoinPassword(Z)Lcom/papa91/battle/protocol/GameRoom$Builder;

    .line 20
    :cond_4
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getAllowSpectatorJoin()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 21
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getAllowSpectatorJoin()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->setAllowSpectatorJoin(Z)Lcom/papa91/battle/protocol/GameRoom$Builder;

    .line 22
    :cond_5
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getAllowPeripheralJoin()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 23
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getAllowPeripheralJoin()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->setAllowPeripheralJoin(Z)Lcom/papa91/battle/protocol/GameRoom$Builder;

    .line 24
    :cond_6
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getSpectatorNumber()I

    move-result v0

    if-eqz v0, :cond_7

    .line 25
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getSpectatorNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->setSpectatorNumber(I)Lcom/papa91/battle/protocol/GameRoom$Builder;

    .line 26
    :cond_7
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->hasP1()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 27
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP1()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->mergeP1(Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/GameRoom$Builder;

    .line 28
    :cond_8
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->hasP2()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 29
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP2()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->mergeP2(Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/GameRoom$Builder;

    .line 30
    :cond_9
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->hasP3()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 31
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP3()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->mergeP3(Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/GameRoom$Builder;

    .line 32
    :cond_a
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->hasP4()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 33
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getP4()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->mergeP4(Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/GameRoom$Builder;

    .line 34
    :cond_b
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getChallengeCoins()I

    move-result v0

    if-eqz v0, :cond_c

    .line 35
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getChallengeCoins()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->setChallengeCoins(I)Lcom/papa91/battle/protocol/GameRoom$Builder;

    .line 36
    :cond_c
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getPlayerNumber()I

    move-result v0

    if-eqz v0, :cond_d

    .line 37
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getPlayerNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->setPlayerNumber(I)Lcom/papa91/battle/protocol/GameRoom$Builder;

    .line 38
    :cond_d
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getSeatsNumber()I

    move-result v0

    if-eqz v0, :cond_e

    .line 39
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getSeatsNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->setSeatsNumber(I)Lcom/papa91/battle/protocol/GameRoom$Builder;

    .line 40
    :cond_e
    invoke-static {p1}, Lcom/papa91/battle/protocol/GameRoom;->access$1800(Lcom/papa91/battle/protocol/GameRoom;)I

    move-result v0

    if-eqz v0, :cond_f

    .line 41
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getStateValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->setStateValue(I)Lcom/papa91/battle/protocol/GameRoom$Builder;

    .line 42
    :cond_f
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getLeader()I

    move-result v0

    if-eqz v0, :cond_10

    .line 43
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getLeader()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->setLeader(I)Lcom/papa91/battle/protocol/GameRoom$Builder;

    .line 44
    :cond_10
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getPlayerSeconds()I

    move-result v0

    if-eqz v0, :cond_11

    .line 45
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getPlayerSeconds()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->setPlayerSeconds(I)Lcom/papa91/battle/protocol/GameRoom$Builder;

    .line 46
    :cond_11
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getElite()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 47
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getElite()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->setElite(Z)Lcom/papa91/battle/protocol/GameRoom$Builder;

    .line 48
    :cond_12
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getFastMode()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 49
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getFastMode()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->setFastMode(Z)Lcom/papa91/battle/protocol/GameRoom$Builder;

    .line 50
    :cond_13
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getFightId()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_14

    .line 51
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getFightId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/papa91/battle/protocol/GameRoom$Builder;->setFightId(J)Lcom/papa91/battle/protocol/GameRoom$Builder;

    .line 52
    :cond_14
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->hasBattleServerAddr()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 53
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getBattleServerAddr()Lcom/papa91/battle/protocol/BattleServerAddr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->mergeBattleServerAddr(Lcom/papa91/battle/protocol/BattleServerAddr;)Lcom/papa91/battle/protocol/GameRoom$Builder;

    .line 54
    :cond_15
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getCreateAt()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_16

    .line 55
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getCreateAt()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/papa91/battle/protocol/GameRoom$Builder;->setCreateAt(J)Lcom/papa91/battle/protocol/GameRoom$Builder;

    .line 56
    :cond_16
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getSilent()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 57
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getSilent()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->setSilent(Z)Lcom/papa91/battle/protocol/GameRoom$Builder;

    .line 58
    :cond_17
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getPlayTimestamp()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 59
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getPlayTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/papa91/battle/protocol/GameRoom$Builder;->setPlayTimestamp(J)Lcom/papa91/battle/protocol/GameRoom$Builder;

    .line 60
    :cond_18
    invoke-static {p1}, Lcom/papa91/battle/protocol/GameRoom;->access$2800(Lcom/papa91/battle/protocol/GameRoom;)I

    move-result v0

    if-eqz v0, :cond_19

    .line 61
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getGameTypeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->setGameTypeValue(I)Lcom/papa91/battle/protocol/GameRoom$Builder;

    .line 62
    :cond_19
    invoke-static {p1}, Lcom/papa91/battle/protocol/GameRoom;->access$2900(Lcom/papa91/battle/protocol/GameRoom;)I

    move-result v0

    if-eqz v0, :cond_1a

    .line 63
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getBattleAreaValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->setBattleAreaValue(I)Lcom/papa91/battle/protocol/GameRoom$Builder;

    .line 64
    :cond_1a
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getGameName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 65
    invoke-static {p1}, Lcom/papa91/battle/protocol/GameRoom;->access$3000(Lcom/papa91/battle/protocol/GameRoom;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->gameName_:Ljava/lang/Object;

    .line 66
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 67
    :cond_1b
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getCollectionId()I

    move-result v0

    if-eqz v0, :cond_1c

    .line 68
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getCollectionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->setCollectionId(I)Lcom/papa91/battle/protocol/GameRoom$Builder;

    .line 69
    :cond_1c
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getAllowPCJoin()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 70
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getAllowPCJoin()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->setAllowPCJoin(Z)Lcom/papa91/battle/protocol/GameRoom$Builder;

    .line 71
    :cond_1d
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getOpenFastModeBtn()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 72
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getOpenFastModeBtn()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->setOpenFastModeBtn(Z)Lcom/papa91/battle/protocol/GameRoom$Builder;

    .line 73
    :cond_1e
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getDisableMobileJoin()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 74
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getDisableMobileJoin()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->setDisableMobileJoin(Z)Lcom/papa91/battle/protocol/GameRoom$Builder;

    .line 75
    :cond_1f
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getCreateByUser()I

    move-result v0

    if-eqz v0, :cond_20

    .line 76
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getCreateByUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->setCreateByUser(I)Lcom/papa91/battle/protocol/GameRoom$Builder;

    .line 77
    :cond_20
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getChatRoomId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 78
    invoke-static {p1}, Lcom/papa91/battle/protocol/GameRoom;->access$3600(Lcom/papa91/battle/protocol/GameRoom;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->chatRoomId_:Ljava/lang/Object;

    .line 79
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 80
    :cond_21
    invoke-static {p1}, Lcom/papa91/battle/protocol/GameRoom;->access$3700(Lcom/papa91/battle/protocol/GameRoom;)I

    move-result v0

    if-eqz v0, :cond_22

    .line 81
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomCategoryValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->setRoomCategoryValue(I)Lcom/papa91/battle/protocol/GameRoom$Builder;

    .line 82
    :cond_22
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getOpenBattleScore()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 83
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getOpenBattleScore()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/GameRoom$Builder;->setOpenBattleScore(Z)Lcom/papa91/battle/protocol/GameRoom$Builder;

    .line 84
    :cond_23
    invoke-static {p1}, Lcom/papa91/battle/protocol/GameRoom;->access$3900(Lcom/papa91/battle/protocol/GameRoom;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/GameRoom$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/papa91/battle/protocol/GameRoom$Builder;

    .line 85
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeP1(Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p1Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p1_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/papa91/battle/protocol/RoomPosition;->newBuilder(Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->mergeFrom(Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->buildPartial()Lcom/papa91/battle/protocol/RoomPosition;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p1_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p1_:Lcom/papa91/battle/protocol/RoomPosition;

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

.method public mergeP2(Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p2Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p2_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/papa91/battle/protocol/RoomPosition;->newBuilder(Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->mergeFrom(Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->buildPartial()Lcom/papa91/battle/protocol/RoomPosition;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p2_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p2_:Lcom/papa91/battle/protocol/RoomPosition;

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

.method public mergeP3(Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p3Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p3_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/papa91/battle/protocol/RoomPosition;->newBuilder(Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->mergeFrom(Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->buildPartial()Lcom/papa91/battle/protocol/RoomPosition;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p3_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p3_:Lcom/papa91/battle/protocol/RoomPosition;

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

.method public mergeP4(Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p4Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p4_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/papa91/battle/protocol/RoomPosition;->newBuilder(Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->mergeFrom(Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/RoomPosition$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->buildPartial()Lcom/papa91/battle/protocol/RoomPosition;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p4_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p4_:Lcom/papa91/battle/protocol/RoomPosition;

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
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/GameRoom$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/papa91/battle/protocol/GameRoom$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/GameRoom$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/papa91/battle/protocol/GameRoom$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/GameRoom$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/papa91/battle/protocol/GameRoom$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/GameRoom$Builder;

    return-object p1
.end method

.method public setAllowPCJoin(Z)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->allowPCJoin_:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setAllowPeripheralJoin(Z)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->allowPeripheralJoin_:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setAllowSpectatorJoin(Z)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->allowSpectatorJoin_:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setBattleArea(Lcom/papa91/battle/protocol/BattleArea;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->battleArea_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public setBattleAreaValue(I)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->battleArea_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setBattleServerAddr(Lcom/papa91/battle/protocol/BattleServerAddr$Builder;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->battleServerAddrBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/BattleServerAddr$Builder;->build()Lcom/papa91/battle/protocol/BattleServerAddr;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->battleServerAddr_:Lcom/papa91/battle/protocol/BattleServerAddr;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/BattleServerAddr$Builder;->build()Lcom/papa91/battle/protocol/BattleServerAddr;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setBattleServerAddr(Lcom/papa91/battle/protocol/BattleServerAddr;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->battleServerAddrBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->battleServerAddr_:Lcom/papa91/battle/protocol/BattleServerAddr;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setChallengeCoins(I)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->challengeCoins_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setChatRoomId(Ljava/lang/String;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->chatRoomId_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setChatRoomIdBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/papa91/battle/protocol/GameRoom;->access$4300(Lcom/google/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->chatRoomId_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setCollectionId(I)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->collectionId_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setCreateAt(J)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->createAt_:J

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setCreateByUser(I)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->createByUser_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setDisableMobileJoin(Z)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->disableMobileJoin_:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setElite(Z)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->elite_:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setFastMode(Z)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->fastMode_:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/GameRoom$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/papa91/battle/protocol/GameRoom$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/GameRoom$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/papa91/battle/protocol/GameRoom$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/GameRoom$Builder;

    return-object p1
.end method

.method public setFightId(J)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->fightId_:J

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setGameId(J)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->gameId_:J

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setGameName(Ljava/lang/String;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->gameName_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setGameNameBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/papa91/battle/protocol/GameRoom;->access$4200(Lcom/google/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->gameName_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setGameType(Lcom/papa91/battle/protocol/GameRoom$GameType;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom$GameType;->getNumber()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->gameType_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public setGameTypeValue(I)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->gameType_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setHasJoinPassword(Z)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->hasJoinPassword_:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setLeader(I)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->leader_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setOpenBattleScore(Z)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->openBattleScore_:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setOpenFastModeBtn(Z)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->openFastModeBtn_:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setP1(Lcom/papa91/battle/protocol/RoomPosition$Builder;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p1Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->build()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p1_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->build()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setP1(Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p1Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p1_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setP2(Lcom/papa91/battle/protocol/RoomPosition$Builder;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p2Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->build()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p2_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->build()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setP2(Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p2Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p2_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setP3(Lcom/papa91/battle/protocol/RoomPosition$Builder;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p3Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->build()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p3_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->build()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setP3(Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p3Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p3_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setP4(Lcom/papa91/battle/protocol/RoomPosition$Builder;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p4Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->build()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p4_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->build()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setP4(Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p4Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->p4_:Lcom/papa91/battle/protocol/RoomPosition;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->password_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setPasswordBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/papa91/battle/protocol/GameRoom;->access$4100(Lcom/google/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->password_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setPlayTimestamp(J)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->playTimestamp_:J

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setPlayerNumber(I)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->playerNumber_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setPlayerSeconds(I)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->playerSeconds_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/papa91/battle/protocol/GameRoom$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/papa91/battle/protocol/GameRoom$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/papa91/battle/protocol/GameRoom$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/papa91/battle/protocol/GameRoom$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/GameRoom$Builder;

    return-object p1
.end method

.method public setRoomCategory(Lcom/papa91/battle/protocol/RoomCategory;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomCategory;->getNumber()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->roomCategory_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public setRoomCategoryValue(I)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->roomCategory_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setRoomId(I)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->roomId_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setSeatsNumber(I)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->seatsNumber_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setSilent(Z)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->silent_:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setSpectatorNumber(I)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->spectatorNumber_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setState(Lcom/papa91/battle/protocol/RoomState;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomState;->getNumber()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->state_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public setStateValue(I)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/GameRoom$Builder;->state_:I

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
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/GameRoom$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/papa91/battle/protocol/GameRoom$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/GameRoom$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/papa91/battle/protocol/GameRoom$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/papa91/battle/protocol/GameRoom$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/GameRoom$Builder;

    return-object p1
.end method
