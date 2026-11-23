.class public final Lcom/wufan/friend/chat/protocol/NotificationData$b;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/wufan/friend/chat/protocol/b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wufan/friend/chat/protocol/NotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/wufan/friend/chat/protocol/NotificationData$b;",
        ">;",
        "Lcom/wufan/friend/chat/protocol/b0;"
    }
.end annotation


# instance fields
.field private ack_:Z

.field private allFrdNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/AllFriendNotification;",
            "Lcom/wufan/friend/chat/protocol/AllFriendNotification$b;",
            "Lcom/wufan/friend/chat/protocol/c;",
            ">;"
        }
    .end annotation
.end field

.field private allFrdNotification_:Lcom/wufan/friend/chat/protocol/AllFriendNotification;

.field private allFriendNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;",
            "Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification$b;",
            "Lcom/wufan/friend/chat/protocol/d;",
            ">;"
        }
    .end annotation
.end field

.field private allFriendNotification_:Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;

.field private chatMsgNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/ChatMessageNotification;",
            "Lcom/wufan/friend/chat/protocol/ChatMessageNotification$b;",
            "Lcom/wufan/friend/chat/protocol/g;",
            ">;"
        }
    .end annotation
.end field

.field private chatMsgNotification_:Lcom/wufan/friend/chat/protocol/ChatMessageNotification;

.field private dialogBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/DialogNotification;",
            "Lcom/wufan/friend/chat/protocol/DialogNotification$b;",
            "Lcom/wufan/friend/chat/protocol/i;",
            ">;"
        }
    .end annotation
.end field

.field private dialog_:Lcom/wufan/friend/chat/protocol/DialogNotification;

.field private friAddReqNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;",
            "Lcom/wufan/friend/chat/protocol/FriendAddReqNotification$b;",
            "Lcom/wufan/friend/chat/protocol/j;",
            ">;"
        }
    .end annotation
.end field

.field private friAddReqNotification_:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

.field private friendAddSuccessNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;",
            "Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification$b;",
            "Lcom/wufan/friend/chat/protocol/k;",
            ">;"
        }
    .end annotation
.end field

.field private friendAddSuccessNotification_:Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;

.field private friendChangeStateBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;",
            "Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification$b;",
            "Lcom/wufan/friend/chat/protocol/m;",
            ">;"
        }
    .end annotation
.end field

.field private friendChangeState_:Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;

.field private friendDeleteSuccessBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;",
            "Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification$b;",
            "Lcom/wufan/friend/chat/protocol/n;",
            ">;"
        }
    .end annotation
.end field

.field private friendDeleteSuccess_:Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;

.field private friendPlayStateBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;",
            "Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification$b;",
            "Lcom/wufan/friend/chat/protocol/l;",
            ">;"
        }
    .end annotation
.end field

.field private friendPlayState_:Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;

.field private fromAccountBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
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

.field private fromAccount_:Lcom/wufan/friend/chat/protocol/AccountInfo;

.field private gameInviteBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/GameInviteNotification;",
            "Lcom/wufan/friend/chat/protocol/GameInviteNotification$b;",
            "Lcom/wufan/friend/chat/protocol/r;",
            ">;"
        }
    .end annotation
.end field

.field private gameInvite_:Lcom/wufan/friend/chat/protocol/GameInviteNotification;

.field private kickNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/KickNotification;",
            "Lcom/wufan/friend/chat/protocol/KickNotification$b;",
            "Lcom/wufan/friend/chat/protocol/u;",
            ">;"
        }
    .end annotation
.end field

.field private kickNotification_:Lcom/wufan/friend/chat/protocol/KickNotification;

.field private leaveRoomNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;",
            "Lcom/wufan/friend/chat/protocol/LeaveRoomNotification$b;",
            "Lcom/wufan/friend/chat/protocol/v;",
            ">;"
        }
    .end annotation
.end field

.field private leaveRoomNotification_:Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;

.field private messageId_:J

.field private playerBannedBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;",
            "Lcom/wufan/friend/chat/protocol/PlayerBannedNotification$b;",
            "Lcom/wufan/friend/chat/protocol/f0;",
            ">;"
        }
    .end annotation
.end field

.field private playerBanned_:Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;

.field private popWindowBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/PopWindowNotification;",
            "Lcom/wufan/friend/chat/protocol/PopWindowNotification$b;",
            "Lcom/wufan/friend/chat/protocol/g0;",
            ">;"
        }
    .end annotation
.end field

.field private popWindow_:Lcom/wufan/friend/chat/protocol/PopWindowNotification;

.field private recommendPlayerStateChangeBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;",
            "Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;",
            "Lcom/wufan/friend/chat/protocol/k0;",
            ">;"
        }
    .end annotation
.end field

.field private recommendPlayerStateChange_:Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

.field private rejectBattleInviteNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;",
            "Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification$b;",
            "Lcom/wufan/friend/chat/protocol/l0;",
            ">;"
        }
    .end annotation
.end field

.field private rejectBattleInviteNotification_:Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;

.field private sendTimestamp_:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 4
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->maybeForceBuilderInitialization()V

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
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/wufan/friend/chat/protocol/NotificationData$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/NotificationData$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wufan/friend/chat/protocol/NotificationData$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;-><init>()V

    return-void
.end method

