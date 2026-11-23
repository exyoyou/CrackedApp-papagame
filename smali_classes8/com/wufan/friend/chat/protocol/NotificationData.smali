.class public final Lcom/wufan/friend/chat/protocol/NotificationData;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/wufan/friend/chat/protocol/b0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wufan/friend/chat/protocol/NotificationData$b;
    }
.end annotation


# static fields
.field public static final ACK_FIELD_NUMBER:I = 0x3

.field public static final ALLFRDNOTIFICATION_FIELD_NUMBER:I = 0x11

.field public static final ALLFRIENDNOTIFICATION_FIELD_NUMBER:I = 0xb

.field public static final CHATMSGNOTIFICATION_FIELD_NUMBER:I = 0xc

.field private static final DEFAULT_INSTANCE:Lcom/wufan/friend/chat/protocol/NotificationData;

.field public static final DIALOG_FIELD_NUMBER:I = 0x5

.field public static final FRIADDREQNOTIFICATION_FIELD_NUMBER:I = 0xd

.field public static final FRIENDADDSUCCESSNOTIFICATION_FIELD_NUMBER:I = 0xf

.field public static final FRIENDCHANGESTATE_FIELD_NUMBER:I = 0x8

.field public static final FRIENDDELETESUCCESS_FIELD_NUMBER:I = 0x13

.field public static final FRIENDPLAYSTATE_FIELD_NUMBER:I = 0x9

.field public static final FROMACCOUNT_FIELD_NUMBER:I = 0x4

.field public static final GAMEINVITE_FIELD_NUMBER:I = 0x7

.field public static final KICKNOTIFICATION_FIELD_NUMBER:I = 0xa

.field public static final LEAVEROOMNOTIFICATION_FIELD_NUMBER:I = 0xe

.field public static final MESSAGEID_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/friend/chat/protocol/NotificationData;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLAYERBANNED_FIELD_NUMBER:I = 0x14

.field public static final POPWINDOW_FIELD_NUMBER:I = 0x6

.field public static final RECOMMENDPLAYERSTATECHANGE_FIELD_NUMBER:I = 0x12

.field public static final REJECTBATTLEINVITENOTIFICATION_FIELD_NUMBER:I = 0x10

.field public static final SENDTIMESTAMP_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private ack_:Z

.field private allFrdNotification_:Lcom/wufan/friend/chat/protocol/AllFriendNotification;

.field private allFriendNotification_:Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;

.field private chatMsgNotification_:Lcom/wufan/friend/chat/protocol/ChatMessageNotification;

.field private dialog_:Lcom/wufan/friend/chat/protocol/DialogNotification;

.field private friAddReqNotification_:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

.field private friendAddSuccessNotification_:Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;

.field private friendChangeState_:Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;

.field private friendDeleteSuccess_:Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;

.field private friendPlayState_:Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;

.field private fromAccount_:Lcom/wufan/friend/chat/protocol/AccountInfo;

.field private gameInvite_:Lcom/wufan/friend/chat/protocol/GameInviteNotification;

.field private kickNotification_:Lcom/wufan/friend/chat/protocol/KickNotification;

.field private leaveRoomNotification_:Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;

.field private memoizedIsInitialized:B

.field private messageId_:J

.field private playerBanned_:Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;

.field private popWindow_:Lcom/wufan/friend/chat/protocol/PopWindowNotification;

.field private recommendPlayerStateChange_:Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

.field private rejectBattleInviteNotification_:Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;

