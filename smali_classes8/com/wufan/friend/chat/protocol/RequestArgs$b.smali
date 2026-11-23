.class public final Lcom/wufan/friend/chat/protocol/RequestArgs$b;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/wufan/friend/chat/protocol/m0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wufan/friend/chat/protocol/RequestArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/wufan/friend/chat/protocol/RequestArgs$b;",
        ">;",
        "Lcom/wufan/friend/chat/protocol/m0;"
    }
.end annotation


# instance fields
.field private ackArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/AckArgs;",
            "Lcom/wufan/friend/chat/protocol/AckArgs$b;",
            "Lcom/wufan/friend/chat/protocol/b;",
            ">;"
        }
    .end annotation
.end field

.field private ackArgs_:Lcom/wufan/friend/chat/protocol/AckArgs;

.field private chatMessageArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/ChatMessageArgs;",
            "Lcom/wufan/friend/chat/protocol/ChatMessageArgs$b;",
            "Lcom/wufan/friend/chat/protocol/e;",
            ">;"
        }
    .end annotation
.end field

.field private chatMessageArgs_:Lcom/wufan/friend/chat/protocol/ChatMessageArgs;

.field private chatRoomArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/ChatRoomArgs;",
            "Lcom/wufan/friend/chat/protocol/ChatRoomArgs$b;",
            "Lcom/wufan/friend/chat/protocol/h;",
            ">;"
        }
    .end annotation
.end field

.field private chatRoomArgs_:Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

.field private gameInviteArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/GameInviteArgs;",
            "Lcom/wufan/friend/chat/protocol/GameInviteArgs$b;",
            "Lcom/wufan/friend/chat/protocol/q;",
            ">;"
        }
    .end annotation
.end field

.field private gameInviteArgs_:Lcom/wufan/friend/chat/protocol/GameInviteArgs;

.field private heartArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/HeartArgs;",
            "Lcom/wufan/friend/chat/protocol/HeartArgs$b;",
            "Lcom/wufan/friend/chat/protocol/t;",
            ">;"
        }
    .end annotation
.end field

.field private heartArgs_:Lcom/wufan/friend/chat/protocol/HeartArgs;

.field private localBattleGameArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;",
            "Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs$b;",
            "Lcom/wufan/friend/chat/protocol/s;",
            ">;"
        }
    .end annotation
.end field

.field private localBattleGameArgs_:Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;

.field private loginArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/LoginArgs;",
            "Lcom/wufan/friend/chat/protocol/LoginArgs$b;",
            "Lcom/wufan/friend/chat/protocol/y;",
            ">;"
        }
    .end annotation
.end field

.field private loginArgs_:Lcom/wufan/friend/chat/protocol/LoginArgs;

.field private playGameArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/PlayGameArgs;",
            "Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;",
            "Lcom/wufan/friend/chat/protocol/d0;",
            ">;"
        }
    .end annotation
.end field

.field private playGameArgs_:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

.field private recommendPlayerArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;",
            "Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;",
            "Lcom/wufan/friend/chat/protocol/h0;",
            ">;"
        }
    .end annotation
.end field

.field private recommendPlayerArgs_:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

.field private stateArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/OnlineStateArgs;",
            "Lcom/wufan/friend/chat/protocol/OnlineStateArgs$b;",
            "Lcom/wufan/friend/chat/protocol/c0;",
            ">;"
        }
    .end annotation
.end field

.field private stateArgs_:Lcom/wufan/friend/chat/protocol/OnlineStateArgs;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 4
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->maybeForceBuilderInitialization()V

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

    .line 5
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 6
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/wufan/friend/chat/protocol/RequestArgs$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wufan/friend/chat/protocol/RequestArgs$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;-><init>()V

    return-void
.end method

