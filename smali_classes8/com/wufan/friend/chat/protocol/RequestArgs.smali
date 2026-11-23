.class public final Lcom/wufan/friend/chat/protocol/RequestArgs;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/wufan/friend/chat/protocol/m0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wufan/friend/chat/protocol/RequestArgs$b;
    }
.end annotation


# static fields
.field public static final ACKARGS_FIELD_NUMBER:I = 0x2

.field public static final CHATMESSAGEARGS_FIELD_NUMBER:I = 0x8

.field public static final CHATROOMARGS_FIELD_NUMBER:I = 0x7

.field private static final DEFAULT_INSTANCE:Lcom/wufan/friend/chat/protocol/RequestArgs;

.field public static final GAMEINVITEARGS_FIELD_NUMBER:I = 0x4

.field public static final HEARTARGS_FIELD_NUMBER:I = 0x3

.field public static final LOCALBATTLEGAMEARGS_FIELD_NUMBER:I = 0xa

.field public static final LOGINARGS_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/friend/chat/protocol/RequestArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLAYGAMEARGS_FIELD_NUMBER:I = 0x6

.field public static final RECOMMENDPLAYERARGS_FIELD_NUMBER:I = 0x9

.field public static final STATEARGS_FIELD_NUMBER:I = 0x5

.field private static final serialVersionUID:J


# instance fields
.field private ackArgs_:Lcom/wufan/friend/chat/protocol/AckArgs;

.field private chatMessageArgs_:Lcom/wufan/friend/chat/protocol/ChatMessageArgs;

.field private chatRoomArgs_:Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

.field private gameInviteArgs_:Lcom/wufan/friend/chat/protocol/GameInviteArgs;

.field private heartArgs_:Lcom/wufan/friend/chat/protocol/HeartArgs;

.field private localBattleGameArgs_:Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;

.field private loginArgs_:Lcom/wufan/friend/chat/protocol/LoginArgs;

.field private memoizedIsInitialized:B

.field private playGameArgs_:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

.field private recommendPlayerArgs_:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