.field private sendTimestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wufan/friend/chat/protocol/NotificationData;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/wufan/friend/chat/protocol/NotificationData;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/wufan/friend/chat/protocol/NotificationData;->DEFAULT_INSTANCE:Lcom/wufan/friend/chat/protocol/NotificationData;

    .line 7
    .line 8
    new-instance v0, Lcom/wufan/friend/chat/protocol/NotificationData$a;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/wufan/friend/chat/protocol/NotificationData$a;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/wufan/friend/chat/protocol/NotificationData;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
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
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;-><init>()V

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_12

    .line 10
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_0

    .line 11
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    goto/16 :goto_2

    .line 12
    :sswitch_0
    iget-object v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->playerBanned_:Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;

    if-eqz v2, :cond_1

    .line 13
    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;->toBuilder()Lcom/wufan/friend/chat/protocol/PlayerBannedNotification$b;

    move-result-object v4

    .line 14
    :cond_1
    invoke-static {}, Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->playerBanned_:Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;

    if-eqz v4, :cond_0

    .line 15
    invoke-virtual {v4, v2}, Lcom/wufan/friend/chat/protocol/PlayerBannedNotification$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;)Lcom/wufan/friend/chat/protocol/PlayerBannedNotification$b;

    .line 16
    invoke-virtual {v4}, Lcom/wufan/friend/chat/protocol/PlayerBannedNotification$b;->buildPartial()Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;

    move-result-object v2

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->playerBanned_:Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;

    goto :goto_0

    .line 17
    :sswitch_1
    iget-object v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->friendDeleteSuccess_:Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;

    if-eqz v2, :cond_2

    .line 18
    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;->toBuilder()Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification$b;

    move-result-object v4

    .line 19
    :cond_2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->friendDeleteSuccess_:Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;

    if-eqz v4, :cond_0

    .line 20
    invoke-virtual {v4, v2}, Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;)Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification$b;

    .line 21
    invoke-virtual {v4}, Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification$b;->buildPartial()Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;

    move-result-object v2

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->friendDeleteSuccess_:Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;

    goto :goto_0

    .line 22
    :sswitch_2
    iget-object v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->recommendPlayerStateChange_:Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    if-eqz v2, :cond_3

    .line 23
    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->toBuilder()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

    move-result-object v4

    .line 24
    :cond_3
    invoke-static {}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->recommendPlayerStateChange_:Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    if-eqz v4, :cond_0

    .line 25
    invoke-virtual {v4, v2}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;

    .line 26
    invoke-virtual {v4}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification$b;->buildPartial()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    move-result-object v2

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->recommendPlayerStateChange_:Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    goto :goto_0

    .line 27
    :sswitch_3
    iget-object v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->allFrdNotification_:Lcom/wufan/friend/chat/protocol/AllFriendNotification;

    if-eqz v2, :cond_4

    .line 28
    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/AllFriendNotification;->toBuilder()Lcom/wufan/friend/chat/protocol/AllFriendNotification$b;

    move-result-object v4

    .line 29
    :cond_4
    invoke-static {}, Lcom/wufan/friend/chat/protocol/AllFriendNotification;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/AllFriendNotification;

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->allFrdNotification_:Lcom/wufan/friend/chat/protocol/AllFriendNotification;

    if-eqz v4, :cond_0

    .line 30
    invoke-virtual {v4, v2}, Lcom/wufan/friend/chat/protocol/AllFriendNotification$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/AllFriendNotification;)Lcom/wufan/friend/chat/protocol/AllFriendNotification$b;

    .line 31
    invoke-virtual {v4}, Lcom/wufan/friend/chat/protocol/AllFriendNotification$b;->buildPartial()Lcom/wufan/friend/chat/protocol/AllFriendNotification;

    move-result-object v2

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->allFrdNotification_:Lcom/wufan/friend/chat/protocol/AllFriendNotification;

    goto/16 :goto_0

    .line 32
    :sswitch_4
    iget-object v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->rejectBattleInviteNotification_:Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;

    if-eqz v2, :cond_5

    .line 33
    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;->toBuilder()Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification$b;

    move-result-object v4

    .line 34
    :cond_5
    invoke-static {}, Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->rejectBattleInviteNotification_:Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;

    if-eqz v4, :cond_0

    .line 35
    invoke-virtual {v4, v2}, Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;)Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification$b;

    .line 36
    invoke-virtual {v4}, Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification$b;->buildPartial()Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;

    move-result-object v2

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->rejectBattleInviteNotification_:Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;

    goto/16 :goto_0

    .line 37
    :sswitch_5
    iget-object v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->friendAddSuccessNotification_:Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;

    if-eqz v2, :cond_6

    .line 38
    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;->toBuilder()Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification$b;

    move-result-object v4

    .line 39
    :cond_6
    invoke-static {}, Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->friendAddSuccessNotification_:Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;

    if-eqz v4, :cond_0

    .line 40
    invoke-virtual {v4, v2}, Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;)Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification$b;

    .line 41
    invoke-virtual {v4}, Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification$b;->buildPartial()Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;

    move-result-object v2

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->friendAddSuccessNotification_:Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;

    goto/16 :goto_0

    .line 42
    :sswitch_6
    iget-object v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->leaveRoomNotification_:Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;

    if-eqz v2, :cond_7

    .line 43
    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;->toBuilder()Lcom/wufan/friend/chat/protocol/LeaveRoomNotification$b;

    move-result-object v4

    .line 44
    :cond_7
    invoke-static {}, Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->leaveRoomNotification_:Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;

    if-eqz v4, :cond_0

    .line 45
    invoke-virtual {v4, v2}, Lcom/wufan/friend/chat/protocol/LeaveRoomNotification$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;)Lcom/wufan/friend/chat/protocol/LeaveRoomNotification$b;

    .line 46
    invoke-virtual {v4}, Lcom/wufan/friend/chat/protocol/LeaveRoomNotification$b;->buildPartial()Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;

    move-result-object v2

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->leaveRoomNotification_:Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;

    goto/16 :goto_0

    .line 47
    :sswitch_7
    iget-object v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->friAddReqNotification_:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    if-eqz v2, :cond_8

    .line 48
    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->toBuilder()Lcom/wufan/friend/chat/protocol/FriendAddReqNotification$b;

    move-result-object v4

    .line 49
    :cond_8
    invoke-static {}, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->friAddReqNotification_:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    if-eqz v4, :cond_0

    .line 50
    invoke-virtual {v4, v2}, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;)Lcom/wufan/friend/chat/protocol/FriendAddReqNotification$b;

    .line 51
    invoke-virtual {v4}, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification$b;->buildPartial()Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    move-result-object v2

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->friAddReqNotification_:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    goto/16 :goto_0

    .line 52
    :sswitch_8
    iget-object v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->chatMsgNotification_:Lcom/wufan/friend/chat/protocol/ChatMessageNotification;

    if-eqz v2, :cond_9

    .line 53
    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/ChatMessageNotification;->toBuilder()Lcom/wufan/friend/chat/protocol/ChatMessageNotification$b;

    move-result-object v4

    .line 54
    :cond_9
    invoke-static {}, Lcom/wufan/friend/chat/protocol/ChatMessageNotification;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/ChatMessageNotification;

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->chatMsgNotification_:Lcom/wufan/friend/chat/protocol/ChatMessageNotification;

    if-eqz v4, :cond_0

    .line 55
    invoke-virtual {v4, v2}, Lcom/wufan/friend/chat/protocol/ChatMessageNotification$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/ChatMessageNotification;)Lcom/wufan/friend/chat/protocol/ChatMessageNotification$b;

    .line 56
    invoke-virtual {v4}, Lcom/wufan/friend/chat/protocol/ChatMessageNotification$b;->buildPartial()Lcom/wufan/friend/chat/protocol/ChatMessageNotification;

    move-result-object v2

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->chatMsgNotification_:Lcom/wufan/friend/chat/protocol/ChatMessageNotification;

    goto/16 :goto_0

    .line 57
    :sswitch_9
    iget-object v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->allFriendNotification_:Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;

    if-eqz v2, :cond_a

    .line 58
    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;->toBuilder()Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification$b;

    move-result-object v4

    .line 59
    :cond_a
    invoke-static {}, Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->allFriendNotification_:Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;

    if-eqz v4, :cond_0

    .line 60
    invoke-virtual {v4, v2}, Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;)Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification$b;

    .line 61
    invoke-virtual {v4}, Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification$b;->buildPartial()Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;

    move-result-object v2

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->allFriendNotification_:Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;

    goto/16 :goto_0

    .line 62
    :sswitch_a
    iget-object v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->kickNotification_:Lcom/wufan/friend/chat/protocol/KickNotification;

    if-eqz v2, :cond_b

    .line 63
    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/KickNotification;->toBuilder()Lcom/wufan/friend/chat/protocol/KickNotification$b;

    move-result-object v4

    .line 64
    :cond_b
    invoke-static {}, Lcom/wufan/friend/chat/protocol/KickNotification;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/KickNotification;

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->kickNotification_:Lcom/wufan/friend/chat/protocol/KickNotification;

    if-eqz v4, :cond_0

    .line 65
    invoke-virtual {v4, v2}, Lcom/wufan/friend/chat/protocol/KickNotification$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/KickNotification;)Lcom/wufan/friend/chat/protocol/KickNotification$b;

    .line 66
    invoke-virtual {v4}, Lcom/wufan/friend/chat/protocol/KickNotification$b;->buildPartial()Lcom/wufan/friend/chat/protocol/KickNotification;

    move-result-object v2

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->kickNotification_:Lcom/wufan/friend/chat/protocol/KickNotification;

    goto/16 :goto_0

    .line 67
    :sswitch_b
    iget-object v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->friendPlayState_:Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;

    if-eqz v2, :cond_c

    .line 68
    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;->toBuilder()Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification$b;

    move-result-object v4

    .line 69
    :cond_c
    invoke-static {}, Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->friendPlayState_:Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;

    if-eqz v4, :cond_0

    .line 70
    invoke-virtual {v4, v2}, Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;)Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification$b;

    .line 71
    invoke-virtual {v4}, Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification$b;->buildPartial()Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;

    move-result-object v2

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->friendPlayState_:Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;

    goto/16 :goto_0

    .line 72
    :sswitch_c
    iget-object v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->friendChangeState_:Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;

    if-eqz v2, :cond_d

    .line 73
    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;->toBuilder()Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification$b;

    move-result-object v4

    .line 74
    :cond_d
    invoke-static {}, Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->friendChangeState_:Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;

    if-eqz v4, :cond_0

    .line 75
    invoke-virtual {v4, v2}, Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;)Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification$b;

    .line 76
    invoke-virtual {v4}, Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification$b;->buildPartial()Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;

    move-result-object v2

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->friendChangeState_:Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;

    goto/16 :goto_0

    .line 77
    :sswitch_d
    iget-object v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->gameInvite_:Lcom/wufan/friend/chat/protocol/GameInviteNotification;

    if-eqz v2, :cond_e

    .line 78
    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/GameInviteNotification;->toBuilder()Lcom/wufan/friend/chat/protocol/GameInviteNotification$b;

    move-result-object v4

    .line 79
    :cond_e
    invoke-static {}, Lcom/wufan/friend/chat/protocol/GameInviteNotification;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/GameInviteNotification;

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->gameInvite_:Lcom/wufan/friend/chat/protocol/GameInviteNotification;

    if-eqz v4, :cond_0

    .line 80
    invoke-virtual {v4, v2}, Lcom/wufan/friend/chat/protocol/GameInviteNotification$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/GameInviteNotification;)Lcom/wufan/friend/chat/protocol/GameInviteNotification$b;

    .line 81
    invoke-virtual {v4}, Lcom/wufan/friend/chat/protocol/GameInviteNotification$b;->buildPartial()Lcom/wufan/friend/chat/protocol/GameInviteNotification;

    move-result-object v2

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->gameInvite_:Lcom/wufan/friend/chat/protocol/GameInviteNotification;

    goto/16 :goto_0

    .line 82
    :sswitch_e
    iget-object v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->popWindow_:Lcom/wufan/friend/chat/protocol/PopWindowNotification;

    if-eqz v2, :cond_f

    .line 83
    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/PopWindowNotification;->toBuilder()Lcom/wufan/friend/chat/protocol/PopWindowNotification$b;

    move-result-object v4

    .line 84
    :cond_f
    invoke-static {}, Lcom/wufan/friend/chat/protocol/PopWindowNotification;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/PopWindowNotification;

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->popWindow_:Lcom/wufan/friend/chat/protocol/PopWindowNotification;

    if-eqz v4, :cond_0

    .line 85
    invoke-virtual {v4, v2}, Lcom/wufan/friend/chat/protocol/PopWindowNotification$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/PopWindowNotification;)Lcom/wufan/friend/chat/protocol/PopWindowNotification$b;

    .line 86
    invoke-virtual {v4}, Lcom/wufan/friend/chat/protocol/PopWindowNotification$b;->buildPartial()Lcom/wufan/friend/chat/protocol/PopWindowNotification;

    move-result-object v2

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->popWindow_:Lcom/wufan/friend/chat/protocol/PopWindowNotification;

    goto/16 :goto_0

    .line 87
    :sswitch_f
    iget-object v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->dialog_:Lcom/wufan/friend/chat/protocol/DialogNotification;

    if-eqz v2, :cond_10

    .line 88
    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/DialogNotification;->toBuilder()Lcom/wufan/friend/chat/protocol/DialogNotification$b;

    move-result-object v4

    .line 89
    :cond_10
    invoke-static {}, Lcom/wufan/friend/chat/protocol/DialogNotification;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/DialogNotification;

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->dialog_:Lcom/wufan/friend/chat/protocol/DialogNotification;

    if-eqz v4, :cond_0

    .line 90
    invoke-virtual {v4, v2}, Lcom/wufan/friend/chat/protocol/DialogNotification$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/DialogNotification;)Lcom/wufan/friend/chat/protocol/DialogNotification$b;

    .line 91
    invoke-virtual {v4}, Lcom/wufan/friend/chat/protocol/DialogNotification$b;->buildPartial()Lcom/wufan/friend/chat/protocol/DialogNotification;

    move-result-object v2

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->dialog_:Lcom/wufan/friend/chat/protocol/DialogNotification;

    goto/16 :goto_0

    .line 92
    :sswitch_10
    iget-object v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->fromAccount_:Lcom/wufan/friend/chat/protocol/AccountInfo;

    if-eqz v2, :cond_11

    .line 93
    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/AccountInfo;->toBuilder()Lcom/wufan/friend/chat/protocol/AccountInfo$b;

    move-result-object v4

    .line 94
    :cond_11
    invoke-static {}, Lcom/wufan/friend/chat/protocol/AccountInfo;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/AccountInfo;

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->fromAccount_:Lcom/wufan/friend/chat/protocol/AccountInfo;

    if-eqz v4, :cond_0

    .line 95
    invoke-virtual {v4, v2}, Lcom/wufan/friend/chat/protocol/AccountInfo$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/AccountInfo;)Lcom/wufan/friend/chat/protocol/AccountInfo$b;

    .line 96
    invoke-virtual {v4}, Lcom/wufan/friend/chat/protocol/AccountInfo$b;->buildPartial()Lcom/wufan/friend/chat/protocol/AccountInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->fromAccount_:Lcom/wufan/friend/chat/protocol/AccountInfo;

    goto/16 :goto_0

    .line 97
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->ack_:Z

    goto/16 :goto_0

    .line 98
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->sendTimestamp_:J

    goto/16 :goto_0

    .line 99
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->messageId_:J
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_14
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

    .line 100
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 101
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 102
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 104
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 105
    throw p1

    .line 106
    :cond_12
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 107
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_14
        0x8 -> :sswitch_13
        0x10 -> :sswitch_12
        0x18 -> :sswitch_11
        0x22 -> :sswitch_10
        0x2a -> :sswitch_f
        0x32 -> :sswitch_e
        0x3a -> :sswitch_d
        0x42 -> :sswitch_c
        0x4a -> :sswitch_b
        0x52 -> :sswitch_a
        0x5a -> :sswitch_9
        0x62 -> :sswitch_8
        0x6a -> :sswitch_7
        0x72 -> :sswitch_6
        0x7a -> :sswitch_5
        0x82 -> :sswitch_4
        0x8a -> :sswitch_3
        0x92 -> :sswitch_2
        0x9a -> :sswitch_1
        0xa2 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/wufan/friend/chat/protocol/NotificationData$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/NotificationData;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

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
    iput-byte p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/wufan/friend/chat/protocol/NotificationData$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/NotificationData;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/wufan/friend/chat/protocol/NotificationData;Lcom/wufan/friend/chat/protocol/GameInviteNotification;)Lcom/wufan/friend/chat/protocol/GameInviteNotification;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->gameInvite_:Lcom/wufan/friend/chat/protocol/GameInviteNotification;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1102(Lcom/wufan/friend/chat/protocol/NotificationData;Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;)Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->friendChangeState_:Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1202(Lcom/wufan/friend/chat/protocol/NotificationData;Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;)Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->friendPlayState_:Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1302(Lcom/wufan/friend/chat/protocol/NotificationData;Lcom/wufan/friend/chat/protocol/KickNotification;)Lcom/wufan/friend/chat/protocol/KickNotification;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->kickNotification_:Lcom/wufan/friend/chat/protocol/KickNotification;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1402(Lcom/wufan/friend/chat/protocol/NotificationData;Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;)Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->allFriendNotification_:Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1502(Lcom/wufan/friend/chat/protocol/NotificationData;Lcom/wufan/friend/chat/protocol/ChatMessageNotification;)Lcom/wufan/friend/chat/protocol/ChatMessageNotification;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->chatMsgNotification_:Lcom/wufan/friend/chat/protocol/ChatMessageNotification;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1602(Lcom/wufan/friend/chat/protocol/NotificationData;Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;)Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->friAddReqNotification_:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1702(Lcom/wufan/friend/chat/protocol/NotificationData;Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;)Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->leaveRoomNotification_:Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1802(Lcom/wufan/friend/chat/protocol/NotificationData;Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;)Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->friendAddSuccessNotification_:Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1902(Lcom/wufan/friend/chat/protocol/NotificationData;Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;)Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->rejectBattleInviteNotification_:Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$2002(Lcom/wufan/friend/chat/protocol/NotificationData;Lcom/wufan/friend/chat/protocol/AllFriendNotification;)Lcom/wufan/friend/chat/protocol/AllFriendNotification;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->allFrdNotification_:Lcom/wufan/friend/chat/protocol/AllFriendNotification;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$2102(Lcom/wufan/friend/chat/protocol/NotificationData;Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;)Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->recommendPlayerStateChange_:Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$2202(Lcom/wufan/friend/chat/protocol/NotificationData;Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;)Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->friendDeleteSuccess_:Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$2302(Lcom/wufan/friend/chat/protocol/NotificationData;Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;)Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->playerBanned_:Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$2400(Lcom/wufan/friend/chat/protocol/NotificationData;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2500()Lcom/google/protobuf/Parser;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/NotificationData;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$402(Lcom/wufan/friend/chat/protocol/NotificationData;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->messageId_:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$502(Lcom/wufan/friend/chat/protocol/NotificationData;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->sendTimestamp_:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$602(Lcom/wufan/friend/chat/protocol/NotificationData;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->ack_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$702(Lcom/wufan/friend/chat/protocol/NotificationData;Lcom/wufan/friend/chat/protocol/AccountInfo;)Lcom/wufan/friend/chat/protocol/AccountInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->fromAccount_:Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$802(Lcom/wufan/friend/chat/protocol/NotificationData;Lcom/wufan/friend/chat/protocol/DialogNotification;)Lcom/wufan/friend/chat/protocol/DialogNotification;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->dialog_:Lcom/wufan/friend/chat/protocol/DialogNotification;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$902(Lcom/wufan/friend/chat/protocol/NotificationData;Lcom/wufan/friend/chat/protocol/PopWindowNotification;)Lcom/wufan/friend/chat/protocol/PopWindowNotification;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->popWindow_:Lcom/wufan/friend/chat/protocol/PopWindowNotification;

    .line 2
    .line 3
    return-object p1
.end method

.method public static getDefaultInstance()Lcom/wufan/friend/chat/protocol/NotificationData;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/NotificationData;->DEFAULT_INSTANCE:Lcom/wufan/friend/chat/protocol/NotificationData;

    .line 2
    .line 3
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

.method public static newBuilder()Lcom/wufan/friend/chat/protocol/NotificationData$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/NotificationData;->DEFAULT_INSTANCE:Lcom/wufan/friend/chat/protocol/NotificationData;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/NotificationData;->toBuilder()Lcom/wufan/friend/chat/protocol/NotificationData$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/wufan/friend/chat/protocol/NotificationData;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/wufan/friend/chat/protocol/NotificationData;->DEFAULT_INSTANCE:Lcom/wufan/friend/chat/protocol/NotificationData;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/NotificationData;->toBuilder()Lcom/wufan/friend/chat/protocol/NotificationData$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/NotificationData;)Lcom/wufan/friend/chat/protocol/NotificationData$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/wufan/friend/chat/protocol/NotificationData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/NotificationData;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/NotificationData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/NotificationData;
    .locals 1
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

    .line 3
    sget-object v0, Lcom/wufan/friend/chat/protocol/NotificationData;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/NotificationData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/wufan/friend/chat/protocol/NotificationData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/wufan/friend/chat/protocol/NotificationData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/NotificationData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/NotificationData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/wufan/friend/chat/protocol/NotificationData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/NotificationData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/wufan/friend/chat/protocol/NotificationData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/wufan/friend/chat/protocol/NotificationData;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/NotificationData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/NotificationData;
    .locals 1
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

    .line 13
    sget-object v0, Lcom/wufan/friend/chat/protocol/NotificationData;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/NotificationData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/wufan/friend/chat/protocol/NotificationData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/wufan/friend/chat/protocol/NotificationData;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/NotificationData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/NotificationData;
    .locals 1
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

    .line 9
    sget-object v0, Lcom/wufan/friend/chat/protocol/NotificationData;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/NotificationData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/wufan/friend/chat/protocol/NotificationData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/NotificationData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/NotificationData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/NotificationData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/wufan/friend/chat/protocol/NotificationData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/NotificationData;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/wufan/friend/chat/protocol/NotificationData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/wufan/friend/chat/protocol/NotificationData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/NotificationData;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/NotificationData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/wufan/friend/chat/protocol/NotificationData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/NotificationData;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/friend/chat/protocol/NotificationData;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/NotificationData;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/wufan/friend/chat/protocol/NotificationData;

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
    check-cast p1, Lcom/wufan/friend/chat/protocol/NotificationData;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getMessageId()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->getMessageId()J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    const/4 v5, 0x0

    .line 25
    cmp-long v6, v1, v3

    .line 26
    .line 27
    if-eqz v6, :cond_2

    .line 28
    .line 29
    return v5

    .line 30
    :cond_2
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getSendTimestamp()J

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->getSendTimestamp()J

    .line 35
    .line 36
    .line 37
    move-result-wide v3

    .line 38
    cmp-long v6, v1, v3

    .line 39
    .line 40
    if-eqz v6, :cond_3

    .line 41
    .line 42
    return v5

    .line 43
    :cond_3
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getAck()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->getAck()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eq v1, v2, :cond_4

    .line 52
    .line 53
    return v5

    .line 54
    :cond_4
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasFromAccount()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasFromAccount()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eq v1, v2, :cond_5

    .line 63
    .line 64
    return v5

    .line 65
    :cond_5
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasFromAccount()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_6

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFromAccount()Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFromAccount()Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v1, v2}, Lcom/wufan/friend/chat/protocol/AccountInfo;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_6

    .line 84
    .line 85
    return v5

    .line 86
    :cond_6
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasDialog()Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasDialog()Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eq v1, v2, :cond_7

    .line 95
    .line 96
    return v5

    .line 97
    :cond_7
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasDialog()Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_8

    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getDialog()Lcom/wufan/friend/chat/protocol/DialogNotification;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->getDialog()Lcom/wufan/friend/chat/protocol/DialogNotification;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v1, v2}, Lcom/wufan/friend/chat/protocol/DialogNotification;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-nez v1, :cond_8

    .line 116
    .line 117
    return v5

    .line 118
    :cond_8
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasPopWindow()Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasPopWindow()Z

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-eq v1, v2, :cond_9

    .line 127
    .line 128
    return v5

    .line 129
    :cond_9
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasPopWindow()Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-eqz v1, :cond_a

    .line 134
    .line 135
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getPopWindow()Lcom/wufan/friend/chat/protocol/PopWindowNotification;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->getPopWindow()Lcom/wufan/friend/chat/protocol/PopWindowNotification;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v1, v2}, Lcom/wufan/friend/chat/protocol/PopWindowNotification;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-nez v1, :cond_a

    .line 148
    .line 149
    return v5

    .line 150
    :cond_a
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasGameInvite()Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasGameInvite()Z

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    if-eq v1, v2, :cond_b

    .line 159
    .line 160
    return v5

    .line 161
    :cond_b
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasGameInvite()Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-eqz v1, :cond_c

    .line 166
    .line 167
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getGameInvite()Lcom/wufan/friend/chat/protocol/GameInviteNotification;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->getGameInvite()Lcom/wufan/friend/chat/protocol/GameInviteNotification;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-virtual {v1, v2}, Lcom/wufan/friend/chat/protocol/GameInviteNotification;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-nez v1, :cond_c

    .line 180
    .line 181
    return v5

    .line 182
    :cond_c
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasFriendChangeState()Z

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasFriendChangeState()Z

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    if-eq v1, v2, :cond_d

    .line 191
    .line 192
    return v5

    .line 193
    :cond_d
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasFriendChangeState()Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-eqz v1, :cond_e

    .line 198
    .line 199
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFriendChangeState()Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFriendChangeState()Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-virtual {v1, v2}, Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;->equals(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    if-nez v1, :cond_e

    .line 212
    .line 213
    return v5

    .line 214
    :cond_e
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasFriendPlayState()Z

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasFriendPlayState()Z

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    if-eq v1, v2, :cond_f

    .line 223
    .line 224
    return v5

    .line 225
    :cond_f
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasFriendPlayState()Z

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    if-eqz v1, :cond_10

    .line 230
    .line 231
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFriendPlayState()Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFriendPlayState()Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    invoke-virtual {v1, v2}, Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;->equals(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    if-nez v1, :cond_10

    .line 244
    .line 245
    return v5

    .line 246
    :cond_10
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasKickNotification()Z

    .line 247
    .line 248
    .line 249
    move-result v1

    .line 250
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasKickNotification()Z

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    if-eq v1, v2, :cond_11

    .line 255
    .line 256
    return v5

    .line 257
    :cond_11
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasKickNotification()Z

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    if-eqz v1, :cond_12

    .line 262
    .line 263
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getKickNotification()Lcom/wufan/friend/chat/protocol/KickNotification;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->getKickNotification()Lcom/wufan/friend/chat/protocol/KickNotification;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    invoke-virtual {v1, v2}, Lcom/wufan/friend/chat/protocol/KickNotification;->equals(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    if-nez v1, :cond_12

    .line 276
    .line 277
    return v5

    .line 278
    :cond_12
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasAllFriendNotification()Z

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasAllFriendNotification()Z

    .line 283
    .line 284
    .line 285
    move-result v2

    .line 286
    if-eq v1, v2, :cond_13

    .line 287
    .line 288
    return v5

    .line 289
    :cond_13
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasAllFriendNotification()Z

    .line 290
    .line 291
    .line 292
    move-result v1

    .line 293
    if-eqz v1, :cond_14

    .line 294
    .line 295
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getAllFriendNotification()Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->getAllFriendNotification()Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    invoke-virtual {v1, v2}, Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;->equals(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    if-nez v1, :cond_14

    .line 308
    .line 309
    return v5

    .line 310
    :cond_14
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasChatMsgNotification()Z

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasChatMsgNotification()Z

    .line 315
    .line 316
    .line 317
    move-result v2

    .line 318
    if-eq v1, v2, :cond_15

    .line 319
    .line 320
    return v5

    .line 321
    :cond_15
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasChatMsgNotification()Z

    .line 322
    .line 323
    .line 324
    move-result v1

    .line 325
    if-eqz v1, :cond_16

    .line 326
    .line 327
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getChatMsgNotification()Lcom/wufan/friend/chat/protocol/ChatMessageNotification;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->getChatMsgNotification()Lcom/wufan/friend/chat/protocol/ChatMessageNotification;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    invoke-virtual {v1, v2}, Lcom/wufan/friend/chat/protocol/ChatMessageNotification;->equals(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    move-result v1

    .line 339
    if-nez v1, :cond_16

    .line 340
    .line 341
    return v5

    .line 342
    :cond_16
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasFriAddReqNotification()Z

    .line 343
    .line 344
    .line 345
    move-result v1

    .line 346
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasFriAddReqNotification()Z

    .line 347
    .line 348
    .line 349
    move-result v2

    .line 350
    if-eq v1, v2, :cond_17

    .line 351
    .line 352
    return v5

    .line 353
    :cond_17
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasFriAddReqNotification()Z

    .line 354
    .line 355
    .line 356
    move-result v1

    .line 357
    if-eqz v1, :cond_18

    .line 358
    .line 359
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFriAddReqNotification()Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFriAddReqNotification()Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    invoke-virtual {v1, v2}, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->equals(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    move-result v1

    .line 371
    if-nez v1, :cond_18

    .line 372
    .line 373
    return v5

    .line 374
    :cond_18
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasLeaveRoomNotification()Z

    .line 375
    .line 376
    .line 377
    move-result v1

    .line 378
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasLeaveRoomNotification()Z

    .line 379
    .line 380
    .line 381
    move-result v2

    .line 382
    if-eq v1, v2, :cond_19

    .line 383
    .line 384
    return v5

    .line 385
    :cond_19
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasLeaveRoomNotification()Z

    .line 386
    .line 387
    .line 388
    move-result v1

    .line 389
    if-eqz v1, :cond_1a

    .line 390
    .line 391
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getLeaveRoomNotification()Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->getLeaveRoomNotification()Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;

    .line 396
    .line 397
    .line 398
    move-result-object v2

    .line 399
    invoke-virtual {v1, v2}, Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;->equals(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result v1

    .line 403
    if-nez v1, :cond_1a

    .line 404
    .line 405
    return v5

    .line 406
    :cond_1a
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasFriendAddSuccessNotification()Z

    .line 407
    .line 408
    .line 409
    move-result v1

    .line 410
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasFriendAddSuccessNotification()Z

    .line 411
    .line 412
    .line 413
    move-result v2

    .line 414
    if-eq v1, v2, :cond_1b

    .line 415
    .line 416
    return v5

    .line 417
    :cond_1b
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasFriendAddSuccessNotification()Z

    .line 418
    .line 419
    .line 420
    move-result v1

    .line 421
    if-eqz v1, :cond_1c

    .line 422
    .line 423
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFriendAddSuccessNotification()Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFriendAddSuccessNotification()Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;

    .line 428
    .line 429
    .line 430
    move-result-object v2

    .line 431
    invoke-virtual {v1, v2}, Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;->equals(Ljava/lang/Object;)Z

    .line 432
    .line 433
    .line 434
    move-result v1

    .line 435
    if-nez v1, :cond_1c

    .line 436
    .line 437
    return v5

    .line 438
    :cond_1c
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasRejectBattleInviteNotification()Z

    .line 439
    .line 440
    .line 441
    move-result v1

    .line 442
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasRejectBattleInviteNotification()Z

    .line 443
    .line 444
    .line 445
    move-result v2

    .line 446
    if-eq v1, v2, :cond_1d

    .line 447
    .line 448
    return v5

    .line 449
    :cond_1d
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasRejectBattleInviteNotification()Z

    .line 450
    .line 451
    .line 452
    move-result v1

    .line 453
    if-eqz v1, :cond_1e

    .line 454
    .line 455
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getRejectBattleInviteNotification()Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->getRejectBattleInviteNotification()Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;

    .line 460
    .line 461
    .line 462
    move-result-object v2

    .line 463
    invoke-virtual {v1, v2}, Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;->equals(Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    move-result v1

    .line 467
    if-nez v1, :cond_1e

    .line 468
    .line 469
    return v5

    .line 470
    :cond_1e
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasAllFrdNotification()Z

    .line 471
    .line 472
    .line 473
    move-result v1

    .line 474
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasAllFrdNotification()Z

    .line 475
    .line 476
    .line 477
    move-result v2

    .line 478
    if-eq v1, v2, :cond_1f

    .line 479
    .line 480
    return v5

    .line 481
    :cond_1f
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasAllFrdNotification()Z

    .line 482
    .line 483
    .line 484
    move-result v1

    .line 485
    if-eqz v1, :cond_20

    .line 486
    .line 487
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getAllFrdNotification()Lcom/wufan/friend/chat/protocol/AllFriendNotification;

    .line 488
    .line 489
    .line 490
    move-result-object v1

    .line 491
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->getAllFrdNotification()Lcom/wufan/friend/chat/protocol/AllFriendNotification;

    .line 492
    .line 493
    .line 494
    move-result-object v2

    .line 495
    invoke-virtual {v1, v2}, Lcom/wufan/friend/chat/protocol/AllFriendNotification;->equals(Ljava/lang/Object;)Z

    .line 496
    .line 497
    .line 498
    move-result v1

    .line 499
    if-nez v1, :cond_20

    .line 500
    .line 501
    return v5

    .line 502
    :cond_20
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasRecommendPlayerStateChange()Z

    .line 503
    .line 504
    .line 505
    move-result v1

    .line 506
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasRecommendPlayerStateChange()Z

    .line 507
    .line 508
    .line 509
    move-result v2

    .line 510
    if-eq v1, v2, :cond_21

    .line 511
    .line 512
    return v5

    .line 513
    :cond_21
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasRecommendPlayerStateChange()Z

    .line 514
    .line 515
    .line 516
    move-result v1

    .line 517
    if-eqz v1, :cond_22

    .line 518
    .line 519
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getRecommendPlayerStateChange()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    .line 520
    .line 521
    .line 522
    move-result-object v1

    .line 523
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->getRecommendPlayerStateChange()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    .line 524
    .line 525
    .line 526
    move-result-object v2

    .line 527
    invoke-virtual {v1, v2}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->equals(Ljava/lang/Object;)Z

    .line 528
    .line 529
    .line 530
    move-result v1

    .line 531
    if-nez v1, :cond_22

    .line 532
    .line 533
    return v5

    .line 534
    :cond_22
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasFriendDeleteSuccess()Z

    .line 535
    .line 536
    .line 537
    move-result v1

    .line 538
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasFriendDeleteSuccess()Z

    .line 539
    .line 540
    .line 541
    move-result v2

    .line 542
    if-eq v1, v2, :cond_23

    .line 543
    .line 544
    return v5

    .line 545
    :cond_23
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasFriendDeleteSuccess()Z

    .line 546
    .line 547
    .line 548
    move-result v1

    .line 549
    if-eqz v1, :cond_24

    .line 550
    .line 551
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFriendDeleteSuccess()Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;

    .line 552
    .line 553
    .line 554
    move-result-object v1

    .line 555
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFriendDeleteSuccess()Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;

    .line 556
    .line 557
    .line 558
    move-result-object v2

    .line 559
    invoke-virtual {v1, v2}, Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;->equals(Ljava/lang/Object;)Z

    .line 560
    .line 561
    .line 562
    move-result v1

    .line 563
    if-nez v1, :cond_24

    .line 564
    .line 565
    return v5

    .line 566
    :cond_24
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasPlayerBanned()Z

    .line 567
    .line 568
    .line 569
    move-result v1

    .line 570
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasPlayerBanned()Z

    .line 571
    .line 572
    .line 573
    move-result v2

    .line 574
    if-eq v1, v2, :cond_25

    .line 575
    .line 576
    return v5

    .line 577
    :cond_25
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasPlayerBanned()Z

    .line 578
    .line 579
    .line 580
    move-result v1

    .line 581
    if-eqz v1, :cond_26

    .line 582
    .line 583
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getPlayerBanned()Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;

    .line 584
    .line 585
    .line 586
    move-result-object v1

    .line 587
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->getPlayerBanned()Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;

    .line 588
    .line 589
    .line 590
    move-result-object v2

    .line 591
    invoke-virtual {v1, v2}, Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;->equals(Ljava/lang/Object;)Z

    .line 592
    .line 593
    .line 594
    move-result v1

    .line 595
    if-nez v1, :cond_26

    .line 596
    .line 597
    return v5

    .line 598
    :cond_26
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 599
    .line 600
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 601
    .line 602
    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    .line 603
    .line 604
    .line 605
    move-result p1

    .line 606
    if-nez p1, :cond_27

    .line 607
    .line 608
    return v5

    .line 609
    :cond_27
    return v0
.end method

.method public getAck()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->ack_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getAllFrdNotification()Lcom/wufan/friend/chat/protocol/AllFriendNotification;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->allFrdNotification_:Lcom/wufan/friend/chat/protocol/AllFriendNotification;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/wufan/friend/chat/protocol/AllFriendNotification;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/AllFriendNotification;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getAllFrdNotificationOrBuilder()Lcom/wufan/friend/chat/protocol/c;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getAllFrdNotification()Lcom/wufan/friend/chat/protocol/AllFriendNotification;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getAllFriendNotification()Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->allFriendNotification_:Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getAllFriendNotificationOrBuilder()Lcom/wufan/friend/chat/protocol/d;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getAllFriendNotification()Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getChatMsgNotification()Lcom/wufan/friend/chat/protocol/ChatMessageNotification;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->chatMsgNotification_:Lcom/wufan/friend/chat/protocol/ChatMessageNotification;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/wufan/friend/chat/protocol/ChatMessageNotification;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/ChatMessageNotification;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getChatMsgNotificationOrBuilder()Lcom/wufan/friend/chat/protocol/g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getChatMsgNotification()Lcom/wufan/friend/chat/protocol/ChatMessageNotification;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getDefaultInstanceForType()Lcom/wufan/friend/chat/protocol/NotificationData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getDefaultInstanceForType()Lcom/wufan/friend/chat/protocol/NotificationData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/wufan/friend/chat/protocol/NotificationData;
    .locals 1

    .line 3
    sget-object v0, Lcom/wufan/friend/chat/protocol/NotificationData;->DEFAULT_INSTANCE:Lcom/wufan/friend/chat/protocol/NotificationData;

    return-object v0
.end method

.method public getDialog()Lcom/wufan/friend/chat/protocol/DialogNotification;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->dialog_:Lcom/wufan/friend/chat/protocol/DialogNotification;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/wufan/friend/chat/protocol/DialogNotification;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/DialogNotification;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getDialogOrBuilder()Lcom/wufan/friend/chat/protocol/i;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getDialog()Lcom/wufan/friend/chat/protocol/DialogNotification;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getFriAddReqNotification()Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->friAddReqNotification_:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getFriAddReqNotificationOrBuilder()Lcom/wufan/friend/chat/protocol/j;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFriAddReqNotification()Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getFriendAddSuccessNotification()Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->friendAddSuccessNotification_:Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getFriendAddSuccessNotificationOrBuilder()Lcom/wufan/friend/chat/protocol/k;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFriendAddSuccessNotification()Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getFriendChangeState()Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->friendChangeState_:Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getFriendChangeStateOrBuilder()Lcom/wufan/friend/chat/protocol/m;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFriendChangeState()Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getFriendDeleteSuccess()Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->friendDeleteSuccess_:Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getFriendDeleteSuccessOrBuilder()Lcom/wufan/friend/chat/protocol/n;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFriendDeleteSuccess()Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getFriendPlayState()Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->friendPlayState_:Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getFriendPlayStateOrBuilder()Lcom/wufan/friend/chat/protocol/l;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFriendPlayState()Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getFromAccount()Lcom/wufan/friend/chat/protocol/AccountInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->fromAccount_:Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/wufan/friend/chat/protocol/AccountInfo;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getFromAccountOrBuilder()Lcom/wufan/friend/chat/protocol/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFromAccount()Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getGameInvite()Lcom/wufan/friend/chat/protocol/GameInviteNotification;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->gameInvite_:Lcom/wufan/friend/chat/protocol/GameInviteNotification;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/wufan/friend/chat/protocol/GameInviteNotification;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/GameInviteNotification;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getGameInviteOrBuilder()Lcom/wufan/friend/chat/protocol/r;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getGameInvite()Lcom/wufan/friend/chat/protocol/GameInviteNotification;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getKickNotification()Lcom/wufan/friend/chat/protocol/KickNotification;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->kickNotification_:Lcom/wufan/friend/chat/protocol/KickNotification;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/wufan/friend/chat/protocol/KickNotification;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/KickNotification;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getKickNotificationOrBuilder()Lcom/wufan/friend/chat/protocol/u;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getKickNotification()Lcom/wufan/friend/chat/protocol/KickNotification;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getLeaveRoomNotification()Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->leaveRoomNotification_:Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getLeaveRoomNotificationOrBuilder()Lcom/wufan/friend/chat/protocol/v;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getLeaveRoomNotification()Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getMessageId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->messageId_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/friend/chat/protocol/NotificationData;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/NotificationData;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlayerBanned()Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->playerBanned_:Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getPlayerBannedOrBuilder()Lcom/wufan/friend/chat/protocol/f0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getPlayerBanned()Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getPopWindow()Lcom/wufan/friend/chat/protocol/PopWindowNotification;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->popWindow_:Lcom/wufan/friend/chat/protocol/PopWindowNotification;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/wufan/friend/chat/protocol/PopWindowNotification;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/PopWindowNotification;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getPopWindowOrBuilder()Lcom/wufan/friend/chat/protocol/g0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getPopWindow()Lcom/wufan/friend/chat/protocol/PopWindowNotification;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getRecommendPlayerStateChange()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->recommendPlayerStateChange_:Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getRecommendPlayerStateChangeOrBuilder()Lcom/wufan/friend/chat/protocol/k0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getRecommendPlayerStateChange()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getRejectBattleInviteNotification()Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->rejectBattleInviteNotification_:Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getRejectBattleInviteNotificationOrBuilder()Lcom/wufan/friend/chat/protocol/l0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getRejectBattleInviteNotification()Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getSendTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->sendTimestamp_:J

    .line 2
    .line 3
    return-wide v0
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
    iget-wide v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->messageId_:J

    .line 8
    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    cmp-long v5, v0, v2

    .line 13
    .line 14
    if-eqz v5, :cond_1

    .line 15
    .line 16
    const/4 v5, 0x1

    .line 17
    invoke-static {v5, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    add-int/2addr v4, v0

    .line 22
    :cond_1
    iget-wide v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->sendTimestamp_:J

    .line 23
    .line 24
    cmp-long v5, v0, v2

    .line 25
    .line 26
    if-eqz v5, :cond_2

    .line 27
    .line 28
    const/4 v2, 0x2

    .line 29
    invoke-static {v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    add-int/2addr v4, v0

    .line 34
    :cond_2
    iget-boolean v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->ack_:Z

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    const/4 v1, 0x3

    .line 39
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    add-int/2addr v4, v0

    .line 44
    :cond_3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->fromAccount_:Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 45
    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    const/4 v0, 0x4

    .line 49
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFromAccount()Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    add-int/2addr v4, v0

    .line 58
    :cond_4
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->dialog_:Lcom/wufan/friend/chat/protocol/DialogNotification;

    .line 59
    .line 60
    if-eqz v0, :cond_5

    .line 61
    .line 62
    const/4 v0, 0x5

    .line 63
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getDialog()Lcom/wufan/friend/chat/protocol/DialogNotification;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    add-int/2addr v4, v0

    .line 72
    :cond_5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->popWindow_:Lcom/wufan/friend/chat/protocol/PopWindowNotification;

    .line 73
    .line 74
    if-eqz v0, :cond_6

    .line 75
    .line 76
    const/4 v0, 0x6

    .line 77
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getPopWindow()Lcom/wufan/friend/chat/protocol/PopWindowNotification;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    add-int/2addr v4, v0

    .line 86
    :cond_6
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->gameInvite_:Lcom/wufan/friend/chat/protocol/GameInviteNotification;

    .line 87
    .line 88
    if-eqz v0, :cond_7

    .line 89
    .line 90
    const/4 v0, 0x7

    .line 91
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getGameInvite()Lcom/wufan/friend/chat/protocol/GameInviteNotification;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    add-int/2addr v4, v0

    .line 100
    :cond_7
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->friendChangeState_:Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;

    .line 101
    .line 102
    if-eqz v0, :cond_8

    .line 103
    .line 104
    const/16 v0, 0x8

    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFriendChangeState()Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    add-int/2addr v4, v0

    .line 115
    :cond_8
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->friendPlayState_:Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;

    .line 116
    .line 117
    if-eqz v0, :cond_9

    .line 118
    .line 119
    const/16 v0, 0x9

    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFriendPlayState()Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    add-int/2addr v4, v0

    .line 130
    :cond_9
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->kickNotification_:Lcom/wufan/friend/chat/protocol/KickNotification;

    .line 131
    .line 132
    if-eqz v0, :cond_a

    .line 133
    .line 134
    const/16 v0, 0xa

    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getKickNotification()Lcom/wufan/friend/chat/protocol/KickNotification;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    add-int/2addr v4, v0

    .line 145
    :cond_a
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->allFriendNotification_:Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;

    .line 146
    .line 147
    if-eqz v0, :cond_b

    .line 148
    .line 149
    const/16 v0, 0xb

    .line 150
    .line 151
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getAllFriendNotification()Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    add-int/2addr v4, v0

    .line 160
    :cond_b
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->chatMsgNotification_:Lcom/wufan/friend/chat/protocol/ChatMessageNotification;

    .line 161
    .line 162
    if-eqz v0, :cond_c

    .line 163
    .line 164
    const/16 v0, 0xc

    .line 165
    .line 166
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getChatMsgNotification()Lcom/wufan/friend/chat/protocol/ChatMessageNotification;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    add-int/2addr v4, v0

    .line 175
    :cond_c
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->friAddReqNotification_:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    .line 176
    .line 177
    if-eqz v0, :cond_d

    .line 178
    .line 179
    const/16 v0, 0xd

    .line 180
    .line 181
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFriAddReqNotification()Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    add-int/2addr v4, v0

    .line 190
    :cond_d
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->leaveRoomNotification_:Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;

    .line 191
    .line 192
    if-eqz v0, :cond_e

    .line 193
    .line 194
    const/16 v0, 0xe

    .line 195
    .line 196
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getLeaveRoomNotification()Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    add-int/2addr v4, v0

    .line 205
    :cond_e
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->friendAddSuccessNotification_:Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;

    .line 206
    .line 207
    if-eqz v0, :cond_f

    .line 208
    .line 209
    const/16 v0, 0xf

    .line 210
    .line 211
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFriendAddSuccessNotification()Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    add-int/2addr v4, v0

    .line 220
    :cond_f
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->rejectBattleInviteNotification_:Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;

    .line 221
    .line 222
    if-eqz v0, :cond_10

    .line 223
    .line 224
    const/16 v0, 0x10

    .line 225
    .line 226
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getRejectBattleInviteNotification()Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    add-int/2addr v4, v0

    .line 235
    :cond_10
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->allFrdNotification_:Lcom/wufan/friend/chat/protocol/AllFriendNotification;

    .line 236
    .line 237
    if-eqz v0, :cond_11

    .line 238
    .line 239
    const/16 v0, 0x11

    .line 240
    .line 241
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getAllFrdNotification()Lcom/wufan/friend/chat/protocol/AllFriendNotification;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    add-int/2addr v4, v0

    .line 250
    :cond_11
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->recommendPlayerStateChange_:Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    .line 251
    .line 252
    if-eqz v0, :cond_12

    .line 253
    .line 254
    const/16 v0, 0x12

    .line 255
    .line 256
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getRecommendPlayerStateChange()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    add-int/2addr v4, v0

    .line 265
    :cond_12
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->friendDeleteSuccess_:Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;

    .line 266
    .line 267
    if-eqz v0, :cond_13

    .line 268
    .line 269
    const/16 v0, 0x13

    .line 270
    .line 271
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFriendDeleteSuccess()Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    add-int/2addr v4, v0

    .line 280
    :cond_13
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->playerBanned_:Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;

    .line 281
    .line 282
    if-eqz v0, :cond_14

    .line 283
    .line 284
    const/16 v0, 0x14

    .line 285
    .line 286
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getPlayerBanned()Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 291
    .line 292
    .line 293
    move-result v0

    .line 294
    add-int/2addr v4, v0

    .line 295
    :cond_14
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 296
    .line 297
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    .line 298
    .line 299
    .line 300
    move-result v0

    .line 301
    add-int/2addr v4, v0

    .line 302
    iput v4, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 303
    .line 304
    return v4
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2
    .line 3
    return-object v0
.end method

.method public hasAllFrdNotification()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->allFrdNotification_:Lcom/wufan/friend/chat/protocol/AllFriendNotification;

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

.method public hasAllFriendNotification()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->allFriendNotification_:Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;

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

.method public hasChatMsgNotification()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->chatMsgNotification_:Lcom/wufan/friend/chat/protocol/ChatMessageNotification;

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

.method public hasDialog()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->dialog_:Lcom/wufan/friend/chat/protocol/DialogNotification;

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

.method public hasFriAddReqNotification()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->friAddReqNotification_:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

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

.method public hasFriendAddSuccessNotification()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->friendAddSuccessNotification_:Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;

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

.method public hasFriendChangeState()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->friendChangeState_:Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;

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

.method public hasFriendDeleteSuccess()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->friendDeleteSuccess_:Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;

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

.method public hasFriendPlayState()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->friendPlayState_:Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;

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

.method public hasFromAccount()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->fromAccount_:Lcom/wufan/friend/chat/protocol/AccountInfo;

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

.method public hasGameInvite()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->gameInvite_:Lcom/wufan/friend/chat/protocol/GameInviteNotification;

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

.method public hasKickNotification()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->kickNotification_:Lcom/wufan/friend/chat/protocol/KickNotification;

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

.method public hasLeaveRoomNotification()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->leaveRoomNotification_:Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;

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

.method public hasPlayerBanned()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->playerBanned_:Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;

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

.method public hasPopWindow()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->popWindow_:Lcom/wufan/friend/chat/protocol/PopWindowNotification;

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

.method public hasRecommendPlayerStateChange()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->recommendPlayerStateChange_:Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

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

.method public hasRejectBattleInviteNotification()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->rejectBattleInviteNotification_:Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;

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
    invoke-static {}, Lcom/wufan/friend/chat/protocol/NotificationData;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getMessageId()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    add-int/2addr v1, v0

    .line 32
    mul-int/lit8 v1, v1, 0x25

    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x2

    .line 35
    .line 36
    mul-int/lit8 v1, v1, 0x35

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getSendTimestamp()J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    add-int/2addr v1, v0

    .line 47
    mul-int/lit8 v1, v1, 0x25

    .line 48
    .line 49
    add-int/lit8 v1, v1, 0x3

    .line 50
    .line 51
    mul-int/lit8 v1, v1, 0x35

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getAck()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-static {v0}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    add-int/2addr v1, v0

    .line 62
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasFromAccount()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    mul-int/lit8 v1, v1, 0x25

    .line 69
    .line 70
    add-int/lit8 v1, v1, 0x4

    .line 71
    .line 72
    mul-int/lit8 v1, v1, 0x35

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFromAccount()Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/AccountInfo;->hashCode()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    add-int/2addr v1, v0

    .line 83
    :cond_1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasDialog()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_2

    .line 88
    .line 89
    mul-int/lit8 v1, v1, 0x25

    .line 90
    .line 91
    add-int/lit8 v1, v1, 0x5

    .line 92
    .line 93
    mul-int/lit8 v1, v1, 0x35

    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getDialog()Lcom/wufan/friend/chat/protocol/DialogNotification;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/DialogNotification;->hashCode()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    add-int/2addr v1, v0

    .line 104
    :cond_2
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasPopWindow()Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_3

    .line 109
    .line 110
    mul-int/lit8 v1, v1, 0x25

    .line 111
    .line 112
    add-int/lit8 v1, v1, 0x6

    .line 113
    .line 114
    mul-int/lit8 v1, v1, 0x35

    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getPopWindow()Lcom/wufan/friend/chat/protocol/PopWindowNotification;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/PopWindowNotification;->hashCode()I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    add-int/2addr v1, v0

    .line 125
    :cond_3
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasGameInvite()Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_4

    .line 130
    .line 131
    mul-int/lit8 v1, v1, 0x25

    .line 132
    .line 133
    add-int/lit8 v1, v1, 0x7

    .line 134
    .line 135
    mul-int/lit8 v1, v1, 0x35

    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getGameInvite()Lcom/wufan/friend/chat/protocol/GameInviteNotification;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/GameInviteNotification;->hashCode()I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    add-int/2addr v1, v0

    .line 146
    :cond_4
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasFriendChangeState()Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-eqz v0, :cond_5

    .line 151
    .line 152
    mul-int/lit8 v1, v1, 0x25

    .line 153
    .line 154
    add-int/lit8 v1, v1, 0x8

    .line 155
    .line 156
    mul-int/lit8 v1, v1, 0x35

    .line 157
    .line 158
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFriendChangeState()Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;->hashCode()I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    add-int/2addr v1, v0

    .line 167
    :cond_5
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasFriendPlayState()Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-eqz v0, :cond_6

    .line 172
    .line 173
    mul-int/lit8 v1, v1, 0x25

    .line 174
    .line 175
    add-int/lit8 v1, v1, 0x9

    .line 176
    .line 177
    mul-int/lit8 v1, v1, 0x35

    .line 178
    .line 179
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFriendPlayState()Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;->hashCode()I

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    add-int/2addr v1, v0

    .line 188
    :cond_6
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasKickNotification()Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-eqz v0, :cond_7

    .line 193
    .line 194
    mul-int/lit8 v1, v1, 0x25

    .line 195
    .line 196
    add-int/lit8 v1, v1, 0xa

    .line 197
    .line 198
    mul-int/lit8 v1, v1, 0x35

    .line 199
    .line 200
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getKickNotification()Lcom/wufan/friend/chat/protocol/KickNotification;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/KickNotification;->hashCode()I

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    add-int/2addr v1, v0

    .line 209
    :cond_7
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasAllFriendNotification()Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-eqz v0, :cond_8

    .line 214
    .line 215
    mul-int/lit8 v1, v1, 0x25

    .line 216
    .line 217
    add-int/lit8 v1, v1, 0xb

    .line 218
    .line 219
    mul-int/lit8 v1, v1, 0x35

    .line 220
    .line 221
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getAllFriendNotification()Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;->hashCode()I

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    add-int/2addr v1, v0

    .line 230
    :cond_8
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasChatMsgNotification()Z

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-eqz v0, :cond_9

    .line 235
    .line 236
    mul-int/lit8 v1, v1, 0x25

    .line 237
    .line 238
    add-int/lit8 v1, v1, 0xc

    .line 239
    .line 240
    mul-int/lit8 v1, v1, 0x35

    .line 241
    .line 242
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getChatMsgNotification()Lcom/wufan/friend/chat/protocol/ChatMessageNotification;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/ChatMessageNotification;->hashCode()I

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    add-int/2addr v1, v0

    .line 251
    :cond_9
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasFriAddReqNotification()Z

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    if-eqz v0, :cond_a

    .line 256
    .line 257
    mul-int/lit8 v1, v1, 0x25

    .line 258
    .line 259
    add-int/lit8 v1, v1, 0xd

    .line 260
    .line 261
    mul-int/lit8 v1, v1, 0x35

    .line 262
    .line 263
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFriAddReqNotification()Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->hashCode()I

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    add-int/2addr v1, v0

    .line 272
    :cond_a
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasLeaveRoomNotification()Z

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    if-eqz v0, :cond_b

    .line 277
    .line 278
    mul-int/lit8 v1, v1, 0x25

    .line 279
    .line 280
    add-int/lit8 v1, v1, 0xe

    .line 281
    .line 282
    mul-int/lit8 v1, v1, 0x35

    .line 283
    .line 284
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getLeaveRoomNotification()Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;->hashCode()I

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    add-int/2addr v1, v0

    .line 293
    :cond_b
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasFriendAddSuccessNotification()Z

    .line 294
    .line 295
    .line 296
    move-result v0

    .line 297
    if-eqz v0, :cond_c

    .line 298
    .line 299
    mul-int/lit8 v1, v1, 0x25

    .line 300
    .line 301
    add-int/lit8 v1, v1, 0xf

    .line 302
    .line 303
    mul-int/lit8 v1, v1, 0x35

    .line 304
    .line 305
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFriendAddSuccessNotification()Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;->hashCode()I

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    add-int/2addr v1, v0

    .line 314
    :cond_c
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasRejectBattleInviteNotification()Z

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    if-eqz v0, :cond_d

    .line 319
    .line 320
    mul-int/lit8 v1, v1, 0x25

    .line 321
    .line 322
    add-int/lit8 v1, v1, 0x10

    .line 323
    .line 324
    mul-int/lit8 v1, v1, 0x35

    .line 325
    .line 326
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getRejectBattleInviteNotification()Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;->hashCode()I

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    add-int/2addr v1, v0

    .line 335
    :cond_d
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasAllFrdNotification()Z

    .line 336
    .line 337
    .line 338
    move-result v0

    .line 339
    if-eqz v0, :cond_e

    .line 340
    .line 341
    mul-int/lit8 v1, v1, 0x25

    .line 342
    .line 343
    add-int/lit8 v1, v1, 0x11

    .line 344
    .line 345
    mul-int/lit8 v1, v1, 0x35

    .line 346
    .line 347
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getAllFrdNotification()Lcom/wufan/friend/chat/protocol/AllFriendNotification;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/AllFriendNotification;->hashCode()I

    .line 352
    .line 353
    .line 354
    move-result v0

    .line 355
    add-int/2addr v1, v0

    .line 356
    :cond_e
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasRecommendPlayerStateChange()Z

    .line 357
    .line 358
    .line 359
    move-result v0

    .line 360
    if-eqz v0, :cond_f

    .line 361
    .line 362
    mul-int/lit8 v1, v1, 0x25

    .line 363
    .line 364
    add-int/lit8 v1, v1, 0x12

    .line 365
    .line 366
    mul-int/lit8 v1, v1, 0x35

    .line 367
    .line 368
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getRecommendPlayerStateChange()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->hashCode()I

    .line 373
    .line 374
    .line 375
    move-result v0

    .line 376
    add-int/2addr v1, v0

    .line 377
    :cond_f
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasFriendDeleteSuccess()Z

    .line 378
    .line 379
    .line 380
    move-result v0

    .line 381
    if-eqz v0, :cond_10

    .line 382
    .line 383
    mul-int/lit8 v1, v1, 0x25

    .line 384
    .line 385
    add-int/lit8 v1, v1, 0x13

    .line 386
    .line 387
    mul-int/lit8 v1, v1, 0x35

    .line 388
    .line 389
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFriendDeleteSuccess()Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;->hashCode()I

    .line 394
    .line 395
    .line 396
    move-result v0

    .line 397
    add-int/2addr v1, v0

    .line 398
    :cond_10
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->hasPlayerBanned()Z

    .line 399
    .line 400
    .line 401
    move-result v0

    .line 402
    if-eqz v0, :cond_11

    .line 403
    .line 404
    mul-int/lit8 v1, v1, 0x25

    .line 405
    .line 406
    add-int/lit8 v1, v1, 0x14

    .line 407
    .line 408
    mul-int/lit8 v1, v1, 0x35

    .line 409
    .line 410
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getPlayerBanned()Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;->hashCode()I

    .line 415
    .line 416
    .line 417
    move-result v0

    .line 418
    add-int/2addr v1, v0

    .line 419
    :cond_11
    mul-int/lit8 v1, v1, 0x1d

    .line 420
    .line 421
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 422
    .line 423
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    .line 424
    .line 425
    .line 426
    move-result v0

    .line 427
    add-int/2addr v1, v0

    .line 428
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 429
    .line 430
    return v1
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
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->memoizedIsInitialized:B

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
    iput-byte v1, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->newBuilderForType()Lcom/wufan/friend/chat/protocol/NotificationData$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "parent"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/NotificationData;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/wufan/friend/chat/protocol/NotificationData$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->newBuilderForType()Lcom/wufan/friend/chat/protocol/NotificationData$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/wufan/friend/chat/protocol/NotificationData$b;
    .locals 1

    .line 4
    invoke-static {}, Lcom/wufan/friend/chat/protocol/NotificationData;->newBuilder()Lcom/wufan/friend/chat/protocol/NotificationData$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/wufan/friend/chat/protocol/NotificationData$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/wufan/friend/chat/protocol/NotificationData$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/wufan/friend/chat/protocol/NotificationData$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/wufan/friend/chat/protocol/NotificationData$a;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->toBuilder()Lcom/wufan/friend/chat/protocol/NotificationData$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->toBuilder()Lcom/wufan/friend/chat/protocol/NotificationData$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/wufan/friend/chat/protocol/NotificationData$b;
    .locals 2

    .line 3
    sget-object v0, Lcom/wufan/friend/chat/protocol/NotificationData;->DEFAULT_INSTANCE:Lcom/wufan/friend/chat/protocol/NotificationData;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/wufan/friend/chat/protocol/NotificationData$b;

    invoke-direct {v0, v1}, Lcom/wufan/friend/chat/protocol/NotificationData$b;-><init>(Lcom/wufan/friend/chat/protocol/NotificationData$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/wufan/friend/chat/protocol/NotificationData$b;

    invoke-direct {v0, v1}, Lcom/wufan/friend/chat/protocol/NotificationData$b;-><init>(Lcom/wufan/friend/chat/protocol/NotificationData$a;)V

    invoke-virtual {v0, p0}, Lcom/wufan/friend/chat/protocol/NotificationData$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/NotificationData;)Lcom/wufan/friend/chat/protocol/NotificationData$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->messageId_:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_0

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-wide v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->sendTimestamp_:J

    .line 14
    .line 15
    cmp-long v4, v0, v2

    .line 16
    .line 17
    if-eqz v4, :cond_1

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-boolean v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->ack_:Z

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 29
    .line 30
    .line 31
    :cond_2
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->fromAccount_:Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    const/4 v0, 0x4

    .line 36
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFromAccount()Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 41
    .line 42
    .line 43
    :cond_3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->dialog_:Lcom/wufan/friend/chat/protocol/DialogNotification;

    .line 44
    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    const/4 v0, 0x5

    .line 48
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getDialog()Lcom/wufan/friend/chat/protocol/DialogNotification;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 53
    .line 54
    .line 55
    :cond_4
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->popWindow_:Lcom/wufan/friend/chat/protocol/PopWindowNotification;

    .line 56
    .line 57
    if-eqz v0, :cond_5

    .line 58
    .line 59
    const/4 v0, 0x6

    .line 60
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getPopWindow()Lcom/wufan/friend/chat/protocol/PopWindowNotification;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 65
    .line 66
    .line 67
    :cond_5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->gameInvite_:Lcom/wufan/friend/chat/protocol/GameInviteNotification;

    .line 68
    .line 69
    if-eqz v0, :cond_6

    .line 70
    .line 71
    const/4 v0, 0x7

    .line 72
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getGameInvite()Lcom/wufan/friend/chat/protocol/GameInviteNotification;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 77
    .line 78
    .line 79
    :cond_6
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->friendChangeState_:Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;

    .line 80
    .line 81
    if-eqz v0, :cond_7

    .line 82
    .line 83
    const/16 v0, 0x8

    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFriendChangeState()Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 90
    .line 91
    .line 92
    :cond_7
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->friendPlayState_:Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;

    .line 93
    .line 94
    if-eqz v0, :cond_8

    .line 95
    .line 96
    const/16 v0, 0x9

    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFriendPlayState()Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 103
    .line 104
    .line 105
    :cond_8
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->kickNotification_:Lcom/wufan/friend/chat/protocol/KickNotification;

    .line 106
    .line 107
    if-eqz v0, :cond_9

    .line 108
    .line 109
    const/16 v0, 0xa

    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getKickNotification()Lcom/wufan/friend/chat/protocol/KickNotification;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 116
    .line 117
    .line 118
    :cond_9
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->allFriendNotification_:Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;

    .line 119
    .line 120
    if-eqz v0, :cond_a

    .line 121
    .line 122
    const/16 v0, 0xb

    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getAllFriendNotification()Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 129
    .line 130
    .line 131
    :cond_a
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->chatMsgNotification_:Lcom/wufan/friend/chat/protocol/ChatMessageNotification;

    .line 132
    .line 133
    if-eqz v0, :cond_b

    .line 134
    .line 135
    const/16 v0, 0xc

    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getChatMsgNotification()Lcom/wufan/friend/chat/protocol/ChatMessageNotification;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 142
    .line 143
    .line 144
    :cond_b
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->friAddReqNotification_:Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    .line 145
    .line 146
    if-eqz v0, :cond_c

    .line 147
    .line 148
    const/16 v0, 0xd

    .line 149
    .line 150
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFriAddReqNotification()Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 155
    .line 156
    .line 157
    :cond_c
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->leaveRoomNotification_:Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;

    .line 158
    .line 159
    if-eqz v0, :cond_d

    .line 160
    .line 161
    const/16 v0, 0xe

    .line 162
    .line 163
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getLeaveRoomNotification()Lcom/wufan/friend/chat/protocol/LeaveRoomNotification;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 168
    .line 169
    .line 170
    :cond_d
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->friendAddSuccessNotification_:Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;

    .line 171
    .line 172
    if-eqz v0, :cond_e

    .line 173
    .line 174
    const/16 v0, 0xf

    .line 175
    .line 176
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFriendAddSuccessNotification()Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 181
    .line 182
    .line 183
    :cond_e
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->rejectBattleInviteNotification_:Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;

    .line 184
    .line 185
    if-eqz v0, :cond_f

    .line 186
    .line 187
    const/16 v0, 0x10

    .line 188
    .line 189
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getRejectBattleInviteNotification()Lcom/wufan/friend/chat/protocol/RejectBattleInviteNotification;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 194
    .line 195
    .line 196
    :cond_f
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->allFrdNotification_:Lcom/wufan/friend/chat/protocol/AllFriendNotification;

    .line 197
    .line 198
    if-eqz v0, :cond_10

    .line 199
    .line 200
    const/16 v0, 0x11

    .line 201
    .line 202
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getAllFrdNotification()Lcom/wufan/friend/chat/protocol/AllFriendNotification;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 207
    .line 208
    .line 209
    :cond_10
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->recommendPlayerStateChange_:Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    .line 210
    .line 211
    if-eqz v0, :cond_11

    .line 212
    .line 213
    const/16 v0, 0x12

    .line 214
    .line 215
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getRecommendPlayerStateChange()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 220
    .line 221
    .line 222
    :cond_11
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->friendDeleteSuccess_:Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;

    .line 223
    .line 224
    if-eqz v0, :cond_12

    .line 225
    .line 226
    const/16 v0, 0x13

    .line 227
    .line 228
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFriendDeleteSuccess()Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 233
    .line 234
    .line 235
    :cond_12
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/NotificationData;->playerBanned_:Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;

    .line 236
    .line 237
    if-eqz v0, :cond_13

    .line 238
    .line 239
    const/16 v0, 0x14

    .line 240
    .line 241
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getPlayerBanned()Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 246
    .line 247
    .line 248
    :cond_13
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 249
    .line 250
    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 251
    .line 252
    .line 253
    return-void
.end method