.method private getAckArgsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/AckArgs;",
            "Lcom/wufan/friend/chat/protocol/AckArgs$b;",
            "Lcom/wufan/friend/chat/protocol/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->ackArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->getAckArgs()Lcom/wufan/friend/chat/protocol/AckArgs;

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
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->ackArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->ackArgs_:Lcom/wufan/friend/chat/protocol/AckArgs;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->ackArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getChatMessageArgsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/ChatMessageArgs;",
            "Lcom/wufan/friend/chat/protocol/ChatMessageArgs$b;",
            "Lcom/wufan/friend/chat/protocol/e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatMessageArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->getChatMessageArgs()Lcom/wufan/friend/chat/protocol/ChatMessageArgs;

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
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatMessageArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatMessageArgs_:Lcom/wufan/friend/chat/protocol/ChatMessageArgs;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatMessageArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getChatRoomArgsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/ChatRoomArgs;",
            "Lcom/wufan/friend/chat/protocol/ChatRoomArgs$b;",
            "Lcom/wufan/friend/chat/protocol/h;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatRoomArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->getChatRoomArgs()Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

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
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatRoomArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatRoomArgs_:Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatRoomArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/a0;->c:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method private getGameInviteArgsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/GameInviteArgs;",
            "Lcom/wufan/friend/chat/protocol/GameInviteArgs$b;",
            "Lcom/wufan/friend/chat/protocol/q;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->gameInviteArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->getGameInviteArgs()Lcom/wufan/friend/chat/protocol/GameInviteArgs;

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
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->gameInviteArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->gameInviteArgs_:Lcom/wufan/friend/chat/protocol/GameInviteArgs;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->gameInviteArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getHeartArgsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/HeartArgs;",
            "Lcom/wufan/friend/chat/protocol/HeartArgs$b;",
            "Lcom/wufan/friend/chat/protocol/t;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->heartArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->getHeartArgs()Lcom/wufan/friend/chat/protocol/HeartArgs;

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
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->heartArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->heartArgs_:Lcom/wufan/friend/chat/protocol/HeartArgs;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->heartArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getLocalBattleGameArgsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;",
            "Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs$b;",
            "Lcom/wufan/friend/chat/protocol/s;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->localBattleGameArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->getLocalBattleGameArgs()Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;

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
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->localBattleGameArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->localBattleGameArgs_:Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->localBattleGameArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getLoginArgsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/LoginArgs;",
            "Lcom/wufan/friend/chat/protocol/LoginArgs$b;",
            "Lcom/wufan/friend/chat/protocol/y;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->loginArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->getLoginArgs()Lcom/wufan/friend/chat/protocol/LoginArgs;

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
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->loginArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->loginArgs_:Lcom/wufan/friend/chat/protocol/LoginArgs;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->loginArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getPlayGameArgsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/PlayGameArgs;",
            "Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;",
            "Lcom/wufan/friend/chat/protocol/d0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->playGameArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->getPlayGameArgs()Lcom/wufan/friend/chat/protocol/PlayGameArgs;

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
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->playGameArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->playGameArgs_:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->playGameArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getRecommendPlayerArgsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;",
            "Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;",
            "Lcom/wufan/friend/chat/protocol/h0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->recommendPlayerArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->getRecommendPlayerArgs()Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

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
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->recommendPlayerArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->recommendPlayerArgs_:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->recommendPlayerArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getStateArgsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/OnlineStateArgs;",
            "Lcom/wufan/friend/chat/protocol/OnlineStateArgs$b;",
            "Lcom/wufan/friend/chat/protocol/c0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->stateArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->getStateArgs()Lcom/wufan/friend/chat/protocol/OnlineStateArgs;

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
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->stateArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->stateArgs_:Lcom/wufan/friend/chat/protocol/OnlineStateArgs;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->stateArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/protocol/RequestArgs;->access$200()Z

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;
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

    check-cast p1, Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->build()Lcom/wufan/friend/chat/protocol/RequestArgs;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->build()Lcom/wufan/friend/chat/protocol/RequestArgs;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/wufan/friend/chat/protocol/RequestArgs;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->buildPartial()Lcom/wufan/friend/chat/protocol/RequestArgs;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->buildPartial()Lcom/wufan/friend/chat/protocol/RequestArgs;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->buildPartial()Lcom/wufan/friend/chat/protocol/RequestArgs;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/wufan/friend/chat/protocol/RequestArgs;
    .locals 2

    .line 3
    new-instance v0, Lcom/wufan/friend/chat/protocol/RequestArgs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wufan/friend/chat/protocol/RequestArgs;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/wufan/friend/chat/protocol/RequestArgs$a;)V

    .line 4
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->loginArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->loginArgs_:Lcom/wufan/friend/chat/protocol/LoginArgs;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->access$402(Lcom/wufan/friend/chat/protocol/RequestArgs;Lcom/wufan/friend/chat/protocol/LoginArgs;)Lcom/wufan/friend/chat/protocol/LoginArgs;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/LoginArgs;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->access$402(Lcom/wufan/friend/chat/protocol/RequestArgs;Lcom/wufan/friend/chat/protocol/LoginArgs;)Lcom/wufan/friend/chat/protocol/LoginArgs;

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->ackArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->ackArgs_:Lcom/wufan/friend/chat/protocol/AckArgs;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->access$502(Lcom/wufan/friend/chat/protocol/RequestArgs;Lcom/wufan/friend/chat/protocol/AckArgs;)Lcom/wufan/friend/chat/protocol/AckArgs;

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/AckArgs;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->access$502(Lcom/wufan/friend/chat/protocol/RequestArgs;Lcom/wufan/friend/chat/protocol/AckArgs;)Lcom/wufan/friend/chat/protocol/AckArgs;

    .line 10
    :goto_1
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->heartArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_2

    .line 11
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->heartArgs_:Lcom/wufan/friend/chat/protocol/HeartArgs;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->access$602(Lcom/wufan/friend/chat/protocol/RequestArgs;Lcom/wufan/friend/chat/protocol/HeartArgs;)Lcom/wufan/friend/chat/protocol/HeartArgs;

    goto :goto_2

    .line 12
    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/HeartArgs;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->access$602(Lcom/wufan/friend/chat/protocol/RequestArgs;Lcom/wufan/friend/chat/protocol/HeartArgs;)Lcom/wufan/friend/chat/protocol/HeartArgs;

    .line 13
    :goto_2
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->gameInviteArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_3

    .line 14
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->gameInviteArgs_:Lcom/wufan/friend/chat/protocol/GameInviteArgs;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->access$702(Lcom/wufan/friend/chat/protocol/RequestArgs;Lcom/wufan/friend/chat/protocol/GameInviteArgs;)Lcom/wufan/friend/chat/protocol/GameInviteArgs;

    goto :goto_3

    .line 15
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/GameInviteArgs;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->access$702(Lcom/wufan/friend/chat/protocol/RequestArgs;Lcom/wufan/friend/chat/protocol/GameInviteArgs;)Lcom/wufan/friend/chat/protocol/GameInviteArgs;

    .line 16
    :goto_3
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->stateArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_4

    .line 17
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->stateArgs_:Lcom/wufan/friend/chat/protocol/OnlineStateArgs;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->access$802(Lcom/wufan/friend/chat/protocol/RequestArgs;Lcom/wufan/friend/chat/protocol/OnlineStateArgs;)Lcom/wufan/friend/chat/protocol/OnlineStateArgs;

    goto :goto_4

    .line 18
    :cond_4
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/OnlineStateArgs;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->access$802(Lcom/wufan/friend/chat/protocol/RequestArgs;Lcom/wufan/friend/chat/protocol/OnlineStateArgs;)Lcom/wufan/friend/chat/protocol/OnlineStateArgs;

    .line 19
    :goto_4
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->playGameArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_5

    .line 20
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->playGameArgs_:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->access$902(Lcom/wufan/friend/chat/protocol/RequestArgs;Lcom/wufan/friend/chat/protocol/PlayGameArgs;)Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    goto :goto_5

    .line 21
    :cond_5
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->access$902(Lcom/wufan/friend/chat/protocol/RequestArgs;Lcom/wufan/friend/chat/protocol/PlayGameArgs;)Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    .line 22
    :goto_5
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatRoomArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_6

    .line 23
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatRoomArgs_:Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->access$1002(Lcom/wufan/friend/chat/protocol/RequestArgs;Lcom/wufan/friend/chat/protocol/ChatRoomArgs;)Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    goto :goto_6

    .line 24
    :cond_6
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->access$1002(Lcom/wufan/friend/chat/protocol/RequestArgs;Lcom/wufan/friend/chat/protocol/ChatRoomArgs;)Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    .line 25
    :goto_6
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatMessageArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_7

    .line 26
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatMessageArgs_:Lcom/wufan/friend/chat/protocol/ChatMessageArgs;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->access$1102(Lcom/wufan/friend/chat/protocol/RequestArgs;Lcom/wufan/friend/chat/protocol/ChatMessageArgs;)Lcom/wufan/friend/chat/protocol/ChatMessageArgs;

    goto :goto_7

    .line 27
    :cond_7
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/ChatMessageArgs;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->access$1102(Lcom/wufan/friend/chat/protocol/RequestArgs;Lcom/wufan/friend/chat/protocol/ChatMessageArgs;)Lcom/wufan/friend/chat/protocol/ChatMessageArgs;

    .line 28
    :goto_7
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->recommendPlayerArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_8

    .line 29
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->recommendPlayerArgs_:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->access$1202(Lcom/wufan/friend/chat/protocol/RequestArgs;Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;)Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    goto :goto_8

    .line 30
    :cond_8
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->access$1202(Lcom/wufan/friend/chat/protocol/RequestArgs;Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;)Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    .line 31
    :goto_8
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->localBattleGameArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_9

    .line 32
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->localBattleGameArgs_:Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->access$1302(Lcom/wufan/friend/chat/protocol/RequestArgs;Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;)Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;

    goto :goto_9

    .line 33
    :cond_9
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->access$1302(Lcom/wufan/friend/chat/protocol/RequestArgs;Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;)Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;

    .line 34
    :goto_9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->clear()Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->clear()Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->clear()Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->clear()Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/wufan/friend/chat/protocol/RequestArgs$b;
    .locals 2

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 6
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->loginArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 7
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->loginArgs_:Lcom/wufan/friend/chat/protocol/LoginArgs;

    goto :goto_0

    .line 8
    :cond_0
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->loginArgs_:Lcom/wufan/friend/chat/protocol/LoginArgs;

    .line 9
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->loginArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->ackArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 11
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->ackArgs_:Lcom/wufan/friend/chat/protocol/AckArgs;

    goto :goto_1

    .line 12
    :cond_1
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->ackArgs_:Lcom/wufan/friend/chat/protocol/AckArgs;

    .line 13
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->ackArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 14
    :goto_1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->heartArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_2

    .line 15
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->heartArgs_:Lcom/wufan/friend/chat/protocol/HeartArgs;

    goto :goto_2

    .line 16
    :cond_2
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->heartArgs_:Lcom/wufan/friend/chat/protocol/HeartArgs;

    .line 17
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->heartArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 18
    :goto_2
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->gameInviteArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_3

    .line 19
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->gameInviteArgs_:Lcom/wufan/friend/chat/protocol/GameInviteArgs;

    goto :goto_3

    .line 20
    :cond_3
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->gameInviteArgs_:Lcom/wufan/friend/chat/protocol/GameInviteArgs;

    .line 21
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->gameInviteArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 22
    :goto_3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->stateArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_4

    .line 23
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->stateArgs_:Lcom/wufan/friend/chat/protocol/OnlineStateArgs;

    goto :goto_4

    .line 24
    :cond_4
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->stateArgs_:Lcom/wufan/friend/chat/protocol/OnlineStateArgs;

    .line 25
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->stateArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 26
    :goto_4
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->playGameArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_5

    .line 27
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->playGameArgs_:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    goto :goto_5

    .line 28
    :cond_5
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->playGameArgs_:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    .line 29
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->playGameArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 30
    :goto_5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatRoomArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_6

    .line 31
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatRoomArgs_:Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    goto :goto_6

    .line 32
    :cond_6
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatRoomArgs_:Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    .line 33
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatRoomArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 34
    :goto_6
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatMessageArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_7

    .line 35
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatMessageArgs_:Lcom/wufan/friend/chat/protocol/ChatMessageArgs;

    goto :goto_7

    .line 36
    :cond_7
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatMessageArgs_:Lcom/wufan/friend/chat/protocol/ChatMessageArgs;

    .line 37
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatMessageArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 38
    :goto_7
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->recommendPlayerArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_8

    .line 39
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->recommendPlayerArgs_:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    goto :goto_8

    .line 40
    :cond_8
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->recommendPlayerArgs_:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    .line 41
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->recommendPlayerArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 42
    :goto_8
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->localBattleGameArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_9

    .line 43
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->localBattleGameArgs_:Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;

    goto :goto_9

    .line 44
    :cond_9
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->localBattleGameArgs_:Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;

    .line 45
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->localBattleGameArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_9
    return-object p0