.method private getAllFrdNotificationFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/AllFriendNotification;",
            "Lcom/wufan/friend/chat/protocol/AllFriendNotification$b;",
            "Lcom/wufan/friend/chat/protocol/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFrdNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->getAllFrdNotification()Lcom/wufan/friend/chat/protocol/AllFriendNotification;

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
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFrdNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFrdNotification_:Lcom/wufan/friend/chat/protocol/AllFriendNotification;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFrdNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getAllFriendNotificationFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;",
            "Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification$b;",
            "Lcom/wufan/friend/chat/protocol/d;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFriendNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->getAllFriendNotification()Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;

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
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFriendNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFriendNotification_:Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFriendNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getChatMsgNotificationFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/ChatMessageNotification;",
            "Lcom/wufan/friend/chat/protocol/ChatMessageNotification$b;",
            "Lcom/wufan/friend/chat/protocol/g;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->chatMsgNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->getChatMsgNotification()Lcom/wufan/friend/chat/protocol/ChatMessageNotification;

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
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->chatMsgNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->chatMsgNotification_:Lcom/wufan/friend/chat/protocol/ChatMessageNotification;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->chatMsgNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/a0;->U:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method private getDialogFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/DialogNotification;",
            "Lcom/wufan/friend/chat/protocol/DialogNotification$b;",
            "Lcom/wufan/friend/chat/protocol/i;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->dialogBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->getDialog()Lcom/wufan/friend/chat/protocol/DialogNotification;

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
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->dialogBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->dialog_:Lcom/wufan/friend/chat/protocol/DialogNotification;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->dialogBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getFriAddReqNotificationFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;",
            "Lcom/wufan/friend/chat/protocol/FriendAddReqNotification$b;",
            "Lcom/wufan/friend/chat/protocol/j;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friAddReqNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->getFriAddReqNotification()Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

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
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friAddReqNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friAddReqNotification_:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friAddReqNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getFriendAddSuccessNotificationFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;",
            "Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification$b;",
            "Lcom/wufan/friend/chat/protocol/k;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendAddSuccessNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->getFriendAddSuccessNotification()Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;

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
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendAddSuccessNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendAddSuccessNotification_:Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendAddSuccessNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getFriendChangeStateFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;",
            "Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification$b;",
            "Lcom/wufan/friend/chat/protocol/m;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendChangeStateBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->getFriendChangeState()Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;

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
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendChangeStateBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendChangeState_:Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendChangeStateBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getFriendDeleteSuccessFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;",
            "Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification$b;",
            "Lcom/wufan/friend/chat/protocol/n;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendDeleteSuccessBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->getFriendDeleteSuccess()Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;

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
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendDeleteSuccessBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendDeleteSuccess_:Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendDeleteSuccessBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getFriendPlayStateFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;",
            "Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification$b;",
            "Lcom/wufan/friend/chat/protocol/l;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendPlayStateBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->getFriendPlayState()Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;

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
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendPlayStateBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendPlayState_:Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendPlayStateBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getFromAccountFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->fromAccountBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->getFromAccount()Lcom/wufan/friend/chat/protocol/AccountInfo;

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
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->fromAccountBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->fromAccount_:Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->fromAccountBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getGameInviteFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/GameInviteNotification;",
            "Lcom/wufan/friend/chat/protocol/GameInviteNotification$b;",
            "Lcom/wufan/friend/chat/protocol/r;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->gameInviteBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->getGameInvite()Lcom/wufan/friend/chat/protocol/GameInviteNotification;

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
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->gameInviteBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->gameInvite_:Lcom/wufan/friend/chat/protocol/GameInviteNotification;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->gameInviteBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getKickNotificationFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/KickNotification;",
            "Lcom/wufan/friend/chat/protocol/KickNotification$b;",
            "Lcom/wufan/friend/chat/protocol/u;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->kickNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->getKickNotification()Lcom/wufan/friend/chat/protocol/KickNotification;

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
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->kickNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->kickNotification_:Lcom/wufan/friend/chat/protocol/KickNotification;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->kickNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getLeaveRoomNotificationFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;",
            "Lcom/wufan/friend/chat/protocol/LeaveRoomNotification$b;",
            "Lcom/wufan/friend/chat/protocol/v;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->leaveRoomNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->getLeaveRoomNotification()Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;

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
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->leaveRoomNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->leaveRoomNotification_:Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->leaveRoomNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getPlayerBannedFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;",
            "Lcom/wufan/friend/chat/protocol/PlayerBannedNotification$b;",
            "Lcom/wufan/friend/chat/protocol/f0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->playerBannedBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->getPlayerBanned()Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;

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
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->playerBannedBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->playerBanned_:Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->playerBannedBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getPopWindowFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/PopWindowNotification;",
            "Lcom/wufan/friend/chat/protocol/PopWindowNotification$b;",
            "Lcom/wufan/friend/chat/protocol/g0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->popWindowBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->getPopWindow()Lcom/wufan/friend/chat/protocol/PopWindowNotification;

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
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->popWindowBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->popWindow_:Lcom/wufan/friend/chat/protocol/PopWindowNotification;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->popWindowBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getRecommendPlayerStateChangeFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;",
            "Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;",
            "Lcom/wufan/friend/chat/protocol/k0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->recommendPlayerStateChangeBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->getRecommendPlayerStateChange()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

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
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->recommendPlayerStateChangeBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->recommendPlayerStateChange_:Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->recommendPlayerStateChangeBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getRejectBattleInviteNotificationFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;",
            "Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification$b;",
            "Lcom/wufan/friend/chat/protocol/l0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->rejectBattleInviteNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->getRejectBattleInviteNotification()Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;

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
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->rejectBattleInviteNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->rejectBattleInviteNotification_:Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->rejectBattleInviteNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/protocol/NotificationData;->access$200()Z

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/friend/chat/protocol/NotificationData$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/friend/chat/protocol/NotificationData$b;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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

    check-cast p1, Lcom/wufan/friend/chat/protocol/NotificationData$b;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->build()Lcom/wufan/friend/chat/protocol/NotificationData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->build()Lcom/wufan/friend/chat/protocol/NotificationData;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/wufan/friend/chat/protocol/NotificationData;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->buildPartial()Lcom/wufan/friend/chat/protocol/NotificationData;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/NotificationData;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->buildPartial()Lcom/wufan/friend/chat/protocol/NotificationData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->buildPartial()Lcom/wufan/friend/chat/protocol/NotificationData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/wufan/friend/chat/protocol/NotificationData;
    .locals 3

    .line 3
    new-instance v0, Lcom/wufan/friend/chat/protocol/NotificationData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wufan/friend/chat/protocol/NotificationData;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/wufan/friend/chat/protocol/NotificationData$a;)V

    .line 4
    iget-wide v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->messageId_:J

    invoke-static {v0, v1, v2}, Lcom/wufan/friend/chat/protocol/NotificationData;->access$402(Lcom/wufan/friend/chat/protocol/NotificationData;J)J

    .line 5
    iget-wide v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->sendTimestamp_:J

    invoke-static {v0, v1, v2}, Lcom/wufan/friend/chat/protocol/NotificationData;->access$502(Lcom/wufan/friend/chat/protocol/NotificationData;J)J

    .line 6
    iget-boolean v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->ack_:Z

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/NotificationData;->access$602(Lcom/wufan/friend/chat/protocol/NotificationData;Z)Z

    .line 7
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->fromAccountBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->fromAccount_:Lcom/wufan/friend/chat/protocol/AccountInfo;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/NotificationData;->access$702(Lcom/wufan/friend/chat/protocol/NotificationData;Lcom/wufan/friend/chat/protocol/AccountInfo;)Lcom/wufan/friend/chat/protocol/AccountInfo;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/AccountInfo;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/NotificationData;->access$702(Lcom/wufan/friend/chat/protocol/NotificationData;Lcom/wufan/friend/chat/protocol/AccountInfo;)Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 10
    :goto_0
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->dialogBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_1

    .line 11
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->dialog_:Lcom/wufan/friend/chat/protocol/DialogNotification;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/NotificationData;->access$802(Lcom/wufan/friend/chat/protocol/NotificationData;Lcom/wufan/friend/chat/protocol/DialogNotification;)Lcom/wufan/friend/chat/protocol/DialogNotification;

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/DialogNotification;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/NotificationData;->access$802(Lcom/wufan/friend/chat/protocol/NotificationData;Lcom/wufan/friend/chat/protocol/DialogNotification;)Lcom/wufan/friend/chat/protocol/DialogNotification;

    .line 13
    :goto_1
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->popWindowBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_2

    .line 14
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->popWindow_:Lcom/wufan/friend/chat/protocol/PopWindowNotification;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/NotificationData;->access$902(Lcom/wufan/friend/chat/protocol/NotificationData;Lcom/wufan/friend/chat/protocol/PopWindowNotification;)Lcom/wufan/friend/chat/protocol/PopWindowNotification;

    goto :goto_2

    .line 15
    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/PopWindowNotification;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/NotificationData;->access$902(Lcom/wufan/friend/chat/protocol/NotificationData;Lcom/wufan/friend/chat/protocol/PopWindowNotification;)Lcom/wufan/friend/chat/protocol/PopWindowNotification;

    .line 16
    :goto_2
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->gameInviteBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_3

    .line 17
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->gameInvite_:Lcom/wufan/friend/chat/protocol/GameInviteNotification;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/NotificationData;->access$1002(Lcom/wufan/friend/chat/protocol/NotificationData;Lcom/wufan/friend/chat/protocol/GameInviteNotification;)Lcom/wufan/friend/chat/protocol/GameInviteNotification;

    goto :goto_3

    .line 18
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/GameInviteNotification;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/NotificationData;->access$1002(Lcom/wufan/friend/chat/protocol/NotificationData;Lcom/wufan/friend/chat/protocol/GameInviteNotification;)Lcom/wufan/friend/chat/protocol/GameInviteNotification;

    .line 19
    :goto_3
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendChangeStateBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_4

    .line 20
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendChangeState_:Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/NotificationData;->access$1102(Lcom/wufan/friend/chat/protocol/NotificationData;Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;)Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;

    goto :goto_4

    .line 21
    :cond_4
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/NotificationData;->access$1102(Lcom/wufan/friend/chat/protocol/NotificationData;Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;)Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;

    .line 22
    :goto_4
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendPlayStateBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_5

    .line 23
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendPlayState_:Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/NotificationData;->access$1202(Lcom/wufan/friend/chat/protocol/NotificationData;Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;)Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;

    goto :goto_5

    .line 24
    :cond_5
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/NotificationData;->access$1202(Lcom/wufan/friend/chat/protocol/NotificationData;Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;)Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;

    .line 25
    :goto_5
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->kickNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_6

    .line 26
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->kickNotification_:Lcom/wufan/friend/chat/protocol/KickNotification;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/NotificationData;->access$1302(Lcom/wufan/friend/chat/protocol/NotificationData;Lcom/wufan/friend/chat/protocol/KickNotification;)Lcom/wufan/friend/chat/protocol/KickNotification;

    goto :goto_6

    .line 27
    :cond_6
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/KickNotification;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/NotificationData;->access$1302(Lcom/wufan/friend/chat/protocol/NotificationData;Lcom/wufan/friend/chat/protocol/KickNotification;)Lcom/wufan/friend/chat/protocol/KickNotification;

    .line 28
    :goto_6
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFriendNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_7

    .line 29
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFriendNotification_:Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/NotificationData;->access$1402(Lcom/wufan/friend/chat/protocol/NotificationData;Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;)Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;

    goto :goto_7

    .line 30
    :cond_7
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/NotificationData;->access$1402(Lcom/wufan/friend/chat/protocol/NotificationData;Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;)Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;

    .line 31
    :goto_7
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->chatMsgNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_8

    .line 32
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->chatMsgNotification_:Lcom/wufan/friend/chat/protocol/ChatMessageNotification;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/NotificationData;->access$1502(Lcom/wufan/friend/chat/protocol/NotificationData;Lcom/wufan/friend/chat/protocol/ChatMessageNotification;)Lcom/wufan/friend/chat/protocol/ChatMessageNotification;

    goto :goto_8

    .line 33
    :cond_8
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/ChatMessageNotification;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/NotificationData;->access$1502(Lcom/wufan/friend/chat/protocol/NotificationData;Lcom/wufan/friend/chat/protocol/ChatMessageNotification;)Lcom/wufan/friend/chat/protocol/ChatMessageNotification;

    .line 34
    :goto_8
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friAddReqNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_9

    .line 35
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friAddReqNotification_:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/NotificationData;->access$1602(Lcom/wufan/friend/chat/protocol/NotificationData;Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;)Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    goto :goto_9

    .line 36
    :cond_9
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/NotificationData;->access$1602(Lcom/wufan/friend/chat/protocol/NotificationData;Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;)Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    .line 37
    :goto_9
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->leaveRoomNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_a

    .line 38
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->leaveRoomNotification_:Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/NotificationData;->access$1702(Lcom/wufan/friend/chat/protocol/NotificationData;Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;)Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;

    goto :goto_a

    .line 39
    :cond_a
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/NotificationData;->access$1702(Lcom/wufan/friend/chat/protocol/NotificationData;Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;)Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;

    .line 40
    :goto_a
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendAddSuccessNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_b

    .line 41
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendAddSuccessNotification_:Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/NotificationData;->access$1802(Lcom/wufan/friend/chat/protocol/NotificationData;Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;)Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;

    goto :goto_b

    .line 42
    :cond_b
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/NotificationData;->access$1802(Lcom/wufan/friend/chat/protocol/NotificationData;Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;)Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;

    .line 43
    :goto_b
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->rejectBattleInviteNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_c

    .line 44
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->rejectBattleInviteNotification_:Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/NotificationData;->access$1902(Lcom/wufan/friend/chat/protocol/NotificationData;Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;)Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;

    goto :goto_c

    .line 45
    :cond_c
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/NotificationData;->access$1902(Lcom/wufan/friend/chat/protocol/NotificationData;Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;)Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;

    .line 46
    :goto_c
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFrdNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_d

    .line 47
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFrdNotification_:Lcom/wufan/friend/chat/protocol/AllFriendNotification;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/NotificationData;->access$2002(Lcom/wufan/friend/chat/protocol/NotificationData;Lcom/wufan/friend/chat/protocol/AllFriendNotification;)Lcom/wufan/friend/chat/protocol/AllFriendNotification;

    goto :goto_d

    .line 48
    :cond_d
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/AllFriendNotification;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/NotificationData;->access$2002(Lcom/wufan/friend/chat/protocol/NotificationData;Lcom/wufan/friend/chat/protocol/AllFriendNotification;)Lcom/wufan/friend/chat/protocol/AllFriendNotification;

    .line 49
    :goto_d
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->recommendPlayerStateChangeBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_e

    .line 50
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->recommendPlayerStateChange_:Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/NotificationData;->access$2102(Lcom/wufan/friend/chat/protocol/NotificationData;Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    goto :goto_e

    .line 51
    :cond_e
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/NotificationData;->access$2102(Lcom/wufan/friend/chat/protocol/NotificationData;Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    .line 52
    :goto_e
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendDeleteSuccessBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_f

    .line 53
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendDeleteSuccess_:Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/NotificationData;->access$2202(Lcom/wufan/friend/chat/protocol/NotificationData;Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;)Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;

    goto :goto_f

    .line 54
    :cond_f
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/NotificationData;->access$2202(Lcom/wufan/friend/chat/protocol/NotificationData;Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;)Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;

    .line 55
    :goto_f
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->playerBannedBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_10

    .line 56
    iget-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->playerBanned_:Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/NotificationData;->access$2302(Lcom/wufan/friend/chat/protocol/NotificationData;Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;)Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;

    goto :goto_10

    .line 57
    :cond_10
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;

    invoke-static {v0, v1}, Lcom/wufan/friend/chat/protocol/NotificationData;->access$2302(Lcom/wufan/friend/chat/protocol/NotificationData;Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;)Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;

    .line 58
    :goto_10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->clear()Lcom/wufan/friend/chat/protocol/NotificationData$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->clear()Lcom/wufan/friend/chat/protocol/NotificationData$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->clear()Lcom/wufan/friend/chat/protocol/NotificationData$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->clear()Lcom/wufan/friend/chat/protocol/NotificationData$b;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/wufan/friend/chat/protocol/NotificationData$b;
    .locals 2

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->messageId_:J

    .line 7
    iput-wide v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->sendTimestamp_:J

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->ack_:Z

    .line 9
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->fromAccountBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 10
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->fromAccount_:Lcom/wufan/friend/chat/protocol/AccountInfo;

    goto :goto_0

    .line 11
    :cond_0
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->fromAccount_:Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 12
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->fromAccountBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->dialogBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 14
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->dialog_:Lcom/wufan/friend/chat/protocol/DialogNotification;

    goto :goto_1

    .line 15
    :cond_1
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->dialog_:Lcom/wufan/friend/chat/protocol/DialogNotification;

    .line 16
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->dialogBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 17
    :goto_1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->popWindowBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_2

    .line 18
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->popWindow_:Lcom/wufan/friend/chat/protocol/PopWindowNotification;

    goto :goto_2

    .line 19
    :cond_2
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->popWindow_:Lcom/wufan/friend/chat/protocol/PopWindowNotification;

    .line 20
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->popWindowBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 21
    :goto_2
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->gameInviteBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_3

    .line 22
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->gameInvite_:Lcom/wufan/friend/chat/protocol/GameInviteNotification;

    goto :goto_3

    .line 23
    :cond_3
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->gameInvite_:Lcom/wufan/friend/chat/protocol/GameInviteNotification;

    .line 24
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->gameInviteBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 25
    :goto_3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendChangeStateBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_4

    .line 26
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendChangeState_:Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;

    goto :goto_4

    .line 27
    :cond_4
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendChangeState_:Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;

    .line 28
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendChangeStateBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 29
    :goto_4
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendPlayStateBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_5

    .line 30
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendPlayState_:Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;

    goto :goto_5

    .line 31
    :cond_5
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendPlayState_:Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;

    .line 32
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendPlayStateBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 33
    :goto_5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->kickNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_6

    .line 34
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->kickNotification_:Lcom/wufan/friend/chat/protocol/KickNotification;

    goto :goto_6

    .line 35
    :cond_6
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->kickNotification_:Lcom/wufan/friend/chat/protocol/KickNotification;

    .line 36
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->kickNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 37
    :goto_6
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFriendNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_7

    .line 38
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFriendNotification_:Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;

    goto :goto_7

    .line 39
    :cond_7
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFriendNotification_:Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;

    .line 40
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFriendNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 41
    :goto_7
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->chatMsgNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_8

    .line 42
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->chatMsgNotification_:Lcom/wufan/friend/chat/protocol/ChatMessageNotification;

    goto :goto_8

    .line 43
    :cond_8
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->chatMsgNotification_:Lcom/wufan/friend/chat/protocol/ChatMessageNotification;

    .line 44
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->chatMsgNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 45
    :goto_8
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friAddReqNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_9

    .line 46
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friAddReqNotification_:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    goto :goto_9

    .line 47
    :cond_9
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friAddReqNotification_:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    .line 48
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friAddReqNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 49
    :goto_9
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->leaveRoomNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_a

    .line 50
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->leaveRoomNotification_:Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;

    goto :goto_a

    .line 51
    :cond_a
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->leaveRoomNotification_:Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;

    .line 52
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->leaveRoomNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 53
    :goto_a
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendAddSuccessNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_b

    .line 54
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendAddSuccessNotification_:Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;

    goto :goto_b

    .line 55
    :cond_b
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendAddSuccessNotification_:Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;

    .line 56
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendAddSuccessNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 57
    :goto_b
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->rejectBattleInviteNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_c

    .line 58
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->rejectBattleInviteNotification_:Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;

    goto :goto_c

    .line 59
    :cond_c
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->rejectBattleInviteNotification_:Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;

    .line 60
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->rejectBattleInviteNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 61
    :goto_c
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFrdNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_d

    .line 62
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFrdNotification_:Lcom/wufan/friend/chat/protocol/AllFriendNotification;

    goto :goto_d

    .line 63
    :cond_d
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFrdNotification_:Lcom/wufan/friend/chat/protocol/AllFriendNotification;

    .line 64
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFrdNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 65
    :goto_d
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->recommendPlayerStateChangeBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_e

    .line 66
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->recommendPlayerStateChange_:Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    goto :goto_e

    .line 67
    :cond_e
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->recommendPlayerStateChange_:Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    .line 68
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->recommendPlayerStateChangeBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 69
    :goto_e
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendDeleteSuccessBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_f

    .line 70
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendDeleteSuccess_:Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;

    goto :goto_f

    .line 71
    :cond_f
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendDeleteSuccess_:Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;

    .line 72
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendDeleteSuccessBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 73
    :goto_f
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->playerBannedBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_10

    .line 74
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->playerBanned_:Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;

    goto :goto_10

    .line 75
    :cond_10
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->playerBanned_:Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;

    .line 76
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->playerBannedBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_10
    return-object p0
.end method

.method public clearAck()Lcom/wufan/friend/chat/protocol/NotificationData$b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->ack_:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public clearAllFrdNotification()Lcom/wufan/friend/chat/protocol/NotificationData$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFrdNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFrdNotification_:Lcom/wufan/friend/chat/protocol/AllFriendNotification;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFrdNotification_:Lcom/wufan/friend/chat/protocol/AllFriendNotification;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFrdNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearAllFriendNotification()Lcom/wufan/friend/chat/protocol/NotificationData$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFriendNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFriendNotification_:Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFriendNotification_:Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFriendNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearChatMsgNotification()Lcom/wufan/friend/chat/protocol/NotificationData$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->chatMsgNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->chatMsgNotification_:Lcom/wufan/friend/chat/protocol/ChatMessageNotification;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->chatMsgNotification_:Lcom/wufan/friend/chat/protocol/ChatMessageNotification;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->chatMsgNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearDialog()Lcom/wufan/friend/chat/protocol/NotificationData$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->dialogBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->dialog_:Lcom/wufan/friend/chat/protocol/DialogNotification;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->dialog_:Lcom/wufan/friend/chat/protocol/DialogNotification;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->dialogBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/wufan/friend/chat/protocol/NotificationData$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/wufan/friend/chat/protocol/NotificationData$b;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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

    check-cast p1, Lcom/wufan/friend/chat/protocol/NotificationData$b;

    return-object p1
.end method

.method public clearFriAddReqNotification()Lcom/wufan/friend/chat/protocol/NotificationData$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friAddReqNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friAddReqNotification_:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friAddReqNotification_:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friAddReqNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearFriendAddSuccessNotification()Lcom/wufan/friend/chat/protocol/NotificationData$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendAddSuccessNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendAddSuccessNotification_:Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendAddSuccessNotification_:Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendAddSuccessNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearFriendChangeState()Lcom/wufan/friend/chat/protocol/NotificationData$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendChangeStateBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendChangeState_:Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendChangeState_:Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendChangeStateBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearFriendDeleteSuccess()Lcom/wufan/friend/chat/protocol/NotificationData$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendDeleteSuccessBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendDeleteSuccess_:Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendDeleteSuccess_:Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendDeleteSuccessBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearFriendPlayState()Lcom/wufan/friend/chat/protocol/NotificationData$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendPlayStateBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendPlayState_:Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendPlayState_:Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendPlayStateBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearFromAccount()Lcom/wufan/friend/chat/protocol/NotificationData$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->fromAccountBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->fromAccount_:Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->fromAccount_:Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->fromAccountBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearGameInvite()Lcom/wufan/friend/chat/protocol/NotificationData$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->gameInviteBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->gameInvite_:Lcom/wufan/friend/chat/protocol/GameInviteNotification;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->gameInvite_:Lcom/wufan/friend/chat/protocol/GameInviteNotification;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->gameInviteBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearKickNotification()Lcom/wufan/friend/chat/protocol/NotificationData$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->kickNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->kickNotification_:Lcom/wufan/friend/chat/protocol/KickNotification;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->kickNotification_:Lcom/wufan/friend/chat/protocol/KickNotification;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->kickNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearLeaveRoomNotification()Lcom/wufan/friend/chat/protocol/NotificationData$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->leaveRoomNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->leaveRoomNotification_:Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->leaveRoomNotification_:Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->leaveRoomNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearMessageId()Lcom/wufan/friend/chat/protocol/NotificationData$b;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->messageId_:J

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 6
    .line 7
    .line 8
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
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/wufan/friend/chat/protocol/NotificationData$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/wufan/friend/chat/protocol/NotificationData$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/wufan/friend/chat/protocol/NotificationData$b;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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

    check-cast p1, Lcom/wufan/friend/chat/protocol/NotificationData$b;

    return-object p1
.end method

.method public clearPlayerBanned()Lcom/wufan/friend/chat/protocol/NotificationData$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->playerBannedBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->playerBanned_:Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->playerBanned_:Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->playerBannedBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearPopWindow()Lcom/wufan/friend/chat/protocol/NotificationData$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->popWindowBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->popWindow_:Lcom/wufan/friend/chat/protocol/PopWindowNotification;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->popWindow_:Lcom/wufan/friend/chat/protocol/PopWindowNotification;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->popWindowBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearRecommendPlayerStateChange()Lcom/wufan/friend/chat/protocol/NotificationData$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->recommendPlayerStateChangeBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->recommendPlayerStateChange_:Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->recommendPlayerStateChange_:Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->recommendPlayerStateChangeBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearRejectBattleInviteNotification()Lcom/wufan/friend/chat/protocol/NotificationData$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->rejectBattleInviteNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->rejectBattleInviteNotification_:Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->rejectBattleInviteNotification_:Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->rejectBattleInviteNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearSendTimestamp()Lcom/wufan/friend/chat/protocol/NotificationData$b;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->sendTimestamp_:J

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->clone()Lcom/wufan/friend/chat/protocol/NotificationData$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->clone()Lcom/wufan/friend/chat/protocol/NotificationData$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->clone()Lcom/wufan/friend/chat/protocol/NotificationData$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->clone()Lcom/wufan/friend/chat/protocol/NotificationData$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->clone()Lcom/wufan/friend/chat/protocol/NotificationData$b;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/wufan/friend/chat/protocol/NotificationData$b;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/wufan/friend/chat/protocol/NotificationData$b;

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
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->clone()Lcom/wufan/friend/chat/protocol/NotificationData$b;

    move-result-object v0

    return-object v0
.end method

.method public getAck()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->ack_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getAllFrdNotification()Lcom/wufan/friend/chat/protocol/AllFriendNotification;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFrdNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFrdNotification_:Lcom/wufan/friend/chat/protocol/AllFriendNotification;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/wufan/friend/chat/protocol/AllFriendNotification;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/AllFriendNotification;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/AllFriendNotification;

    .line 19
    .line 20
    return-object v0
.end method

.method public getAllFrdNotificationBuilder()Lcom/wufan/friend/chat/protocol/AllFriendNotification$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->getAllFrdNotificationFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/AllFriendNotification$b;

    .line 13
    .line 14
    return-object v0
.end method

.method public getAllFrdNotificationOrBuilder()Lcom/wufan/friend/chat/protocol/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFrdNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/c;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFrdNotification_:Lcom/wufan/friend/chat/protocol/AllFriendNotification;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/wufan/friend/chat/protocol/AllFriendNotification;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/AllFriendNotification;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getAllFriendNotification()Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFriendNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFriendNotification_:Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;

    .line 19
    .line 20
    return-object v0
.end method

.method public getAllFriendNotificationBuilder()Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->getAllFriendNotificationFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification$b;

    .line 13
    .line 14
    return-object v0
.end method

.method public getAllFriendNotificationOrBuilder()Lcom/wufan/friend/chat/protocol/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFriendNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/d;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFriendNotification_:Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getChatMsgNotification()Lcom/wufan/friend/chat/protocol/ChatMessageNotification;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->chatMsgNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->chatMsgNotification_:Lcom/wufan/friend/chat/protocol/ChatMessageNotification;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/wufan/friend/chat/protocol/ChatMessageNotification;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/ChatMessageNotification;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/ChatMessageNotification;

    .line 19
    .line 20
    return-object v0
.end method

.method public getChatMsgNotificationBuilder()Lcom/wufan/friend/chat/protocol/ChatMessageNotification$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->getChatMsgNotificationFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/ChatMessageNotification$b;

    .line 13
    .line 14
    return-object v0
.end method

.method public getChatMsgNotificationOrBuilder()Lcom/wufan/friend/chat/protocol/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->chatMsgNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/g;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->chatMsgNotification_:Lcom/wufan/friend/chat/protocol/ChatMessageNotification;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/wufan/friend/chat/protocol/ChatMessageNotification;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/ChatMessageNotification;

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
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->getDefaultInstanceForType()Lcom/wufan/friend/chat/protocol/NotificationData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->getDefaultInstanceForType()Lcom/wufan/friend/chat/protocol/NotificationData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/wufan/friend/chat/protocol/NotificationData;
    .locals 1

    .line 3
    invoke-static {}, Lcom/wufan/friend/chat/protocol/NotificationData;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/NotificationData;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/a0;->U:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDialog()Lcom/wufan/friend/chat/protocol/DialogNotification;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->dialogBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->dialog_:Lcom/wufan/friend/chat/protocol/DialogNotification;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/wufan/friend/chat/protocol/DialogNotification;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/DialogNotification;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/DialogNotification;

    .line 19
    .line 20
    return-object v0
.end method

.method public getDialogBuilder()Lcom/wufan/friend/chat/protocol/DialogNotification$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->getDialogFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/DialogNotification$b;

    .line 13
    .line 14
    return-object v0
.end method

.method public getDialogOrBuilder()Lcom/wufan/friend/chat/protocol/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->dialogBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/i;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->dialog_:Lcom/wufan/friend/chat/protocol/DialogNotification;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/wufan/friend/chat/protocol/DialogNotification;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/DialogNotification;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getFriAddReqNotification()Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friAddReqNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friAddReqNotification_:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    .line 19
    .line 20
    return-object v0
.end method

.method public getFriAddReqNotificationBuilder()Lcom/wufan/friend/chat/protocol/FriendAddReqNotification$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->getFriAddReqNotificationFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification$b;

    .line 13
    .line 14
    return-object v0
.end method

.method public getFriAddReqNotificationOrBuilder()Lcom/wufan/friend/chat/protocol/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friAddReqNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/j;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friAddReqNotification_:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getFriendAddSuccessNotification()Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendAddSuccessNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendAddSuccessNotification_:Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;

    .line 19
    .line 20
    return-object v0
.end method

.method public getFriendAddSuccessNotificationBuilder()Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->getFriendAddSuccessNotificationFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification$b;

    .line 13
    .line 14
    return-object v0
.end method

.method public getFriendAddSuccessNotificationOrBuilder()Lcom/wufan/friend/chat/protocol/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendAddSuccessNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/k;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendAddSuccessNotification_:Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getFriendChangeState()Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendChangeStateBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendChangeState_:Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;

    .line 19
    .line 20
    return-object v0
.end method

.method public getFriendChangeStateBuilder()Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->getFriendChangeStateFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification$b;

    .line 13
    .line 14
    return-object v0
.end method

.method public getFriendChangeStateOrBuilder()Lcom/wufan/friend/chat/protocol/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendChangeStateBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/m;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendChangeState_:Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getFriendDeleteSuccess()Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendDeleteSuccessBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendDeleteSuccess_:Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;

    .line 19
    .line 20
    return-object v0
.end method

.method public getFriendDeleteSuccessBuilder()Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->getFriendDeleteSuccessFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification$b;

    .line 13
    .line 14
    return-object v0
.end method

.method public getFriendDeleteSuccessOrBuilder()Lcom/wufan/friend/chat/protocol/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendDeleteSuccessBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/n;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendDeleteSuccess_:Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getFriendPlayState()Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendPlayStateBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendPlayState_:Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;

    .line 19
    .line 20
    return-object v0
.end method

.method public getFriendPlayStateBuilder()Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->getFriendPlayStateFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification$b;

    .line 13
    .line 14
    return-object v0
.end method

.method public getFriendPlayStateOrBuilder()Lcom/wufan/friend/chat/protocol/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendPlayStateBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/l;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendPlayState_:Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getFromAccount()Lcom/wufan/friend/chat/protocol/AccountInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->fromAccountBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->fromAccount_:Lcom/wufan/friend/chat/protocol/AccountInfo;

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

.method public getFromAccountBuilder()Lcom/wufan/friend/chat/protocol/AccountInfo$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->getFromAccountFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

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

.method public getFromAccountOrBuilder()Lcom/wufan/friend/chat/protocol/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->fromAccountBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->fromAccount_:Lcom/wufan/friend/chat/protocol/AccountInfo;

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

.method public getGameInvite()Lcom/wufan/friend/chat/protocol/GameInviteNotification;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->gameInviteBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->gameInvite_:Lcom/wufan/friend/chat/protocol/GameInviteNotification;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/wufan/friend/chat/protocol/GameInviteNotification;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/GameInviteNotification;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/GameInviteNotification;

    .line 19
    .line 20
    return-object v0
.end method

.method public getGameInviteBuilder()Lcom/wufan/friend/chat/protocol/GameInviteNotification$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->getGameInviteFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/GameInviteNotification$b;

    .line 13
    .line 14
    return-object v0
.end method

.method public getGameInviteOrBuilder()Lcom/wufan/friend/chat/protocol/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->gameInviteBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/r;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->gameInvite_:Lcom/wufan/friend/chat/protocol/GameInviteNotification;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/wufan/friend/chat/protocol/GameInviteNotification;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/GameInviteNotification;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getKickNotification()Lcom/wufan/friend/chat/protocol/KickNotification;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->kickNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->kickNotification_:Lcom/wufan/friend/chat/protocol/KickNotification;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/wufan/friend/chat/protocol/KickNotification;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/KickNotification;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/KickNotification;

    .line 19
    .line 20
    return-object v0
.end method

.method public getKickNotificationBuilder()Lcom/wufan/friend/chat/protocol/KickNotification$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->getKickNotificationFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/KickNotification$b;

    .line 13
    .line 14
    return-object v0
.end method

.method public getKickNotificationOrBuilder()Lcom/wufan/friend/chat/protocol/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->kickNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/u;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->kickNotification_:Lcom/wufan/friend/chat/protocol/KickNotification;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/wufan/friend/chat/protocol/KickNotification;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/KickNotification;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getLeaveRoomNotification()Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->leaveRoomNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->leaveRoomNotification_:Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;

    .line 19
    .line 20
    return-object v0
.end method

.method public getLeaveRoomNotificationBuilder()Lcom/wufan/friend/chat/protocol/LeaveRoomNotification$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->getLeaveRoomNotificationFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/LeaveRoomNotification$b;

    .line 13
    .line 14
    return-object v0
.end method

.method public getLeaveRoomNotificationOrBuilder()Lcom/wufan/friend/chat/protocol/v;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->leaveRoomNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/v;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->leaveRoomNotification_:Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getMessageId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->messageId_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getPlayerBanned()Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->playerBannedBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->playerBanned_:Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;

    .line 19
    .line 20
    return-object v0
.end method

.method public getPlayerBannedBuilder()Lcom/wufan/friend/chat/protocol/PlayerBannedNotification$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->getPlayerBannedFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/PlayerBannedNotification$b;

    .line 13
    .line 14
    return-object v0
.end method

.method public getPlayerBannedOrBuilder()Lcom/wufan/friend/chat/protocol/f0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->playerBannedBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/f0;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->playerBanned_:Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getPopWindow()Lcom/wufan/friend/chat/protocol/PopWindowNotification;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->popWindowBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->popWindow_:Lcom/wufan/friend/chat/protocol/PopWindowNotification;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/wufan/friend/chat/protocol/PopWindowNotification;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/PopWindowNotification;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/PopWindowNotification;

    .line 19
    .line 20
    return-object v0
.end method

.method public getPopWindowBuilder()Lcom/wufan/friend/chat/protocol/PopWindowNotification$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->getPopWindowFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/PopWindowNotification$b;

    .line 13
    .line 14
    return-object v0
.end method

.method public getPopWindowOrBuilder()Lcom/wufan/friend/chat/protocol/g0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->popWindowBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/g0;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->popWindow_:Lcom/wufan/friend/chat/protocol/PopWindowNotification;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/wufan/friend/chat/protocol/PopWindowNotification;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/PopWindowNotification;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getRecommendPlayerStateChange()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->recommendPlayerStateChangeBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->recommendPlayerStateChange_:Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    .line 19
    .line 20
    return-object v0
.end method

.method public getRecommendPlayerStateChangeBuilder()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->getRecommendPlayerStateChangeFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

    .line 13
    .line 14
    return-object v0
.end method

.method public getRecommendPlayerStateChangeOrBuilder()Lcom/wufan/friend/chat/protocol/k0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->recommendPlayerStateChangeBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/k0;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->recommendPlayerStateChange_:Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getRejectBattleInviteNotification()Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->rejectBattleInviteNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->rejectBattleInviteNotification_:Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;

    .line 19
    .line 20
    return-object v0
.end method

.method public getRejectBattleInviteNotificationBuilder()Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->getRejectBattleInviteNotificationFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification$b;

    .line 13
    .line 14
    return-object v0
.end method

.method public getRejectBattleInviteNotificationOrBuilder()Lcom/wufan/friend/chat/protocol/l0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->rejectBattleInviteNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

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
    check-cast v0, Lcom/wufan/friend/chat/protocol/l0;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->rejectBattleInviteNotification_:Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getSendTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->sendTimestamp_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public hasAllFrdNotification()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFrdNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFrdNotification_:Lcom/wufan/friend/chat/protocol/AllFriendNotification;

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

.method public hasAllFriendNotification()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFriendNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFriendNotification_:Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;

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

.method public hasChatMsgNotification()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->chatMsgNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->chatMsgNotification_:Lcom/wufan/friend/chat/protocol/ChatMessageNotification;

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

.method public hasDialog()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->dialogBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->dialog_:Lcom/wufan/friend/chat/protocol/DialogNotification;

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

.method public hasFriAddReqNotification()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friAddReqNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friAddReqNotification_:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

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

.method public hasFriendAddSuccessNotification()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendAddSuccessNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendAddSuccessNotification_:Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;

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

.method public hasFriendChangeState()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendChangeStateBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendChangeState_:Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;

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

.method public hasFriendDeleteSuccess()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendDeleteSuccessBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendDeleteSuccess_:Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;

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

.method public hasFriendPlayState()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendPlayStateBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendPlayState_:Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;

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

.method public hasFromAccount()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->fromAccountBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->fromAccount_:Lcom/wufan/friend/chat/protocol/AccountInfo;

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

.method public hasGameInvite()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->gameInviteBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->gameInvite_:Lcom/wufan/friend/chat/protocol/GameInviteNotification;

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

.method public hasKickNotification()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->kickNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->kickNotification_:Lcom/wufan/friend/chat/protocol/KickNotification;

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

.method public hasLeaveRoomNotification()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->leaveRoomNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->leaveRoomNotification_:Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;

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

.method public hasPlayerBanned()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->playerBannedBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->playerBanned_:Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;

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

.method public hasPopWindow()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->popWindowBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->popWindow_:Lcom/wufan/friend/chat/protocol/PopWindowNotification;

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

.method public hasRecommendPlayerStateChange()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->recommendPlayerStateChangeBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->recommendPlayerStateChange_:Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

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

.method public hasRejectBattleInviteNotification()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->rejectBattleInviteNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->rejectBattleInviteNotification_:Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;

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
    sget-object v0, Lcom/wufan/friend/chat/protocol/a0;->V:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    const-class v1, Lcom/wufan/friend/chat/protocol/NotificationData;

    .line 4
    .line 5
    const-class v2, Lcom/wufan/friend/chat/protocol/NotificationData$b;

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

.method public mergeAllFrdNotification(Lcom/wufan/friend/chat/protocol/AllFriendNotification;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFrdNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFrdNotification_:Lcom/wufan/friend/chat/protocol/AllFriendNotification;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/AllFriendNotification;->newBuilder(Lcom/wufan/friend/chat/protocol/AllFriendNotification;)Lcom/wufan/friend/chat/protocol/AllFriendNotification$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/protocol/AllFriendNotification$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/AllFriendNotification;)Lcom/wufan/friend/chat/protocol/AllFriendNotification$b;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/AllFriendNotification$b;->buildPartial()Lcom/wufan/friend/chat/protocol/AllFriendNotification;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFrdNotification_:Lcom/wufan/friend/chat/protocol/AllFriendNotification;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFrdNotification_:Lcom/wufan/friend/chat/protocol/AllFriendNotification;

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

.method public mergeAllFriendNotification(Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFriendNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFriendNotification_:Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;->newBuilder(Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;)Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;)Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification$b;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification$b;->buildPartial()Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFriendNotification_:Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFriendNotification_:Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;

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

.method public mergeChatMsgNotification(Lcom/wufan/friend/chat/protocol/ChatMessageNotification;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->chatMsgNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->chatMsgNotification_:Lcom/wufan/friend/chat/protocol/ChatMessageNotification;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/ChatMessageNotification;->newBuilder(Lcom/wufan/friend/chat/protocol/ChatMessageNotification;)Lcom/wufan/friend/chat/protocol/ChatMessageNotification$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/protocol/ChatMessageNotification$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/ChatMessageNotification;)Lcom/wufan/friend/chat/protocol/ChatMessageNotification$b;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/ChatMessageNotification$b;->buildPartial()Lcom/wufan/friend/chat/protocol/ChatMessageNotification;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->chatMsgNotification_:Lcom/wufan/friend/chat/protocol/ChatMessageNotification;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->chatMsgNotification_:Lcom/wufan/friend/chat/protocol/ChatMessageNotification;

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

.method public mergeDialog(Lcom/wufan/friend/chat/protocol/DialogNotification;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->dialogBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->dialog_:Lcom/wufan/friend/chat/protocol/DialogNotification;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/DialogNotification;->newBuilder(Lcom/wufan/friend/chat/protocol/DialogNotification;)Lcom/wufan/friend/chat/protocol/DialogNotification$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/protocol/DialogNotification$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/DialogNotification;)Lcom/wufan/friend/chat/protocol/DialogNotification$b;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/DialogNotification$b;->buildPartial()Lcom/wufan/friend/chat/protocol/DialogNotification;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->dialog_:Lcom/wufan/friend/chat/protocol/DialogNotification;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->dialog_:Lcom/wufan/friend/chat/protocol/DialogNotification;

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

.method public mergeFriAddReqNotification(Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friAddReqNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friAddReqNotification_:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->newBuilder(Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;)Lcom/wufan/friend/chat/protocol/FriendAddReqNotification$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;)Lcom/wufan/friend/chat/protocol/FriendAddReqNotification$b;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification$b;->buildPartial()Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friAddReqNotification_:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friAddReqNotification_:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

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

.method public mergeFriendAddSuccessNotification(Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendAddSuccessNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendAddSuccessNotification_:Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;->newBuilder(Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;)Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;)Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification$b;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification$b;->buildPartial()Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendAddSuccessNotification_:Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendAddSuccessNotification_:Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;

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

.method public mergeFriendChangeState(Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendChangeStateBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendChangeState_:Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;->newBuilder(Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;)Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;)Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification$b;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification$b;->buildPartial()Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendChangeState_:Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendChangeState_:Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;

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

.method public mergeFriendDeleteSuccess(Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendDeleteSuccessBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendDeleteSuccess_:Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;->newBuilder(Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;)Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;)Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification$b;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification$b;->buildPartial()Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendDeleteSuccess_:Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendDeleteSuccess_:Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;

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

.method public mergeFriendPlayState(Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendPlayStateBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendPlayState_:Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;->newBuilder(Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;)Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;)Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification$b;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification$b;->buildPartial()Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendPlayState_:Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendPlayState_:Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/NotificationData$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/wufan/friend/chat/protocol/NotificationData$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/NotificationData$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/NotificationData$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/wufan/friend/chat/protocol/NotificationData$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/NotificationData$b;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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

    .line 53
    :try_start_0
    invoke-static {}, Lcom/wufan/friend/chat/protocol/NotificationData;->access$2500()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wufan/friend/chat/protocol/NotificationData;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/NotificationData;)Lcom/wufan/friend/chat/protocol/NotificationData$b;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 55
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/wufan/friend/chat/protocol/NotificationData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
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

    .line 57
    invoke-virtual {p0, v0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/NotificationData;)Lcom/wufan/friend/chat/protocol/NotificationData$b;

    .line 58
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    instance-of v0, p1, Lcom/wufan/friend/chat/protocol/NotificationData;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/wufan/friend/chat/protocol/NotificationData;

    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/NotificationData;)Lcom/wufan/friend/chat/protocol/NotificationData$b;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/wufan/friend/chat/protocol/NotificationData;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    invoke-static {}, Lcom/wufan/friend/chat/protocol/NotificationData;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/NotificationData;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->getMessageId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->getMessageId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->setMessageId(J)Lcom/wufan/friend/chat/protocol/NotificationData$b;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->getSendTimestamp()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->getSendTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->setSendTimestamp(J)Lcom/wufan/friend/chat/protocol/NotificationData$b;

    .line 15
    :cond_2
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->getAck()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->getAck()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->setAck(Z)Lcom/wufan/friend/chat/protocol/NotificationData$b;

    .line 17
    :cond_3
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasFromAccount()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFromAccount()Lcom/wufan/friend/chat/protocol/AccountInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->mergeFromAccount(Lcom/wufan/friend/chat/protocol/AccountInfo;)Lcom/wufan/friend/chat/protocol/NotificationData$b;

    .line 19
    :cond_4
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasDialog()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 20
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->getDialog()Lcom/wufan/friend/chat/protocol/DialogNotification;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->mergeDialog(Lcom/wufan/friend/chat/protocol/DialogNotification;)Lcom/wufan/friend/chat/protocol/NotificationData$b;

    .line 21
    :cond_5
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasPopWindow()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 22
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->getPopWindow()Lcom/wufan/friend/chat/protocol/PopWindowNotification;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->mergePopWindow(Lcom/wufan/friend/chat/protocol/PopWindowNotification;)Lcom/wufan/friend/chat/protocol/NotificationData$b;

    .line 23
    :cond_6
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasGameInvite()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 24
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->getGameInvite()Lcom/wufan/friend/chat/protocol/GameInviteNotification;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->mergeGameInvite(Lcom/wufan/friend/chat/protocol/GameInviteNotification;)Lcom/wufan/friend/chat/protocol/NotificationData$b;

    .line 25
    :cond_7
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasFriendChangeState()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 26
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFriendChangeState()Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->mergeFriendChangeState(Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;)Lcom/wufan/friend/chat/protocol/NotificationData$b;

    .line 27
    :cond_8
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasFriendPlayState()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 28
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFriendPlayState()Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->mergeFriendPlayState(Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;)Lcom/wufan/friend/chat/protocol/NotificationData$b;

    .line 29
    :cond_9
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasKickNotification()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 30
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->getKickNotification()Lcom/wufan/friend/chat/protocol/KickNotification;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->mergeKickNotification(Lcom/wufan/friend/chat/protocol/KickNotification;)Lcom/wufan/friend/chat/protocol/NotificationData$b;

    .line 31
    :cond_a
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasAllFriendNotification()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 32
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->getAllFriendNotification()Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->mergeAllFriendNotification(Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;)Lcom/wufan/friend/chat/protocol/NotificationData$b;

    .line 33
    :cond_b
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasChatMsgNotification()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 34
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->getChatMsgNotification()Lcom/wufan/friend/chat/protocol/ChatMessageNotification;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->mergeChatMsgNotification(Lcom/wufan/friend/chat/protocol/ChatMessageNotification;)Lcom/wufan/friend/chat/protocol/NotificationData$b;

    .line 35
    :cond_c
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasFriAddReqNotification()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 36
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFriAddReqNotification()Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->mergeFriAddReqNotification(Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;)Lcom/wufan/friend/chat/protocol/NotificationData$b;

    .line 37
    :cond_d
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasLeaveRoomNotification()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 38
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->getLeaveRoomNotification()Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->mergeLeaveRoomNotification(Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;)Lcom/wufan/friend/chat/protocol/NotificationData$b;

    .line 39
    :cond_e
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasFriendAddSuccessNotification()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 40
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFriendAddSuccessNotification()Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->mergeFriendAddSuccessNotification(Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;)Lcom/wufan/friend/chat/protocol/NotificationData$b;

    .line 41
    :cond_f
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasRejectBattleInviteNotification()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 42
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->getRejectBattleInviteNotification()Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->mergeRejectBattleInviteNotification(Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;)Lcom/wufan/friend/chat/protocol/NotificationData$b;

    .line 43
    :cond_10
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasAllFrdNotification()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 44
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->getAllFrdNotification()Lcom/wufan/friend/chat/protocol/AllFriendNotification;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->mergeAllFrdNotification(Lcom/wufan/friend/chat/protocol/AllFriendNotification;)Lcom/wufan/friend/chat/protocol/NotificationData$b;

    .line 45
    :cond_11
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasRecommendPlayerStateChange()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 46
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->getRecommendPlayerStateChange()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->mergeRecommendPlayerStateChange(Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;)Lcom/wufan/friend/chat/protocol/NotificationData$b;

    .line 47
    :cond_12
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasFriendDeleteSuccess()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 48
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFriendDeleteSuccess()Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->mergeFriendDeleteSuccess(Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;)Lcom/wufan/friend/chat/protocol/NotificationData$b;

    .line 49
    :cond_13
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasPlayerBanned()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 50
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->getPlayerBanned()Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->mergePlayerBanned(Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;)Lcom/wufan/friend/chat/protocol/NotificationData$b;

    .line 51
    :cond_14
    invoke-static {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->access$2400(Lcom/wufan/friend/chat/protocol/NotificationData;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/friend/chat/protocol/NotificationData$b;

    .line 52
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFromAccount(Lcom/wufan/friend/chat/protocol/AccountInfo;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->fromAccountBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->fromAccount_:Lcom/wufan/friend/chat/protocol/AccountInfo;

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
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->fromAccount_:Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->fromAccount_:Lcom/wufan/friend/chat/protocol/AccountInfo;

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

.method public mergeGameInvite(Lcom/wufan/friend/chat/protocol/GameInviteNotification;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->gameInviteBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->gameInvite_:Lcom/wufan/friend/chat/protocol/GameInviteNotification;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/GameInviteNotification;->newBuilder(Lcom/wufan/friend/chat/protocol/GameInviteNotification;)Lcom/wufan/friend/chat/protocol/GameInviteNotification$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/protocol/GameInviteNotification$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/GameInviteNotification;)Lcom/wufan/friend/chat/protocol/GameInviteNotification$b;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/GameInviteNotification$b;->buildPartial()Lcom/wufan/friend/chat/protocol/GameInviteNotification;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->gameInvite_:Lcom/wufan/friend/chat/protocol/GameInviteNotification;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->gameInvite_:Lcom/wufan/friend/chat/protocol/GameInviteNotification;

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

.method public mergeKickNotification(Lcom/wufan/friend/chat/protocol/KickNotification;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->kickNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->kickNotification_:Lcom/wufan/friend/chat/protocol/KickNotification;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/KickNotification;->newBuilder(Lcom/wufan/friend/chat/protocol/KickNotification;)Lcom/wufan/friend/chat/protocol/KickNotification$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/protocol/KickNotification$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/KickNotification;)Lcom/wufan/friend/chat/protocol/KickNotification$b;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/KickNotification$b;->buildPartial()Lcom/wufan/friend/chat/protocol/KickNotification;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->kickNotification_:Lcom/wufan/friend/chat/protocol/KickNotification;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->kickNotification_:Lcom/wufan/friend/chat/protocol/KickNotification;

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

.method public mergeLeaveRoomNotification(Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->leaveRoomNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->leaveRoomNotification_:Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;->newBuilder(Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;)Lcom/wufan/friend/chat/protocol/LeaveRoomNotification$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/protocol/LeaveRoomNotification$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;)Lcom/wufan/friend/chat/protocol/LeaveRoomNotification$b;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/LeaveRoomNotification$b;->buildPartial()Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->leaveRoomNotification_:Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->leaveRoomNotification_:Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;

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

.method public mergePlayerBanned(Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->playerBannedBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->playerBanned_:Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;->newBuilder(Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;)Lcom/wufan/friend/chat/protocol/PlayerBannedNotification$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/protocol/PlayerBannedNotification$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;)Lcom/wufan/friend/chat/protocol/PlayerBannedNotification$b;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/PlayerBannedNotification$b;->buildPartial()Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->playerBanned_:Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->playerBanned_:Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;

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

.method public mergePopWindow(Lcom/wufan/friend/chat/protocol/PopWindowNotification;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->popWindowBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->popWindow_:Lcom/wufan/friend/chat/protocol/PopWindowNotification;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/PopWindowNotification;->newBuilder(Lcom/wufan/friend/chat/protocol/PopWindowNotification;)Lcom/wufan/friend/chat/protocol/PopWindowNotification$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/protocol/PopWindowNotification$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/PopWindowNotification;)Lcom/wufan/friend/chat/protocol/PopWindowNotification$b;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/PopWindowNotification$b;->buildPartial()Lcom/wufan/friend/chat/protocol/PopWindowNotification;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->popWindow_:Lcom/wufan/friend/chat/protocol/PopWindowNotification;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->popWindow_:Lcom/wufan/friend/chat/protocol/PopWindowNotification;

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

.method public mergeRecommendPlayerStateChange(Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->recommendPlayerStateChangeBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->recommendPlayerStateChange_:Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->newBuilder(Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->buildPartial()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->recommendPlayerStateChange_:Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->recommendPlayerStateChange_:Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

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

.method public mergeRejectBattleInviteNotification(Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->rejectBattleInviteNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->rejectBattleInviteNotification_:Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;->newBuilder(Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;)Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;)Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification$b;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification$b;->buildPartial()Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->rejectBattleInviteNotification_:Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->rejectBattleInviteNotification_:Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;

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
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/friend/chat/protocol/NotificationData$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/friend/chat/protocol/NotificationData$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/friend/chat/protocol/NotificationData$b;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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

    check-cast p1, Lcom/wufan/friend/chat/protocol/NotificationData$b;

    return-object p1
.end method

.method public setAck(Z)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iput-boolean p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->ack_:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setAllFrdNotification(Lcom/wufan/friend/chat/protocol/AllFriendNotification$b;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFrdNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/AllFriendNotification$b;->build()Lcom/wufan/friend/chat/protocol/AllFriendNotification;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFrdNotification_:Lcom/wufan/friend/chat/protocol/AllFriendNotification;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/AllFriendNotification$b;->build()Lcom/wufan/friend/chat/protocol/AllFriendNotification;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setAllFrdNotification(Lcom/wufan/friend/chat/protocol/AllFriendNotification;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFrdNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFrdNotification_:Lcom/wufan/friend/chat/protocol/AllFriendNotification;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setAllFriendNotification(Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification$b;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFriendNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification$b;->build()Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFriendNotification_:Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification$b;->build()Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setAllFriendNotification(Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFriendNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->allFriendNotification_:Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setChatMsgNotification(Lcom/wufan/friend/chat/protocol/ChatMessageNotification$b;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->chatMsgNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/ChatMessageNotification$b;->build()Lcom/wufan/friend/chat/protocol/ChatMessageNotification;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->chatMsgNotification_:Lcom/wufan/friend/chat/protocol/ChatMessageNotification;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/ChatMessageNotification$b;->build()Lcom/wufan/friend/chat/protocol/ChatMessageNotification;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setChatMsgNotification(Lcom/wufan/friend/chat/protocol/ChatMessageNotification;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->chatMsgNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->chatMsgNotification_:Lcom/wufan/friend/chat/protocol/ChatMessageNotification;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setDialog(Lcom/wufan/friend/chat/protocol/DialogNotification$b;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->dialogBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/DialogNotification$b;->build()Lcom/wufan/friend/chat/protocol/DialogNotification;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->dialog_:Lcom/wufan/friend/chat/protocol/DialogNotification;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/DialogNotification$b;->build()Lcom/wufan/friend/chat/protocol/DialogNotification;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setDialog(Lcom/wufan/friend/chat/protocol/DialogNotification;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->dialogBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->dialog_:Lcom/wufan/friend/chat/protocol/DialogNotification;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/friend/chat/protocol/NotificationData$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/friend/chat/protocol/NotificationData$b;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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

    check-cast p1, Lcom/wufan/friend/chat/protocol/NotificationData$b;

    return-object p1
.end method

.method public setFriAddReqNotification(Lcom/wufan/friend/chat/protocol/FriendAddReqNotification$b;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friAddReqNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification$b;->build()Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friAddReqNotification_:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification$b;->build()Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setFriAddReqNotification(Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friAddReqNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friAddReqNotification_:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setFriendAddSuccessNotification(Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification$b;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendAddSuccessNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification$b;->build()Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendAddSuccessNotification_:Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification$b;->build()Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setFriendAddSuccessNotification(Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendAddSuccessNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendAddSuccessNotification_:Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setFriendChangeState(Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification$b;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendChangeStateBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification$b;->build()Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendChangeState_:Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification$b;->build()Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setFriendChangeState(Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendChangeStateBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendChangeState_:Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setFriendDeleteSuccess(Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification$b;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendDeleteSuccessBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification$b;->build()Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendDeleteSuccess_:Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification$b;->build()Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setFriendDeleteSuccess(Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendDeleteSuccessBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendDeleteSuccess_:Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setFriendPlayState(Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification$b;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendPlayStateBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification$b;->build()Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendPlayState_:Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification$b;->build()Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setFriendPlayState(Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendPlayStateBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->friendPlayState_:Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setFromAccount(Lcom/wufan/friend/chat/protocol/AccountInfo$b;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->fromAccountBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/AccountInfo$b;->build()Lcom/wufan/friend/chat/protocol/AccountInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->fromAccount_:Lcom/wufan/friend/chat/protocol/AccountInfo;

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

.method public setFromAccount(Lcom/wufan/friend/chat/protocol/AccountInfo;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->fromAccountBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->fromAccount_:Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setGameInvite(Lcom/wufan/friend/chat/protocol/GameInviteNotification$b;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->gameInviteBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/GameInviteNotification$b;->build()Lcom/wufan/friend/chat/protocol/GameInviteNotification;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->gameInvite_:Lcom/wufan/friend/chat/protocol/GameInviteNotification;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/GameInviteNotification$b;->build()Lcom/wufan/friend/chat/protocol/GameInviteNotification;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setGameInvite(Lcom/wufan/friend/chat/protocol/GameInviteNotification;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->gameInviteBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->gameInvite_:Lcom/wufan/friend/chat/protocol/GameInviteNotification;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setKickNotification(Lcom/wufan/friend/chat/protocol/KickNotification$b;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->kickNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/KickNotification$b;->build()Lcom/wufan/friend/chat/protocol/KickNotification;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->kickNotification_:Lcom/wufan/friend/chat/protocol/KickNotification;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/KickNotification$b;->build()Lcom/wufan/friend/chat/protocol/KickNotification;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setKickNotification(Lcom/wufan/friend/chat/protocol/KickNotification;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->kickNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->kickNotification_:Lcom/wufan/friend/chat/protocol/KickNotification;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setLeaveRoomNotification(Lcom/wufan/friend/chat/protocol/LeaveRoomNotification$b;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->leaveRoomNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/LeaveRoomNotification$b;->build()Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->leaveRoomNotification_:Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/LeaveRoomNotification$b;->build()Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setLeaveRoomNotification(Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->leaveRoomNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->leaveRoomNotification_:Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setMessageId(J)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iput-wide p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->messageId_:J

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setPlayerBanned(Lcom/wufan/friend/chat/protocol/PlayerBannedNotification$b;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->playerBannedBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/PlayerBannedNotification$b;->build()Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->playerBanned_:Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/PlayerBannedNotification$b;->build()Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setPlayerBanned(Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->playerBannedBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->playerBanned_:Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setPopWindow(Lcom/wufan/friend/chat/protocol/PopWindowNotification$b;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->popWindowBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/PopWindowNotification$b;->build()Lcom/wufan/friend/chat/protocol/PopWindowNotification;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->popWindow_:Lcom/wufan/friend/chat/protocol/PopWindowNotification;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/PopWindowNotification$b;->build()Lcom/wufan/friend/chat/protocol/PopWindowNotification;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setPopWindow(Lcom/wufan/friend/chat/protocol/PopWindowNotification;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->popWindowBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->popWindow_:Lcom/wufan/friend/chat/protocol/PopWindowNotification;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setRecommendPlayerStateChange(Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->recommendPlayerStateChangeBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->build()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->recommendPlayerStateChange_:Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->build()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setRecommendPlayerStateChange(Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->recommendPlayerStateChangeBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->recommendPlayerStateChange_:Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setRejectBattleInviteNotification(Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification$b;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->rejectBattleInviteNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification$b;->build()Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;

    move-result-object p1

    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->rejectBattleInviteNotification_:Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification$b;->build()Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setRejectBattleInviteNotification(Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->rejectBattleInviteNotificationBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->rejectBattleInviteNotification_:Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;

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
    invoke-virtual {p0, p1, p2, p3}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/wufan/friend/chat/protocol/NotificationData$b;

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
    invoke-virtual {p0, p1, p2, p3}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/wufan/friend/chat/protocol/NotificationData$b;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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

    check-cast p1, Lcom/wufan/friend/chat/protocol/NotificationData$b;

    return-object p1
.end method

.method public setSendTimestamp(J)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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
    iput-wide p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData$b;->sendTimestamp_:J

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
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/friend/chat/protocol/NotificationData$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/friend/chat/protocol/NotificationData$b;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
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

    check-cast p1, Lcom/wufan/friend/chat/protocol/NotificationData$b;

    return-object p1
.end method
