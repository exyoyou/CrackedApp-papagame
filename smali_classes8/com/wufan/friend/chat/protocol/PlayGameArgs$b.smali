.class public final Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/wufan/friend/chat/protocol/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wufan/friend/chat/protocol/PlayGameArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;",
        ">;",
        "Lcom/wufan/friend/chat/protocol/d0;"
    }
.end annotation


# instance fields
.field private accountId_:I

.field private bitField0_:I

.field private gameId_:J

.field private lobbyRoomId_:J

.field private localBattleGameIds_:Lcom/google/protobuf/Internal$LongList;

.field private state_:I

.field private type_:I

.field private versus_:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->state_:I

    .line 5
    iput v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->type_:I

    .line 6
    invoke-static {}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->access$1500()Lcom/google/protobuf/Internal$LongList;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->localBattleGameIds_:Lcom/google/protobuf/Internal$LongList;

    .line 7
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->state_:I

    .line 10
    iput p1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->type_:I

    .line 11
    invoke-static {}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->access$1500()Lcom/google/protobuf/Internal$LongList;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->localBattleGameIds_:Lcom/google/protobuf/Internal$LongList;

    .line 12
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/wufan/friend/chat/protocol/PlayGameArgs$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wufan/friend/chat/protocol/PlayGameArgs$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;-><init>()V

    return-void
.end method

.method private ensureLocalBattleGameIdsIsMutable()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x40

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->localBattleGameIds_:Lcom/google/protobuf/Internal$LongList;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->access$1600(Lcom/google/protobuf/Internal$LongList;)Lcom/google/protobuf/Internal$LongList;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->localBattleGameIds_:Lcom/google/protobuf/Internal$LongList;

    .line 14
    .line 15
    iget v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->bitField0_:I

    .line 16
    .line 17
    or-int/lit8 v0, v0, 0x40

    .line 18
    .line 19
    iput v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->bitField0_:I

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/a0;->w:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->access$200()Z

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public addAllLocalBattleGameIds(Ljava/lang/Iterable;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->ensureLocalBattleGameIdsIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->localBattleGameIds_:Lcom/google/protobuf/Internal$LongList;

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

.method public addLocalBattleGameIds(J)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->ensureLocalBattleGameIdsIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->localBattleGameIds_:Lcom/google/protobuf/Internal$LongList;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$LongList;->addLong(J)V

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "field",
            "value"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "field",
            "value"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "field",
            "value"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->build()Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->build()Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/wufan/friend/chat/protocol/PlayGameArgs;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->buildPartial()Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->buildPartial()Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->buildPartial()Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/wufan/friend/chat/protocol/PlayGameArgs;
    .locals 3

    .line 3
    new-instance v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/wufan/friend/chat/protocol/PlayGameArgs$a;)V

    .line 4
    iget v1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->state_:I

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->access$502(Lcom/wufan/friend/chat/protocol/PlayGameArgs;I)I

    .line 5
    iget-wide v1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->gameId_:J

    invoke-static {v0, v1, v2}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->access$602(Lcom/wufan/friend/chat/protocol/PlayGameArgs;J)J

    .line 6
    iget v1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->type_:I

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->access$702(Lcom/wufan/friend/chat/protocol/PlayGameArgs;I)I

    .line 7
    iget-wide v1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->lobbyRoomId_:J

    invoke-static {v0, v1, v2}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->access$802(Lcom/wufan/friend/chat/protocol/PlayGameArgs;J)J

    .line 8
    iget v1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->accountId_:I

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->access$902(Lcom/wufan/friend/chat/protocol/PlayGameArgs;I)I

    .line 9
    iget-boolean v1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->versus_:Z

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->access$1002(Lcom/wufan/friend/chat/protocol/PlayGameArgs;Z)Z

    .line 10
    iget v1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    .line 11
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->localBattleGameIds_:Lcom/google/protobuf/Internal$LongList;

    invoke-interface {v1}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 12
    iget v1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->bitField0_:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->bitField0_:I

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->localBattleGameIds_:Lcom/google/protobuf/Internal$LongList;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->access$1102(Lcom/wufan/friend/chat/protocol/PlayGameArgs;Lcom/google/protobuf/Internal$LongList;)Lcom/google/protobuf/Internal$LongList;

    const/4 v1, 0x0

    .line 14
    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->access$1202(Lcom/wufan/friend/chat/protocol/PlayGameArgs;I)I

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->clear()Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->clear()Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->clear()Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->clear()Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 3

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->state_:I

    const-wide/16 v1, 0x0

    .line 7
    iput-wide v1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->gameId_:J

    .line 8
    iput v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->type_:I

    .line 9
    iput-wide v1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->lobbyRoomId_:J

    .line 10
    iput v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->accountId_:I

    .line 11
    iput-boolean v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->versus_:Z

    .line 12
    invoke-static {}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->access$300()Lcom/google/protobuf/Internal$LongList;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->localBattleGameIds_:Lcom/google/protobuf/Internal$LongList;

    .line 13
    iget v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->bitField0_:I

    return-object p0
.end method

.method public clearAccountId()Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->accountId_:I

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "field"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "field"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    return-object p1
.end method

.method public clearGameId()Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->gameId_:J

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public clearLobbyRoomId()Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->lobbyRoomId_:J

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public clearLocalBattleGameIds()Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->access$1700()Lcom/google/protobuf/Internal$LongList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->localBattleGameIds_:Lcom/google/protobuf/Internal$LongList;

    .line 6
    .line 7
    iget v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->bitField0_:I

    .line 8
    .line 9
    and-int/lit8 v0, v0, -0x41

    .line 10
    .line 11
    iput v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->bitField0_:I

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 14
    .line 15
    .line 16
    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "oneof"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "oneof"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "oneof"
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oneof"
        }
    .end annotation

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    return-object p1
.end method