.end method

.method public clearAckArgs()Lcom/wufan/friend/chat/protocol/RequestArgs$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->ackArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->ackArgs_:Lcom/wufan/friend/chat/protocol/AckArgs;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->ackArgs_:Lcom/wufan/friend/chat/protocol/AckArgs;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->ackArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearChatMessageArgs()Lcom/wufan/friend/chat/protocol/RequestArgs$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatMessageArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatMessageArgs_:Lcom/wufan/friend/chat/protocol/ChatMessageArgs;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatMessageArgs_:Lcom/wufan/friend/chat/protocol/ChatMessageArgs;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatMessageArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearChatRoomArgs()Lcom/wufan/friend/chat/protocol/RequestArgs$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatRoomArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatRoomArgs_:Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatRoomArgs_:Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatRoomArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
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
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;
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

    check-cast p1, Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    return-object p1
.end method

.method public clearGameInviteArgs()Lcom/wufan/friend/chat/protocol/RequestArgs$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->gameInviteArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->gameInviteArgs_:Lcom/wufan/friend/chat/protocol/GameInviteArgs;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->gameInviteArgs_:Lcom/wufan/friend/chat/protocol/GameInviteArgs;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->gameInviteArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearHeartArgs()Lcom/wufan/friend/chat/protocol/RequestArgs$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->heartArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->heartArgs_:Lcom/wufan/friend/chat/protocol/HeartArgs;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->heartArgs_:Lcom/wufan/friend/chat/protocol/HeartArgs;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->heartArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearLocalBattleGameArgs()Lcom/wufan/friend/chat/protocol/RequestArgs$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->localBattleGameArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->localBattleGameArgs_:Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->localBattleGameArgs_:Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->localBattleGameArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearLoginArgs()Lcom/wufan/friend/chat/protocol/RequestArgs$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->loginArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->loginArgs_:Lcom/wufan/friend/chat/protocol/LoginArgs;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->loginArgs_:Lcom/wufan/friend/chat/protocol/LoginArgs;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->loginArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;
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

    check-cast p1, Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    return-object p1
