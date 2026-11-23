.class public final Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/wufan/user/service/protobuf/MessageProto$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wufan/user/service/protobuf/MessageProto$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/wufan/user/service/protobuf/MessageProto$Response$b;",
        ">;",
        "Lcom/wufan/user/service/protobuf/MessageProto$i;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

.field private errorCode_:I

.field private error_:Ljava/lang/Object;

.field private logicErrorCode_:I

.field private messageInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/wufan/user/service/protobuf/MessageProto$MessageInfo;",
            "Lcom/wufan/user/service/protobuf/MessageProto$MessageInfo$b;",
            "Lcom/wufan/user/service/protobuf/MessageProto$c;",
            ">;"
        }
    .end annotation
.end field

.field private messageInfo_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wufan/user/service/protobuf/MessageProto$MessageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private onlinePeopleCount_:I

.field private pongBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/user/service/protobuf/MessageProto$Pong;",
            "Lcom/wufan/user/service/protobuf/MessageProto$Pong$b;",
            "Lcom/wufan/user/service/protobuf/MessageProto$f;",
            ">;"
        }
    .end annotation
.end field

.field private pong_:Lcom/wufan/user/service/protobuf/MessageProto$Pong;

.field private queueInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;",
            "Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo$b;",
            "Lcom/wufan/user/service/protobuf/MessageProto$h;",
            ">;"
        }
    .end annotation
.end field

.field private queueInfo_:Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;

.field private requestId_:J

.field private statusCode_:I

.field private type_:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->statusCode_:I

    .line 5
    iput v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->type_:I

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfo_:Ljava/util/List;

    .line 7
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->access$11500()Lcom/google/protobuf/Internal$IntList;

    move-result-object v1

    iput-object v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    const-string v1, ""

    .line 8
    iput-object v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->error_:Ljava/lang/Object;

    .line 9
    iput v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->logicErrorCode_:I

    .line 10
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->statusCode_:I

    .line 13
    iput p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->type_:I

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfo_:Ljava/util/List;

    .line 15
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->access$11500()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    const-string v0, ""

    .line 16
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->error_:Ljava/lang/Object;

    .line 17
    iput p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->logicErrorCode_:I

    .line 18
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/wufan/user/service/protobuf/MessageProto$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wufan/user/service/protobuf/MessageProto$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;-><init>()V

    return-void
.end method