.method public clearState()Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->state_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearType()Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->type_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearVersus()Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->versus_:Z

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
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->clone()Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->clone()Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->clone()Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->clone()Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->clone()Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

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
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->clone()Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object v0

    return-object v0
.end method

.method public getAccountId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->accountId_:I

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->getDefaultInstanceForType()Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->getDefaultInstanceForType()Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/wufan/friend/chat/protocol/PlayGameArgs;
    .locals 1

    .line 3
    invoke-static {}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/a0;->w:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGameId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->gameId_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLobbyRoomId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->lobbyRoomId_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLocalBattleGameIds(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->localBattleGameIds_:Lcom/google/protobuf/Internal$LongList;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$LongList;->getLong(I)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getLocalBattleGameIdsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->localBattleGameIds_:Lcom/google/protobuf/Internal$LongList;

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

.method public getLocalBattleGameIdsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x40

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->localBattleGameIds_:Lcom/google/protobuf/Internal$LongList;

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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->localBattleGameIds_:Lcom/google/protobuf/Internal$LongList;

    .line 15
    .line 16
    :goto_0
    return-object v0
.end method

.method public getState()Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->state_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;->valueOf(I)Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;->UNRECOGNIZED:Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getStateValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->state_:I

    .line 2
    .line 3
    return v0
.end method

.method public getType()Lcom/wufan/friend/chat/protocol/PlayType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->type_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/PlayType;->valueOf(I)Lcom/wufan/friend/chat/protocol/PlayType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/wufan/friend/chat/protocol/PlayType;->UNRECOGNIZED:Lcom/wufan/friend/chat/protocol/PlayType;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getTypeValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->type_:I

    .line 2
    .line 3
    return v0
.end method

.method public getVersus()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->versus_:Z

    .line 2
    .line 3
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/a0;->x:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    const-class v1, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    .line 4
    .line 5
    const-class v2, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "other"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "other"
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 32
    :try_start_0
    invoke-static {}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->access$1400()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/PlayGameArgs;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/PlayGameArgs;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 34
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/wufan/friend/chat/protocol/PlayGameArgs;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
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

    .line 36
    invoke-virtual {p0, v0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/PlayGameArgs;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    .line 37
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 7
    instance-of v0, p1, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/PlayGameArgs;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/wufan/friend/chat/protocol/PlayGameArgs;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 10
    invoke-static {}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-static {p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->access$500(Lcom/wufan/friend/chat/protocol/PlayGameArgs;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->getStateValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->setStateValue(I)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->getGameId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->getGameId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->setGameId(J)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    .line 15
    :cond_2
    invoke-static {p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->access$700(Lcom/wufan/friend/chat/protocol/PlayGameArgs;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->getTypeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->setTypeValue(I)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    .line 17
    :cond_3
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->getLobbyRoomId()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    .line 18
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->getLobbyRoomId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->setLobbyRoomId(J)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    .line 19
    :cond_4
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->getAccountId()I

    move-result v0

    if-eqz v0, :cond_5

    .line 20
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->getAccountId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->setAccountId(I)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    .line 21
    :cond_5
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->getVersus()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 22
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->getVersus()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->setVersus(Z)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    .line 23
    :cond_6
    invoke-static {p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->access$1100(Lcom/wufan/friend/chat/protocol/PlayGameArgs;)Lcom/google/protobuf/Internal$LongList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 24
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->localBattleGameIds_:Lcom/google/protobuf/Internal$LongList;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 25
    invoke-static {p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->access$1100(Lcom/wufan/friend/chat/protocol/PlayGameArgs;)Lcom/google/protobuf/Internal$LongList;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->localBattleGameIds_:Lcom/google/protobuf/Internal$LongList;

    .line 26
    iget v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->bitField0_:I

    goto :goto_0

    .line 27
    :cond_7
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->ensureLocalBattleGameIdsIsMutable()V

    .line 28
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->localBattleGameIds_:Lcom/google/protobuf/Internal$LongList;

    invoke-static {p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->access$1100(Lcom/wufan/friend/chat/protocol/PlayGameArgs;)Lcom/google/protobuf/Internal$LongList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 29
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 30
    :cond_8
    invoke-static {p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->access$1300(Lcom/wufan/friend/chat/protocol/PlayGameArgs;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    .line 31
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    return-object p1
.end method

.method public setAccountId(I)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->accountId_:I

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "field",
            "value"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "field",
            "value"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "field",
            "value"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    return-object p1
.end method

.method public setGameId(J)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->gameId_:J

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setLobbyRoomId(J)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->lobbyRoomId_:J

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setLocalBattleGameIds(IJ)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->ensureLocalBattleGameIdsIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->localBattleGameIds_:Lcom/google/protobuf/Internal$LongList;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3}, Lcom/google/protobuf/Internal$LongList;->setLong(IJ)J

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "field",
            "index",
            "value"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "field",
            "index",
            "value"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "field",
            "index",
            "value"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    return-object p1
.end method

.method public setState(Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;->getNumber()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->state_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public setStateValue(I)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->state_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setType(Lcom/wufan/friend/chat/protocol/PlayType;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/PlayType;->getNumber()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->type_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public setTypeValue(I)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->type_:I

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    return-object p1
.end method

.method public setVersus(Z)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->versus_:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
