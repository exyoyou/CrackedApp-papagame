.class public final Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/wufan/friend/chat/protocol/k0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;",
        ">;",
        "Lcom/wufan/friend/chat/protocol/k0;"
    }
.end annotation


# instance fields
.field private friendBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/AccountInfo;",
            "Lcom/wufan/friend/chat/protocol/AccountInfo$b;",
            "Lcom/wufan/friend/chat/protocol/a;",
            ">;"
        }
    .end annotation
.end field

.field private friend_:Lcom/wufan/friend/chat/protocol/AccountInfo;

.field private playStateBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/PlayState;",
            "Lcom/wufan/friend/chat/protocol/PlayState$b;",
            "Lcom/wufan/friend/chat/protocol/e0;",
            ">;"
        }
    .end annotation
.end field

.field private playState_:Lcom/wufan/friend/chat/protocol/PlayState;

.field private state_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->state_:I

    .line 5
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->maybeForceBuilderInitialization()V

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

    .line 6
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->state_:I

    .line 8
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/a0;->y0:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method private getFriendFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/AccountInfo;",
            "Lcom/wufan/friend/chat/protocol/AccountInfo$b;",
            "Lcom/wufan/friend/chat/protocol/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->friendBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->getFriend()Lcom/wufan/friend/chat/protocol/AccountInfo;

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
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->friendBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->friend_:Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->friendBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getPlayStateFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/PlayState;",
            "Lcom/wufan/friend/chat/protocol/PlayState$b;",
            "Lcom/wufan/friend/chat/protocol/e0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->playStateBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->getPlayState()Lcom/wufan/friend/chat/protocol/PlayState;

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
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->playStateBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->playState_:Lcom/wufan/friend/chat/protocol/PlayState;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->playStateBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->access$200()Z

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;
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

    check-cast p1, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->build()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->build()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->buildPartial()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->buildPartial()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->buildPartial()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;
    .locals 2

    .line 3
    new-instance v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$a;)V

    .line 4
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->friendBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->friend_:Lcom/wufan/friend/chat/protocol/AccountInfo;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->access$402(Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;Lcom/wufan/friend/chat/protocol/AccountInfo;)Lcom/wufan/friend/chat/protocol/AccountInfo;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/AccountInfo;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->access$402(Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;Lcom/wufan/friend/chat/protocol/AccountInfo;)Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 7
    :goto_0
    iget v1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->state_:I

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->access$502(Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;I)I

    .line 8
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->playStateBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_1

    .line 9
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->playState_:Lcom/wufan/friend/chat/protocol/PlayState;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->access$602(Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;Lcom/wufan/friend/chat/protocol/PlayState;)Lcom/wufan/friend/chat/protocol/PlayState;

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/PlayState;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->access$602(Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;Lcom/wufan/friend/chat/protocol/PlayState;)Lcom/wufan/friend/chat/protocol/PlayState;

    .line 11
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->clear()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->clear()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->clear()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->clear()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;
    .locals 2

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 6
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->friendBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 7
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->friend_:Lcom/wufan/friend/chat/protocol/AccountInfo;

    goto :goto_0

    .line 8
    :cond_0
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->friend_:Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 9
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->friendBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->state_:I

    .line 11
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->playStateBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 12
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->playState_:Lcom/wufan/friend/chat/protocol/PlayState;

    goto :goto_1

    .line 13
    :cond_1
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->playState_:Lcom/wufan/friend/chat/protocol/PlayState;

    .line 14
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->playStateBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_1
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
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;
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

    check-cast p1, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

    return-object p1
.end method

.method public clearFriend()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->friendBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->friend_:Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->friend_:Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->friendBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
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
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;
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

    check-cast p1, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

    return-object p1
.end method

.method public clearPlayState()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->playStateBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->playState_:Lcom/wufan/friend/chat/protocol/PlayState;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->playState_:Lcom/wufan/friend/chat/protocol/PlayState;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->playStateBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearState()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->state_:I

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
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->clone()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->clone()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->clone()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->clone()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->clone()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

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
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->clone()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->getDefaultInstanceForType()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->getDefaultInstanceForType()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;
    .locals 1

    .line 3
    invoke-static {}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/a0;->y0:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFriend()Lcom/wufan/friend/chat/protocol/AccountInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->friendBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->friend_:Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/wufan/friend/chat/protocol/AccountInfo;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/AccountInfo;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 19
    .line 20
    return-object v0
.end method

.method public getFriendBuilder()Lcom/wufan/friend/chat/protocol/AccountInfo$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->getFriendFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/AccountInfo$b;

    .line 13
    .line 14
    return-object v0
.end method

.method public getFriendOrBuilder()Lcom/wufan/friend/chat/protocol/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->friendBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/a;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->friend_:Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/wufan/friend/chat/protocol/AccountInfo;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getPlayState()Lcom/wufan/friend/chat/protocol/PlayState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->playStateBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->playState_:Lcom/wufan/friend/chat/protocol/PlayState;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/wufan/friend/chat/protocol/PlayState;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/PlayState;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/PlayState;

    .line 19
    .line 20
    return-object v0