.method private ensureBroadcastUsersIsMutable()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->access$11600(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    .line 14
    .line 15
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->bitField0_:I

    .line 16
    .line 17
    or-int/lit8 v0, v0, 0x10

    .line 18
    .line 19
    iput v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->bitField0_:I

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method private ensureMessageInfoIsMutable()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfo_:Ljava/util/List;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfo_:Ljava/util/List;

    .line 15
    .line 16
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->bitField0_:I

    .line 17
    .line 18
    or-int/lit8 v0, v0, 0x8

    .line 19
    .line 20
    iput v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->bitField0_:I

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto;->p()Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private getMessageInfoFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/wufan/user/service/protobuf/MessageProto$MessageInfo;",
            "Lcom/wufan/user/service/protobuf/MessageProto$MessageInfo$b;",
            "Lcom/wufan/user/service/protobuf/MessageProto$c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfo_:Ljava/util/List;

    .line 8
    .line 9
    iget v2, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->bitField0_:I

    .line 10
    .line 11
    and-int/lit8 v2, v2, 0x8

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfo_:Ljava/util/List;

    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 35
    .line 36
    return-object v0
.end method

.method private getPongFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/user/service/protobuf/MessageProto$Pong;",
            "Lcom/wufan/user/service/protobuf/MessageProto$Pong$b;",
            "Lcom/wufan/user/service/protobuf/MessageProto$f;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->pongBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->getPong()Lcom/wufan/user/service/protobuf/MessageProto$Pong;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->pongBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->pong_:Lcom/wufan/user/service/protobuf/MessageProto$Pong;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->pongBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getQueueInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;",
            "Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo$b;",
            "Lcom/wufan/user/service/protobuf/MessageProto$h;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->queueInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->getQueueInfo()Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->queueInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->queueInfo_:Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->queueInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->access$9700()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->getMessageInfoFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllBroadcastUsers(Ljava/lang/Iterable;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
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
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/wufan/user/service/protobuf/MessageProto$Response$b;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->ensureBroadcastUsersIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

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

.method public addAllMessageInfo(Ljava/lang/Iterable;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
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
            "Lcom/wufan/user/service/protobuf/MessageProto$MessageInfo;",
            ">;)",
            "Lcom/wufan/user/service/protobuf/MessageProto$Response$b;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->ensureMessageInfoIsMutable()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfo_:Ljava/util/List;

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

.method public addBroadcastUsers(I)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
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
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->ensureBroadcastUsersIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

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

.method public addMessageInfo(ILcom/wufan/user/service/protobuf/MessageProto$MessageInfo$b;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->ensureMessageInfoIsMutable()V

    .line 20
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfo_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageInfo$b;->build()Lcom/wufan/user/service/protobuf/MessageProto$MessageInfo;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageInfo$b;->build()Lcom/wufan/user/service/protobuf/MessageProto$MessageInfo;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addMessageInfo(ILcom/wufan/user/service/protobuf/MessageProto$MessageInfo;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
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

    .line 7
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->ensureMessageInfoIsMutable()V

    .line 10
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfo_:Ljava/util/List;

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

.method public addMessageInfo(Lcom/wufan/user/service/protobuf/MessageProto$MessageInfo$b;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 14
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->ensureMessageInfoIsMutable()V

    .line 15
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfo_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$MessageInfo$b;->build()Lcom/wufan/user/service/protobuf/MessageProto$MessageInfo;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$MessageInfo$b;->build()Lcom/wufan/user/service/protobuf/MessageProto$MessageInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addMessageInfo(Lcom/wufan/user/service/protobuf/MessageProto$MessageInfo;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
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
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->ensureMessageInfoIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfo_:Ljava/util/List;

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

.method public addMessageInfoBuilder()Lcom/wufan/user/service/protobuf/MessageProto$MessageInfo$b;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->getMessageInfoFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$MessageInfo;->getDefaultInstance()Lcom/wufan/user/service/protobuf/MessageProto$MessageInfo;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/user/service/protobuf/MessageProto$MessageInfo$b;

    return-object v0
.end method

.method public addMessageInfoBuilder(I)Lcom/wufan/user/service/protobuf/MessageProto$MessageInfo$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->getMessageInfoFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$MessageInfo;->getDefaultInstance()Lcom/wufan/user/service/protobuf/MessageProto$MessageInfo;

    move-result-object v1

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/wufan/user/service/protobuf/MessageProto$MessageInfo$b;

    return-object p1
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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
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

    check-cast p1, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->build()Lcom/wufan/user/service/protobuf/MessageProto$Response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->build()Lcom/wufan/user/service/protobuf/MessageProto$Response;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/wufan/user/service/protobuf/MessageProto$Response;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->buildPartial()Lcom/wufan/user/service/protobuf/MessageProto$Response;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->buildPartial()Lcom/wufan/user/service/protobuf/MessageProto$Response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->buildPartial()Lcom/wufan/user/service/protobuf/MessageProto$Response;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/wufan/user/service/protobuf/MessageProto$Response;
    .locals 3

    .line 3
    new-instance v0, Lcom/wufan/user/service/protobuf/MessageProto$Response;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/wufan/user/service/protobuf/MessageProto$a;)V

    .line 4
    iget v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->statusCode_:I

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->access$10002(Lcom/wufan/user/service/protobuf/MessageProto$Response;I)I

    .line 5
    iget-wide v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->requestId_:J

    invoke-static {v0, v1, v2}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->access$10102(Lcom/wufan/user/service/protobuf/MessageProto$Response;J)J

    .line 6
    iget v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->type_:I

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->access$10202(Lcom/wufan/user/service/protobuf/MessageProto$Response;I)I

    .line 7
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_1

    .line 8
    iget v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    .line 9
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfo_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfo_:Ljava/util/List;

    .line 10
    iget v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->bitField0_:I

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfo_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->access$10302(Lcom/wufan/user/service/protobuf/MessageProto$Response;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->access$10302(Lcom/wufan/user/service/protobuf/MessageProto$Response;Ljava/util/List;)Ljava/util/List;

    .line 13
    :goto_0
    iget v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_2

    .line 14
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v1}, Lcom/google/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 15
    iget v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->bitField0_:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->bitField0_:I

    .line 16
    :cond_2
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->access$10402(Lcom/wufan/user/service/protobuf/MessageProto$Response;Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    .line 17
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->error_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->access$10502(Lcom/wufan/user/service/protobuf/MessageProto$Response;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->pongBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_3

    .line 19
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->pong_:Lcom/wufan/user/service/protobuf/MessageProto$Pong;

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->access$10602(Lcom/wufan/user/service/protobuf/MessageProto$Response;Lcom/wufan/user/service/protobuf/MessageProto$Pong;)Lcom/wufan/user/service/protobuf/MessageProto$Pong;

    goto :goto_1

    .line 20
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/wufan/user/service/protobuf/MessageProto$Pong;

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->access$10602(Lcom/wufan/user/service/protobuf/MessageProto$Response;Lcom/wufan/user/service/protobuf/MessageProto$Pong;)Lcom/wufan/user/service/protobuf/MessageProto$Pong;

    .line 21
    :goto_1
    iget v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->logicErrorCode_:I

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->access$10702(Lcom/wufan/user/service/protobuf/MessageProto$Response;I)I

    .line 22
    iget v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->onlinePeopleCount_:I

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->access$10802(Lcom/wufan/user/service/protobuf/MessageProto$Response;I)I

    .line 23
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->queueInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_4

    .line 24
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->queueInfo_:Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->access$10902(Lcom/wufan/user/service/protobuf/MessageProto$Response;Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;)Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;

    goto :goto_2

    .line 25
    :cond_4
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->access$10902(Lcom/wufan/user/service/protobuf/MessageProto$Response;Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;)Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;

    .line 26
    :goto_2
    iget v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->errorCode_:I

    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->access$11002(Lcom/wufan/user/service/protobuf/MessageProto$Response;I)I

    const/4 v1, 0x0

    .line 27
    invoke-static {v0, v1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->access$11102(Lcom/wufan/user/service/protobuf/MessageProto$Response;I)I

    .line 28
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->clear()Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->clear()Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->clear()Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->clear()Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
    .locals 3

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->statusCode_:I

    const-wide/16 v1, 0x0

    .line 7
    iput-wide v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->requestId_:J

    .line 8
    iput v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->type_:I

    .line 9
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_0

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfo_:Ljava/util/List;

    .line 11
    iget v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->bitField0_:I

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 13
    :goto_0
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->access$9800()Lcom/google/protobuf/Internal$IntList;

    move-result-object v1

    iput-object v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    .line 14
    iget v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->bitField0_:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->bitField0_:I

    const-string v1, ""

    .line 15
    iput-object v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->error_:Ljava/lang/Object;

    .line 16
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->pongBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 17
    iput-object v2, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->pong_:Lcom/wufan/user/service/protobuf/MessageProto$Pong;

    goto :goto_1

    .line 18
    :cond_1
    iput-object v2, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->pong_:Lcom/wufan/user/service/protobuf/MessageProto$Pong;

    .line 19
    iput-object v2, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->pongBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 20
    :goto_1
    iput v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->logicErrorCode_:I

    .line 21
    iput v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->onlinePeopleCount_:I

    .line 22
    iget-object v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->queueInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_2

    .line 23
    iput-object v2, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->queueInfo_:Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;

    goto :goto_2

    .line 24
    :cond_2
    iput-object v2, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->queueInfo_:Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;

    .line 25
    iput-object v2, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->queueInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 26
    :goto_2
    iput v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->errorCode_:I

    return-object p0
.end method

.method public clearBroadcastUsers()Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->access$11700()Lcom/google/protobuf/Internal$IntList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    .line 6
    .line 7
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->bitField0_:I

    .line 8
    .line 9
    and-int/lit8 v0, v0, -0x11

    .line 10
    .line 11
    iput v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->bitField0_:I

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 14
    .line 15
    .line 16
    return-object p0
.end method

.method public clearError()Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getDefaultInstance()Lcom/wufan/user/service/protobuf/MessageProto$Response;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getError()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->error_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public clearErrorCode()Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->errorCode_:I

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
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

    check-cast p1, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

    return-object p1
.end method

.method public clearLogicErrorCode()Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->logicErrorCode_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearMessageInfo()Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfo_:Ljava/util/List;

    .line 10
    .line 11
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->bitField0_:I

    .line 12
    .line 13
    and-int/lit8 v0, v0, -0x9

    .line 14
    .line 15
    iput v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->bitField0_:I

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
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

    check-cast p1, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

    return-object p1
.end method

.method public clearOnlinePeopleCount()Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->onlinePeopleCount_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearPong()Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->pongBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->pong_:Lcom/wufan/user/service/protobuf/MessageProto$Pong;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->pong_:Lcom/wufan/user/service/protobuf/MessageProto$Pong;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->pongBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearQueueInfo()Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->queueInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->queueInfo_:Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->queueInfo_:Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->queueInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearRequestId()Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->requestId_:J

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public clearStatusCode()Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->statusCode_:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearType()Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->type_:I

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
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->clone()Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->clone()Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->clone()Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->clone()Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->clone()Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

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
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->clone()Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

    move-result-object v0

    return-object v0
.end method

.method public getBroadcastUsers(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

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
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

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
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

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
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    .line 15
    .line 16
    :goto_0
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->getDefaultInstanceForType()Lcom/wufan/user/service/protobuf/MessageProto$Response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->getDefaultInstanceForType()Lcom/wufan/user/service/protobuf/MessageProto$Response;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/wufan/user/service/protobuf/MessageProto$Response;
    .locals 1

    .line 3
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getDefaultInstance()Lcom/wufan/user/service/protobuf/MessageProto$Response;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto;->p()Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->error_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->error_:Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->error_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->error_:Ljava/lang/Object;

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

.method public getErrorCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->errorCode_:I

    .line 2
    .line 3
    return v0
.end method

.method public getLogicErrorCode()Lcom/wufan/user/service/protobuf/MessageProto$Response$LogicErrorCode;
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->logicErrorCode_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$LogicErrorCode;->valueOf(I)Lcom/wufan/user/service/protobuf/MessageProto$Response$LogicErrorCode;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$Response$LogicErrorCode;->UNRECOGNIZED:Lcom/wufan/user/service/protobuf/MessageProto$Response$LogicErrorCode;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getLogicErrorCodeValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->logicErrorCode_:I

    .line 2
    .line 3
    return v0
.end method

.method public getMessageInfo(I)Lcom/wufan/user/service/protobuf/MessageProto$MessageInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfo_:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/wufan/user/service/protobuf/MessageProto$MessageInfo;

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
    check-cast p1, Lcom/wufan/user/service/protobuf/MessageProto$MessageInfo;

    .line 19
    .line 20
    return-object p1
.end method

.method public getMessageInfoBuilder(I)Lcom/wufan/user/service/protobuf/MessageProto$MessageInfo$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->getMessageInfoFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

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
    check-cast p1, Lcom/wufan/user/service/protobuf/MessageProto$MessageInfo$b;

    .line 10
    .line 11
    return-object p1
.end method

.method public getMessageInfoBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wufan/user/service/protobuf/MessageProto$MessageInfo$b;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->getMessageInfoFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

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

.method public getMessageInfoCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfo_:Ljava/util/List;

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

.method public getMessageInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wufan/user/service/protobuf/MessageProto$MessageInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfo_:Ljava/util/List;

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

.method public getMessageInfoOrBuilder(I)Lcom/wufan/user/service/protobuf/MessageProto$c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfo_:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/wufan/user/service/protobuf/MessageProto$c;

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
    check-cast p1, Lcom/wufan/user/service/protobuf/MessageProto$c;

    .line 19
    .line 20
    return-object p1
.end method

.method public getMessageInfoOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/wufan/user/service/protobuf/MessageProto$c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

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
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfo_:Ljava/util/List;

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

.method public getOnlinePeopleCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->onlinePeopleCount_:I

    .line 2
    .line 3
    return v0
.end method

.method public getPong()Lcom/wufan/user/service/protobuf/MessageProto$Pong;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->pongBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->pong_:Lcom/wufan/user/service/protobuf/MessageProto$Pong;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$Pong;->getDefaultInstance()Lcom/wufan/user/service/protobuf/MessageProto$Pong;

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
    check-cast v0, Lcom/wufan/user/service/protobuf/MessageProto$Pong;

    .line 19
    .line 20
    return-object v0
.end method

.method public getPongBuilder()Lcom/wufan/user/service/protobuf/MessageProto$Pong$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->getPongFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/user/service/protobuf/MessageProto$Pong$b;

    .line 13
    .line 14
    return-object v0
.end method

.method public getPongOrBuilder()Lcom/wufan/user/service/protobuf/MessageProto$f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->pongBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/user/service/protobuf/MessageProto$f;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->pong_:Lcom/wufan/user/service/protobuf/MessageProto$Pong;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$Pong;->getDefaultInstance()Lcom/wufan/user/service/protobuf/MessageProto$Pong;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getQueueInfo()Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->queueInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->queueInfo_:Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;->getDefaultInstance()Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;

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
    check-cast v0, Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;

    .line 19
    .line 20
    return-object v0
.end method

.method public getQueueInfoBuilder()Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->getQueueInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo$b;

    .line 13
    .line 14
    return-object v0
.end method

.method public getQueueInfoOrBuilder()Lcom/wufan/user/service/protobuf/MessageProto$h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->queueInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/user/service/protobuf/MessageProto$h;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->queueInfo_:Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;->getDefaultInstance()Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;

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
    iget-wide v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->requestId_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getStatusCode()Lcom/wufan/user/service/protobuf/MessageProto$Response$StatusCode;
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->statusCode_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$StatusCode;->valueOf(I)Lcom/wufan/user/service/protobuf/MessageProto$Response$StatusCode;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$Response$StatusCode;->UNRECOGNIZED:Lcom/wufan/user/service/protobuf/MessageProto$Response$StatusCode;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getStatusCodeValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->statusCode_:I

    .line 2
    .line 3
    return v0
.end method

.method public getType()Lcom/wufan/user/service/protobuf/MessageProto$Response$ProtoType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->type_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$ProtoType;->valueOf(I)Lcom/wufan/user/service/protobuf/MessageProto$Response$ProtoType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/wufan/user/service/protobuf/MessageProto$Response$ProtoType;->UNRECOGNIZED:Lcom/wufan/user/service/protobuf/MessageProto$Response$ProtoType;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getTypeValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->type_:I

    .line 2
    .line 3
    return v0
.end method

.method public hasPong()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->pongBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->pong_:Lcom/wufan/user/service/protobuf/MessageProto$Pong;

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

.method public hasQueueInfo()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->queueInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->queueInfo_:Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;

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
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto;->q()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/wufan/user/service/protobuf/MessageProto$Response;

    .line 6
    .line 7
    const-class v2, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
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

    .line 56
    :try_start_0
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->access$11400()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wufan/user/service/protobuf/MessageProto$Response;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->mergeFrom(Lcom/wufan/user/service/protobuf/MessageProto$Response;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 58
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/wufan/user/service/protobuf/MessageProto$Response;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
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

    .line 60
    invoke-virtual {p0, v0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->mergeFrom(Lcom/wufan/user/service/protobuf/MessageProto$Response;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

    .line 61
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
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
    instance-of v0, p1, Lcom/wufan/user/service/protobuf/MessageProto$Response;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/wufan/user/service/protobuf/MessageProto$Response;

    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->mergeFrom(Lcom/wufan/user/service/protobuf/MessageProto$Response;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/wufan/user/service/protobuf/MessageProto$Response;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
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
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getDefaultInstance()Lcom/wufan/user/service/protobuf/MessageProto$Response;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->access$10000(Lcom/wufan/user/service/protobuf/MessageProto$Response;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getStatusCodeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->setStatusCodeValue(I)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getRequestId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getRequestId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->setRequestId(J)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

    .line 15
    :cond_2
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->access$10200(Lcom/wufan/user/service/protobuf/MessageProto$Response;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getTypeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->setTypeValue(I)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_5

    .line 18
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->access$10300(Lcom/wufan/user/service/protobuf/MessageProto$Response;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 19
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfo_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->access$10300(Lcom/wufan/user/service/protobuf/MessageProto$Response;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfo_:Ljava/util/List;

    .line 21
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->bitField0_:I

    goto :goto_0

    .line 22
    :cond_4
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->ensureMessageInfoIsMutable()V

    .line 23
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfo_:Ljava/util/List;

    invoke-static {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->access$10300(Lcom/wufan/user/service/protobuf/MessageProto$Response;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 24
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_1

    .line 25
    :cond_5
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->access$10300(Lcom/wufan/user/service/protobuf/MessageProto$Response;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 26
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 27
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 29
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->access$10300(Lcom/wufan/user/service/protobuf/MessageProto$Response;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfo_:Ljava/util/List;

    .line 30
    iget v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->bitField0_:I

    .line 31
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->access$11200()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 32
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->getMessageInfoFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_6
    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    .line 33
    :cond_7
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->access$10300(Lcom/wufan/user/service/protobuf/MessageProto$Response;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 34
    :cond_8
    :goto_1
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->access$10400(Lcom/wufan/user/service/protobuf/MessageProto$Response;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 35
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 36
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->access$10400(Lcom/wufan/user/service/protobuf/MessageProto$Response;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    .line 37
    iget v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->bitField0_:I

    goto :goto_2

    .line 38
    :cond_9
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->ensureBroadcastUsersIsMutable()V

    .line 39
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

    invoke-static {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->access$10400(Lcom/wufan/user/service/protobuf/MessageProto$Response;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 40
    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 41
    :cond_a
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getError()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 42
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->access$10500(Lcom/wufan/user/service/protobuf/MessageProto$Response;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->error_:Ljava/lang/Object;

    .line 43
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 44
    :cond_b
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->hasPong()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 45
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getPong()Lcom/wufan/user/service/protobuf/MessageProto$Pong;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->mergePong(Lcom/wufan/user/service/protobuf/MessageProto$Pong;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

    .line 46
    :cond_c
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->access$10700(Lcom/wufan/user/service/protobuf/MessageProto$Response;)I

    move-result v0

    if-eqz v0, :cond_d

    .line 47
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getLogicErrorCodeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->setLogicErrorCodeValue(I)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

    .line 48
    :cond_d
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getOnlinePeopleCount()I

    move-result v0

    if-eqz v0, :cond_e

    .line 49
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getOnlinePeopleCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->setOnlinePeopleCount(I)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

    .line 50
    :cond_e
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->hasQueueInfo()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 51
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getQueueInfo()Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->mergeQueueInfo(Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

    .line 52
    :cond_f
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getErrorCode()I

    move-result v0

    if-eqz v0, :cond_10

    .line 53
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->getErrorCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->setErrorCode(I)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

    .line 54
    :cond_10
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->access$11300(Lcom/wufan/user/service/protobuf/MessageProto$Response;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

    .line 55
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergePong(Lcom/wufan/user/service/protobuf/MessageProto$Pong;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
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
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->pongBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->pong_:Lcom/wufan/user/service/protobuf/MessageProto$Pong;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/wufan/user/service/protobuf/MessageProto$Pong;->newBuilder(Lcom/wufan/user/service/protobuf/MessageProto$Pong;)Lcom/wufan/user/service/protobuf/MessageProto$Pong$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/wufan/user/service/protobuf/MessageProto$Pong$b;->mergeFrom(Lcom/wufan/user/service/protobuf/MessageProto$Pong;)Lcom/wufan/user/service/protobuf/MessageProto$Pong$b;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Pong$b;->buildPartial()Lcom/wufan/user/service/protobuf/MessageProto$Pong;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->pong_:Lcom/wufan/user/service/protobuf/MessageProto$Pong;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->pong_:Lcom/wufan/user/service/protobuf/MessageProto$Pong;

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

.method public mergeQueueInfo(Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
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
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->queueInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->queueInfo_:Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;->newBuilder(Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;)Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo$b;->mergeFrom(Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;)Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo$b;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo$b;->buildPartial()Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->queueInfo_:Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->queueInfo_:Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
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

    check-cast p1, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

    return-object p1
.end method

.method public removeMessageInfo(I)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->ensureMessageInfoIsMutable()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfo_:Ljava/util/List;

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

.method public setBroadcastUsers(II)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
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
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->ensureBroadcastUsersIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->broadcastUsers_:Lcom/google/protobuf/Internal$IntList;

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

.method public setError(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
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
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->error_:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public setErrorBytes(Lcom/google/protobuf/ByteString;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
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
    invoke-static {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response;->access$11800(Lcom/google/protobuf/ByteString;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->error_:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public setErrorCode(I)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
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
    iput p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->errorCode_:I

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
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

    check-cast p1, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

    return-object p1
.end method

.method public setLogicErrorCode(Lcom/wufan/user/service/protobuf/MessageProto$Response$LogicErrorCode;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
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
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response$LogicErrorCode;->getNumber()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->logicErrorCode_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public setLogicErrorCodeValue(I)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
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
    iput p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->logicErrorCode_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setMessageInfo(ILcom/wufan/user/service/protobuf/MessageProto$MessageInfo$b;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->ensureMessageInfoIsMutable()V

    .line 9
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfo_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageInfo$b;->build()Lcom/wufan/user/service/protobuf/MessageProto$MessageInfo;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageInfo$b;->build()Lcom/wufan/user/service/protobuf/MessageProto$MessageInfo;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setMessageInfo(ILcom/wufan/user/service/protobuf/MessageProto$MessageInfo;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
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
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->ensureMessageInfoIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->messageInfo_:Ljava/util/List;

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

.method public setOnlinePeopleCount(I)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
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
    iput p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->onlinePeopleCount_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setPong(Lcom/wufan/user/service/protobuf/MessageProto$Pong$b;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->pongBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Pong$b;->build()Lcom/wufan/user/service/protobuf/MessageProto$Pong;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->pong_:Lcom/wufan/user/service/protobuf/MessageProto$Pong;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Pong$b;->build()Lcom/wufan/user/service/protobuf/MessageProto$Pong;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setPong(Lcom/wufan/user/service/protobuf/MessageProto$Pong;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
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
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->pongBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->pong_:Lcom/wufan/user/service/protobuf/MessageProto$Pong;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setQueueInfo(Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo$b;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->queueInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo$b;->build()Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->queueInfo_:Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo$b;->build()Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setQueueInfo(Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
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
    iget-object v0, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->queueInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->queueInfo_:Lcom/wufan/user/service/protobuf/MessageProto$QueueInfo;

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
    invoke-virtual {p0, p1, p2, p3}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

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
    invoke-virtual {p0, p1, p2, p3}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
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

    check-cast p1, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

    return-object p1
.end method

.method public setRequestId(J)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
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
    iput-wide p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->requestId_:J

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setStatusCode(Lcom/wufan/user/service/protobuf/MessageProto$Response$StatusCode;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
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
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response$StatusCode;->getNumber()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->statusCode_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public setStatusCodeValue(I)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
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
    iput p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->statusCode_:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setType(Lcom/wufan/user/service/protobuf/MessageProto$Response$ProtoType;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
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
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response$ProtoType;->getNumber()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->type_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public setTypeValue(I)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
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
    iput p1, p0, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->type_:I

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/user/service/protobuf/MessageProto$Response$b;
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

    check-cast p1, Lcom/wufan/user/service/protobuf/MessageProto$Response$b;

    return-object p1
.end method