.end method

.method public clearPlayGameArgs()Lcom/wufan/friend/chat/protocol/RequestArgs$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->playGameArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->playGameArgs_:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->playGameArgs_:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->playGameArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearRecommendPlayerArgs()Lcom/wufan/friend/chat/protocol/RequestArgs$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->recommendPlayerArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->recommendPlayerArgs_:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->recommendPlayerArgs_:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->recommendPlayerArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearStateArgs()Lcom/wufan/friend/chat/protocol/RequestArgs$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->stateArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->stateArgs_:Lcom/wufan/friend/chat/protocol/OnlineStateArgs;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->stateArgs_:Lcom/wufan/friend/chat/protocol/OnlineStateArgs;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->stateArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->clone()Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->clone()Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->clone()Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->clone()Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->clone()Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/wufan/friend/chat/protocol/RequestArgs$b;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;

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
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->clone()Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    move-result-object v0

    return-object v0
.end method

.method public getAckArgs()Lcom/wufan/friend/chat/protocol/AckArgs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->ackArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->ackArgs_:Lcom/wufan/friend/chat/protocol/AckArgs;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/wufan/friend/chat/protocol/AckArgs;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/AckArgs;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/AckArgs;

    .line 19
    .line 20
    return-object v0
.end method

.method public getAckArgsBuilder()Lcom/wufan/friend/chat/protocol/AckArgs$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->getAckArgsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/AckArgs$b;

    .line 13
    .line 14
    return-object v0
.end method

.method public getAckArgsOrBuilder()Lcom/wufan/friend/chat/protocol/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->ackArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/b;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->ackArgs_:Lcom/wufan/friend/chat/protocol/AckArgs;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/wufan/friend/chat/protocol/AckArgs;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/AckArgs;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getChatMessageArgs()Lcom/wufan/friend/chat/protocol/ChatMessageArgs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatMessageArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatMessageArgs_:Lcom/wufan/friend/chat/protocol/ChatMessageArgs;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/wufan/friend/chat/protocol/ChatMessageArgs;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/ChatMessageArgs;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/ChatMessageArgs;

    .line 19
    .line 20
    return-object v0
.end method

.method public getChatMessageArgsBuilder()Lcom/wufan/friend/chat/protocol/ChatMessageArgs$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->getChatMessageArgsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/ChatMessageArgs$b;

    .line 13
    .line 14
    return-object v0
.end method

.method public getChatMessageArgsOrBuilder()Lcom/wufan/friend/chat/protocol/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatMessageArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/e;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatMessageArgs_:Lcom/wufan/friend/chat/protocol/ChatMessageArgs;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/wufan/friend/chat/protocol/ChatMessageArgs;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/ChatMessageArgs;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getChatRoomArgs()Lcom/wufan/friend/chat/protocol/ChatRoomArgs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatRoomArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatRoomArgs_:Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/wufan/friend/chat/protocol/ChatRoomArgs;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    .line 19
    .line 20
    return-object v0
