.class public final Lcom/papa91/battle/protocol/SimpleRoom$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/papa91/battle/protocol/SimpleRoomOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/battle/protocol/SimpleRoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/papa91/battle/protocol/SimpleRoom$Builder;",
        ">;",
        "Lcom/papa91/battle/protocol/SimpleRoomOrBuilder;"
    }
.end annotation


# instance fields
.field private allowPCJoin_:Z

.field private allowPeripheralJoin_:Z

.field private allowSpectatorJoin_:Z

.field private avatar_:Ljava/lang/Object;

.field private battleArea_:I

.field private battleTitleColor_:Ljava/lang/Object;

.field private battleTitle_:Ljava/lang/Object;

.field private bitField0_:I

.field private challengeCoins_:I

.field private collectionId_:I

.field private copper_:I

.field private createAt_:J

.field private elite_:Z

.field private gameId_:J

.field private gameName_:Ljava/lang/Object;

.field private hasJoinPassword_:Z

.field private hasPeripheralPlayer_:Z

.field private leaderId_:I

.field private nickname_:Ljava/lang/Object;

.field private openBattleScore_:Z

.field private playSeconds_:I

.field private playTimestamp_:J

.field private playerListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/papa91/battle/protocol/RoomPosition;",
            "Lcom/papa91/battle/protocol/RoomPosition$Builder;",
            "Lcom/papa91/battle/protocol/RoomPositionOrBuilder;",
            ">;"
        }
    .end annotation
.end field

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

.field private titleBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/papa91/battle/protocol/BattleTitle;",
            "Lcom/papa91/battle/protocol/BattleTitle$Builder;",
            "Lcom/papa91/battle/protocol/BattleTitleOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private title_:Lcom/papa91/battle/protocol/BattleTitle;

.field private vip_:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->nickname_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->state_:I

    .line 6
    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->battleTitle_:Ljava/lang/Object;

    .line 7
    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->battleTitleColor_:Ljava/lang/Object;

    .line 8
    iput v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->battleArea_:I

    .line 9
    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->gameName_:Ljava/lang/Object;

    .line 10
    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->avatar_:Ljava/lang/Object;

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerList_:Ljava/util/List;

    .line 12
    iput v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->roomCategory_:I

    .line 13
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1

    .line 14
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 15
    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->nickname_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->state_:I

    .line 17
    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->battleTitle_:Ljava/lang/Object;

    .line 18
    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->battleTitleColor_:Ljava/lang/Object;

    .line 19
    iput v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->battleArea_:I

    .line 20
    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->gameName_:Ljava/lang/Object;

    .line 21
    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->avatar_:Ljava/lang/Object;

    .line 22
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerList_:Ljava/util/List;

    .line 23
    iput v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->roomCategory_:I

    .line 24
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/papa91/battle/protocol/SimpleRoom$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/papa91/battle/protocol/SimpleRoom$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;-><init>()V

    return-void
.end method

