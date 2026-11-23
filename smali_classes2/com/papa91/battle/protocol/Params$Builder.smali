.class public final Lcom/papa91/battle/protocol/Params$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/papa91/battle/protocol/ParamsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/battle/protocol/Params;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/papa91/battle/protocol/Params$Builder;",
        ">;",
        "Lcom/papa91/battle/protocol/ParamsOrBuilder;"
    }
.end annotation


# instance fields
.field private allowPCJoin_:Z

.field private allowPeripheralJoin_:Z

.field private allowSpectatorJoin_:Z

.field private battleArea_:I

.field private battleScoreBoard_:Ljava/lang/Object;

.field private challengeCoins_:I

.field private channelType_:I

.field private closePosition_:Z

.field private collectionId_:I

.field private deviceId_:Ljava/lang/Object;

.field private disableMobileJoin_:Z

.field private fightId_:J

.field private fromLive_:Z

.field private gameId_:J

.field private mergeMessageChannel_:Z

.field private password_:Ljava/lang/Object;

.field private pingVal_:I

.field private playMode_:I

.field private roomId_:I

.field private roomPositionIndex_:I

.field private roomType_:I

.field private silent_:Z

.field private timestamp_:J

.field private token_:Ljava/lang/Object;

.field private uid_:I

.field private usePeripheral_:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->token_:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->password_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcom/papa91/battle/protocol/Params$Builder;->roomType_:I

    .line 7
    iput-object v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->deviceId_:Ljava/lang/Object;

    .line 8
    iput v1, p0, Lcom/papa91/battle/protocol/Params$Builder;->battleArea_:I

    .line 9
    iput v1, p0, Lcom/papa91/battle/protocol/Params$Builder;->channelType_:I

    .line 10
    iput v1, p0, Lcom/papa91/battle/protocol/Params$Builder;->playMode_:I

    .line 11
    iput-object v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->battleScoreBoard_:Ljava/lang/Object;

    .line 12
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Params$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1

    .line 13
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 14
    iput-object p1, p0, Lcom/papa91/battle/protocol/Params$Builder;->token_:Ljava/lang/Object;

    .line 15
    iput-object p1, p0, Lcom/papa91/battle/protocol/Params$Builder;->password_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->roomType_:I

    .line 17
    iput-object p1, p0, Lcom/papa91/battle/protocol/Params$Builder;->deviceId_:Ljava/lang/Object;

    .line 18
    iput v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->battleArea_:I

    .line 19
    iput v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->channelType_:I

    .line 20
    iput v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->playMode_:I

    .line 21
    iput-object p1, p0, Lcom/papa91/battle/protocol/Params$Builder;->battleScoreBoard_:Ljava/lang/Object;

    .line 22
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Params$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/papa91/battle/protocol/Params$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/Params$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/papa91/battle/protocol/Params$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/papa91/battle/protocol/Params$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_Params_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->access$200()Z

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/Params$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/Params$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Params$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params$Builder;->build()Lcom/papa91/battle/protocol/Params;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params$Builder;->build()Lcom/papa91/battle/protocol/Params;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/papa91/battle/protocol/Params;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params$Builder;->buildPartial()Lcom/papa91/battle/protocol/Params;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Params;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params$Builder;->buildPartial()Lcom/papa91/battle/protocol/Params;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params$Builder;->buildPartial()Lcom/papa91/battle/protocol/Params;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/papa91/battle/protocol/Params;
    .locals 3

    .line 3
    new-instance v0, Lcom/papa91/battle/protocol/Params;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/papa91/battle/protocol/Params;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/papa91/battle/protocol/Params$1;)V

    .line 4
    iget v1, p0, Lcom/papa91/battle/protocol/Params$Builder;->uid_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Params;->access$402(Lcom/papa91/battle/protocol/Params;I)I

    .line 5
    iget-object v1, p0, Lcom/papa91/battle/protocol/Params$Builder;->token_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Params;->access$502(Lcom/papa91/battle/protocol/Params;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-wide v1, p0, Lcom/papa91/battle/protocol/Params$Builder;->gameId_:J

    invoke-static {v0, v1, v2}, Lcom/papa91/battle/protocol/Params;->access$602(Lcom/papa91/battle/protocol/Params;J)J

    .line 7
    iget v1, p0, Lcom/papa91/battle/protocol/Params$Builder;->roomId_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Params;->access$702(Lcom/papa91/battle/protocol/Params;I)I

    .line 8
    iget v1, p0, Lcom/papa91/battle/protocol/Params$Builder;->challengeCoins_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Params;->access$802(Lcom/papa91/battle/protocol/Params;I)I

    .line 9
    iget-object v1, p0, Lcom/papa91/battle/protocol/Params$Builder;->password_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Params;->access$902(Lcom/papa91/battle/protocol/Params;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/Params$Builder;->allowSpectatorJoin_:Z

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Params;->access$1002(Lcom/papa91/battle/protocol/Params;Z)Z

    .line 11
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/Params$Builder;->allowPeripheralJoin_:Z

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Params;->access$1102(Lcom/papa91/battle/protocol/Params;Z)Z

    .line 12
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/Params$Builder;->closePosition_:Z

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Params;->access$1202(Lcom/papa91/battle/protocol/Params;Z)Z

    .line 13
    iget v1, p0, Lcom/papa91/battle/protocol/Params$Builder;->roomPositionIndex_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Params;->access$1302(Lcom/papa91/battle/protocol/Params;I)I

    .line 14
    iget v1, p0, Lcom/papa91/battle/protocol/Params$Builder;->roomType_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Params;->access$1402(Lcom/papa91/battle/protocol/Params;I)I

    .line 15
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/Params$Builder;->silent_:Z

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Params;->access$1502(Lcom/papa91/battle/protocol/Params;Z)Z

    .line 16
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/Params$Builder;->usePeripheral_:Z

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Params;->access$1602(Lcom/papa91/battle/protocol/Params;Z)Z

    .line 17
    iget-wide v1, p0, Lcom/papa91/battle/protocol/Params$Builder;->fightId_:J

    invoke-static {v0, v1, v2}, Lcom/papa91/battle/protocol/Params;->access$1702(Lcom/papa91/battle/protocol/Params;J)J

    .line 18
    iget v1, p0, Lcom/papa91/battle/protocol/Params$Builder;->pingVal_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Params;->access$1802(Lcom/papa91/battle/protocol/Params;I)I

    .line 19
    iget-wide v1, p0, Lcom/papa91/battle/protocol/Params$Builder;->timestamp_:J

    invoke-static {v0, v1, v2}, Lcom/papa91/battle/protocol/Params;->access$1902(Lcom/papa91/battle/protocol/Params;J)J

    .line 20
    iget-object v1, p0, Lcom/papa91/battle/protocol/Params$Builder;->deviceId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Params;->access$2002(Lcom/papa91/battle/protocol/Params;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget v1, p0, Lcom/papa91/battle/protocol/Params$Builder;->battleArea_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Params;->access$2102(Lcom/papa91/battle/protocol/Params;I)I

    .line 22
    iget v1, p0, Lcom/papa91/battle/protocol/Params$Builder;->channelType_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Params;->access$2202(Lcom/papa91/battle/protocol/Params;I)I

    .line 23
    iget v1, p0, Lcom/papa91/battle/protocol/Params$Builder;->collectionId_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Params;->access$2302(Lcom/papa91/battle/protocol/Params;I)I

    .line 24
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/Params$Builder;->fromLive_:Z

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Params;->access$2402(Lcom/papa91/battle/protocol/Params;Z)Z

    .line 25
    iget v1, p0, Lcom/papa91/battle/protocol/Params$Builder;->playMode_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Params;->access$2502(Lcom/papa91/battle/protocol/Params;I)I

    .line 26
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/Params$Builder;->allowPCJoin_:Z

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Params;->access$2602(Lcom/papa91/battle/protocol/Params;Z)Z

    .line 27
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/Params$Builder;->disableMobileJoin_:Z

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Params;->access$2702(Lcom/papa91/battle/protocol/Params;Z)Z

    .line 28
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/Params$Builder;->mergeMessageChannel_:Z

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Params;->access$2802(Lcom/papa91/battle/protocol/Params;Z)Z

    .line 29
    iget-object v1, p0, Lcom/papa91/battle/protocol/Params$Builder;->battleScoreBoard_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/Params;->access$2902(Lcom/papa91/battle/protocol/Params;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params$Builder;->clear()Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params$Builder;->clear()Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params$Builder;->clear()Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params$Builder;->clear()Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 4

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->uid_:I

    const-string v1, ""

    .line 7
    iput-object v1, p0, Lcom/papa91/battle/protocol/Params$Builder;->token_:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    .line 8
    iput-wide v2, p0, Lcom/papa91/battle/protocol/Params$Builder;->gameId_:J

    .line 9
    iput v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->roomId_:I

    .line 10
    iput v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->challengeCoins_:I

    .line 11
    iput-object v1, p0, Lcom/papa91/battle/protocol/Params$Builder;->password_:Ljava/lang/Object;

    .line 12
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->allowSpectatorJoin_:Z

    .line 13
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->allowPeripheralJoin_:Z

    .line 14
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->closePosition_:Z

    .line 15
    iput v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->roomPositionIndex_:I

    .line 16
    iput v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->roomType_:I

    .line 17
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->silent_:Z

    .line 18
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->usePeripheral_:Z

    .line 19
    iput-wide v2, p0, Lcom/papa91/battle/protocol/Params$Builder;->fightId_:J

    .line 20
    iput v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->pingVal_:I

    .line 21
    iput-wide v2, p0, Lcom/papa91/battle/protocol/Params$Builder;->timestamp_:J

    .line 22
    iput-object v1, p0, Lcom/papa91/battle/protocol/Params$Builder;->deviceId_:Ljava/lang/Object;

    .line 23
    iput v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->battleArea_:I

    .line 24
    iput v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->channelType_:I

    .line 25
    iput v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->collectionId_:I

    .line 26
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->fromLive_:Z

    .line 27
    iput v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->playMode_:I

    .line 28
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->allowPCJoin_:Z

    .line 29
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->disableMobileJoin_:Z

    .line 30
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->mergeMessageChannel_:Z

    .line 31
    iput-object v1, p0, Lcom/papa91/battle/protocol/Params$Builder;->battleScoreBoard_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearAllowPCJoin()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->allowPCJoin_:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearAllowPeripheralJoin()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->allowPeripheralJoin_:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearAllowSpectatorJoin()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->allowSpectatorJoin_:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearBattleArea()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->battleArea_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearBattleScoreBoard()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->getDefaultInstance()Lcom/papa91/battle/protocol/Params;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Params;->getBattleScoreBoard()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->battleScoreBoard_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearChallengeCoins()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->challengeCoins_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearChannelType()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->channelType_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearClosePosition()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->closePosition_:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearCollectionId()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->collectionId_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearDeviceId()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->getDefaultInstance()Lcom/papa91/battle/protocol/Params;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Params;->getDeviceId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->deviceId_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearDisableMobileJoin()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->disableMobileJoin_:Z

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
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Params$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Params$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Params$Builder;

    return-object p1
.end method

.method public clearFightId()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->fightId_:J

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public clearFromLive()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->fromLive_:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearGameId()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->gameId_:J

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public clearMergeMessageChannel()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->mergeMessageChannel_:Z

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
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Params$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Params$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Params$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Params$Builder;

    return-object p1
.end method

.method public clearPassword()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->getDefaultInstance()Lcom/papa91/battle/protocol/Params;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Params;->getPassword()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->password_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearPingVal()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->pingVal_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearPlayMode()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->playMode_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearRoomId()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->roomId_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearRoomPositionIndex()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->roomPositionIndex_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearRoomType()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->roomType_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearSilent()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->silent_:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearTimestamp()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->timestamp_:J

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public clearToken()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->getDefaultInstance()Lcom/papa91/battle/protocol/Params;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Params;->getToken()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->token_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearUid()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->uid_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearUsePeripheral()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->usePeripheral_:Z

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
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params$Builder;->clone()Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params$Builder;->clone()Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params$Builder;->clone()Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params$Builder;->clone()Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params$Builder;->clone()Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/papa91/battle/protocol/Params$Builder;

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
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params$Builder;->clone()Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAllowPCJoin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->allowPCJoin_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getAllowPeripheralJoin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->allowPeripheralJoin_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getAllowSpectatorJoin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->allowSpectatorJoin_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getBattleArea()Lcom/papa91/battle/protocol/BattleArea;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->battleArea_:I

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
    iget v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->battleArea_:I

    .line 2
    .line 3
    return v0
.end method

.method public getBattleScoreBoard()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->battleScoreBoard_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->battleScoreBoard_:Ljava/lang/Object;

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

.method public getBattleScoreBoardBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->battleScoreBoard_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->battleScoreBoard_:Ljava/lang/Object;

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
    iget v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->challengeCoins_:I

    .line 2
    .line 3
    return v0
.end method

.method public getChannelType()Lcom/papa91/battle/protocol/Params$ChannelType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->channelType_:I

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
    iget v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->channelType_:I

    .line 2
    .line 3
    return v0
.end method

.method public getClosePosition()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->closePosition_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getCollectionId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->collectionId_:I

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params$Builder;->getDefaultInstanceForType()Lcom/papa91/battle/protocol/Params;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/Params$Builder;->getDefaultInstanceForType()Lcom/papa91/battle/protocol/Params;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/papa91/battle/protocol/Params;
    .locals 1

    .line 3
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->getDefaultInstance()Lcom/papa91/battle/protocol/Params;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_Params_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->deviceId_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->deviceId_:Ljava/lang/Object;

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

.method public getDeviceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->deviceId_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->deviceId_:Ljava/lang/Object;

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
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->disableMobileJoin_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getFightId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->fightId_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getFromLive()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->fromLive_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getGameId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->gameId_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getMergeMessageChannel()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->mergeMessageChannel_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->password_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->password_:Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->password_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->password_:Ljava/lang/Object;

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
    iget v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->pingVal_:I

    .line 2
    .line 3
    return v0
.end method

.method public getPlayMode()Lcom/papa91/battle/protocol/Params$ServerPlayMode;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->playMode_:I

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
    iget v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->playMode_:I

    .line 2
    .line 3
    return v0
.end method

.method public getRoomId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->roomId_:I

    .line 2
    .line 3
    return v0
.end method

.method public getRoomPositionIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->roomPositionIndex_:I

    .line 2
    .line 3
    return v0
.end method

.method public getRoomType()Lcom/papa91/battle/protocol/Params$RoomType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->roomType_:I

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
    iget v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->roomType_:I

    .line 2
    .line 3
    return v0
.end method

.method public getSilent()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->silent_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->timestamp_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->token_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->token_:Ljava/lang/Object;

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

.method public getTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->token_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->token_:Ljava/lang/Object;

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
    iget v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->uid_:I

    .line 2
    .line 3
    return v0
.end method

.method public getUsePeripheral()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->usePeripheral_:Z

    .line 2
    .line 3
    return v0
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
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/Params$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Params$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/papa91/battle/protocol/Params$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/Params$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Params$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/Params$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Params$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/papa91/battle/protocol/Params$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/Params$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 69
    :try_start_0
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->access$3100()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Params;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Params$Builder;->mergeFrom(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Params$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 71
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/papa91/battle/protocol/Params;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
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

    .line 73
    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/Params$Builder;->mergeFrom(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Params$Builder;

    .line 74
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/papa91/battle/protocol/Params;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/papa91/battle/protocol/Params;

    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Params$Builder;->mergeFrom(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/papa91/battle/protocol/Params;)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 5

    .line 10
    invoke-static {}, Lcom/papa91/battle/protocol/Params;->getDefaultInstance()Lcom/papa91/battle/protocol/Params;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getUid()I

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/Params$Builder;->setUid(I)Lcom/papa91/battle/protocol/Params$Builder;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 14
    invoke-static {p1}, Lcom/papa91/battle/protocol/Params;->access$500(Lcom/papa91/battle/protocol/Params;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->token_:Ljava/lang/Object;

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 16
    :cond_2
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getGameId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    .line 17
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getGameId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/papa91/battle/protocol/Params$Builder;->setGameId(J)Lcom/papa91/battle/protocol/Params$Builder;

    .line 18
    :cond_3
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getRoomId()I

    move-result v0

    if-eqz v0, :cond_4

    .line 19
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getRoomId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/Params$Builder;->setRoomId(I)Lcom/papa91/battle/protocol/Params$Builder;

    .line 20
    :cond_4
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getChallengeCoins()I

    move-result v0

    if-eqz v0, :cond_5

    .line 21
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getChallengeCoins()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/Params$Builder;->setChallengeCoins(I)Lcom/papa91/battle/protocol/Params$Builder;

    .line 22
    :cond_5
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 23
    invoke-static {p1}, Lcom/papa91/battle/protocol/Params;->access$900(Lcom/papa91/battle/protocol/Params;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->password_:Ljava/lang/Object;

    .line 24
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 25
    :cond_6
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getAllowSpectatorJoin()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 26
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getAllowSpectatorJoin()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/Params$Builder;->setAllowSpectatorJoin(Z)Lcom/papa91/battle/protocol/Params$Builder;

    .line 27
    :cond_7
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getAllowPeripheralJoin()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 28
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getAllowPeripheralJoin()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/Params$Builder;->setAllowPeripheralJoin(Z)Lcom/papa91/battle/protocol/Params$Builder;

    .line 29
    :cond_8
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getClosePosition()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 30
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getClosePosition()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/Params$Builder;->setClosePosition(Z)Lcom/papa91/battle/protocol/Params$Builder;

    .line 31
    :cond_9
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getRoomPositionIndex()I

    move-result v0

    if-eqz v0, :cond_a

    .line 32
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getRoomPositionIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/Params$Builder;->setRoomPositionIndex(I)Lcom/papa91/battle/protocol/Params$Builder;

    .line 33
    :cond_a
    invoke-static {p1}, Lcom/papa91/battle/protocol/Params;->access$1400(Lcom/papa91/battle/protocol/Params;)I

    move-result v0

    if-eqz v0, :cond_b

    .line 34
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getRoomTypeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/Params$Builder;->setRoomTypeValue(I)Lcom/papa91/battle/protocol/Params$Builder;

    .line 35
    :cond_b
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getSilent()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 36
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getSilent()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/Params$Builder;->setSilent(Z)Lcom/papa91/battle/protocol/Params$Builder;

    .line 37
    :cond_c
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getUsePeripheral()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 38
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getUsePeripheral()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/Params$Builder;->setUsePeripheral(Z)Lcom/papa91/battle/protocol/Params$Builder;

    .line 39
    :cond_d
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getFightId()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_e

    .line 40
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getFightId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/papa91/battle/protocol/Params$Builder;->setFightId(J)Lcom/papa91/battle/protocol/Params$Builder;

    .line 41
    :cond_e
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getPingVal()I

    move-result v0

    if-eqz v0, :cond_f

    .line 42
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getPingVal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/Params$Builder;->setPingVal(I)Lcom/papa91/battle/protocol/Params$Builder;

    .line 43
    :cond_f
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getTimestamp()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_10

    .line 44
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/papa91/battle/protocol/Params$Builder;->setTimestamp(J)Lcom/papa91/battle/protocol/Params$Builder;

    .line 45
    :cond_10
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 46
    invoke-static {p1}, Lcom/papa91/battle/protocol/Params;->access$2000(Lcom/papa91/battle/protocol/Params;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->deviceId_:Ljava/lang/Object;

    .line 47
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 48
    :cond_11
    invoke-static {p1}, Lcom/papa91/battle/protocol/Params;->access$2100(Lcom/papa91/battle/protocol/Params;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 49
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getBattleAreaValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/Params$Builder;->setBattleAreaValue(I)Lcom/papa91/battle/protocol/Params$Builder;

    .line 50
    :cond_12
    invoke-static {p1}, Lcom/papa91/battle/protocol/Params;->access$2200(Lcom/papa91/battle/protocol/Params;)I

    move-result v0

    if-eqz v0, :cond_13

    .line 51
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getChannelTypeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/Params$Builder;->setChannelTypeValue(I)Lcom/papa91/battle/protocol/Params$Builder;

    .line 52
    :cond_13
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getCollectionId()I

    move-result v0

    if-eqz v0, :cond_14

    .line 53
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getCollectionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/Params$Builder;->setCollectionId(I)Lcom/papa91/battle/protocol/Params$Builder;

    .line 54
    :cond_14
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getFromLive()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 55
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getFromLive()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/Params$Builder;->setFromLive(Z)Lcom/papa91/battle/protocol/Params$Builder;

    .line 56
    :cond_15
    invoke-static {p1}, Lcom/papa91/battle/protocol/Params;->access$2500(Lcom/papa91/battle/protocol/Params;)I

    move-result v0

    if-eqz v0, :cond_16

    .line 57
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getPlayModeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/Params$Builder;->setPlayModeValue(I)Lcom/papa91/battle/protocol/Params$Builder;

    .line 58
    :cond_16
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getAllowPCJoin()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 59
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getAllowPCJoin()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/Params$Builder;->setAllowPCJoin(Z)Lcom/papa91/battle/protocol/Params$Builder;

    .line 60
    :cond_17
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getDisableMobileJoin()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 61
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getDisableMobileJoin()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/Params$Builder;->setDisableMobileJoin(Z)Lcom/papa91/battle/protocol/Params$Builder;

    .line 62
    :cond_18
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getMergeMessageChannel()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 63
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getMergeMessageChannel()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/Params$Builder;->setMergeMessageChannel(Z)Lcom/papa91/battle/protocol/Params$Builder;

    .line 64
    :cond_19
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params;->getBattleScoreBoard()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 65
    invoke-static {p1}, Lcom/papa91/battle/protocol/Params;->access$2900(Lcom/papa91/battle/protocol/Params;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/Params$Builder;->battleScoreBoard_:Ljava/lang/Object;

    .line 66
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 67
    :cond_1a
    invoke-static {p1}, Lcom/papa91/battle/protocol/Params;->access$3000(Lcom/papa91/battle/protocol/Params;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Params$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/papa91/battle/protocol/Params$Builder;

    .line 68
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Params$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Params$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Params$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Params$Builder;

    return-object p1
.end method

.method public setAllowPCJoin(Z)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/Params$Builder;->allowPCJoin_:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setAllowPeripheralJoin(Z)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/Params$Builder;->allowPeripheralJoin_:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setAllowSpectatorJoin(Z)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/Params$Builder;->allowSpectatorJoin_:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setBattleArea(Lcom/papa91/battle/protocol/BattleArea;)Lcom/papa91/battle/protocol/Params$Builder;
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
    iput p1, p0, Lcom/papa91/battle/protocol/Params$Builder;->battleArea_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public setBattleAreaValue(I)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Params$Builder;->battleArea_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setBattleScoreBoard(Ljava/lang/String;)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/papa91/battle/protocol/Params$Builder;->battleScoreBoard_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setBattleScoreBoardBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/papa91/battle/protocol/Params;->access$3500(Lcom/google/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/papa91/battle/protocol/Params$Builder;->battleScoreBoard_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setChallengeCoins(I)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Params$Builder;->challengeCoins_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setChannelType(Lcom/papa91/battle/protocol/Params$ChannelType;)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params$ChannelType;->getNumber()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/papa91/battle/protocol/Params$Builder;->channelType_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public setChannelTypeValue(I)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Params$Builder;->channelType_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setClosePosition(Z)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/Params$Builder;->closePosition_:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setCollectionId(I)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Params$Builder;->collectionId_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/papa91/battle/protocol/Params$Builder;->deviceId_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setDeviceIdBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/papa91/battle/protocol/Params;->access$3400(Lcom/google/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/papa91/battle/protocol/Params$Builder;->deviceId_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setDisableMobileJoin(Z)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/Params$Builder;->disableMobileJoin_:Z

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
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/Params$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/Params$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Params$Builder;

    return-object p1
.end method

.method public setFightId(J)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa91/battle/protocol/Params$Builder;->fightId_:J

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setFromLive(Z)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/Params$Builder;->fromLive_:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setGameId(J)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa91/battle/protocol/Params$Builder;->gameId_:J

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setMergeMessageChannel(Z)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/Params$Builder;->mergeMessageChannel_:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/papa91/battle/protocol/Params$Builder;->password_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setPasswordBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/papa91/battle/protocol/Params;->access$3300(Lcom/google/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/papa91/battle/protocol/Params$Builder;->password_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setPingVal(I)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Params$Builder;->pingVal_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setPlayMode(Lcom/papa91/battle/protocol/Params$ServerPlayMode;)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params$ServerPlayMode;->getNumber()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/papa91/battle/protocol/Params$Builder;->playMode_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public setPlayModeValue(I)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Params$Builder;->playMode_:I

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
    invoke-virtual {p0, p1, p2, p3}, Lcom/papa91/battle/protocol/Params$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/papa91/battle/protocol/Params$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Params$Builder;

    return-object p1
.end method

.method public setRoomId(I)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Params$Builder;->roomId_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setRoomPositionIndex(I)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Params$Builder;->roomPositionIndex_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setRoomType(Lcom/papa91/battle/protocol/Params$RoomType;)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/Params$RoomType;->getNumber()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/papa91/battle/protocol/Params$Builder;->roomType_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public setRoomTypeValue(I)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Params$Builder;->roomType_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setSilent(Z)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/Params$Builder;->silent_:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setTimestamp(J)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa91/battle/protocol/Params$Builder;->timestamp_:J

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setToken(Ljava/lang/String;)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/papa91/battle/protocol/Params$Builder;->token_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/papa91/battle/protocol/Params;->access$3200(Lcom/google/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/papa91/battle/protocol/Params$Builder;->token_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setUid(I)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/Params$Builder;->uid_:I

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
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Params$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/Params$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/papa91/battle/protocol/Params$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/Params$Builder;

    return-object p1
.end method

.method public setUsePeripheral(Z)Lcom/papa91/battle/protocol/Params$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/Params$Builder;->usePeripheral_:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