.end method

.method public getPlayStateBuilder()Lcom/wufan/friend/chat/protocol/PlayState$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->getPlayStateFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/PlayState$b;

    .line 13
    .line 14
    return-object v0
.end method

.method public getPlayStateOrBuilder()Lcom/wufan/friend/chat/protocol/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->playStateBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/e0;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->playState_:Lcom/wufan/friend/chat/protocol/PlayState;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/wufan/friend/chat/protocol/PlayState;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/PlayState;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getState()Lcom/wufan/friend/chat/protocol/OnlineState;
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->state_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/OnlineState;->valueOf(I)Lcom/wufan/friend/chat/protocol/OnlineState;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/wufan/friend/chat/protocol/OnlineState;->UNRECOGNIZED:Lcom/wufan/friend/chat/protocol/OnlineState;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public getStateValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->state_:I

    .line 2
    .line 3
    return v0
.end method

.method public hasFriend()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->friendBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->friend_:Lcom/wufan/friend/chat/protocol/AccountInfo;

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

.method public hasPlayState()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->playStateBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->playState_:Lcom/wufan/friend/chat/protocol/PlayState;

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
    sget-object v0, Lcom/wufan/friend/chat/protocol/a0;->z0:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    const-class v1, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    .line 4
    .line 5
    const-class v2, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

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

.method public mergeFriend(Lcom/wufan/friend/chat/protocol/AccountInfo;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->friendBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->friend_:Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/AccountInfo;->newBuilder(Lcom/wufan/friend/chat/protocol/AccountInfo;)Lcom/wufan/friend/chat/protocol/AccountInfo$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/protocol/AccountInfo$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/AccountInfo;)Lcom/wufan/friend/chat/protocol/AccountInfo$b;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/AccountInfo$b;->buildPartial()Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->friend_:Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->friend_:Lcom/wufan/friend/chat/protocol/AccountInfo;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;
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

    .line 19
    :try_start_0
    invoke-static {}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->access$800()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 20
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 21
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
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

    .line 23
    invoke-virtual {p0, v0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

    .line 24
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;
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
    instance-of v0, p1, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 10
    invoke-static {}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->hasFriend()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->getFriend()Lcom/wufan/friend/chat/protocol/AccountInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->mergeFriend(Lcom/wufan/friend/chat/protocol/AccountInfo;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

    .line 13
    :cond_1
    invoke-static {p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->access$500(Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->getStateValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->setStateValue(I)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

    .line 15
    :cond_2
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->hasPlayState()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->getPlayState()Lcom/wufan/friend/chat/protocol/PlayState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->mergePlayState(Lcom/wufan/friend/chat/protocol/PlayState;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

    .line 17
    :cond_3
    invoke-static {p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->access$700(Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

    .line 18
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergePlayState(Lcom/wufan/friend/chat/protocol/PlayState;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->playStateBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->playState_:Lcom/wufan/friend/chat/protocol/PlayState;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/PlayState;->newBuilder(Lcom/wufan/friend/chat/protocol/PlayState;)Lcom/wufan/friend/chat/protocol/PlayState$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/protocol/PlayState$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/PlayState;)Lcom/wufan/friend/chat/protocol/PlayState$b;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/PlayState$b;->buildPartial()Lcom/wufan/friend/chat/protocol/PlayState;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->playState_:Lcom/wufan/friend/chat/protocol/PlayState;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->playState_:Lcom/wufan/friend/chat/protocol/PlayState;

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
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;
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

    check-cast p1, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

    return-object p1
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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;
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

    check-cast p1, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

    return-object p1
.end method

.method public setFriend(Lcom/wufan/friend/chat/protocol/AccountInfo$b;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->friendBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/AccountInfo$b;->build()Lcom/wufan/friend/chat/protocol/AccountInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->friend_:Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/AccountInfo$b;->build()Lcom/wufan/friend/chat/protocol/AccountInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setFriend(Lcom/wufan/friend/chat/protocol/AccountInfo;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->friendBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->friend_:Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setPlayState(Lcom/wufan/friend/chat/protocol/PlayState$b;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->playStateBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/PlayState$b;->build()Lcom/wufan/friend/chat/protocol/PlayState;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->playState_:Lcom/wufan/friend/chat/protocol/PlayState;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/PlayState$b;->build()Lcom/wufan/friend/chat/protocol/PlayState;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setPlayState(Lcom/wufan/friend/chat/protocol/PlayState;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->playStateBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->playState_:Lcom/wufan/friend/chat/protocol/PlayState;

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
    invoke-virtual {p0, p1, p2, p3}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

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
    invoke-virtual {p0, p1, p2, p3}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;
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

    check-cast p1, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

    return-object p1
.end method

.method public setState(Lcom/wufan/friend/chat/protocol/OnlineState;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;
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
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/OnlineState;->getNumber()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->state_:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public setStateValue(I)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;
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
    iput p1, p0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->state_:I

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
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;
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

    check-cast p1, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

    return-object p1
.end method
