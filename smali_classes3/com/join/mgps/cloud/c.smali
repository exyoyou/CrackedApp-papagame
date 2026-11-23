.class public final Lcom/join/mgps/cloud/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/cloud/c$a;
    }
.end annotation


# static fields
.field public static final e:Lcom/join/mgps/cloud/c$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Lkotlinx/coroutines/flow/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/j<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private c:Lkotlinx/coroutines/flow/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/j<",
            "Lcom/cloudplay/messagesdk/entity/PayInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/join/mgps/cloud/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/join/mgps/cloud/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/join/mgps/cloud/c;->e:Lcom/join/mgps/cloud/c$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/join/mgps/cloud/c;->a:Landroid/content/Context;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-static {p1}, Lkotlinx/coroutines/flow/v;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/j;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/join/mgps/cloud/c;->b:Lkotlinx/coroutines/flow/j;

    .line 17
    .line 18
    invoke-static {p1}, Lkotlinx/coroutines/flow/v;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/j;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/join/mgps/cloud/c;->c:Lkotlinx/coroutines/flow/j;

    .line 23
    .line 24
    const-class p1, Lcom/join/mgps/cloud/c;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/join/mgps/cloud/c;->d:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {}, Lcom/cloudplay/messagesdk/MessageSDK;->getInstance()Lcom/cloudplay/messagesdk/MessageSDK;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const/4 v0, 0x1

    .line 37
    invoke-virtual {p1, v0}, Lcom/cloudplay/messagesdk/MessageSDK;->setDebug(Z)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/join/mgps/cloud/c;->f()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/cloud/c;Lcom/cloudplay/messagesdk/entity/ConfigType;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/mgps/cloud/c;->g(Lcom/join/mgps/cloud/c;Lcom/cloudplay/messagesdk/entity/ConfigType;)V

    return-void
.end method