.end method

.method public getChatRoomArgsBuilder()Lcom/wufan/friend/chat/protocol/ChatRoomArgs$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->getChatRoomArgsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/ChatRoomArgs$b;

    .line 13
    .line 14
    return-object v0
.end method

.method public getChatRoomArgsOrBuilder()Lcom/wufan/friend/chat/protocol/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatRoomArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/h;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatRoomArgs_:Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/wufan/friend/chat/protocol/ChatRoomArgs;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->getDefaultInstanceForType()Lcom/wufan/friend/chat/protocol/RequestArgs;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->getDefaultInstanceForType()Lcom/wufan/friend/chat/protocol/RequestArgs;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/wufan/friend/chat/protocol/RequestArgs;
    .locals 1

    .line 3
    invoke-static {}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/RequestArgs;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/a0;->c:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGameInviteArgs()Lcom/wufan/friend/chat/protocol/GameInviteArgs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->gameInviteArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->gameInviteArgs_:Lcom/wufan/friend/chat/protocol/GameInviteArgs;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/wufan/friend/chat/protocol/GameInviteArgs;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/GameInviteArgs;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/GameInviteArgs;

    .line 19
    .line 20
    return-object v0
.end method

.method public getGameInviteArgsBuilder()Lcom/wufan/friend/chat/protocol/GameInviteArgs$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->getGameInviteArgsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/GameInviteArgs$b;

    .line 13
    .line 14
    return-object v0
.end method

.method public getGameInviteArgsOrBuilder()Lcom/wufan/friend/chat/protocol/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->gameInviteArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/q;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->gameInviteArgs_:Lcom/wufan/friend/chat/protocol/GameInviteArgs;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/wufan/friend/chat/protocol/GameInviteArgs;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/GameInviteArgs;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getHeartArgs()Lcom/wufan/friend/chat/protocol/HeartArgs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->heartArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->heartArgs_:Lcom/wufan/friend/chat/protocol/HeartArgs;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/wufan/friend/chat/protocol/HeartArgs;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/HeartArgs;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/HeartArgs;

    .line 19
    .line 20
    return-object v0
.end method

.method public getHeartArgsBuilder()Lcom/wufan/friend/chat/protocol/HeartArgs$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->getHeartArgsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/HeartArgs$b;

    .line 13
    .line 14
    return-object v0
.end method

.method public getHeartArgsOrBuilder()Lcom/wufan/friend/chat/protocol/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->heartArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/t;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->heartArgs_:Lcom/wufan/friend/chat/protocol/HeartArgs;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/wufan/friend/chat/protocol/HeartArgs;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/HeartArgs;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getLocalBattleGameArgs()Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->localBattleGameArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->localBattleGameArgs_:Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;

    .line 19
    .line 20
    return-object v0
.end method

.method public getLocalBattleGameArgsBuilder()Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->getLocalBattleGameArgsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs$b;

    .line 13
    .line 14
    return-object v0
.end method

.method public getLocalBattleGameArgsOrBuilder()Lcom/wufan/friend/chat/protocol/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->localBattleGameArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/s;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->localBattleGameArgs_:Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getLoginArgs()Lcom/wufan/friend/chat/protocol/LoginArgs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->loginArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->loginArgs_:Lcom/wufan/friend/chat/protocol/LoginArgs;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/wufan/friend/chat/protocol/LoginArgs;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/LoginArgs;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/LoginArgs;

    .line 19
    .line 20
    return-object v0
.end method

.method public getLoginArgsBuilder()Lcom/wufan/friend/chat/protocol/LoginArgs$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->getLoginArgsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/LoginArgs$b;

    .line 13
    .line 14
    return-object v0
.end method

.method public getLoginArgsOrBuilder()Lcom/wufan/friend/chat/protocol/y;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->loginArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/y;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->loginArgs_:Lcom/wufan/friend/chat/protocol/LoginArgs;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/wufan/friend/chat/protocol/LoginArgs;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/LoginArgs;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getPlayGameArgs()Lcom/wufan/friend/chat/protocol/PlayGameArgs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->playGameArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->playGameArgs_:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/PlayGameArgs;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    .line 19
    .line 20
    return-object v0
.end method

.method public getPlayGameArgsBuilder()Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->getPlayGameArgsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    .line 13
    .line 14
    return-object v0
.end method

.method public getPlayGameArgsOrBuilder()Lcom/wufan/friend/chat/protocol/d0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->playGameArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/d0;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->playGameArgs_:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getRecommendPlayerArgs()Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->recommendPlayerArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->recommendPlayerArgs_:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    .line 19
    .line 20
    return-object v0
.end method

.method public getRecommendPlayerArgsBuilder()Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->getRecommendPlayerArgsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;

    .line 13
    .line 14
    return-object v0
.end method

.method public getRecommendPlayerArgsOrBuilder()Lcom/wufan/friend/chat/protocol/h0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->recommendPlayerArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/h0;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->recommendPlayerArgs_:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getStateArgs()Lcom/wufan/friend/chat/protocol/OnlineStateArgs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->stateArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->stateArgs_:Lcom/wufan/friend/chat/protocol/OnlineStateArgs;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/wufan/friend/chat/protocol/OnlineStateArgs;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/OnlineStateArgs;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/OnlineStateArgs;

    .line 19
    .line 20
    return-object v0
.end method

.method public getStateArgsBuilder()Lcom/wufan/friend/chat/protocol/OnlineStateArgs$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->getStateArgsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/OnlineStateArgs$b;

    .line 13
    .line 14
    return-object v0
