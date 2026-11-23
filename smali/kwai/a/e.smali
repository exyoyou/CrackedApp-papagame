.class public Lkwai/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkwai/a/e$c;
    }
.end annotation


# static fields
.field public static k:Ljava/lang/String; = ""

.field public static l:Ljava/lang/String; = ""

.field public static m:Ljava/lang/String;

.field public static n:Lorg/json/JSONObject;

.field public static o:Z


# instance fields
.field public volatile a:I

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfc/a;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroid/content/Context;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public final h:Landroid/os/Handler;

.field public volatile i:Z

.field public volatile j:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lkwai/a/e;->a:I

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkwai/a/e;->b:Ljava/util/List;

    .line 6
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lkwai/a/e;->h:Landroid/os/Handler;

    return-void
.end method

.method public synthetic constructor <init>(Lkwai/a/e$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkwai/a/e;-><init>()V

    return-void
.end method

.method public static synthetic d(Lkwai/a/e;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lkwai/a/e;->i:Z

    .line 2
    .line 3
    return p1
.end method

.method public static declared-synchronized j()Ljava/lang/String;
    .locals 4

    .line 1
    const-class v0, Lkwai/a/e;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lkwai/a/e;->n:Lorg/json/JSONObject;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const-string v1, "TurboSDK"

    .line 9
    .line 10
    const-string v2, "mJsonObject is null"

    .line 11
    .line 12
    invoke-static {v1, v2}, Lkc/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-object v1

    .line 19
    :cond_0
    :try_start_1
    const-string v2, "enableGetCallback"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    :try_start_2
    const-string v1, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 28
    .line 29
    monitor-exit v0

    .line 30
    return-object v1

    .line 31
    :cond_1
    :try_start_3
    sget-object v1, Lkwai/a/e;->m:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    monitor-exit v0

    .line 36
    return-object v1

    .line 37
    :cond_2
    :try_start_4
    sget-object v1, Lkwai/a/e$c;->b:Lkwai/a/e$c;

    .line 38
    .line 39
    iget-object v2, v1, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 40
    .line 41
    iget-object v2, v2, Lkwai/a/e;->c:Landroid/content/Context;

    .line 42
    .line 43
    const-string v3, "ks_callback"

    .line 44
    .line 45
    invoke-static {v2, v3}, Lec/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    sput-object v2, Lkwai/a/e;->m:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_3

    .line 56
    .line 57
    sget-object v1, Lkwai/a/e;->m:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 58
    .line 59
    monitor-exit v0

    .line 60
    return-object v1

    .line 61
    :cond_3
    :try_start_5
    iget-object v2, v1, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 62
    .line 63
    iget-object v2, v2, Lkwai/a/e;->c:Landroid/content/Context;

    .line 64
    .line 65
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 70
    .line 71
    new-instance v3, Ljava/io/File;

    .line 72
    .line 73
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-static {v3}, Llc/b;->a(Ljava/io/File;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    sput-object v2, Lkwai/a/e;->m:Ljava/lang/String;

    .line 81
    .line 82
    iget-object v1, v1, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 83
    .line 84
    iget-object v1, v1, Lkwai/a/e;->c:Landroid/content/Context;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 85
    .line 86
    :try_start_6
    const-string v3, "ks_callback"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 87
    .line 88
    :try_start_7
    invoke-static {v1, v3, v2}, Lec/c;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catchall_0
    move-exception v1

    .line 93
    :try_start_8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v3, "get callback info error, error is "

    .line 99
    .line 100
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    const-string v2, "TurboSDK"

    .line 115
    .line 116
    invoke-static {v2, v1}, Lkc/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :goto_0
    sget-object v1, Lkwai/a/e;->m:Ljava/lang/String;

    .line 120
    .line 121
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eqz v1, :cond_4

    .line 126
    .line 127
    const-string v1, ""

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_4
    sget-object v1, Lkwai/a/e;->m:Ljava/lang/String;

    .line 131
    .line 132
    :goto_1
    sput-object v1, Lkwai/a/e;->m:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 133
    .line 134
    monitor-exit v0

    .line 135
    return-object v1

    .line 136
    :catch_0
    move-exception v1

    .line 137
    :try_start_9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    const-string v3, "querySwitchMessage  parse error"

    .line 143
    .line 144
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    const-string v2, "TurboSDK"

    .line 159
    .line 160
    invoke-static {v2, v1}, Lkc/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    const-string v1, ""
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 164
    .line 165
    monitor-exit v0

    .line 166
    return-object v1

    .line 167
    :catchall_1
    move-exception v1

    .line 168
    monitor-exit v0

    .line 169
    throw v1
.end method

.method public static k()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lkwai/a/e;->k:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lkwai/a/e;->k:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    sget-object v0, Lkwai/a/e$c;->b:Lkwai/a/e$c;

    .line 13
    .line 14
    iget-object v0, v0, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 15
    .line 16
    iget-object v0, v0, Lkwai/a/e;->c:Landroid/content/Context;

    .line 17
    .line 18
    const-string v1, "ks_global_id"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lec/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lkwai/a/e;->k:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0}, Lkc/c;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method

.method public static l()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lkwai/a/e;->l:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lkwai/a/e;->l:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    sget-object v0, Lkwai/a/e$c;->b:Lkwai/a/e$c;

    .line 13
    .line 14
    iget-object v0, v0, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 15
    .line 16
    iget-object v0, v0, Lkwai/a/e;->c:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {v0}, Lhc/a;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lkwai/a/e;->l:Ljava/lang/String;

    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v1, "oaid:"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    sget-object v1, Lkwai/a/e;->l:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, "TurboSDK"

    .line 44
    .line 45
    invoke-static {v1, v0}, Lkc/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    sget-object v0, Lkwai/a/e;->l:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v0}, Lkc/c;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/kwai/monitor/log/TurboConfig;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lkwai/a/e;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    :try_start_1
    iput-boolean v0, p0, Lkwai/a/e;->j:Z

    .line 10
    .line 11
    iget-object v0, p1, Lcom/kwai/monitor/log/TurboConfig;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lkwai/a/e;->c:Landroid/content/Context;

    .line 18
    .line 19
    iget-object v1, p1, Lcom/kwai/monitor/log/TurboConfig;->mAppId:Ljava/lang/String;

    .line 20
    .line 21
    iput-object v1, p0, Lkwai/a/e;->d:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v1, p1, Lcom/kwai/monitor/log/TurboConfig;->mAppName:Ljava/lang/String;

    .line 24
    .line 25
    iput-object v1, p0, Lkwai/a/e;->e:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v1, p1, Lcom/kwai/monitor/log/TurboConfig;->mChannel:Ljava/lang/String;

    .line 28
    .line 29
    iput-object v1, p0, Lkwai/a/e;->f:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lkwai/a/e;->g:Ljava/lang/String;

    .line 36
    .line 37
    const-string v0, "KS_LOG"

    .line 38
    .line 39
    const-string v1, "1.0.17"

    .line 40
    .line 41
    iget-boolean p1, p1, Lcom/kwai/monitor/log/TurboConfig;->mEnableDebug:Z

    .line 42
    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v0, "_"

    .line 52
    .line 53
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sput-object v0, Lkc/a;->a:Ljava/lang/String;

    .line 64
    .line 65
    sput-boolean p1, Lkc/a;->b:Z

    .line 66
    .line 67
    const/4 p1, 0x0

    .line 68
    sput-boolean p1, Lkc/a;->c:Z

    .line 69
    .line 70
    iget-object p1, p0, Lkwai/a/e;->c:Landroid/content/Context;

    .line 71
    .line 72
    invoke-static {p1}, Lhc/a;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    sget-object p1, Lkwai/c/a$c;->b:Lkwai/c/a$c;

    .line 76
    .line 77
    iget-object p1, p1, Lkwai/c/a$c;->a:Lkwai/c/a;

    .line 78
    .line 79
    new-instance v0, Lec/g;

    .line 80
    .line 81
    invoke-direct {v0, p0}, Lec/g;-><init>(Lkwai/a/e;)V

    .line 82
    .line 83
    .line 84
    iget-object v1, p1, Lkwai/c/a;->a:Ljava/util/concurrent/ExecutorService;

    .line 85
    .line 86
    new-instance v2, Lgc/a;

    .line 87
    .line 88
    const-string v3, "https://api.e.kuaishou.com/rest/config/client/v1/open/sdkGatherConfig"

    .line 89
    .line 90
    invoke-direct {v2, p1, v3, v0}, Lgc/a;-><init>(Lkwai/c/a;Ljava/lang/String;Lgc/c;)V

    .line 91
    .line 92
    .line 93
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    .line 95
    .line 96
    monitor-exit p0

    .line 97
    return-void

    .line 98
    :catchall_0
    move-exception p1

    .line 99
    monitor-exit p0

    .line 100
    throw p1
.end method

.method public b(Lfc/a;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lkwai/a/e;->j:Z

    .line 2
    .line 3
    const-string v1, "TurboSDK"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "onEvent sdk is not init, please init first eventName:"

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object p1, p1, Lfc/a;->a:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 v0, 0x1

    .line 27
    new-array v2, v0, [Ljava/lang/Object;

    .line 28
    .line 29
    sget-object v3, Lkc/a;->a:Ljava/lang/String;

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    aput-object v3, v2, v4

    .line 33
    .line 34
    const-string v3, "[%s]"

    .line 35
    .line 36
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    new-array v0, v0, [Ljava/lang/Object;

    .line 45
    .line 46
    aput-object v1, v0, v4

    .line 47
    .line 48
    const-string v1, "[%s]: "

    .line 49
    .line 50
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_0
    sget-boolean v0, Lkwai/a/e;->o:Z

    .line 62
    .line 63
    if-nez v0, :cond_1

    .line 64
    .line 65
    iget-object v0, p0, Lkwai/a/e;->b:Ljava/util/List;

    .line 66
    .line 67
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_1
    invoke-virtual {p0}, Lkwai/a/e;->e()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_2

    .line 76
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v2, "sdk is not init finish, cache add report later eventName:"

    .line 83
    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget-object v2, p1, Lfc/a;->a:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {v1, v0}, Lkc/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lkwai/a/e;->b:Ljava/util/List;

    .line 100
    .line 101
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Lkwai/a/e;->g()V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_2
    sget-object v0, Lkwai/c/a$c;->b:Lkwai/c/a$c;

    .line 109
    .line 110
    iget-object v0, v0, Lkwai/c/a$c;->a:Lkwai/c/a;

    .line 111
    .line 112
    const-string v1, "https://ad.partner.gifshow.com/api/v2/sdk/log?token=dee6172daef74f0895c7d185956ac0a7"

    .line 113
    .line 114
    invoke-virtual {v0, v1, p1}, Lkwai/c/a;->a(Ljava/lang/String;Lfc/a;)V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method public final c()Z
    .locals 1

    .line 1
    invoke-static {}, Lkwai/a/e;->l()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lec/c;->m(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lkwai/a/e;->c:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v0}, Lkc/c;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lec/c;->m(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0
.end method

.method public final declared-synchronized e()Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lkwai/a/e;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    :try_start_1
    iget-object v0, p0, Lkwai/a/e;->c:Landroid/content/Context;

    .line 10
    .line 11
    const-string v1, "ks_register_success"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {v0, v1, v2}, Lec/c;->j(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput-boolean v0, p0, Lkwai/a/e;->i:Z

    .line 19
    .line 20
    iget-boolean v0, p0, Lkwai/a/e;->i:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    .line 22
    monitor-exit p0

    .line 23
    return v0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    monitor-exit p0

    .line 26
    throw v0
.end method

.method public final f()V
    .locals 3

    .line 1
    sget-object v0, Lkwai/c/a$c;->b:Lkwai/c/a$c;

    .line 2
    .line 3
    iget-object v0, v0, Lkwai/c/a$c;->a:Lkwai/c/a;

    .line 4
    .line 5
    new-instance v1, Lkwai/a/e$b;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lkwai/a/e$b;-><init>(Lkwai/a/e;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "https://api.e.kuaishou.com/rest/config/client/v1/open/globalId"

    .line 11
    .line 12
    invoke-virtual {v0, v2, v1}, Lkwai/c/a;->b(Ljava/lang/String;Lgc/d;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final declared-synchronized g()V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lkwai/a/e;->e()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    if-eqz v0, :cond_5

    .line 9
    .line 10
    invoke-static {}, Lkwai/a/e;->k()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v3, 0x0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    iget-object v0, p0, Lkwai/a/e;->c:Landroid/content/Context;

    .line 23
    .line 24
    const-string v4, "ks_register_get_global_id_time"

    .line 25
    .line 26
    invoke-static {v0}, Lec/c;->b(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    sget-object v0, Lec/c;->c:Landroid/content/SharedPreferences;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-interface {v0, v4, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 34
    .line 35
    .line 36
    move-result-wide v4

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-wide v4, v1

    .line 39
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v6

    .line 43
    cmp-long v0, v4, v1

    .line 44
    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    iget-object v0, p0, Lkwai/a/e;->c:Landroid/content/Context;

    .line 48
    .line 49
    const-string v1, "ks_register_get_global_id_time"

    .line 50
    .line 51
    invoke-static {v0, v1, v6, v7}, Lec/c;->c(Landroid/content/Context;Ljava/lang/String;J)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    sub-long v0, v6, v4

    .line 56
    .line 57
    const-wide/32 v4, 0xf731400

    .line 58
    .line 59
    .line 60
    cmp-long v2, v0, v4

    .line 61
    .line 62
    if-ltz v2, :cond_3

    .line 63
    .line 64
    iget-object v0, p0, Lkwai/a/e;->c:Landroid/content/Context;

    .line 65
    .line 66
    const-string v1, "ks_register_get_global_id_time"

    .line 67
    .line 68
    invoke-static {v0, v1, v6, v7}, Lec/c;->c(Landroid/content/Context;Ljava/lang/String;J)V

    .line 69
    .line 70
    .line 71
    const/4 v3, 0x1

    .line 72
    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    .line 73
    .line 74
    sget-object v0, Lkwai/c/a$c;->b:Lkwai/c/a$c;

    .line 75
    .line 76
    iget-object v0, v0, Lkwai/c/a$c;->a:Lkwai/c/a;

    .line 77
    .line 78
    new-instance v1, Lec/f;

    .line 79
    .line 80
    invoke-direct {v1, p0}, Lec/f;-><init>(Lkwai/a/e;)V

    .line 81
    .line 82
    .line 83
    const-string v2, "https://api.e.kuaishou.com/rest/config/client/v1/open/globalId"

    .line 84
    .line 85
    invoke-virtual {v0, v2, v1}, Lkwai/c/a;->b(Ljava/lang/String;Lgc/d;)V

    .line 86
    .line 87
    .line 88
    :cond_4
    sget-object v0, Lkwai/a/a$b;->b:Lkwai/a/a$b;

    .line 89
    .line 90
    iget-object v0, v0, Lkwai/a/a$b;->a:Lkwai/a/a;

    .line 91
    .line 92
    iget-object v1, p0, Lkwai/a/e;->c:Landroid/content/Context;

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Lkwai/a/a;->b(Landroid/content/Context;)V

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_5
    iget-object v0, p0, Lkwai/a/e;->h:Landroid/os/Handler;

    .line 99
    .line 100
    new-instance v3, Lkwai/a/e$a;

    .line 101
    .line 102
    invoke-direct {v3, p0}, Lkwai/a/e$a;-><init>(Lkwai/a/e;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lkwai/a/e;->c()Z

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-eqz v4, :cond_6

    .line 110
    .line 111
    const-wide/16 v1, 0x3e8

    .line 112
    .line 113
    :cond_6
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .line 115
    .line 116
    :goto_2
    monitor-exit p0

    .line 117
    return-void

    .line 118
    :catchall_0
    move-exception v0

    .line 119
    monitor-exit p0

    .line 120
    throw v0
.end method

.method public final h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lkwai/a/e;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lfc/a;

    .line 18
    .line 19
    sget-object v2, Lkwai/c/a$c;->b:Lkwai/c/a$c;

    .line 20
    .line 21
    iget-object v2, v2, Lkwai/c/a$c;->a:Lkwai/c/a;

    .line 22
    .line 23
    const-string v3, "https://ad.partner.gifshow.com/api/v2/sdk/log?token=dee6172daef74f0895c7d185956ac0a7"

    .line 24
    .line 25
    invoke-virtual {v2, v3, v1}, Lkwai/c/a;->a(Ljava/lang/String;Lfc/a;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public final declared-synchronized i()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lkwai/a/e;->a:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0x1

    .line 5
    .line 6
    iput v1, p0, Lkwai/a/e;->a:I

    .line 7
    .line 8
    const/16 v1, 0xa

    .line 9
    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lkwai/a/e;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    :cond_0
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    monitor-exit p0

    .line 19
    throw v0
.end method
