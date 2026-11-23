.class public Lcom/efs/sdk/base/core/controller/ControllerCenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static h:Lcom/efs/sdk/base/core/config/GlobalEnvStruct;


# instance fields
.field private a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private volatile f:Z

.field private g:Lcom/efs/sdk/base/core/controller/a/a;

.field private i:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/efs/sdk/base/EfsReporter$Builder;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/efs/sdk/base/core/controller/ControllerCenter;->a:I

    .line 6
    .line 7
    iput v0, p0, Lcom/efs/sdk/base/core/controller/ControllerCenter;->b:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput v1, p0, Lcom/efs/sdk/base/core/controller/ControllerCenter;->c:I

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    iput v1, p0, Lcom/efs/sdk/base/core/controller/ControllerCenter;->d:I

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    iput v1, p0, Lcom/efs/sdk/base/core/controller/ControllerCenter;->e:I

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/efs/sdk/base/core/controller/ControllerCenter;->f:Z

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/efs/sdk/base/EfsReporter$Builder;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    sput-object p1, Lcom/efs/sdk/base/core/controller/ControllerCenter;->h:Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    .line 25
    .line 26
    new-instance p1, Landroid/os/Handler;

    .line 27
    .line 28
    sget-object v1, Lcom/efs/sdk/base/core/util/concurrent/a;->a:Landroid/os/HandlerThread;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-direct {p1, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/efs/sdk/base/core/controller/ControllerCenter;->i:Landroid/os/Handler;

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/efs/sdk/base/core/controller/ControllerCenter;->g:Lcom/efs/sdk/base/core/controller/a/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/efs/sdk/base/core/controller/a/a;

    invoke-direct {v0}, Lcom/efs/sdk/base/core/controller/a/a;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/base/core/controller/ControllerCenter;->g:Lcom/efs/sdk/base/core/controller/a/a;

    .line 3
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5
    sget-object v1, Lcom/efs/sdk/base/core/controller/ControllerCenter;->h:Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    iget-object v1, v1, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/efs/sdk/base/core/controller/ControllerCenter;->g:Lcom/efs/sdk/base/core/controller/a/a;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "efs.base"

    const-string v2, "register network change receiver error"

    .line 6
    invoke-static {v1, v2, v0}, Lcom/efs/sdk/base/core/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    iget v0, p0, Lcom/efs/sdk/base/core/controller/ControllerCenter;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/efs/sdk/base/core/controller/ControllerCenter;->a:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/efs/sdk/base/core/controller/ControllerCenter;->i:Landroid/os/Handler;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/efs/sdk/base/protocol/ILogProtocol;)V
    .locals 6

    .line 9
    invoke-static {}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->getCallback(I)Ljava/util/List;

    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkit/ValueCallback;

    .line 11
    new-instance v3, Ljava/util/HashMap;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 12
    invoke-interface {p0}, Lcom/efs/sdk/base/protocol/ILogProtocol;->getLogType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "log_type"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "log_data"

    .line 13
    invoke-interface {p0}, Lcom/efs/sdk/base/protocol/ILogProtocol;->generateString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "link_key"

    .line 14
    invoke-interface {p0}, Lcom/efs/sdk/base/protocol/ILogProtocol;->getLinkKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "link_id"

    .line 15
    invoke-interface {p0}, Lcom/efs/sdk/base/protocol/ILogProtocol;->getLinkId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    .line 16
    invoke-static {v4, v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 17
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 18
    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v5}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 19
    invoke-virtual {v3}, Landroid/os/Message;->recycle()V

    .line 20
    invoke-virtual {v4}, Landroid/os/Message;->recycle()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(Lcom/efs/sdk/base/protocol/ILogProtocol;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/efs/sdk/base/core/controller/ControllerCenter$1;

    .line 5
    .line 6
    invoke-direct {v0, p0, p1}, Lcom/efs/sdk/base/core/controller/ControllerCenter$1;-><init>(Lcom/efs/sdk/base/core/controller/ControllerCenter;Lcom/efs/sdk/base/protocol/ILogProtocol;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/efs/sdk/base/core/util/concurrent/WorkThreadUtil;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/efs/sdk/base/core/controller/ControllerCenter;->h:Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/4 p1, 0x3

    .line 9
    if-eq v0, p1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->a()V

    .line 14
    .line 15
    .line 16
    goto/16 :goto_1

    .line 17
    .line 18
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 19
    .line 20
    if-eqz p1, :cond_5

    .line 21
    .line 22
    instance-of v0, p1, Lcom/efs/sdk/base/protocol/ILogProtocol;

    .line 23
    .line 24
    if-eqz v0, :cond_5

    .line 25
    .line 26
    check-cast p1, Lcom/efs/sdk/base/protocol/ILogProtocol;

    .line 27
    .line 28
    invoke-direct {p0, p1}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->b(Lcom/efs/sdk/base/protocol/ILogProtocol;)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    invoke-static {}, Lcom/efs/sdk/base/core/config/GlobalInfoManager;->getInstance()Lcom/efs/sdk/base/core/config/GlobalInfoManager;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lcom/efs/sdk/base/core/config/GlobalInfoManager;->initGlobalInfo()V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lcom/efs/sdk/base/core/c/f$a;->a()Lcom/efs/sdk/base/core/c/f;

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lcom/efs/sdk/base/core/config/a/c;->a()Lcom/efs/sdk/base/core/config/a/c;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lcom/efs/sdk/base/core/config/a/c;->b()V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->a()V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Lcom/efs/sdk/base/core/f/f$a;->a()Lcom/efs/sdk/base/core/f/f;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    sget-object v0, Lcom/efs/sdk/base/core/controller/ControllerCenter;->h:Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->isIntl()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iget-object v2, p1, Lcom/efs/sdk/base/core/f/f;->a:Lcom/efs/sdk/base/core/f/c;

    .line 63
    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    const-string v0, "https://errnewlogos.umeng.com/api/crashsdk/logcollect"

    .line 67
    .line 68
    iput-object v0, v2, Lcom/efs/sdk/base/core/f/c;->a:Ljava/lang/String;

    .line 69
    .line 70
    const-string v0, "4ea4e41a3993"

    .line 71
    .line 72
    iput-object v0, v2, Lcom/efs/sdk/base/core/f/c;->b:Ljava/lang/String;

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    const-string v0, "https://errnewlog.umeng.com/api/crashsdk/logcollect"

    .line 76
    .line 77
    iput-object v0, v2, Lcom/efs/sdk/base/core/f/c;->a:Ljava/lang/String;

    .line 78
    .line 79
    const-string v0, "28ef1713347d"

    .line 80
    .line 81
    iput-object v0, v2, Lcom/efs/sdk/base/core/f/c;->b:Ljava/lang/String;

    .line 82
    .line 83
    :goto_0
    iput-object p0, p1, Lcom/efs/sdk/base/core/f/f;->b:Lcom/efs/sdk/base/core/controller/ControllerCenter;

    .line 84
    .line 85
    iget-object v0, p1, Lcom/efs/sdk/base/core/f/f;->c:Lcom/efs/sdk/base/core/f/d;

    .line 86
    .line 87
    iput-object p0, v0, Lcom/efs/sdk/base/core/f/a;->a:Lcom/efs/sdk/base/core/controller/ControllerCenter;

    .line 88
    .line 89
    iget-object p1, p1, Lcom/efs/sdk/base/core/f/f;->d:Lcom/efs/sdk/base/core/f/g;

    .line 90
    .line 91
    iput-object p0, p1, Lcom/efs/sdk/base/core/f/a;->a:Lcom/efs/sdk/base/core/controller/ControllerCenter;

    .line 92
    .line 93
    iput-boolean v1, p0, Lcom/efs/sdk/base/core/controller/ControllerCenter;->f:Z

    .line 94
    .line 95
    invoke-static {}, Lcom/efs/sdk/base/core/c/d;->a()Lcom/efs/sdk/base/core/c/d;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    sget-object v0, Lcom/efs/sdk/base/core/controller/ControllerCenter;->h:Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->getLogSendDelayMills()J

    .line 102
    .line 103
    .line 104
    move-result-wide v2

    .line 105
    const/4 v0, 0x0

    .line 106
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 107
    .line 108
    .line 109
    invoke-static {}, Lcom/efs/sdk/base/core/f/f$a;->a()Lcom/efs/sdk/base/core/f/f;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    iget-object v0, p1, Lcom/efs/sdk/base/core/f/f;->b:Lcom/efs/sdk/base/core/controller/ControllerCenter;

    .line 114
    .line 115
    if-eqz v0, :cond_5

    .line 116
    .line 117
    invoke-static {}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v0}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->isEnableWaStat()Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-nez v0, :cond_4

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_4
    new-instance v0, Lcom/efs/sdk/base/core/f/b;

    .line 129
    .line 130
    iget-object v2, p1, Lcom/efs/sdk/base/core/f/f;->a:Lcom/efs/sdk/base/core/f/c;

    .line 131
    .line 132
    iget-object v2, v2, Lcom/efs/sdk/base/core/f/c;->c:Ljava/lang/String;

    .line 133
    .line 134
    const-string v3, "efs_core"

    .line 135
    .line 136
    const-string v4, "pvuv"

    .line 137
    .line 138
    invoke-direct {v0, v3, v4, v2}, Lcom/efs/sdk/base/core/f/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iget-object p1, p1, Lcom/efs/sdk/base/core/f/f;->b:Lcom/efs/sdk/base/core/controller/ControllerCenter;

    .line 142
    .line 143
    invoke-virtual {p1, v0}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->send(Lcom/efs/sdk/base/protocol/ILogProtocol;)V

    .line 144
    .line 145
    .line 146
    :cond_5
    :goto_1
    return v1
.end method

.method public send(Lcom/efs/sdk/base/protocol/ILogProtocol;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/efs/sdk/base/core/controller/ControllerCenter;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    iput v1, v0, Landroid/os/Message;->what:I

    .line 11
    .line 12
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object p1, p0, Lcom/efs/sdk/base/core/controller/ControllerCenter;->i:Landroid/os/Handler;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-direct {p0, p1}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->b(Lcom/efs/sdk/base/protocol/ILogProtocol;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public sendSyncImmediately(Ljava/lang/String;ILjava/lang/String;ZLjava/io/File;)Lcom/efs/sdk/base/http/HttpResponse;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    new-instance v0, Lcom/efs/sdk/base/core/d/b;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/efs/sdk/base/core/d/b;-><init>(Ljava/lang/String;B)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-virtual {v0, p1}, Lcom/efs/sdk/base/core/d/b;->b(I)V

    .line 9
    .line 10
    .line 11
    iput-object p5, v0, Lcom/efs/sdk/base/core/d/b;->d:Ljava/io/File;

    .line 12
    .line 13
    invoke-virtual {v0, p3}, Lcom/efs/sdk/base/core/d/b;->a(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Lcom/efs/sdk/base/core/d/b;->a(I)V

    .line 17
    .line 18
    .line 19
    iget-object p1, v0, Lcom/efs/sdk/base/core/d/b;->b:Lcom/efs/sdk/base/core/d/c;

    .line 20
    .line 21
    iput-boolean p4, p1, Lcom/efs/sdk/base/core/d/c;->b:Z

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/efs/sdk/base/core/d/b;->c()V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/efs/sdk/base/core/e/d$a;->a()Lcom/efs/sdk/base/core/e/d;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object p1, p1, Lcom/efs/sdk/base/core/e/d;->a:Lcom/efs/sdk/base/core/e/a;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lcom/efs/sdk/base/core/e/a;->a(Lcom/efs/sdk/base/core/d/b;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, v0, Lcom/efs/sdk/base/core/d/b;->b:Lcom/efs/sdk/base/core/d/c;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/efs/sdk/base/core/d/c;->c:Lcom/efs/sdk/base/http/HttpResponse;

    .line 38
    .line 39
    return-object p1
.end method