.method public static synthetic b(ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/mgps/cloud/c;->n(ZLjava/lang/String;)V

    return-void
.end method

.method public static final varargs synthetic c(Lcom/join/mgps/cloud/c;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/cloud/c;->h([Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final g(Lcom/join/mgps/cloud/c;Lcom/cloudplay/messagesdk/entity/ConfigType;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/cloudplay/messagesdk/entity/ConfigType;->CONFIG_INFO:Lcom/cloudplay/messagesdk/entity/ConfigType;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/cloudplay/messagesdk/MessageSDK;->getInstance()Lcom/cloudplay/messagesdk/MessageSDK;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/MessageSDK;->getConfigInfo()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/join/mgps/cloud/c;->b:Lkotlinx/coroutines/flow/j;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/i;->d(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v1, "configInfo: "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    filled-new-array {p1}, [Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p0, p1}, Lcom/join/mgps/cloud/c;->i([Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    sget-object v0, Lcom/cloudplay/messagesdk/entity/ConfigType;->PAY_INFO:Lcom/cloudplay/messagesdk/entity/ConfigType;

    .line 44
    .line 45
    if-ne p1, v0, :cond_1

    .line 46
    .line 47
    invoke-static {}, Lcom/cloudplay/messagesdk/MessageSDK;->getInstance()Lcom/cloudplay/messagesdk/MessageSDK;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/MessageSDK;->getPayInfo()Lcom/cloudplay/messagesdk/entity/PayInfo;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object v0, p0, Lcom/join/mgps/cloud/c;->c:Lkotlinx/coroutines/flow/j;

    .line 56
    .line 57
    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/i;->d(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v1, "payInfo: "

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    filled-new-array {p1}, [Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p0, p1}, Lcom/join/mgps/cloud/c;->i([Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_1
    :goto_0
    return-void
.end method

.method private final varargs h([Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic l(Lcom/join/mgps/cloud/c;Lcom/join/mgps/cloud/bean/HMMessage;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/cloud/c;->j(Lcom/join/mgps/cloud/bean/HMMessage;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic m(Lcom/join/mgps/cloud/c;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/cloud/c;->k(Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final n(ZLjava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/join/mgps/cloud/bean/HMMessage$SendMessageResult;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const-string p1, ""

    .line 10
    .line 11
    :cond_0
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/cloud/bean/HMMessage$SendMessageResult;-><init>(ZLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final d()Lkotlinx/coroutines/flow/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/j<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/cloud/c;->b:Lkotlinx/coroutines/flow/j;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Lkotlinx/coroutines/flow/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/j<",
            "Lcom/cloudplay/messagesdk/entity/PayInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/cloud/c;->c:Lkotlinx/coroutines/flow/j;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/cloud/c;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/cloudplay/messagesdk/MessageSDK;->getInstance()Lcom/cloudplay/messagesdk/MessageSDK;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/join/mgps/cloud/c;->a:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v1, v2, v0}, Lcom/cloudplay/messagesdk/MessageSDK;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/join/mgps/cloud/c$b;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/join/mgps/cloud/c$b;-><init>(Lcom/join/mgps/cloud/c;)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/cloudplay/messagesdk/MessageSDK;->getInstance()Lcom/cloudplay/messagesdk/MessageSDK;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1, v0}, Lcom/cloudplay/messagesdk/MessageSDK;->setMessageHandler(Lcom/cloudplay/messagesdk/listener/MessageHandler;)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/cloudplay/messagesdk/MessageSDK;->getInstance()Lcom/cloudplay/messagesdk/MessageSDK;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v1, Lcom/join/mgps/cloud/b;

    .line 33
    .line 34
    invoke-direct {v1, p0}, Lcom/join/mgps/cloud/b;-><init>(Lcom/join/mgps/cloud/c;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/cloudplay/messagesdk/MessageSDK;->setConfigObserver(Lcom/cloudplay/messagesdk/listener/ConfigObserver;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/join/mgps/cloud/c;->b:Lkotlinx/coroutines/flow/j;

    .line 41
    .line 42
    invoke-static {}, Lcom/cloudplay/messagesdk/MessageSDK;->getInstance()Lcom/cloudplay/messagesdk/MessageSDK;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lcom/cloudplay/messagesdk/MessageSDK;->getConfigInfo()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/i;->d(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/join/mgps/cloud/c;->c:Lkotlinx/coroutines/flow/j;

    .line 54
    .line 55
    invoke-static {}, Lcom/cloudplay/messagesdk/MessageSDK;->getInstance()Lcom/cloudplay/messagesdk/MessageSDK;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lcom/cloudplay/messagesdk/MessageSDK;->getPayInfo()Lcom/cloudplay/messagesdk/entity/PayInfo;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/i;->d(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v1, "message info: "

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-static {}, Lcom/cloudplay/messagesdk/MessageSDK;->getInstance()Lcom/cloudplay/messagesdk/MessageSDK;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lcom/cloudplay/messagesdk/MessageSDK;->getConfigInfo()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v1, "  "

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-static {}, Lcom/cloudplay/messagesdk/MessageSDK;->getInstance()Lcom/cloudplay/messagesdk/MessageSDK;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v1}, Lcom/cloudplay/messagesdk/MessageSDK;->getPayInfo()Lcom/cloudplay/messagesdk/entity/PayInfo;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const/16 v1, 0x20

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    filled-new-array {v0}, [Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {p0, v0}, Lcom/join/mgps/cloud/c;->i([Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/cloud/c;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public final varargs i([Ljava/lang/String;)V
    .locals 10
    .param p1    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/join/mgps/cloud/bean/HMMessage$Log;

    .line 7
    .line 8
    const-string v2, " "

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x0

    .line 15
    const/16 v8, 0x3e

    .line 16
    .line 17
    const/4 v9, 0x0

    .line 18
    move-object v1, p1

    .line 19
    invoke-static/range {v1 .. v9}, Lkotlin/collections/ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Lcom/join/mgps/cloud/bean/HMMessage$Log;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Ln6/b;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/4 v1, 0x2

    .line 31
    const/4 v2, 0x0

    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-static {p0, v0, v3, v1, v2}, Lcom/join/mgps/cloud/c;->m(Lcom/join/mgps/cloud/c;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    array-length v0, p1

    .line 37
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, [Ljava/lang/String;

    .line 42
    .line 43
    invoke-direct {p0, p1}, Lcom/join/mgps/cloud/c;->h([Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final j(Lcom/join/mgps/cloud/bean/HMMessage;Z)V
    .locals 1
    .param p1    # Lcom/join/mgps/cloud/bean/HMMessage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ln6/b;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/cloud/c;->k(Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final k(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p2, "message"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/cloudplay/messagesdk/MessageSDK;->getInstance()Lcom/cloudplay/messagesdk/MessageSDK;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    new-instance v0, Lcom/join/mgps/cloud/a;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/join/mgps/cloud/a;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p1, v0}, Lcom/cloudplay/messagesdk/MessageSDK;->sendMessage(Ljava/lang/String;Lcom/cloudplay/messagesdk/listener/SendListener;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final o(Lkotlinx/coroutines/flow/j;)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/flow/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/j<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/mgps/cloud/c;->b:Lkotlinx/coroutines/flow/j;

    .line 7
    .line 8
    return-void
.end method

.method public final p(Lkotlinx/coroutines/flow/j;)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/flow/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/j<",
            "Lcom/cloudplay/messagesdk/entity/PayInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/mgps/cloud/c;->c:Lkotlinx/coroutines/flow/j;

    .line 7
    .line 8
    return-void
.end method

.method public final q()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloudplay/messagesdk/MessageSDK;->getInstance()Lcom/cloudplay/messagesdk/MessageSDK;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/cloudplay/messagesdk/MessageSDK;->stop()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