.field private stateArgs_:Lcom/wufan/friend/chat/protocol/OnlineStateArgs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wufan/friend/chat/protocol/RequestArgs;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/wufan/friend/chat/protocol/RequestArgs;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/wufan/friend/chat/protocol/RequestArgs;->DEFAULT_INSTANCE:Lcom/wufan/friend/chat/protocol/RequestArgs;

    .line 7
    .line 8
    new-instance v0, Lcom/wufan/friend/chat/protocol/RequestArgs$a;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/wufan/friend/chat/protocol/RequestArgs$a;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/wufan/friend/chat/protocol/RequestArgs;->PARSER:Lcom/google/protobuf/Parser;

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
    iput-byte v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->memoizedIsInitialized:B

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
    invoke-direct {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;-><init>()V

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_b

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
    iget-object v2, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->localBattleGameArgs_:Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;

    if-eqz v2, :cond_1

    .line 13
    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;->toBuilder()Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs$b;

    move-result-object v4

    .line 14
    :cond_1
    invoke-static {}, Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->localBattleGameArgs_:Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;

    if-eqz v4, :cond_0

    .line 15
    invoke-virtual {v4, v2}, Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;)Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs$b;

    .line 16
    invoke-virtual {v4}, Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs$b;->buildPartial()Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;

    move-result-object v2

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->localBattleGameArgs_:Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;

    goto :goto_0

    .line 17
    :sswitch_1
    iget-object v2, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->recommendPlayerArgs_:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    if-eqz v2, :cond_2

    .line 18
    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->toBuilder()Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;

    move-result-object v4

    .line 19
    :cond_2
    invoke-static {}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->recommendPlayerArgs_:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    if-eqz v4, :cond_0

    .line 20
    invoke-virtual {v4, v2}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;)Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;

    .line 21
    invoke-virtual {v4}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;->buildPartial()Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    move-result-object v2

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->recommendPlayerArgs_:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    goto :goto_0

    .line 22
    :sswitch_2
    iget-object v2, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->chatMessageArgs_:Lcom/wufan/friend/chat/protocol/ChatMessageArgs;

    if-eqz v2, :cond_3

    .line 23
    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/ChatMessageArgs;->toBuilder()Lcom/wufan/friend/chat/protocol/ChatMessageArgs$b;

    move-result-object v4

    .line 24
    :cond_3
    invoke-static {}, Lcom/wufan/friend/chat/protocol/ChatMessageArgs;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/ChatMessageArgs;

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->chatMessageArgs_:Lcom/wufan/friend/chat/protocol/ChatMessageArgs;

    if-eqz v4, :cond_0

    .line 25
    invoke-virtual {v4, v2}, Lcom/wufan/friend/chat/protocol/ChatMessageArgs$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/ChatMessageArgs;)Lcom/wufan/friend/chat/protocol/ChatMessageArgs$b;

    .line 26
    invoke-virtual {v4}, Lcom/wufan/friend/chat/protocol/ChatMessageArgs$b;->buildPartial()Lcom/wufan/friend/chat/protocol/ChatMessageArgs;

    move-result-object v2

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->chatMessageArgs_:Lcom/wufan/friend/chat/protocol/ChatMessageArgs;

    goto :goto_0

    .line 27
    :sswitch_3
    iget-object v2, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->chatRoomArgs_:Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    if-eqz v2, :cond_4

    .line 28
    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/ChatRoomArgs;->toBuilder()Lcom/wufan/friend/chat/protocol/ChatRoomArgs$b;

    move-result-object v4

    .line 29
    :cond_4
    invoke-static {}, Lcom/wufan/friend/chat/protocol/ChatRoomArgs;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->chatRoomArgs_:Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    if-eqz v4, :cond_0

    .line 30
    invoke-virtual {v4, v2}, Lcom/wufan/friend/chat/protocol/ChatRoomArgs$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/ChatRoomArgs;)Lcom/wufan/friend/chat/protocol/ChatRoomArgs$b;

    .line 31
    invoke-virtual {v4}, Lcom/wufan/friend/chat/protocol/ChatRoomArgs$b;->buildPartial()Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    move-result-object v2

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->chatRoomArgs_:Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    goto/16 :goto_0

    .line 32
    :sswitch_4
    iget-object v2, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->playGameArgs_:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    if-eqz v2, :cond_5

    .line 33
    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->toBuilder()Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    move-result-object v4

    .line 34
    :cond_5
    invoke-static {}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->playGameArgs_:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    if-eqz v4, :cond_0

    .line 35
    invoke-virtual {v4, v2}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/PlayGameArgs;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    .line 36
    invoke-virtual {v4}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->buildPartial()Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    move-result-object v2

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->playGameArgs_:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    goto/16 :goto_0

    .line 37
    :sswitch_5
    iget-object v2, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->stateArgs_:Lcom/wufan/friend/chat/protocol/OnlineStateArgs;

    if-eqz v2, :cond_6

    .line 38
    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/OnlineStateArgs;->toBuilder()Lcom/wufan/friend/chat/protocol/OnlineStateArgs$b;

    move-result-object v4

    .line 39
    :cond_6
    invoke-static {}, Lcom/wufan/friend/chat/protocol/OnlineStateArgs;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/OnlineStateArgs;

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->stateArgs_:Lcom/wufan/friend/chat/protocol/OnlineStateArgs;

    if-eqz v4, :cond_0

    .line 40
    invoke-virtual {v4, v2}, Lcom/wufan/friend/chat/protocol/OnlineStateArgs$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/OnlineStateArgs;)Lcom/wufan/friend/chat/protocol/OnlineStateArgs$b;

    .line 41
    invoke-virtual {v4}, Lcom/wufan/friend/chat/protocol/OnlineStateArgs$b;->buildPartial()Lcom/wufan/friend/chat/protocol/OnlineStateArgs;

    move-result-object v2

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->stateArgs_:Lcom/wufan/friend/chat/protocol/OnlineStateArgs;

    goto/16 :goto_0

    .line 42
    :sswitch_6
    iget-object v2, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->gameInviteArgs_:Lcom/wufan/friend/chat/protocol/GameInviteArgs;

    if-eqz v2, :cond_7

    .line 43
    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/GameInviteArgs;->toBuilder()Lcom/wufan/friend/chat/protocol/GameInviteArgs$b;

    move-result-object v4

    .line 44
    :cond_7
    invoke-static {}, Lcom/wufan/friend/chat/protocol/GameInviteArgs;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/GameInviteArgs;

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->gameInviteArgs_:Lcom/wufan/friend/chat/protocol/GameInviteArgs;

    if-eqz v4, :cond_0

    .line 45
    invoke-virtual {v4, v2}, Lcom/wufan/friend/chat/protocol/GameInviteArgs$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/GameInviteArgs;)Lcom/wufan/friend/chat/protocol/GameInviteArgs$b;

    .line 46
    invoke-virtual {v4}, Lcom/wufan/friend/chat/protocol/GameInviteArgs$b;->buildPartial()Lcom/wufan/friend/chat/protocol/GameInviteArgs;

    move-result-object v2

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->gameInviteArgs_:Lcom/wufan/friend/chat/protocol/GameInviteArgs;

    goto/16 :goto_0

    .line 47
    :sswitch_7
    iget-object v2, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->heartArgs_:Lcom/wufan/friend/chat/protocol/HeartArgs;

    if-eqz v2, :cond_8

    .line 48
    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/HeartArgs;->toBuilder()Lcom/wufan/friend/chat/protocol/HeartArgs$b;

    move-result-object v4

    .line 49
    :cond_8
    invoke-static {}, Lcom/wufan/friend/chat/protocol/HeartArgs;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/HeartArgs;

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->heartArgs_:Lcom/wufan/friend/chat/protocol/HeartArgs;

    if-eqz v4, :cond_0

    .line 50
    invoke-virtual {v4, v2}, Lcom/wufan/friend/chat/protocol/HeartArgs$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/HeartArgs;)Lcom/wufan/friend/chat/protocol/HeartArgs$b;

    .line 51
    invoke-virtual {v4}, Lcom/wufan/friend/chat/protocol/HeartArgs$b;->buildPartial()Lcom/wufan/friend/chat/protocol/HeartArgs;

    move-result-object v2

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->heartArgs_:Lcom/wufan/friend/chat/protocol/HeartArgs;

    goto/16 :goto_0

    .line 52
    :sswitch_8
    iget-object v2, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->ackArgs_:Lcom/wufan/friend/chat/protocol/AckArgs;

    if-eqz v2, :cond_9

    .line 53
    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/AckArgs;->toBuilder()Lcom/wufan/friend/chat/protocol/AckArgs$b;

    move-result-object v4

    .line 54
    :cond_9
    invoke-static {}, Lcom/wufan/friend/chat/protocol/AckArgs;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/AckArgs;

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->ackArgs_:Lcom/wufan/friend/chat/protocol/AckArgs;

    if-eqz v4, :cond_0

    .line 55
    invoke-virtual {v4, v2}, Lcom/wufan/friend/chat/protocol/AckArgs$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/AckArgs;)Lcom/wufan/friend/chat/protocol/AckArgs$b;

    .line 56
    invoke-virtual {v4}, Lcom/wufan/friend/chat/protocol/AckArgs$b;->buildPartial()Lcom/wufan/friend/chat/protocol/AckArgs;

    move-result-object v2

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->ackArgs_:Lcom/wufan/friend/chat/protocol/AckArgs;

    goto/16 :goto_0

    .line 57
    :sswitch_9
    iget-object v2, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->loginArgs_:Lcom/wufan/friend/chat/protocol/LoginArgs;

    if-eqz v2, :cond_a

    .line 58
    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/LoginArgs;->toBuilder()Lcom/wufan/friend/chat/protocol/LoginArgs$b;

    move-result-object v4

    .line 59
    :cond_a
    invoke-static {}, Lcom/wufan/friend/chat/protocol/LoginArgs;->parser()Lcom/google/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/wufan/friend/chat/protocol/LoginArgs;

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->loginArgs_:Lcom/wufan/friend/chat/protocol/LoginArgs;

    if-eqz v4, :cond_0

    .line 60
    invoke-virtual {v4, v2}, Lcom/wufan/friend/chat/protocol/LoginArgs$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/LoginArgs;)Lcom/wufan/friend/chat/protocol/LoginArgs$b;

    .line 61
    invoke-virtual {v4}, Lcom/wufan/friend/chat/protocol/LoginArgs$b;->buildPartial()Lcom/wufan/friend/chat/protocol/LoginArgs;

    move-result-object v2

    iput-object v2, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->loginArgs_:Lcom/wufan/friend/chat/protocol/LoginArgs;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_a
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

    .line 62
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 63
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 64
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 66
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 67
    throw p1

    .line 68
    :cond_b
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 69
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0xa -> :sswitch_9
        0x12 -> :sswitch_8
        0x1a -> :sswitch_7
        0x22 -> :sswitch_6
        0x2a -> :sswitch_5
        0x32 -> :sswitch_4
        0x3a -> :sswitch_3
        0x42 -> :sswitch_2
        0x4a -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/wufan/friend/chat/protocol/RequestArgs$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wufan/friend/chat/protocol/RequestArgs;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    iput-byte p1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/wufan/friend/chat/protocol/RequestArgs$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/protocol/RequestArgs;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/wufan/friend/chat/protocol/RequestArgs;Lcom/wufan/friend/chat/protocol/ChatRoomArgs;)Lcom/wufan/friend/chat/protocol/ChatRoomArgs;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->chatRoomArgs_:Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1102(Lcom/wufan/friend/chat/protocol/RequestArgs;Lcom/wufan/friend/chat/protocol/ChatMessageArgs;)Lcom/wufan/friend/chat/protocol/ChatMessageArgs;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->chatMessageArgs_:Lcom/wufan/friend/chat/protocol/ChatMessageArgs;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1202(Lcom/wufan/friend/chat/protocol/RequestArgs;Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;)Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->recommendPlayerArgs_:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1302(Lcom/wufan/friend/chat/protocol/RequestArgs;Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;)Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->localBattleGameArgs_:Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1400(Lcom/wufan/friend/chat/protocol/RequestArgs;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1500()Lcom/google/protobuf/Parser;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/RequestArgs;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$402(Lcom/wufan/friend/chat/protocol/RequestArgs;Lcom/wufan/friend/chat/protocol/LoginArgs;)Lcom/wufan/friend/chat/protocol/LoginArgs;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->loginArgs_:Lcom/wufan/friend/chat/protocol/LoginArgs;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$502(Lcom/wufan/friend/chat/protocol/RequestArgs;Lcom/wufan/friend/chat/protocol/AckArgs;)Lcom/wufan/friend/chat/protocol/AckArgs;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->ackArgs_:Lcom/wufan/friend/chat/protocol/AckArgs;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$602(Lcom/wufan/friend/chat/protocol/RequestArgs;Lcom/wufan/friend/chat/protocol/HeartArgs;)Lcom/wufan/friend/chat/protocol/HeartArgs;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->heartArgs_:Lcom/wufan/friend/chat/protocol/HeartArgs;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$702(Lcom/wufan/friend/chat/protocol/RequestArgs;Lcom/wufan/friend/chat/protocol/GameInviteArgs;)Lcom/wufan/friend/chat/protocol/GameInviteArgs;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->gameInviteArgs_:Lcom/wufan/friend/chat/protocol/GameInviteArgs;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$802(Lcom/wufan/friend/chat/protocol/RequestArgs;Lcom/wufan/friend/chat/protocol/OnlineStateArgs;)Lcom/wufan/friend/chat/protocol/OnlineStateArgs;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->stateArgs_:Lcom/wufan/friend/chat/protocol/OnlineStateArgs;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$902(Lcom/wufan/friend/chat/protocol/RequestArgs;Lcom/wufan/friend/chat/protocol/PlayGameArgs;)Lcom/wufan/friend/chat/protocol/PlayGameArgs;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->playGameArgs_:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    .line 2
    .line 3
    return-object p1
.end method

.method public static getDefaultInstance()Lcom/wufan/friend/chat/protocol/RequestArgs;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/RequestArgs;->DEFAULT_INSTANCE:Lcom/wufan/friend/chat/protocol/RequestArgs;

    .line 2
    .line 3
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

.method public static newBuilder()Lcom/wufan/friend/chat/protocol/RequestArgs$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/RequestArgs;->DEFAULT_INSTANCE:Lcom/wufan/friend/chat/protocol/RequestArgs;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->toBuilder()Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/wufan/friend/chat/protocol/RequestArgs;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/RequestArgs;->DEFAULT_INSTANCE:Lcom/wufan/friend/chat/protocol/RequestArgs;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->toBuilder()Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/RequestArgs;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/wufan/friend/chat/protocol/RequestArgs;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/RequestArgs;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/RequestArgs;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/RequestArgs;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/RequestArgs;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/RequestArgs;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/wufan/friend/chat/protocol/RequestArgs;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/RequestArgs;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/RequestArgs;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/RequestArgs;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/RequestArgs;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/RequestArgs;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/wufan/friend/chat/protocol/RequestArgs;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/RequestArgs;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/RequestArgs;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/RequestArgs;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/RequestArgs;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/RequestArgs;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/wufan/friend/chat/protocol/RequestArgs;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/RequestArgs;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/RequestArgs;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/RequestArgs;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/RequestArgs;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/RequestArgs;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/wufan/friend/chat/protocol/RequestArgs;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/RequestArgs;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/RequestArgs;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/RequestArgs;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/RequestArgs;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/RequestArgs;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/wufan/friend/chat/protocol/RequestArgs;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/RequestArgs;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/RequestArgs;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/wufan/friend/chat/protocol/RequestArgs;
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
    sget-object v0, Lcom/wufan/friend/chat/protocol/RequestArgs;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wufan/friend/chat/protocol/RequestArgs;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/wufan/friend/chat/protocol/RequestArgs;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/RequestArgs;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
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
    instance-of v1, p1, Lcom/wufan/friend/chat/protocol/RequestArgs;

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
    check-cast p1, Lcom/wufan/friend/chat/protocol/RequestArgs;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->hasLoginArgs()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->hasLoginArgs()Z

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
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->hasLoginArgs()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getLoginArgs()Lcom/wufan/friend/chat/protocol/LoginArgs;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getLoginArgs()Lcom/wufan/friend/chat/protocol/LoginArgs;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Lcom/wufan/friend/chat/protocol/LoginArgs;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_3

    .line 47
    .line 48
    return v3

    .line 49
    :cond_3
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->hasAckArgs()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->hasAckArgs()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eq v1, v2, :cond_4

    .line 58
    .line 59
    return v3

    .line 60
    :cond_4
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->hasAckArgs()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_5

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getAckArgs()Lcom/wufan/friend/chat/protocol/AckArgs;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getAckArgs()Lcom/wufan/friend/chat/protocol/AckArgs;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v1, v2}, Lcom/wufan/friend/chat/protocol/AckArgs;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_5

    .line 79
    .line 80
    return v3

    .line 81
    :cond_5
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->hasHeartArgs()Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->hasHeartArgs()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eq v1, v2, :cond_6

    .line 90
    .line 91
    return v3

    .line 92
    :cond_6
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->hasHeartArgs()Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_7

    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getHeartArgs()Lcom/wufan/friend/chat/protocol/HeartArgs;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getHeartArgs()Lcom/wufan/friend/chat/protocol/HeartArgs;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v1, v2}, Lcom/wufan/friend/chat/protocol/HeartArgs;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-nez v1, :cond_7

    .line 111
    .line 112
    return v3

    .line 113
    :cond_7
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->hasGameInviteArgs()Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->hasGameInviteArgs()Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-eq v1, v2, :cond_8

    .line 122
    .line 123
    return v3

    .line 124
    :cond_8
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->hasGameInviteArgs()Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_9

    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getGameInviteArgs()Lcom/wufan/friend/chat/protocol/GameInviteArgs;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getGameInviteArgs()Lcom/wufan/friend/chat/protocol/GameInviteArgs;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v1, v2}, Lcom/wufan/friend/chat/protocol/GameInviteArgs;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-nez v1, :cond_9

    .line 143
    .line 144
    return v3

    .line 145
    :cond_9
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->hasStateArgs()Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->hasStateArgs()Z

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    if-eq v1, v2, :cond_a

    .line 154
    .line 155
    return v3

    .line 156
    :cond_a
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->hasStateArgs()Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-eqz v1, :cond_b

    .line 161
    .line 162
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getStateArgs()Lcom/wufan/friend/chat/protocol/OnlineStateArgs;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getStateArgs()Lcom/wufan/friend/chat/protocol/OnlineStateArgs;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-virtual {v1, v2}, Lcom/wufan/friend/chat/protocol/OnlineStateArgs;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-nez v1, :cond_b

    .line 175
    .line 176
    return v3

    .line 177
    :cond_b
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->hasPlayGameArgs()Z

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->hasPlayGameArgs()Z

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    if-eq v1, v2, :cond_c

    .line 186
    .line 187
    return v3

    .line 188
    :cond_c
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->hasPlayGameArgs()Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-eqz v1, :cond_d

    .line 193
    .line 194
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getPlayGameArgs()Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getPlayGameArgs()Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-virtual {v1, v2}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    if-nez v1, :cond_d

    .line 207
    .line 208
    return v3

    .line 209
    :cond_d
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->hasChatRoomArgs()Z

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->hasChatRoomArgs()Z

    .line 214
    .line 215
    .line 216
    move-result v2

    .line 217
    if-eq v1, v2, :cond_e

    .line 218
    .line 219
    return v3

    .line 220
    :cond_e
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->hasChatRoomArgs()Z

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_f

    .line 225
    .line 226
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getChatRoomArgs()Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getChatRoomArgs()Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    invoke-virtual {v1, v2}, Lcom/wufan/friend/chat/protocol/ChatRoomArgs;->equals(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    if-nez v1, :cond_f

    .line 239
    .line 240
    return v3

    .line 241
    :cond_f
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->hasChatMessageArgs()Z

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->hasChatMessageArgs()Z

    .line 246
    .line 247
    .line 248
    move-result v2

    .line 249
    if-eq v1, v2, :cond_10

    .line 250
    .line 251
    return v3

    .line 252
    :cond_10
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->hasChatMessageArgs()Z

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    if-eqz v1, :cond_11

    .line 257
    .line 258
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getChatMessageArgs()Lcom/wufan/friend/chat/protocol/ChatMessageArgs;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getChatMessageArgs()Lcom/wufan/friend/chat/protocol/ChatMessageArgs;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    invoke-virtual {v1, v2}, Lcom/wufan/friend/chat/protocol/ChatMessageArgs;->equals(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    if-nez v1, :cond_11

    .line 271
    .line 272
    return v3

    .line 273
    :cond_11
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->hasRecommendPlayerArgs()Z

    .line 274
    .line 275
    .line 276
    move-result v1

    .line 277
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->hasRecommendPlayerArgs()Z

    .line 278
    .line 279
    .line 280
    move-result v2

    .line 281
    if-eq v1, v2, :cond_12

    .line 282
    .line 283
    return v3

    .line 284
    :cond_12
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->hasRecommendPlayerArgs()Z

    .line 285
    .line 286
    .line 287
    move-result v1

    .line 288
    if-eqz v1, :cond_13

    .line 289
    .line 290
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getRecommendPlayerArgs()Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getRecommendPlayerArgs()Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    invoke-virtual {v1, v2}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->equals(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    move-result v1

    .line 302
    if-nez v1, :cond_13

    .line 303
    .line 304
    return v3

    .line 305
    :cond_13
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->hasLocalBattleGameArgs()Z

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->hasLocalBattleGameArgs()Z

    .line 310
    .line 311
    .line 312
    move-result v2

    .line 313
    if-eq v1, v2, :cond_14

    .line 314
    .line 315
    return v3

    .line 316
    :cond_14
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->hasLocalBattleGameArgs()Z

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    if-eqz v1, :cond_15

    .line 321
    .line 322
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getLocalBattleGameArgs()Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getLocalBattleGameArgs()Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    invoke-virtual {v1, v2}, Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;->equals(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result v1

    .line 334
    if-nez v1, :cond_15

    .line 335
    .line 336
    return v3

    .line 337
    :cond_15
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 338
    .line 339
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 340
    .line 341
    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result p1

    .line 345
    if-nez p1, :cond_16

    .line 346
    .line 347
    return v3

    .line 348
    :cond_16
    return v0
.end method

.method public getAckArgs()Lcom/wufan/friend/chat/protocol/AckArgs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->ackArgs_:Lcom/wufan/friend/chat/protocol/AckArgs;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/wufan/friend/chat/protocol/AckArgs;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/AckArgs;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getAckArgsOrBuilder()Lcom/wufan/friend/chat/protocol/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getAckArgs()Lcom/wufan/friend/chat/protocol/AckArgs;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getChatMessageArgs()Lcom/wufan/friend/chat/protocol/ChatMessageArgs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->chatMessageArgs_:Lcom/wufan/friend/chat/protocol/ChatMessageArgs;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/wufan/friend/chat/protocol/ChatMessageArgs;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/ChatMessageArgs;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getChatMessageArgsOrBuilder()Lcom/wufan/friend/chat/protocol/e;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getChatMessageArgs()Lcom/wufan/friend/chat/protocol/ChatMessageArgs;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getChatRoomArgs()Lcom/wufan/friend/chat/protocol/ChatRoomArgs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->chatRoomArgs_:Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/wufan/friend/chat/protocol/ChatRoomArgs;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getChatRoomArgsOrBuilder()Lcom/wufan/friend/chat/protocol/h;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getChatRoomArgs()Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

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
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getDefaultInstanceForType()Lcom/wufan/friend/chat/protocol/RequestArgs;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getDefaultInstanceForType()Lcom/wufan/friend/chat/protocol/RequestArgs;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/wufan/friend/chat/protocol/RequestArgs;
    .locals 1

    .line 3
    sget-object v0, Lcom/wufan/friend/chat/protocol/RequestArgs;->DEFAULT_INSTANCE:Lcom/wufan/friend/chat/protocol/RequestArgs;

    return-object v0
.end method

.method public getGameInviteArgs()Lcom/wufan/friend/chat/protocol/GameInviteArgs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->gameInviteArgs_:Lcom/wufan/friend/chat/protocol/GameInviteArgs;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/wufan/friend/chat/protocol/GameInviteArgs;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/GameInviteArgs;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getGameInviteArgsOrBuilder()Lcom/wufan/friend/chat/protocol/q;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getGameInviteArgs()Lcom/wufan/friend/chat/protocol/GameInviteArgs;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getHeartArgs()Lcom/wufan/friend/chat/protocol/HeartArgs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->heartArgs_:Lcom/wufan/friend/chat/protocol/HeartArgs;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/wufan/friend/chat/protocol/HeartArgs;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/HeartArgs;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getHeartArgsOrBuilder()Lcom/wufan/friend/chat/protocol/t;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getHeartArgs()Lcom/wufan/friend/chat/protocol/HeartArgs;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getLocalBattleGameArgs()Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->localBattleGameArgs_:Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getLocalBattleGameArgsOrBuilder()Lcom/wufan/friend/chat/protocol/s;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getLocalBattleGameArgs()Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getLoginArgs()Lcom/wufan/friend/chat/protocol/LoginArgs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->loginArgs_:Lcom/wufan/friend/chat/protocol/LoginArgs;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/wufan/friend/chat/protocol/LoginArgs;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/LoginArgs;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getLoginArgsOrBuilder()Lcom/wufan/friend/chat/protocol/y;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getLoginArgs()Lcom/wufan/friend/chat/protocol/LoginArgs;

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
            "Lcom/wufan/friend/chat/protocol/RequestArgs;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/wufan/friend/chat/protocol/RequestArgs;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlayGameArgs()Lcom/wufan/friend/chat/protocol/PlayGameArgs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->playGameArgs_:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getPlayGameArgsOrBuilder()Lcom/wufan/friend/chat/protocol/d0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getPlayGameArgs()Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getRecommendPlayerArgs()Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->recommendPlayerArgs_:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getRecommendPlayerArgsOrBuilder()Lcom/wufan/friend/chat/protocol/h0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getRecommendPlayerArgs()Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->loginArgs_:Lcom/wufan/friend/chat/protocol/LoginArgs;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getLoginArgs()Lcom/wufan/friend/chat/protocol/LoginArgs;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    add-int/2addr v1, v0

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->ackArgs_:Lcom/wufan/friend/chat/protocol/AckArgs;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    const/4 v0, 0x2

    .line 27
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getAckArgs()Lcom/wufan/friend/chat/protocol/AckArgs;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    add-int/2addr v1, v0

    .line 36
    :cond_2
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->heartArgs_:Lcom/wufan/friend/chat/protocol/HeartArgs;

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    const/4 v0, 0x3

    .line 41
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getHeartArgs()Lcom/wufan/friend/chat/protocol/HeartArgs;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    add-int/2addr v1, v0

    .line 50
    :cond_3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->gameInviteArgs_:Lcom/wufan/friend/chat/protocol/GameInviteArgs;

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    const/4 v0, 0x4

    .line 55
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getGameInviteArgs()Lcom/wufan/friend/chat/protocol/GameInviteArgs;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    add-int/2addr v1, v0

    .line 64
    :cond_4
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->stateArgs_:Lcom/wufan/friend/chat/protocol/OnlineStateArgs;

    .line 65
    .line 66
    if-eqz v0, :cond_5

    .line 67
    .line 68
    const/4 v0, 0x5

    .line 69
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getStateArgs()Lcom/wufan/friend/chat/protocol/OnlineStateArgs;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    add-int/2addr v1, v0

    .line 78
    :cond_5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->playGameArgs_:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    .line 79
    .line 80
    if-eqz v0, :cond_6

    .line 81
    .line 82
    const/4 v0, 0x6

    .line 83
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getPlayGameArgs()Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    add-int/2addr v1, v0

    .line 92
    :cond_6
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->chatRoomArgs_:Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    .line 93
    .line 94
    if-eqz v0, :cond_7

    .line 95
    .line 96
    const/4 v0, 0x7

    .line 97
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getChatRoomArgs()Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    add-int/2addr v1, v0

    .line 106
    :cond_7
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->chatMessageArgs_:Lcom/wufan/friend/chat/protocol/ChatMessageArgs;

    .line 107
    .line 108
    if-eqz v0, :cond_8

    .line 109
    .line 110
    const/16 v0, 0x8

    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getChatMessageArgs()Lcom/wufan/friend/chat/protocol/ChatMessageArgs;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    add-int/2addr v1, v0

    .line 121
    :cond_8
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->recommendPlayerArgs_:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    .line 122
    .line 123
    if-eqz v0, :cond_9

    .line 124
    .line 125
    const/16 v0, 0x9

    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getRecommendPlayerArgs()Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    add-int/2addr v1, v0

    .line 136
    :cond_9
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->localBattleGameArgs_:Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;

    .line 137
    .line 138
    if-eqz v0, :cond_a

    .line 139
    .line 140
    const/16 v0, 0xa

    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getLocalBattleGameArgs()Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    add-int/2addr v1, v0

    .line 151
    :cond_a
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 152
    .line 153
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    add-int/2addr v1, v0

    .line 158
    iput v1, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 159
    .line 160
    return v1
.end method

.method public getStateArgs()Lcom/wufan/friend/chat/protocol/OnlineStateArgs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->stateArgs_:Lcom/wufan/friend/chat/protocol/OnlineStateArgs;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/wufan/friend/chat/protocol/OnlineStateArgs;->getDefaultInstance()Lcom/wufan/friend/chat/protocol/OnlineStateArgs;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getStateArgsOrBuilder()Lcom/wufan/friend/chat/protocol/c0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getStateArgs()Lcom/wufan/friend/chat/protocol/OnlineStateArgs;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2
    .line 3
    return-object v0
.end method

.method public hasAckArgs()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->ackArgs_:Lcom/wufan/friend/chat/protocol/AckArgs;

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

.method public hasChatMessageArgs()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->chatMessageArgs_:Lcom/wufan/friend/chat/protocol/ChatMessageArgs;

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

.method public hasChatRoomArgs()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->chatRoomArgs_:Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

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

.method public hasGameInviteArgs()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->gameInviteArgs_:Lcom/wufan/friend/chat/protocol/GameInviteArgs;

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

.method public hasHeartArgs()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->heartArgs_:Lcom/wufan/friend/chat/protocol/HeartArgs;

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

.method public hasLocalBattleGameArgs()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->localBattleGameArgs_:Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;

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

.method public hasLoginArgs()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->loginArgs_:Lcom/wufan/friend/chat/protocol/LoginArgs;

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

.method public hasPlayGameArgs()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->playGameArgs_:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

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

.method public hasRecommendPlayerArgs()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->recommendPlayerArgs_:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

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

.method public hasStateArgs()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->stateArgs_:Lcom/wufan/friend/chat/protocol/OnlineStateArgs;

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
    .locals 2

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
    invoke-static {}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->hasLoginArgs()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    mul-int/lit8 v1, v1, 0x25

    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    mul-int/lit8 v1, v1, 0x35

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getLoginArgs()Lcom/wufan/friend/chat/protocol/LoginArgs;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/LoginArgs;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    add-int/2addr v1, v0

    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->hasAckArgs()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    mul-int/lit8 v1, v1, 0x25

    .line 45
    .line 46
    add-int/lit8 v1, v1, 0x2

    .line 47
    .line 48
    mul-int/lit8 v1, v1, 0x35

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getAckArgs()Lcom/wufan/friend/chat/protocol/AckArgs;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/AckArgs;->hashCode()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    add-int/2addr v1, v0

    .line 59
    :cond_2
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->hasHeartArgs()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    mul-int/lit8 v1, v1, 0x25

    .line 66
    .line 67
    add-int/lit8 v1, v1, 0x3

    .line 68
    .line 69
    mul-int/lit8 v1, v1, 0x35

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getHeartArgs()Lcom/wufan/friend/chat/protocol/HeartArgs;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/HeartArgs;->hashCode()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    add-int/2addr v1, v0

    .line 80
    :cond_3
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->hasGameInviteArgs()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_4

    .line 85
    .line 86
    mul-int/lit8 v1, v1, 0x25

    .line 87
    .line 88
    add-int/lit8 v1, v1, 0x4

    .line 89
    .line 90
    mul-int/lit8 v1, v1, 0x35

    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getGameInviteArgs()Lcom/wufan/friend/chat/protocol/GameInviteArgs;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/GameInviteArgs;->hashCode()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    add-int/2addr v1, v0

    .line 101
    :cond_4
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->hasStateArgs()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_5

    .line 106
    .line 107
    mul-int/lit8 v1, v1, 0x25

    .line 108
    .line 109
    add-int/lit8 v1, v1, 0x5

    .line 110
    .line 111
    mul-int/lit8 v1, v1, 0x35

    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getStateArgs()Lcom/wufan/friend/chat/protocol/OnlineStateArgs;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/OnlineStateArgs;->hashCode()I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    add-int/2addr v1, v0

    .line 122
    :cond_5
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->hasPlayGameArgs()Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_6

    .line 127
    .line 128
    mul-int/lit8 v1, v1, 0x25

    .line 129
    .line 130
    add-int/lit8 v1, v1, 0x6

    .line 131
    .line 132
    mul-int/lit8 v1, v1, 0x35

    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getPlayGameArgs()Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->hashCode()I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    add-int/2addr v1, v0

    .line 143
    :cond_6
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->hasChatRoomArgs()Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_7

    .line 148
    .line 149
    mul-int/lit8 v1, v1, 0x25

    .line 150
    .line 151
    add-int/lit8 v1, v1, 0x7

    .line 152
    .line 153
    mul-int/lit8 v1, v1, 0x35

    .line 154
    .line 155
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getChatRoomArgs()Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/ChatRoomArgs;->hashCode()I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    add-int/2addr v1, v0

    .line 164
    :cond_7
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->hasChatMessageArgs()Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-eqz v0, :cond_8

    .line 169
    .line 170
    mul-int/lit8 v1, v1, 0x25

    .line 171
    .line 172
    add-int/lit8 v1, v1, 0x8

    .line 173
    .line 174
    mul-int/lit8 v1, v1, 0x35

    .line 175
    .line 176
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getChatMessageArgs()Lcom/wufan/friend/chat/protocol/ChatMessageArgs;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/ChatMessageArgs;->hashCode()I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    add-int/2addr v1, v0

    .line 185
    :cond_8
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->hasRecommendPlayerArgs()Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-eqz v0, :cond_9

    .line 190
    .line 191
    mul-int/lit8 v1, v1, 0x25

    .line 192
    .line 193
    add-int/lit8 v1, v1, 0x9

    .line 194
    .line 195
    mul-int/lit8 v1, v1, 0x35

    .line 196
    .line 197
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getRecommendPlayerArgs()Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->hashCode()I

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    add-int/2addr v1, v0

    .line 206
    :cond_9
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->hasLocalBattleGameArgs()Z

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    if-eqz v0, :cond_a

    .line 211
    .line 212
    mul-int/lit8 v1, v1, 0x25

    .line 213
    .line 214
    add-int/lit8 v1, v1, 0xa

    .line 215
    .line 216
    mul-int/lit8 v1, v1, 0x35

    .line 217
    .line 218
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getLocalBattleGameArgs()Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;->hashCode()I

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    add-int/2addr v1, v0

    .line 227
    :cond_a
    mul-int/lit8 v1, v1, 0x1d

    .line 228
    .line 229
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 230
    .line 231
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    add-int/2addr v1, v0

    .line 236
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 237
    .line 238
    return v1
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
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->memoizedIsInitialized:B

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
    iput-byte v1, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->newBuilderForType()Lcom/wufan/friend/chat/protocol/RequestArgs$b;

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
    invoke-virtual {p0, p1}, Lcom/wufan/friend/chat/protocol/RequestArgs;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->newBuilderForType()Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/wufan/friend/chat/protocol/RequestArgs$b;
    .locals 1

    .line 4
    invoke-static {}, Lcom/wufan/friend/chat/protocol/RequestArgs;->newBuilder()Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;
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
    new-instance v0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/wufan/friend/chat/protocol/RequestArgs$a;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->toBuilder()Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->toBuilder()Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/wufan/friend/chat/protocol/RequestArgs$b;
    .locals 2

    .line 3
    sget-object v0, Lcom/wufan/friend/chat/protocol/RequestArgs;->DEFAULT_INSTANCE:Lcom/wufan/friend/chat/protocol/RequestArgs;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    invoke-direct {v0, v1}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;-><init>(Lcom/wufan/friend/chat/protocol/RequestArgs$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    invoke-direct {v0, v1}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;-><init>(Lcom/wufan/friend/chat/protocol/RequestArgs$a;)V

    invoke-virtual {v0, p0}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->mergeFrom(Lcom/wufan/friend/chat/protocol/RequestArgs;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
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
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->loginArgs_:Lcom/wufan/friend/chat/protocol/LoginArgs;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getLoginArgs()Lcom/wufan/friend/chat/protocol/LoginArgs;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->ackArgs_:Lcom/wufan/friend/chat/protocol/AckArgs;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getAckArgs()Lcom/wufan/friend/chat/protocol/AckArgs;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->heartArgs_:Lcom/wufan/friend/chat/protocol/HeartArgs;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    const/4 v0, 0x3

    .line 30
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getHeartArgs()Lcom/wufan/friend/chat/protocol/HeartArgs;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 35
    .line 36
    .line 37
    :cond_2
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->gameInviteArgs_:Lcom/wufan/friend/chat/protocol/GameInviteArgs;

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    const/4 v0, 0x4

    .line 42
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getGameInviteArgs()Lcom/wufan/friend/chat/protocol/GameInviteArgs;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47
    .line 48
    .line 49
    :cond_3
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->stateArgs_:Lcom/wufan/friend/chat/protocol/OnlineStateArgs;

    .line 50
    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    const/4 v0, 0x5

    .line 54
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getStateArgs()Lcom/wufan/friend/chat/protocol/OnlineStateArgs;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 59
    .line 60
    .line 61
    :cond_4
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->playGameArgs_:Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    .line 62
    .line 63
    if-eqz v0, :cond_5

    .line 64
    .line 65
    const/4 v0, 0x6

    .line 66
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getPlayGameArgs()Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 71
    .line 72
    .line 73
    :cond_5
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->chatRoomArgs_:Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    .line 74
    .line 75
    if-eqz v0, :cond_6

    .line 76
    .line 77
    const/4 v0, 0x7

    .line 78
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getChatRoomArgs()Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 83
    .line 84
    .line 85
    :cond_6
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->chatMessageArgs_:Lcom/wufan/friend/chat/protocol/ChatMessageArgs;

    .line 86
    .line 87
    if-eqz v0, :cond_7

    .line 88
    .line 89
    const/16 v0, 0x8

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getChatMessageArgs()Lcom/wufan/friend/chat/protocol/ChatMessageArgs;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 96
    .line 97
    .line 98
    :cond_7
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->recommendPlayerArgs_:Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    .line 99
    .line 100
    if-eqz v0, :cond_8

    .line 101
    .line 102
    const/16 v0, 0x9

    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getRecommendPlayerArgs()Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 109
    .line 110
    .line 111
    :cond_8
    iget-object v0, p0, Lcom/wufan/friend/chat/protocol/RequestArgs;->localBattleGameArgs_:Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;

    .line 112
    .line 113
    if-eqz v0, :cond_9

    .line 114
    .line 115
    const/16 v0, 0xa

    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/wufan/friend/chat/protocol/RequestArgs;->getLocalBattleGameArgs()Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 122
    .line 123
    .line 124
    :cond_9
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 125
    .line 126
    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 127
    .line 128
    .line 129
    return-void
.end method