.end method

.method public getStateArgsOrBuilder()Lcom/wufan/friend/chat/protocol/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->stateArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/c0;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->stateArgs_:Lcom/wufan/friend/chat/protocol/OnlineStateArgs;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/wufan/friend/chat/protocol/OnlineStateArgs;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/OnlineStateArgs;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public hasAckArgs()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->ackArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->ackArgs_:Lcom/wufan/friend/chat/protocol/AckArgs;

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

.method public hasChatMessageArgs()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatMessageArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatMessageArgs_:Lcom/wufan/friend/chat/protocol/ChatMessageArgs;

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

.method public hasChatRoomArgs()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatRoomArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatRoomArgs_:Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

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

.method public hasGameInviteArgs()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->gameInviteArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->gameInviteArgs_:Lcom/wufan/friend/chat/protocol/GameInviteArgs;

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

.method public hasHeartArgs()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->heartArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->heartArgs_:Lcom/wufan/friend/chat/protocol/HeartArgs;

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

.method public hasLocalBattleGameArgs()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->localBattleGameArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->localBattleGameArgs_:Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;

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

.method public hasLoginArgs()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->loginArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->loginArgs_:Lcom/wufan/friend/chat/protocol/LoginArgs;

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

.method public hasPlayGameArgs()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->playGameArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->playGameArgs_:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

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

.method public hasRecommendPlayerArgs()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->recommendPlayerArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->recommendPlayerArgs_:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

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

.method public hasStateArgs()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->stateArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->stateArgs_:Lcom/wufan/friend/chat/protocol/OnlineStateArgs;

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
    sget-object v0, Lcom/wufan/friend/chat/protocol/a0;->d:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    const-class v1, Lcom/wufan/friend/chat/protocol/RequestArgs;

    .line 4
    .line 5
    const-class v2, Lcom/wufan/friend/chat/protocol/RequestArgs$b;

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

.method public mergeAckArgs(Lcom/wufan/friend/chat/protocol/AckArgs;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->ackArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->ackArgs_:Lcom/wufan/friend/chat/protocol/AckArgs;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/AckArgs;->newBuilder(Lcom/wufan/friend/chat/protocol/AckArgs;)Lcom/wufan/friend/chat/protocol/AckArgs$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/protocol/AckArgs$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/AckArgs;)Lcom/wufan/friend/chat/protocol/AckArgs$b;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/AckArgs$b;->buildPartial()Lcom/wufan/friend/chat/protocol/AckArgs;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->ackArgs_:Lcom/wufan/friend/chat/protocol/AckArgs;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->ackArgs_:Lcom/wufan/friend/chat/protocol/AckArgs;

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

.method public mergeChatMessageArgs(Lcom/wufan/friend/chat/protocol/ChatMessageArgs;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatMessageArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatMessageArgs_:Lcom/wufan/friend/chat/protocol/ChatMessageArgs;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/ChatMessageArgs;->newBuilder(Lcom/wufan/friend/chat/protocol/ChatMessageArgs;)Lcom/wufan/friend/chat/protocol/ChatMessageArgs$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/protocol/ChatMessageArgs$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/ChatMessageArgs;)Lcom/wufan/friend/chat/protocol/ChatMessageArgs$b;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/ChatMessageArgs$b;->buildPartial()Lcom/wufan/friend/chat/protocol/ChatMessageArgs;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatMessageArgs_:Lcom/wufan/friend/chat/protocol/ChatMessageArgs;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatMessageArgs_:Lcom/wufan/friend/chat/protocol/ChatMessageArgs;

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