.method private ensurePlayerListIsMutable()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerList_:Ljava/util/List;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerList_:Ljava/util/List;

    .line 15
    .line 16
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->bitField0_:I

    .line 17
    .line 18
    or-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    iput v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->bitField0_:I

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_SimpleRoom_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method private getPlayerListFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/papa91/battle/protocol/RoomPosition;",
            "Lcom/papa91/battle/protocol/RoomPosition$Builder;",
            "Lcom/papa91/battle/protocol/RoomPositionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerList_:Ljava/util/List;

    .line 8
    .line 9
    iget v2, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->bitField0_:I

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    and-int/2addr v2, v3

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v3, 0x0

    .line 17
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    invoke-direct {v0, v1, v3, v2, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerList_:Ljava/util/List;

    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 34
    .line 35
    return-object v0
.end method

.method private getTitleFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/papa91/battle/protocol/BattleTitle;",
            "Lcom/papa91/battle/protocol/BattleTitle$Builder;",
            "Lcom/papa91/battle/protocol/BattleTitleOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->titleBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->getTitle()Lcom/papa91/battle/protocol/BattleTitle;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->titleBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->titleBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/SimpleRoom;->access$200()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->getPlayerListFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllPlayerList(Ljava/lang/Iterable;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/papa91/battle/protocol/RoomPosition;",
            ">;)",
            "Lcom/papa91/battle/protocol/SimpleRoom$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->ensurePlayerListIsMutable()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerList_:Ljava/util/List;

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

.method public addPlayerList(ILcom/papa91/battle/protocol/RoomPosition$Builder;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->ensurePlayerListIsMutable()V

    .line 20
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerList_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->build()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->build()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addPlayerList(ILcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->ensurePlayerListIsMutable()V

    .line 10
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerList_:Ljava/util/List;

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

.method public addPlayerList(Lcom/papa91/battle/protocol/RoomPosition$Builder;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 14
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->ensurePlayerListIsMutable()V

    .line 15
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerList_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->build()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->build()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addPlayerList(Lcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->ensurePlayerListIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerList_:Ljava/util/List;

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

.method public addPlayerListBuilder()Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->getPlayerListFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/papa91/battle/protocol/RoomPosition;->getDefaultInstance()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/papa91/battle/protocol/RoomPosition$Builder;

    return-object v0
.end method

.method public addPlayerListBuilder(I)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 2

    .line 4
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->getPlayerListFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/papa91/battle/protocol/RoomPosition;->getDefaultInstance()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v1

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/RoomPosition$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->build()Lcom/papa91/battle/protocol/SimpleRoom;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->build()Lcom/papa91/battle/protocol/SimpleRoom;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/papa91/battle/protocol/SimpleRoom;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->buildPartial()Lcom/papa91/battle/protocol/SimpleRoom;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->buildPartial()Lcom/papa91/battle/protocol/SimpleRoom;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->buildPartial()Lcom/papa91/battle/protocol/SimpleRoom;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/papa91/battle/protocol/SimpleRoom;
    .locals 3

    .line 3
    new-instance v0, Lcom/papa91/battle/protocol/SimpleRoom;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/papa91/battle/protocol/SimpleRoom;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/papa91/battle/protocol/SimpleRoom$1;)V

    .line 4
    iget v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->roomId_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$402(Lcom/papa91/battle/protocol/SimpleRoom;I)I

    .line 5
    iget-wide v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->gameId_:J

    invoke-static {v0, v1, v2}, Lcom/papa91/battle/protocol/SimpleRoom;->access$502(Lcom/papa91/battle/protocol/SimpleRoom;J)J

    .line 6
    iget-object v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->nickname_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$602(Lcom/papa91/battle/protocol/SimpleRoom;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->vip_:Z

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$702(Lcom/papa91/battle/protocol/SimpleRoom;Z)Z

    .line 8
    iget-wide v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->createAt_:J

    invoke-static {v0, v1, v2}, Lcom/papa91/battle/protocol/SimpleRoom;->access$802(Lcom/papa91/battle/protocol/SimpleRoom;J)J

    .line 9
    iget v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->seatsNumber_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$902(Lcom/papa91/battle/protocol/SimpleRoom;I)I

    .line 10
    iget v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->sitDownloadNumber_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$1002(Lcom/papa91/battle/protocol/SimpleRoom;I)I

    .line 11
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->hasJoinPassword_:Z

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$1102(Lcom/papa91/battle/protocol/SimpleRoom;Z)Z

    .line 12
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->allowSpectatorJoin_:Z

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$1202(Lcom/papa91/battle/protocol/SimpleRoom;Z)Z

    .line 13
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->allowPeripheralJoin_:Z

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$1302(Lcom/papa91/battle/protocol/SimpleRoom;Z)Z

    .line 14
    iget v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->challengeCoins_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$1402(Lcom/papa91/battle/protocol/SimpleRoom;I)I

    .line 15
    iget v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->state_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$1502(Lcom/papa91/battle/protocol/SimpleRoom;I)I

    .line 16
    iget v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playSeconds_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$1602(Lcom/papa91/battle/protocol/SimpleRoom;I)I

    .line 17
    iget-object v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->titleBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_0

    .line 18
    iget-object v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$1702(Lcom/papa91/battle/protocol/SimpleRoom;Lcom/papa91/battle/protocol/BattleTitle;)Lcom/papa91/battle/protocol/BattleTitle;

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/papa91/battle/protocol/BattleTitle;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$1702(Lcom/papa91/battle/protocol/SimpleRoom;Lcom/papa91/battle/protocol/BattleTitle;)Lcom/papa91/battle/protocol/BattleTitle;

    .line 20
    :goto_0
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->elite_:Z

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$1802(Lcom/papa91/battle/protocol/SimpleRoom;Z)Z

    .line 21
    iget v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->copper_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$1902(Lcom/papa91/battle/protocol/SimpleRoom;I)I

    .line 22
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->hasPeripheralPlayer_:Z

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$2002(Lcom/papa91/battle/protocol/SimpleRoom;Z)Z

    .line 23
    iget-object v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->battleTitle_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$2102(Lcom/papa91/battle/protocol/SimpleRoom;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->battleTitleColor_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$2202(Lcom/papa91/battle/protocol/SimpleRoom;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-wide v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playTimestamp_:J

    invoke-static {v0, v1, v2}, Lcom/papa91/battle/protocol/SimpleRoom;->access$2302(Lcom/papa91/battle/protocol/SimpleRoom;J)J

    .line 26
    iget v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->battleArea_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$2402(Lcom/papa91/battle/protocol/SimpleRoom;I)I

    .line 27
    iget-object v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->gameName_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$2502(Lcom/papa91/battle/protocol/SimpleRoom;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->collectionId_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$2602(Lcom/papa91/battle/protocol/SimpleRoom;I)I

    .line 29
    iget v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->spectatorNumber_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$2702(Lcom/papa91/battle/protocol/SimpleRoom;I)I

    .line 30
    iget-object v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->avatar_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$2802(Lcom/papa91/battle/protocol/SimpleRoom;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->allowPCJoin_:Z

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$2902(Lcom/papa91/battle/protocol/SimpleRoom;Z)Z

    .line 32
    iget-object v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_2

    .line 33
    iget v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 34
    iget-object v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerList_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerList_:Ljava/util/List;

    .line 35
    iget v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->bitField0_:I

    .line 36
    :cond_1
    iget-object v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerList_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$3002(Lcom/papa91/battle/protocol/SimpleRoom;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 37
    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$3002(Lcom/papa91/battle/protocol/SimpleRoom;Ljava/util/List;)Ljava/util/List;

    .line 38
    :goto_1
    iget v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->leaderId_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$3102(Lcom/papa91/battle/protocol/SimpleRoom;I)I

    .line 39
    iget v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->roomCategory_:I

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$3202(Lcom/papa91/battle/protocol/SimpleRoom;I)I

    .line 40
    iget-boolean v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->openBattleScore_:Z

    invoke-static {v0, v1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$3302(Lcom/papa91/battle/protocol/SimpleRoom;Z)Z

    .line 41
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->clear()Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->clear()Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->clear()Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->clear()Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 6

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->roomId_:I

    const-wide/16 v1, 0x0

    .line 7
    iput-wide v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->gameId_:J

    const-string v3, ""

    .line 8
    iput-object v3, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->nickname_:Ljava/lang/Object;

    .line 9
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->vip_:Z

    .line 10
    iput-wide v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->createAt_:J

    .line 11
    iput v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->seatsNumber_:I

    .line 12
    iput v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->sitDownloadNumber_:I

    .line 13
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->hasJoinPassword_:Z

    .line 14
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->allowSpectatorJoin_:Z

    .line 15
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->allowPeripheralJoin_:Z

    .line 16
    iput v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->challengeCoins_:I

    .line 17
    iput v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->state_:I

    .line 18
    iput v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playSeconds_:I

    .line 19
    iget-object v4, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->titleBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 20
    iput-object v5, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    goto :goto_0

    .line 21
    :cond_0
    iput-object v5, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    .line 22
    iput-object v5, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->titleBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    :goto_0
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->elite_:Z

    .line 24
    iput v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->copper_:I

    .line 25
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->hasPeripheralPlayer_:Z

    .line 26
    iput-object v3, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->battleTitle_:Ljava/lang/Object;

    .line 27
    iput-object v3, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->battleTitleColor_:Ljava/lang/Object;

    .line 28
    iput-wide v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playTimestamp_:J

    .line 29
    iput v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->battleArea_:I

    .line 30
    iput-object v3, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->gameName_:Ljava/lang/Object;

    .line 31
    iput v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->collectionId_:I

    .line 32
    iput v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->spectatorNumber_:I

    .line 33
    iput-object v3, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->avatar_:Ljava/lang/Object;

    .line 34
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->allowPCJoin_:Z

    .line 35
    iget-object v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_1

    .line 36
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerList_:Ljava/util/List;

    .line 37
    iget v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->bitField0_:I

    goto :goto_1

    .line 38
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 39
    :goto_1
    iput v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->leaderId_:I

    .line 40
    iput v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->roomCategory_:I

    .line 41
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->openBattleScore_:Z

    return-object p0
.end method

.method public clearAllowPCJoin()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->allowPCJoin_:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearAllowPeripheralJoin()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->allowPeripheralJoin_:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearAllowSpectatorJoin()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->allowSpectatorJoin_:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearAvatar()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/SimpleRoom;->getDefaultInstance()Lcom/papa91/battle/protocol/SimpleRoom;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getAvatar()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->avatar_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearBattleArea()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->battleArea_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearBattleTitle()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/SimpleRoom;->getDefaultInstance()Lcom/papa91/battle/protocol/SimpleRoom;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getBattleTitle()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->battleTitle_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearBattleTitleColor()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/SimpleRoom;->getDefaultInstance()Lcom/papa91/battle/protocol/SimpleRoom;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getBattleTitleColor()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->battleTitleColor_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearChallengeCoins()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->challengeCoins_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearCollectionId()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->collectionId_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearCopper()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->copper_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearCreateAt()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->createAt_:J

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public clearElite()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->elite_:Z

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
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    return-object p1
.end method

.method public clearGameId()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->gameId_:J

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public clearGameName()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/SimpleRoom;->getDefaultInstance()Lcom/papa91/battle/protocol/SimpleRoom;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getGameName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->gameName_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearHasJoinPassword()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->hasJoinPassword_:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearHasPeripheralPlayer()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->hasPeripheralPlayer_:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearLeaderId()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->leaderId_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearNickname()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/battle/protocol/SimpleRoom;->getDefaultInstance()Lcom/papa91/battle/protocol/SimpleRoom;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getNickname()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->nickname_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    return-object p1
.end method

.method public clearOpenBattleScore()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->openBattleScore_:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearPlaySeconds()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playSeconds_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearPlayTimestamp()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playTimestamp_:J

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public clearPlayerList()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerList_:Ljava/util/List;

    .line 10
    .line 11
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->bitField0_:I

    .line 12
    .line 13
    and-int/lit8 v0, v0, -0x2

    .line 14
    .line 15
    iput v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->bitField0_:I

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

.method public clearRoomCategory()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->roomCategory_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearRoomId()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->roomId_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearSeatsNumber()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->seatsNumber_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearSitDownloadNumber()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->sitDownloadNumber_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearSpectatorNumber()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->spectatorNumber_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearState()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->state_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearTitle()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->titleBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->titleBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearVip()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->vip_:Z

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
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->clone()Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->clone()Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->clone()Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->clone()Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->clone()Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;

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
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->clone()Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAllowPCJoin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->allowPCJoin_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getAllowPeripheralJoin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->allowPeripheralJoin_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getAllowSpectatorJoin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->allowSpectatorJoin_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->avatar_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->avatar_:Ljava/lang/Object;

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

.method public getAvatarBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->avatar_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->avatar_:Ljava/lang/Object;

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
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->battleArea_:I

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
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->battleArea_:I

    .line 2
    .line 3
    return v0
.end method

.method public getBattleTitle()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->battleTitle_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->battleTitle_:Ljava/lang/Object;

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

.method public getBattleTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->battleTitle_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->battleTitle_:Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->battleTitleColor_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->battleTitleColor_:Ljava/lang/Object;

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

.method public getBattleTitleColorBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->battleTitleColor_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->battleTitleColor_:Ljava/lang/Object;

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
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->challengeCoins_:I

    .line 2
    .line 3
    return v0
.end method

.method public getCollectionId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->collectionId_:I

    .line 2
    .line 3
    return v0
.end method

.method public getCopper()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->copper_:I

    .line 2
    .line 3
    return v0
.end method

.method public getCreateAt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->createAt_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->getDefaultInstanceForType()Lcom/papa91/battle/protocol/SimpleRoom;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->getDefaultInstanceForType()Lcom/papa91/battle/protocol/SimpleRoom;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/papa91/battle/protocol/SimpleRoom;
    .locals 1

    .line 3
    invoke-static {}, Lcom/papa91/battle/protocol/SimpleRoom;->getDefaultInstance()Lcom/papa91/battle/protocol/SimpleRoom;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/battle/protocol/BattleProto;->internal_static_papa_battle_SimpleRoom_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getElite()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->elite_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getGameId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->gameId_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getGameName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->gameName_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->gameName_:Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->gameName_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->gameName_:Ljava/lang/Object;

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
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->hasJoinPassword_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getHasPeripheralPlayer()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->hasPeripheralPlayer_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getLeaderId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->leaderId_:I

    .line 2
    .line 3
    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->nickname_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->nickname_:Ljava/lang/Object;

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

.method public getNicknameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->nickname_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->nickname_:Ljava/lang/Object;

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
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->openBattleScore_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getPlaySeconds()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playSeconds_:I

    .line 2
    .line 3
    return v0
.end method

.method public getPlayTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playTimestamp_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getPlayerList(I)Lcom/papa91/battle/protocol/RoomPosition;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerList_:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/papa91/battle/protocol/RoomPosition;

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
    check-cast p1, Lcom/papa91/battle/protocol/RoomPosition;

    .line 19
    .line 20
    return-object p1
.end method

.method public getPlayerListBuilder(I)Lcom/papa91/battle/protocol/RoomPosition$Builder;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->getPlayerListFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

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
    check-cast p1, Lcom/papa91/battle/protocol/RoomPosition$Builder;

    .line 10
    .line 11
    return-object p1
.end method

.method public getPlayerListBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/papa91/battle/protocol/RoomPosition$Builder;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->getPlayerListFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

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

.method public getPlayerListCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerList_:Ljava/util/List;

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
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerList_:Ljava/util/List;

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

.method public getPlayerListOrBuilder(I)Lcom/papa91/battle/protocol/RoomPositionOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerList_:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/papa91/battle/protocol/RoomPositionOrBuilder;

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
    check-cast p1, Lcom/papa91/battle/protocol/RoomPositionOrBuilder;

    .line 19
    .line 20
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
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

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
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerList_:Ljava/util/List;

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

.method public getRoomCategory()Lcom/papa91/battle/protocol/RoomCategory;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->roomCategory_:I

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
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->roomCategory_:I

    .line 2
    .line 3
    return v0
.end method

.method public getRoomId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->roomId_:I

    .line 2
    .line 3
    return v0
.end method

.method public getSeatsNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->seatsNumber_:I

    .line 2
    .line 3
    return v0
.end method

.method public getSitDownloadNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->sitDownloadNumber_:I

    .line 2
    .line 3
    return v0
.end method

.method public getSpectatorNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->spectatorNumber_:I

    .line 2
    .line 3
    return v0
.end method

.method public getState()Lcom/papa91/battle/protocol/RoomState;
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->state_:I

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
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->state_:I

    .line 2
    .line 3
    return v0
.end method

.method public getTitle()Lcom/papa91/battle/protocol/BattleTitle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->titleBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/papa91/battle/protocol/BattleTitle;->getDefaultInstance()Lcom/papa91/battle/protocol/BattleTitle;

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
    check-cast v0, Lcom/papa91/battle/protocol/BattleTitle;

    .line 19
    .line 20
    return-object v0
.end method

.method public getTitleBuilder()Lcom/papa91/battle/protocol/BattleTitle$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->getTitleFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/papa91/battle/protocol/BattleTitle$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getTitleOrBuilder()Lcom/papa91/battle/protocol/BattleTitleOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->titleBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/papa91/battle/protocol/BattleTitleOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/papa91/battle/protocol/BattleTitle;->getDefaultInstance()Lcom/papa91/battle/protocol/BattleTitle;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getVip()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->vip_:Z

    .line 2
    .line 3
    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->titleBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->title_:Lcom/papa91/battle/protocol/BattleTitle;

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
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 93
    :try_start_0
    invoke-static {}, Lcom/papa91/battle/protocol/SimpleRoom;->access$3600()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/SimpleRoom;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->mergeFrom(Lcom/papa91/battle/protocol/SimpleRoom;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 95
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/papa91/battle/protocol/SimpleRoom;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
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

    .line 97
    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->mergeFrom(Lcom/papa91/battle/protocol/SimpleRoom;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    .line 98
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/papa91/battle/protocol/SimpleRoom;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/papa91/battle/protocol/SimpleRoom;

    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->mergeFrom(Lcom/papa91/battle/protocol/SimpleRoom;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/papa91/battle/protocol/SimpleRoom;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 5

    .line 10
    invoke-static {}, Lcom/papa91/battle/protocol/SimpleRoom;->getDefaultInstance()Lcom/papa91/battle/protocol/SimpleRoom;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getRoomId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getRoomId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->setRoomId(I)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getGameId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getGameId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->setGameId(J)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    .line 15
    :cond_2
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 16
    invoke-static {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$600(Lcom/papa91/battle/protocol/SimpleRoom;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->nickname_:Ljava/lang/Object;

    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 18
    :cond_3
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getVip()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 19
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getVip()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->setVip(Z)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    .line 20
    :cond_4
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getCreateAt()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    .line 21
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getCreateAt()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->setCreateAt(J)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    .line 22
    :cond_5
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getSeatsNumber()I

    move-result v0

    if-eqz v0, :cond_6

    .line 23
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getSeatsNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->setSeatsNumber(I)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    .line 24
    :cond_6
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getSitDownloadNumber()I

    move-result v0

    if-eqz v0, :cond_7

    .line 25
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getSitDownloadNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->setSitDownloadNumber(I)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    .line 26
    :cond_7
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getHasJoinPassword()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 27
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getHasJoinPassword()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->setHasJoinPassword(Z)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    .line 28
    :cond_8
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getAllowSpectatorJoin()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 29
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getAllowSpectatorJoin()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->setAllowSpectatorJoin(Z)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    .line 30
    :cond_9
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getAllowPeripheralJoin()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 31
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getAllowPeripheralJoin()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->setAllowPeripheralJoin(Z)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    .line 32
    :cond_a
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getChallengeCoins()I

    move-result v0

    if-eqz v0, :cond_b

    .line 33
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getChallengeCoins()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->setChallengeCoins(I)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    .line 34
    :cond_b
    invoke-static {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$1500(Lcom/papa91/battle/protocol/SimpleRoom;)I

    move-result v0

    if-eqz v0, :cond_c

    .line 35
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getStateValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->setStateValue(I)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    .line 36
    :cond_c
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlaySeconds()I

    move-result v0

    if-eqz v0, :cond_d

    .line 37
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlaySeconds()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->setPlaySeconds(I)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    .line 38
    :cond_d
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 39
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getTitle()Lcom/papa91/battle/protocol/BattleTitle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->mergeTitle(Lcom/papa91/battle/protocol/BattleTitle;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    .line 40
    :cond_e
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getElite()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 41
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getElite()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->setElite(Z)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    .line 42
    :cond_f
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getCopper()I

    move-result v0

    if-eqz v0, :cond_10

    .line 43
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getCopper()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->setCopper(I)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    .line 44
    :cond_10
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getHasPeripheralPlayer()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 45
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getHasPeripheralPlayer()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->setHasPeripheralPlayer(Z)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    .line 46
    :cond_11
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getBattleTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 47
    invoke-static {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$2100(Lcom/papa91/battle/protocol/SimpleRoom;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->battleTitle_:Ljava/lang/Object;

    .line 48
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 49
    :cond_12
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getBattleTitleColor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 50
    invoke-static {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$2200(Lcom/papa91/battle/protocol/SimpleRoom;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->battleTitleColor_:Ljava/lang/Object;

    .line 51
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 52
    :cond_13
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlayTimestamp()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_14

    .line 53
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlayTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->setPlayTimestamp(J)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    .line 54
    :cond_14
    invoke-static {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$2400(Lcom/papa91/battle/protocol/SimpleRoom;)I

    move-result v0

    if-eqz v0, :cond_15

    .line 55
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getBattleAreaValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->setBattleAreaValue(I)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    .line 56
    :cond_15
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getGameName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 57
    invoke-static {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$2500(Lcom/papa91/battle/protocol/SimpleRoom;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->gameName_:Ljava/lang/Object;

    .line 58
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 59
    :cond_16
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getCollectionId()I

    move-result v0

    if-eqz v0, :cond_17

    .line 60
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getCollectionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->setCollectionId(I)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    .line 61
    :cond_17
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getSpectatorNumber()I

    move-result v0

    if-eqz v0, :cond_18

    .line 62
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getSpectatorNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->setSpectatorNumber(I)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    .line 63
    :cond_18
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getAvatar()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 64
    invoke-static {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$2800(Lcom/papa91/battle/protocol/SimpleRoom;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->avatar_:Ljava/lang/Object;

    .line 65
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 66
    :cond_19
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getAllowPCJoin()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 67
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getAllowPCJoin()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->setAllowPCJoin(Z)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    .line 68
    :cond_1a
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1c

    .line 69
    invoke-static {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$3000(Lcom/papa91/battle/protocol/SimpleRoom;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 70
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 71
    invoke-static {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$3000(Lcom/papa91/battle/protocol/SimpleRoom;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerList_:Ljava/util/List;

    .line 72
    iget v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->bitField0_:I

    goto :goto_0

    .line 73
    :cond_1b
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->ensurePlayerListIsMutable()V

    .line 74
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerList_:Ljava/util/List;

    invoke-static {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$3000(Lcom/papa91/battle/protocol/SimpleRoom;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 75
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_1

    .line 76
    :cond_1c
    invoke-static {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$3000(Lcom/papa91/battle/protocol/SimpleRoom;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 77
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 78
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 80
    invoke-static {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$3000(Lcom/papa91/battle/protocol/SimpleRoom;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerList_:Ljava/util/List;

    .line 81
    iget v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->bitField0_:I

    .line 82
    invoke-static {}, Lcom/papa91/battle/protocol/SimpleRoom;->access$3400()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 83
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->getPlayerListFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_1d
    iput-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    .line 84
    :cond_1e
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$3000(Lcom/papa91/battle/protocol/SimpleRoom;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 85
    :cond_1f
    :goto_1
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getLeaderId()I

    move-result v0

    if-eqz v0, :cond_20

    .line 86
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getLeaderId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->setLeaderId(I)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    .line 87
    :cond_20
    invoke-static {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$3200(Lcom/papa91/battle/protocol/SimpleRoom;)I

    move-result v0

    if-eqz v0, :cond_21

    .line 88
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getRoomCategoryValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->setRoomCategoryValue(I)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    .line 89
    :cond_21
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getOpenBattleScore()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 90
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getOpenBattleScore()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->setOpenBattleScore(Z)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    .line 91
    :cond_22
    invoke-static {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$3500(Lcom/papa91/battle/protocol/SimpleRoom;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    .line 92
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeTitle(Lcom/papa91/battle/protocol/BattleTitle;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->titleBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/papa91/battle/protocol/BattleTitle;->newBuilder(Lcom/papa91/battle/protocol/BattleTitle;)Lcom/papa91/battle/protocol/BattleTitle$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/papa91/battle/protocol/BattleTitle$Builder;->mergeFrom(Lcom/papa91/battle/protocol/BattleTitle;)Lcom/papa91/battle/protocol/BattleTitle$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/BattleTitle$Builder;->buildPartial()Lcom/papa91/battle/protocol/BattleTitle;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->title_:Lcom/papa91/battle/protocol/BattleTitle;

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
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    return-object p1
.end method

.method public removePlayerList(I)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->ensurePlayerListIsMutable()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerList_:Ljava/util/List;

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

.method public setAllowPCJoin(Z)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->allowPCJoin_:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setAllowPeripheralJoin(Z)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->allowPeripheralJoin_:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setAllowSpectatorJoin(Z)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->allowSpectatorJoin_:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setAvatar(Ljava/lang/String;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->avatar_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setAvatarBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$4100(Lcom/google/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->avatar_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setBattleArea(Lcom/papa91/battle/protocol/BattleArea;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
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
    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->battleArea_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public setBattleAreaValue(I)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->battleArea_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setBattleTitle(Ljava/lang/String;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->battleTitle_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setBattleTitleBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$3800(Lcom/google/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->battleTitle_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setBattleTitleColor(Ljava/lang/String;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->battleTitleColor_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setBattleTitleColorBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$3900(Lcom/google/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->battleTitleColor_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setChallengeCoins(I)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->challengeCoins_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setCollectionId(I)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->collectionId_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setCopper(I)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->copper_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setCreateAt(J)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->createAt_:J

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setElite(Z)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->elite_:Z

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
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    return-object p1
.end method

.method public setGameId(J)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->gameId_:J

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setGameName(Ljava/lang/String;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->gameName_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setGameNameBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$4000(Lcom/google/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->gameName_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setHasJoinPassword(Z)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->hasJoinPassword_:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setHasPeripheralPlayer(Z)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->hasPeripheralPlayer_:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setLeaderId(I)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->leaderId_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setNickname(Ljava/lang/String;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->nickname_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setNicknameBytes(Lcom/google/protobuf/ByteString;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->access$3700(Lcom/google/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->nickname_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setOpenBattleScore(Z)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->openBattleScore_:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setPlaySeconds(I)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playSeconds_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setPlayTimestamp(J)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playTimestamp_:J

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setPlayerList(ILcom/papa91/battle/protocol/RoomPosition$Builder;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->ensurePlayerListIsMutable()V

    .line 9
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerList_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->build()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/papa91/battle/protocol/RoomPosition$Builder;->build()Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setPlayerList(ILcom/papa91/battle/protocol/RoomPosition;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerListBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->ensurePlayerListIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->playerList_:Ljava/util/List;

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

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    return-object p1
.end method

.method public setRoomCategory(Lcom/papa91/battle/protocol/RoomCategory;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
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
    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->roomCategory_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public setRoomCategoryValue(I)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->roomCategory_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setRoomId(I)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->roomId_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setSeatsNumber(I)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->seatsNumber_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setSitDownloadNumber(I)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->sitDownloadNumber_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setSpectatorNumber(I)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->spectatorNumber_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setState(Lcom/papa91/battle/protocol/RoomState;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
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
    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->state_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public setStateValue(I)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->state_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setTitle(Lcom/papa91/battle/protocol/BattleTitle$Builder;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->titleBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/BattleTitle$Builder;->build()Lcom/papa91/battle/protocol/BattleTitle;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/BattleTitle$Builder;->build()Lcom/papa91/battle/protocol/BattleTitle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setTitle(Lcom/papa91/battle/protocol/BattleTitle;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->titleBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->title_:Lcom/papa91/battle/protocol/BattleTitle;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/papa91/battle/protocol/SimpleRoom$Builder;

    return-object p1
.end method

.method public setVip(Z)Lcom/papa91/battle/protocol/SimpleRoom$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/battle/protocol/SimpleRoom$Builder;->vip_:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
