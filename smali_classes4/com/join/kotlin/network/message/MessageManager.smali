.class public final Lcom/join/kotlin/network/message/MessageManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0013\u001a\u00020\u0012J\u000e\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\rJ\u000e\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\rJ\u0006\u0010\u0010\u001a\u00020\rJ\u0006\u0010\u0018\u001a\u00020\u0012J\u000e\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u001bJ\u0006\u0010\u0017\u001a\u00020\u0012J\u0006\u0010\u001c\u001a\u00020\u0012J\u0006\u0010\u001d\u001a\u00020\u0012J\u0006\u0010\u001e\u001a\u00020\rJ\u0016\u0010\u001f\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u000f2\u0006\u0010!\u001a\u00020\u0005J&\u0010\"\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u000f2\u0006\u0010!\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u00052\u0006\u0010$\u001a\u00020\u0005J\u0016\u0010%\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u000f2\u0006\u0010!\u001a\u00020\u0005J\u001e\u0010&\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u000f2\u0006\u0010!\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u0005J\u001e\u0010\'\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u000f2\u0006\u0010!\u001a\u00020\u00052\u0006\u0010(\u001a\u00020\u000fJ&\u0010)\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u000f2\u0006\u0010!\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u00052\u0006\u0010$\u001a\u00020\u0005R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006*"
    }
    d2 = {
        "Lcom/join/kotlin/network/message/MessageManager;",
        "",
        "<init>",
        "()V",
        "currentUid",
        "",
        "getCurrentUid",
        "()Ljava/lang/String;",
        "setCurrentUid",
        "(Ljava/lang/String;)V",
        "client",
        "Lcom/join/kotlin/network/message/MessageClient;",
        "isActive",
        "",
        "uuid",
        "",
        "isLogin",
        "initMessageClient",
        "",
        "reConnect",
        "setActiveState",
        "logined",
        "setLoginState",
        "login",
        "handleChanelActive",
        "handleResponseMessage",
        "response",
        "Lcom/wufan/user/service/protobuf/MessageProto$Response;",
        "logout",
        "sendHeartBeat",
        "isMessageAlive",
        "joinQueue",
        "gameId",
        "serverName",
        "enterGame",
        "jobId",
        "resId",
        "queryQueueState",
        "quitQueue",
        "changeGame",
        "switchoverGameId",
        "release",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/join/kotlin/network/message/MessageManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static client:Lcom/join/kotlin/network/message/MessageClient;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static currentUid:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static isActive:Z

.field private static isLogin:Z

.field private static uuid:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/join/kotlin/network/message/MessageManager;

    invoke-direct {v0}, Lcom/join/kotlin/network/message/MessageManager;-><init>()V

    sput-object v0, Lcom/join/kotlin/network/message/MessageManager;->INSTANCE:Lcom/join/kotlin/network/message/MessageManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final changeGame(JLjava/lang/String;J)V
    .locals 4
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "serverName"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->newBuilder()Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "517_6.1.7.0"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->setAppVersion(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-virtual {v1, v2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->setVersion(I)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    sget-object v2, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->SWITCHOVER_QUEUE_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->setType(Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    sget-wide v2, Lcom/join/kotlin/network/message/MessageManager;->uuid:J

    .line 38
    .line 39
    invoke-virtual {v1, v2, v3}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->setRequestId(J)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->newBuilder()Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    invoke-virtual {v2, v3}, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;->setUid(I)Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v2, v3}, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;->setToken(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v2, p1, p2}, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;->setGameId(J)Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1, p3}, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;->setServerName(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1, p4, p5}, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;->setSwitchoverGameId(J)Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;->build()Lcom/wufan/user/service/protobuf/MessageProto$Params;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {v1, p1}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->setParams(Lcom/wufan/user/service/protobuf/MessageProto$Params;)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$Account;->newBuilder()Lcom/wufan/user/service/protobuf/MessageProto$Account$b;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 88
    .line 89
    .line 90
    move-result p3

    .line 91
    invoke-virtual {p2, p3}, Lcom/wufan/user/service/protobuf/MessageProto$Account$b;->setUid(I)Lcom/wufan/user/service/protobuf/MessageProto$Account$b;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    invoke-virtual {p2, p3}, Lcom/wufan/user/service/protobuf/MessageProto$Account$b;->setNickname(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageProto$Account$b;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p3

    .line 107
    invoke-virtual {p2, p3}, Lcom/wufan/user/service/protobuf/MessageProto$Account$b;->setAvatar(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageProto$Account$b;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    invoke-static {v0}, Lcom/join/mgps/Util/b;->pivc(Lcom/wufan/user/service/protobuf/UserInfo;)Z

    .line 112
    .line 113
    .line 114
    move-result p3

    .line 115
    invoke-virtual {p2, p3}, Lcom/wufan/user/service/protobuf/MessageProto$Account$b;->setVip(Z)Lcom/wufan/user/service/protobuf/MessageProto$Account$b;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/MessageProto$Account$b;->build()Lcom/wufan/user/service/protobuf/MessageProto$Account;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-virtual {p1, p2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->setAccount(Lcom/wufan/user/service/protobuf/MessageProto$Account;)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->build()Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    sget-object p2, Lcom/join/kotlin/network/message/MessageManager;->client:Lcom/join/kotlin/network/message/MessageClient;

    .line 132
    .line 133
    if-eqz p2, :cond_0

    .line 134
    .line 135
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p2, p1}, Lcom/join/kotlin/network/message/MessageClient;->send(Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;)V

    .line 139
    .line 140
    .line 141
    :cond_0
    return-void
.end method

.method public final enterGame(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "serverName"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "jobId"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "resId"

    .line 12
    .line 13
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->newBuilder()Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "517_6.1.7.0"

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->setAppVersion(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const/4 v2, 0x1

    .line 37
    invoke-virtual {v1, v2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->setVersion(I)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    sget-object v2, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->CONFIRM_QUEUE_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->setType(Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    sget-wide v2, Lcom/join/kotlin/network/message/MessageManager;->uuid:J

    .line 48
    .line 49
    invoke-virtual {v1, v2, v3}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->setRequestId(J)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->newBuilder()Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-virtual {v2, v3}, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;->setUid(I)Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v2, v3}, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;->setToken(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v2, p1, p2}, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;->setGameId(J)Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1, p3}, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;->setServerName(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1, p4}, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;->setJobId(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1, p5}, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;->setResourceId(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;->build()Lcom/wufan/user/service/protobuf/MessageProto$Params;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {v1, p1}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->setParams(Lcom/wufan/user/service/protobuf/MessageProto$Params;)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$Account;->newBuilder()Lcom/wufan/user/service/protobuf/MessageProto$Account$b;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 102
    .line 103
    .line 104
    move-result p3

    .line 105
    invoke-virtual {p2, p3}, Lcom/wufan/user/service/protobuf/MessageProto$Account$b;->setUid(I)Lcom/wufan/user/service/protobuf/MessageProto$Account$b;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p3

    .line 113
    invoke-virtual {p2, p3}, Lcom/wufan/user/service/protobuf/MessageProto$Account$b;->setNickname(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageProto$Account$b;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p3

    .line 121
    invoke-virtual {p2, p3}, Lcom/wufan/user/service/protobuf/MessageProto$Account$b;->setAvatar(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageProto$Account$b;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    invoke-static {v0}, Lcom/join/mgps/Util/b;->pivc(Lcom/wufan/user/service/protobuf/UserInfo;)Z

    .line 126
    .line 127
    .line 128
    move-result p3

    .line 129
    invoke-virtual {p2, p3}, Lcom/wufan/user/service/protobuf/MessageProto$Account$b;->setVip(Z)Lcom/wufan/user/service/protobuf/MessageProto$Account$b;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/MessageProto$Account$b;->build()Lcom/wufan/user/service/protobuf/MessageProto$Account;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    invoke-virtual {p1, p2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->setAccount(Lcom/wufan/user/service/protobuf/MessageProto$Account;)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->build()Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    sget-object p2, Lcom/join/kotlin/network/message/MessageManager;->client:Lcom/join/kotlin/network/message/MessageClient;

    .line 146
    .line 147
    if-eqz p2, :cond_0

    .line 148
    .line 149
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p2, p1}, Lcom/join/kotlin/network/message/MessageClient;->send(Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;)V

    .line 153
    .line 154
    .line 155
    :cond_0
    return-void
.end method

.method public final getCurrentUid()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/join/kotlin/network/message/MessageManager;->currentUid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final handleChanelActive()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/network/message/MessageManager;->login()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    sput-boolean v0, Lcom/join/kotlin/network/message/MessageManager;->isActive:Z

    .line 6
    .line 7
    return-void
.end method

.method public final handleResponseMessage(Lcom/wufan/user/service/protobuf/MessageProto$Response;)V
    .locals 2
    .param p1    # Lcom/wufan/user/service/protobuf/MessageProto$Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "response"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/join/mgps/event/s;

    .line 11
    .line 12
    invoke-direct {v1, p1}, Lcom/join/mgps/event/s;-><init>(Lcom/wufan/user/service/protobuf/MessageProto$Response;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final initMessageClient()V
    .locals 10

    .line 1
    const-string v0, "42.194.227.177"

    .line 2
    .line 3
    const/16 v1, 0x4cfc

    .line 4
    .line 5
    :try_start_0
    sget-object v2, Lcom/join/mgps/rpc/h;->P:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v8, 0x0

    .line 8
    const/4 v9, 0x1

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    new-array v3, v9, [Ljava/lang/String;

    .line 12
    .line 13
    const-string v4, ":"

    .line 14
    .line 15
    aput-object v4, v3, v8

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x6

    .line 20
    const/4 v7, 0x0

    .line 21
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v2, 0x0

    .line 27
    :goto_0
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const/4 v4, 0x2

    .line 34
    if-ne v3, v4, :cond_1

    .line 35
    .line 36
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_1

    .line 51
    :catch_0
    move-exception v2

    .line 52
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_1
    :try_start_1
    sget-object v2, Lcom/join/kotlin/network/message/MessageManager;->client:Lcom/join/kotlin/network/message/MessageClient;

    .line 56
    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    move-object v3, v0

    .line 63
    check-cast v3, Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v2, v3, v1}, Lcom/join/kotlin/network/message/MessageClient;->isCfgChanged(Ljava/lang/String;I)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_3

    .line 70
    .line 71
    :cond_2
    sget-object v2, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    .line 72
    .line 73
    invoke-virtual {v2}, Lkotlin/random/Random$Default;->nextLong()J

    .line 74
    .line 75
    .line 76
    move-result-wide v2

    .line 77
    sput-wide v2, Lcom/join/kotlin/network/message/MessageManager;->uuid:J

    .line 78
    .line 79
    new-instance v2, Lcom/join/kotlin/network/message/MessageClient;

    .line 80
    .line 81
    check-cast v0, Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-direct {v2, v0, v1}, Lcom/join/kotlin/network/message/MessageClient;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 88
    .line 89
    .line 90
    sput-object v2, Lcom/join/kotlin/network/message/MessageManager;->client:Lcom/join/kotlin/network/message/MessageClient;

    .line 91
    .line 92
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Lcom/join/kotlin/network/message/MessageClient;->connect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :catch_1
    move-exception v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 101
    .line 102
    .line 103
    :cond_3
    :goto_2
    return-void
.end method

.method public final isLogin()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/join/kotlin/network/message/MessageManager;->isLogin:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isMessageAlive()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/join/kotlin/network/message/MessageManager;->client:Lcom/join/kotlin/network/message/MessageClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/kotlin/network/message/MessageClient;->isAlive()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget-boolean v0, Lcom/join/kotlin/network/message/MessageManager;->isActive:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    return v0
.end method

.method public final joinQueue(JLjava/lang/String;)V
    .locals 4
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "serverName"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->newBuilder()Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "517_6.1.7.0"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->setAppVersion(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-virtual {v1, v2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->setVersion(I)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    sget-object v2, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->JOIN_QUEUE_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->setType(Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    sget-wide v2, Lcom/join/kotlin/network/message/MessageManager;->uuid:J

    .line 38
    .line 39
    invoke-virtual {v1, v2, v3}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->setRequestId(J)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->newBuilder()Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    invoke-virtual {v2, v3}, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;->setUid(I)Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v2, v3}, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;->setToken(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v2, p1, p2}, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;->setGameId(J)Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1, p3}, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;->setServerName(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;->build()Lcom/wufan/user/service/protobuf/MessageProto$Params;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {v1, p1}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->setParams(Lcom/wufan/user/service/protobuf/MessageProto$Params;)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$Account;->newBuilder()Lcom/wufan/user/service/protobuf/MessageProto$Account$b;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 84
    .line 85
    .line 86
    move-result p3

    .line 87
    invoke-virtual {p2, p3}, Lcom/wufan/user/service/protobuf/MessageProto$Account$b;->setUid(I)Lcom/wufan/user/service/protobuf/MessageProto$Account$b;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p3

    .line 95
    invoke-virtual {p2, p3}, Lcom/wufan/user/service/protobuf/MessageProto$Account$b;->setNickname(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageProto$Account$b;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p3

    .line 103
    invoke-virtual {p2, p3}, Lcom/wufan/user/service/protobuf/MessageProto$Account$b;->setAvatar(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageProto$Account$b;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-static {v0}, Lcom/join/mgps/Util/b;->pivc(Lcom/wufan/user/service/protobuf/UserInfo;)Z

    .line 108
    .line 109
    .line 110
    move-result p3

    .line 111
    invoke-virtual {p2, p3}, Lcom/wufan/user/service/protobuf/MessageProto$Account$b;->setVip(Z)Lcom/wufan/user/service/protobuf/MessageProto$Account$b;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/MessageProto$Account$b;->build()Lcom/wufan/user/service/protobuf/MessageProto$Account;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    invoke-virtual {p1, p2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->setAccount(Lcom/wufan/user/service/protobuf/MessageProto$Account;)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->build()Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    sget-object p2, Lcom/join/kotlin/network/message/MessageManager;->client:Lcom/join/kotlin/network/message/MessageClient;

    .line 128
    .line 129
    if-eqz p2, :cond_0

    .line 130
    .line 131
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2, p1}, Lcom/join/kotlin/network/message/MessageClient;->send(Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;)V

    .line 135
    .line 136
    .line 137
    :cond_0
    return-void
.end method

.method public final login()V
    .locals 4

    .line 1
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/join/kotlin/network/message/MessageManager;->currentUid:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->newBuilder()Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    sget-wide v2, Lcom/join/kotlin/network/message/MessageManager;->uuid:J

    .line 28
    .line 29
    invoke-virtual {v1, v2, v3}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->setRequestId(J)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 30
    .line 31
    .line 32
    const-string v2, "517_6.1.7.0"

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->setAppVersion(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 35
    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    invoke-virtual {v1, v2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->setVersion(I)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 39
    .line 40
    .line 41
    sget-object v2, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->LOGIN:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->setType(Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 44
    .line 45
    .line 46
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->newBuilder()Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    invoke-virtual {v2, v3}, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;->setUid(I)Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v2, v3}, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;->setToken(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    .line 62
    .line 63
    .line 64
    sget-boolean v3, Lcom/join/kotlin/network/message/MessageManager;->isLogin:Z

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;->setIsReconnect(Z)Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;->build()Lcom/wufan/user/service/protobuf/MessageProto$Params;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v1, v2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->setParams(Lcom/wufan/user/service/protobuf/MessageProto$Params;)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 74
    .line 75
    .line 76
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$Account;->newBuilder()Lcom/wufan/user/service/protobuf/MessageProto$Account$b;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    invoke-virtual {v2, v3}, Lcom/wufan/user/service/protobuf/MessageProto$Account$b;->setUid(I)Lcom/wufan/user/service/protobuf/MessageProto$Account$b;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v2, v3}, Lcom/wufan/user/service/protobuf/MessageProto$Account$b;->setNickname(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageProto$Account$b;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v2, v3}, Lcom/wufan/user/service/protobuf/MessageProto$Account$b;->setAvatar(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageProto$Account$b;

    .line 99
    .line 100
    .line 101
    invoke-static {v0}, Lcom/join/mgps/Util/b;->pivc(Lcom/wufan/user/service/protobuf/UserInfo;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    invoke-virtual {v2, v0}, Lcom/wufan/user/service/protobuf/MessageProto$Account$b;->setVip(Z)Lcom/wufan/user/service/protobuf/MessageProto$Account$b;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/MessageProto$Account$b;->build()Lcom/wufan/user/service/protobuf/MessageProto$Account;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v1, v0}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->setAccount(Lcom/wufan/user/service/protobuf/MessageProto$Account;)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 113
    .line 114
    .line 115
    sget-object v0, Lcom/join/kotlin/network/message/MessageManager;->client:Lcom/join/kotlin/network/message/MessageClient;

    .line 116
    .line 117
    if-eqz v0, :cond_0

    .line 118
    .line 119
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->build()Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    const-string v2, "build(...)"

    .line 124
    .line 125
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1}, Lcom/join/kotlin/network/message/MessageClient;->send(Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;)V

    .line 129
    .line 130
    .line 131
    :cond_0
    return-void
.end method

.method public final logout()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sput-boolean v0, Lcom/join/kotlin/network/message/MessageManager;->isLogin:Z

    .line 3
    .line 4
    sput-boolean v0, Lcom/join/kotlin/network/message/MessageManager;->isActive:Z

    .line 5
    .line 6
    sget-object v0, Lcom/join/kotlin/network/message/MessageManager;->client:Lcom/join/kotlin/network/message/MessageClient;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/join/kotlin/network/message/MessageClient;->isAlive()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    sget-object v0, Lcom/join/kotlin/network/message/MessageManager;->client:Lcom/join/kotlin/network/message/MessageClient;

    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/join/kotlin/network/message/MessageClient;->disconnect()V

    .line 26
    .line 27
    .line 28
    :cond_1
    const/4 v0, 0x0

    .line 29
    sput-object v0, Lcom/join/kotlin/network/message/MessageManager;->client:Lcom/join/kotlin/network/message/MessageClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method

.method public final queryQueueState(JLjava/lang/String;)V
    .locals 4
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "serverName"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->newBuilder()Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "517_6.1.7.0"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->setAppVersion(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-virtual {v1, v2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->setVersion(I)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    sget-object v2, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->REQUEST_QUEUE_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->setType(Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    sget-wide v2, Lcom/join/kotlin/network/message/MessageManager;->uuid:J

    .line 38
    .line 39
    invoke-virtual {v1, v2, v3}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->setRequestId(J)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->newBuilder()Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    invoke-virtual {v2, v3}, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;->setUid(I)Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v2, v3}, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;->setToken(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v2, p1, p2}, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;->setGameId(J)Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1, p3}, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;->setServerName(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;->build()Lcom/wufan/user/service/protobuf/MessageProto$Params;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {v1, p1}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->setParams(Lcom/wufan/user/service/protobuf/MessageProto$Params;)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$Account;->newBuilder()Lcom/wufan/user/service/protobuf/MessageProto$Account$b;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 84
    .line 85
    .line 86
    move-result p3

    .line 87
    invoke-virtual {p2, p3}, Lcom/wufan/user/service/protobuf/MessageProto$Account$b;->setUid(I)Lcom/wufan/user/service/protobuf/MessageProto$Account$b;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p3

    .line 95
    invoke-virtual {p2, p3}, Lcom/wufan/user/service/protobuf/MessageProto$Account$b;->setNickname(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageProto$Account$b;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p3

    .line 103
    invoke-virtual {p2, p3}, Lcom/wufan/user/service/protobuf/MessageProto$Account$b;->setAvatar(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageProto$Account$b;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-static {v0}, Lcom/join/mgps/Util/b;->pivc(Lcom/wufan/user/service/protobuf/UserInfo;)Z

    .line 108
    .line 109
    .line 110
    move-result p3

    .line 111
    invoke-virtual {p2, p3}, Lcom/wufan/user/service/protobuf/MessageProto$Account$b;->setVip(Z)Lcom/wufan/user/service/protobuf/MessageProto$Account$b;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/MessageProto$Account$b;->build()Lcom/wufan/user/service/protobuf/MessageProto$Account;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    invoke-virtual {p1, p2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->setAccount(Lcom/wufan/user/service/protobuf/MessageProto$Account;)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->build()Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    sget-object p2, Lcom/join/kotlin/network/message/MessageManager;->client:Lcom/join/kotlin/network/message/MessageClient;

    .line 128
    .line 129
    if-eqz p2, :cond_0

    .line 130
    .line 131
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2, p1}, Lcom/join/kotlin/network/message/MessageClient;->send(Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;)V

    .line 135
    .line 136
    .line 137
    :cond_0
    return-void
.end method

.method public final quitQueue(JLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "serverName"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "jobId"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->newBuilder()Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "517_6.1.7.0"

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->setAppVersion(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const/4 v2, 0x1

    .line 32
    invoke-virtual {v1, v2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->setVersion(I)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    sget-object v2, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->EXIT_QUEUE_MESSAGE:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->setType(Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    sget-wide v2, Lcom/join/kotlin/network/message/MessageManager;->uuid:J

    .line 43
    .line 44
    invoke-virtual {v1, v2, v3}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->setRequestId(J)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->newBuilder()Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    invoke-virtual {v2, v3}, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;->setUid(I)Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v2, v3}, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;->setToken(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v2, p1, p2}, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;->setGameId(J)Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1, p3}, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;->setServerName(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1, p4}, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;->setJobId(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;->build()Lcom/wufan/user/service/protobuf/MessageProto$Params;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {v1, p1}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->setParams(Lcom/wufan/user/service/protobuf/MessageProto$Params;)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$Account;->newBuilder()Lcom/wufan/user/service/protobuf/MessageProto$Account$b;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 93
    .line 94
    .line 95
    move-result p3

    .line 96
    invoke-virtual {p2, p3}, Lcom/wufan/user/service/protobuf/MessageProto$Account$b;->setUid(I)Lcom/wufan/user/service/protobuf/MessageProto$Account$b;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p3

    .line 104
    invoke-virtual {p2, p3}, Lcom/wufan/user/service/protobuf/MessageProto$Account$b;->setNickname(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageProto$Account$b;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p3

    .line 112
    invoke-virtual {p2, p3}, Lcom/wufan/user/service/protobuf/MessageProto$Account$b;->setAvatar(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageProto$Account$b;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-static {v0}, Lcom/join/mgps/Util/b;->pivc(Lcom/wufan/user/service/protobuf/UserInfo;)Z

    .line 117
    .line 118
    .line 119
    move-result p3

    .line 120
    invoke-virtual {p2, p3}, Lcom/wufan/user/service/protobuf/MessageProto$Account$b;->setVip(Z)Lcom/wufan/user/service/protobuf/MessageProto$Account$b;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-static {v0}, Lcom/join/mgps/Util/b;->pivc(Lcom/wufan/user/service/protobuf/UserInfo;)Z

    .line 125
    .line 126
    .line 127
    move-result p3

    .line 128
    invoke-virtual {p2, p3}, Lcom/wufan/user/service/protobuf/MessageProto$Account$b;->setVip(Z)Lcom/wufan/user/service/protobuf/MessageProto$Account$b;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/MessageProto$Account$b;->build()Lcom/wufan/user/service/protobuf/MessageProto$Account;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    invoke-virtual {p1, p2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->setAccount(Lcom/wufan/user/service/protobuf/MessageProto$Account;)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->build()Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    sget-object p2, Lcom/join/kotlin/network/message/MessageManager;->client:Lcom/join/kotlin/network/message/MessageClient;

    .line 145
    .line 146
    if-eqz p2, :cond_0

    .line 147
    .line 148
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2, p1}, Lcom/join/kotlin/network/message/MessageClient;->send(Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;)V

    .line 152
    .line 153
    .line 154
    :cond_0
    return-void
.end method

.method public final reConnect()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/join/kotlin/network/message/MessageManager;->isActive:Z

    .line 3
    .line 4
    sget-object v0, Lcom/join/kotlin/network/message/MessageManager;->client:Lcom/join/kotlin/network/message/MessageClient;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/kotlin/network/message/MessageClient;->disconnect()V

    .line 9
    .line 10
    .line 11
    :cond_0
    sget-object v0, Lcom/join/kotlin/network/message/MessageManager;->client:Lcom/join/kotlin/network/message/MessageClient;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/kotlin/network/message/MessageClient;->connect()V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public final release(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "serverName"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "jobId"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "resId"

    .line 12
    .line 13
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->newBuilder()Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "517_6.1.7.0"

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->setAppVersion(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const/4 v2, 0x1

    .line 37
    invoke-virtual {v1, v2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->setVersion(I)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    sget-object v2, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->RESOURCE_TIME_OUT:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->setType(Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    sget-wide v2, Lcom/join/kotlin/network/message/MessageManager;->uuid:J

    .line 48
    .line 49
    invoke-virtual {v1, v2, v3}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->setRequestId(J)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->newBuilder()Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-virtual {v2, v3}, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;->setUid(I)Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v2, v3}, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;->setToken(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v2, p1, p2}, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;->setGameId(J)Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1, p3}, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;->setServerName(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1, p4}, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;->setJobId(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1, p5}, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;->setResourceId(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;->build()Lcom/wufan/user/service/protobuf/MessageProto$Params;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {v1, p1}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->setParams(Lcom/wufan/user/service/protobuf/MessageProto$Params;)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$Account;->newBuilder()Lcom/wufan/user/service/protobuf/MessageProto$Account$b;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 102
    .line 103
    .line 104
    move-result p3

    .line 105
    invoke-virtual {p2, p3}, Lcom/wufan/user/service/protobuf/MessageProto$Account$b;->setUid(I)Lcom/wufan/user/service/protobuf/MessageProto$Account$b;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p3

    .line 113
    invoke-virtual {p2, p3}, Lcom/wufan/user/service/protobuf/MessageProto$Account$b;->setNickname(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageProto$Account$b;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p3

    .line 121
    invoke-virtual {p2, p3}, Lcom/wufan/user/service/protobuf/MessageProto$Account$b;->setAvatar(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageProto$Account$b;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    invoke-static {v0}, Lcom/join/mgps/Util/b;->pivc(Lcom/wufan/user/service/protobuf/UserInfo;)Z

    .line 126
    .line 127
    .line 128
    move-result p3

    .line 129
    invoke-virtual {p2, p3}, Lcom/wufan/user/service/protobuf/MessageProto$Account$b;->setVip(Z)Lcom/wufan/user/service/protobuf/MessageProto$Account$b;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/MessageProto$Account$b;->build()Lcom/wufan/user/service/protobuf/MessageProto$Account;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    invoke-virtual {p1, p2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->setAccount(Lcom/wufan/user/service/protobuf/MessageProto$Account;)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->build()Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    sget-object p2, Lcom/join/kotlin/network/message/MessageManager;->client:Lcom/join/kotlin/network/message/MessageClient;

    .line 146
    .line 147
    if-eqz p2, :cond_0

    .line 148
    .line 149
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p2, p1}, Lcom/join/kotlin/network/message/MessageClient;->send(Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;)V

    .line 153
    .line 154
    .line 155
    :cond_0
    return-void
.end method

.method public final sendHeartBeat()V
    .locals 4

    .line 1
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;->newBuilder()Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sget-wide v2, Lcom/join/kotlin/network/message/MessageManager;->uuid:J

    .line 16
    .line 17
    invoke-virtual {v1, v2, v3}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->setRequestId(J)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 18
    .line 19
    .line 20
    const-string v2, "517_6.1.7.0"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->setAppVersion(Ljava/lang/String;)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 23
    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-virtual {v1, v2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->setVersion(I)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 27
    .line 28
    .line 29
    sget-object v2, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;->PING:Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->setType(Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$ProtoType;)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lcom/wufan/user/service/protobuf/MessageProto$Params;->newBuilder()Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-virtual {v2, v0}, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;->setUid(I)Lcom/wufan/user/service/protobuf/MessageProto$Params$b;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/MessageProto$Params$b;->build()Lcom/wufan/user/service/protobuf/MessageProto$Params;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v1, v0}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->setParams(Lcom/wufan/user/service/protobuf/MessageProto$Params;)Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;

    .line 51
    .line 52
    .line 53
    sget-object v0, Lcom/join/kotlin/network/message/MessageManager;->client:Lcom/join/kotlin/network/message/MessageClient;

    .line 54
    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest$b;->build()Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const-string v2, "build(...)"

    .line 62
    .line 63
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lcom/join/kotlin/network/message/MessageClient;->send(Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;)V

    .line 67
    .line 68
    .line 69
    :cond_0
    return-void
.end method

.method public final setActiveState(Z)V
    .locals 3

    .line 1
    sput-boolean p1, Lcom/join/kotlin/network/message/MessageManager;->isActive:Z

    .line 2
    .line 3
    sget-boolean v0, Lcom/join/kotlin/network/message/MessageManager;->isLogin:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/join/mgps/event/t;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, v2, p1}, Lcom/join/mgps/event/t;-><init>(IZ)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final setCurrentUid(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sput-object p1, Lcom/join/kotlin/network/message/MessageManager;->currentUid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setLoginState(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lcom/join/kotlin/network/message/MessageManager;->isLogin:Z

    .line 2
    .line 3
    return-void
.end method