.method public mergeChatRoomArgs(Lcom/wufan/friend/chat/protocol/ChatRoomArgs;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatRoomArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatRoomArgs_:Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/ChatRoomArgs;->newBuilder(Lcom/wufan/friend/chat/protocol/ChatRoomArgs;)Lcom/wufan/friend/chat/protocol/ChatRoomArgs$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/protocol/ChatRoomArgs$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/ChatRoomArgs;)Lcom/wufan/friend/chat/protocol/ChatRoomArgs$b;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/ChatRoomArgs$b;->buildPartial()Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatRoomArgs_:Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatRoomArgs_:Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;
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

    .line 33
    :try_start_0
    invoke-static {}, Lcom/wufan/friend/chat/protocol/RequestArgs;->access$1500()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/RequestArgs;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/RequestArgs;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 35
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/wufan/friend/chat/protocol/RequestArgs;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
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

    .line 37
    invoke-virtual {p0, v0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/RequestArgs;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    .line 38
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;
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
    instance-of v0, p1, Lcom/wufan/friend/chat/protocol/RequestArgs;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/wufan/friend/chat/protocol/RequestArgs;

    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/RequestArgs;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/wufan/friend/chat/protocol/RequestArgs;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;
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
    invoke-static {}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/RequestArgs;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->hasLoginArgs()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getLoginArgs()Lcom/wufan/friend/chat/protocol/LoginArgs;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->mergeLoginArgs(Lcom/wufan/friend/chat/protocol/LoginArgs;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->hasAckArgs()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getAckArgs()Lcom/wufan/friend/chat/protocol/AckArgs;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->mergeAckArgs(Lcom/wufan/friend/chat/protocol/AckArgs;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    .line 15
    :cond_2
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->hasHeartArgs()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getHeartArgs()Lcom/wufan/friend/chat/protocol/HeartArgs;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->mergeHeartArgs(Lcom/wufan/friend/chat/protocol/HeartArgs;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    .line 17
    :cond_3
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->hasGameInviteArgs()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getGameInviteArgs()Lcom/wufan/friend/chat/protocol/GameInviteArgs;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->mergeGameInviteArgs(Lcom/wufan/friend/chat/protocol/GameInviteArgs;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    .line 19
    :cond_4
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->hasStateArgs()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 20
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getStateArgs()Lcom/wufan/friend/chat/protocol/OnlineStateArgs;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->mergeStateArgs(Lcom/wufan/friend/chat/protocol/OnlineStateArgs;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    .line 21
    :cond_5
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->hasPlayGameArgs()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 22
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getPlayGameArgs()Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->mergePlayGameArgs(Lcom/wufan/friend/chat/protocol/PlayGameArgs;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    .line 23
    :cond_6
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->hasChatRoomArgs()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 24
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getChatRoomArgs()Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->mergeChatRoomArgs(Lcom/wufan/friend/chat/protocol/ChatRoomArgs;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    .line 25
    :cond_7
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->hasChatMessageArgs()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 26
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getChatMessageArgs()Lcom/wufan/friend/chat/protocol/ChatMessageArgs;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->mergeChatMessageArgs(Lcom/wufan/friend/chat/protocol/ChatMessageArgs;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    .line 27
    :cond_8
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->hasRecommendPlayerArgs()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 28
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getRecommendPlayerArgs()Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->mergeRecommendPlayerArgs(Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    .line 29
    :cond_9
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->hasLocalBattleGameArgs()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 30
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getLocalBattleGameArgs()Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->mergeLocalBattleGameArgs(Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    .line 31
    :cond_a
    invoke-static {p1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->access$1400(Lcom/wufan/friend/chat/protocol/RequestArgs;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    .line 32
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeGameInviteArgs(Lcom/wufan/friend/chat/protocol/GameInviteArgs;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->gameInviteArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->gameInviteArgs_:Lcom/wufan/friend/chat/protocol/GameInviteArgs;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/GameInviteArgs;->newBuilder(Lcom/wufan/friend/chat/protocol/GameInviteArgs;)Lcom/wufan/friend/chat/protocol/GameInviteArgs$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/protocol/GameInviteArgs$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/GameInviteArgs;)Lcom/wufan/friend/chat/protocol/GameInviteArgs$b;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/GameInviteArgs$b;->buildPartial()Lcom/wufan/friend/chat/protocol/GameInviteArgs;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->gameInviteArgs_:Lcom/wufan/friend/chat/protocol/GameInviteArgs;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->gameInviteArgs_:Lcom/wufan/friend/chat/protocol/GameInviteArgs;

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

.method public mergeHeartArgs(Lcom/wufan/friend/chat/protocol/HeartArgs;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->heartArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->heartArgs_:Lcom/wufan/friend/chat/protocol/HeartArgs;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/HeartArgs;->newBuilder(Lcom/wufan/friend/chat/protocol/HeartArgs;)Lcom/wufan/friend/chat/protocol/HeartArgs$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/protocol/HeartArgs$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/HeartArgs;)Lcom/wufan/friend/chat/protocol/HeartArgs$b;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/HeartArgs$b;->buildPartial()Lcom/wufan/friend/chat/protocol/HeartArgs;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->heartArgs_:Lcom/wufan/friend/chat/protocol/HeartArgs;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->heartArgs_:Lcom/wufan/friend/chat/protocol/HeartArgs;

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

.method public mergeLocalBattleGameArgs(Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->localBattleGameArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->localBattleGameArgs_:Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;->newBuilder(Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;)Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;)Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs$b;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs$b;->buildPartial()Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->localBattleGameArgs_:Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->localBattleGameArgs_:Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;

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

.method public mergeLoginArgs(Lcom/wufan/friend/chat/protocol/LoginArgs;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->loginArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->loginArgs_:Lcom/wufan/friend/chat/protocol/LoginArgs;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/LoginArgs;->newBuilder(Lcom/wufan/friend/chat/protocol/LoginArgs;)Lcom/wufan/friend/chat/protocol/LoginArgs$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/protocol/LoginArgs$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/LoginArgs;)Lcom/wufan/friend/chat/protocol/LoginArgs$b;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/LoginArgs$b;->buildPartial()Lcom/wufan/friend/chat/protocol/LoginArgs;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->loginArgs_:Lcom/wufan/friend/chat/protocol/LoginArgs;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->loginArgs_:Lcom/wufan/friend/chat/protocol/LoginArgs;

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

.method public mergePlayGameArgs(Lcom/wufan/friend/chat/protocol/PlayGameArgs;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->playGameArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->playGameArgs_:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->newBuilder(Lcom/wufan/friend/chat/protocol/PlayGameArgs;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/PlayGameArgs;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->buildPartial()Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->playGameArgs_:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->playGameArgs_:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

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

.method public mergeRecommendPlayerArgs(Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->recommendPlayerArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->recommendPlayerArgs_:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->newBuilder(Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;)Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;)Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;->buildPartial()Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->recommendPlayerArgs_:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->recommendPlayerArgs_:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

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

.method public mergeStateArgs(Lcom/wufan/friend/chat/protocol/OnlineStateArgs;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->stateArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->stateArgs_:Lcom/wufan/friend/chat/protocol/OnlineStateArgs;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/OnlineStateArgs;->newBuilder(Lcom/wufan/friend/chat/protocol/OnlineStateArgs;)Lcom/wufan/friend/chat/protocol/OnlineStateArgs$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/protocol/OnlineStateArgs$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/OnlineStateArgs;)Lcom/wufan/friend/chat/protocol/OnlineStateArgs$b;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/OnlineStateArgs$b;->buildPartial()Lcom/wufan/friend/chat/protocol/OnlineStateArgs;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->stateArgs_:Lcom/wufan/friend/chat/protocol/OnlineStateArgs;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->stateArgs_:Lcom/wufan/friend/chat/protocol/OnlineStateArgs;

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
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;
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

    check-cast p1, Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    return-object p1
.end method

.method public setAckArgs(Lcom/wufan/friend/chat/protocol/AckArgs$b;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->ackArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/AckArgs$b;->build()Lcom/wufan/friend/chat/protocol/AckArgs;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->ackArgs_:Lcom/wufan/friend/chat/protocol/AckArgs;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/AckArgs$b;->build()Lcom/wufan/friend/chat/protocol/AckArgs;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setAckArgs(Lcom/wufan/friend/chat/protocol/AckArgs;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->ackArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->ackArgs_:Lcom/wufan/friend/chat/protocol/AckArgs;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setChatMessageArgs(Lcom/wufan/friend/chat/protocol/ChatMessageArgs$b;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatMessageArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/ChatMessageArgs$b;->build()Lcom/wufan/friend/chat/protocol/ChatMessageArgs;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatMessageArgs_:Lcom/wufan/friend/chat/protocol/ChatMessageArgs;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/ChatMessageArgs$b;->build()Lcom/wufan/friend/chat/protocol/ChatMessageArgs;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setChatMessageArgs(Lcom/wufan/friend/chat/protocol/ChatMessageArgs;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatMessageArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatMessageArgs_:Lcom/wufan/friend/chat/protocol/ChatMessageArgs;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setChatRoomArgs(Lcom/wufan/friend/chat/protocol/ChatRoomArgs$b;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatRoomArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/ChatRoomArgs$b;->build()Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatRoomArgs_:Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/ChatRoomArgs$b;->build()Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setChatRoomArgs(Lcom/wufan/friend/chat/protocol/ChatRoomArgs;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatRoomArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->chatRoomArgs_:Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;
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

    check-cast p1, Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    return-object p1
.end method

.method public setGameInviteArgs(Lcom/wufan/friend/chat/protocol/GameInviteArgs$b;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->gameInviteArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/GameInviteArgs$b;->build()Lcom/wufan/friend/chat/protocol/GameInviteArgs;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->gameInviteArgs_:Lcom/wufan/friend/chat/protocol/GameInviteArgs;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/GameInviteArgs$b;->build()Lcom/wufan/friend/chat/protocol/GameInviteArgs;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setGameInviteArgs(Lcom/wufan/friend/chat/protocol/GameInviteArgs;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->gameInviteArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->gameInviteArgs_:Lcom/wufan/friend/chat/protocol/GameInviteArgs;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setHeartArgs(Lcom/wufan/friend/chat/protocol/HeartArgs$b;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->heartArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/HeartArgs$b;->build()Lcom/wufan/friend/chat/protocol/HeartArgs;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->heartArgs_:Lcom/wufan/friend/chat/protocol/HeartArgs;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/HeartArgs$b;->build()Lcom/wufan/friend/chat/protocol/HeartArgs;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setHeartArgs(Lcom/wufan/friend/chat/protocol/HeartArgs;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->heartArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->heartArgs_:Lcom/wufan/friend/chat/protocol/HeartArgs;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setLocalBattleGameArgs(Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs$b;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->localBattleGameArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs$b;->build()Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->localBattleGameArgs_:Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs$b;->build()Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setLocalBattleGameArgs(Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->localBattleGameArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->localBattleGameArgs_:Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setLoginArgs(Lcom/wufan/friend/chat/protocol/LoginArgs$b;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->loginArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/LoginArgs$b;->build()Lcom/wufan/friend/chat/protocol/LoginArgs;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->loginArgs_:Lcom/wufan/friend/chat/protocol/LoginArgs;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/LoginArgs$b;->build()Lcom/wufan/friend/chat/protocol/LoginArgs;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setLoginArgs(Lcom/wufan/friend/chat/protocol/LoginArgs;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->loginArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->loginArgs_:Lcom/wufan/friend/chat/protocol/LoginArgs;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setPlayGameArgs(Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->playGameArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->build()Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->playGameArgs_:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->build()Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setPlayGameArgs(Lcom/wufan/friend/chat/protocol/PlayGameArgs;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->playGameArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->playGameArgs_:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setRecommendPlayerArgs(Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->recommendPlayerArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;->build()Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->recommendPlayerArgs_:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;->build()Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setRecommendPlayerArgs(Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->recommendPlayerArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->recommendPlayerArgs_:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

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
    invoke-virtual {p0, p1, p2, p3}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;

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
    invoke-virtual {p0, p1, p2, p3}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;
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

    check-cast p1, Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    return-object p1
.end method

.method public setStateArgs(Lcom/wufan/friend/chat/protocol/OnlineStateArgs$b;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->stateArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/OnlineStateArgs$b;->build()Lcom/wufan/friend/chat/protocol/OnlineStateArgs;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->stateArgs_:Lcom/wufan/friend/chat/protocol/OnlineStateArgs;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/OnlineStateArgs$b;->build()Lcom/wufan/friend/chat/protocol/OnlineStateArgs;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setStateArgs(Lcom/wufan/friend/chat/protocol/OnlineStateArgs;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->stateArgsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->stateArgs_:Lcom/wufan/friend/chat/protocol/OnlineStateArgs;

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;
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

    check-cast p1, Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    return-object p1
.end method
