.class public Lcom/beizi/fusion/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = null

.field public static b:Ljava/lang/String; = ""

.field private static c:Ljava/lang/String; = "AdManager"

.field private static d:Lcom/beizi/fusion/c/b;

.field private static e:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;


# instance fields
.field private f:Landroid/content/Context;

.field private g:Z

.field private h:Lcom/beizi/fusion/update/b;

.field private i:Lcom/beizi/fusion/events/b;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/beizi/fusion/BeiZiInitCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/beizi/fusion/c/b;->g:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/beizi/fusion/c/b;->l:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/beizi/fusion/c/b;->m:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/beizi/fusion/c/b;->n:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/beizi/fusion/c/b;->o:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/beizi/fusion/c/b;->p:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/beizi/fusion/c/b;->q:Z

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/beizi/fusion/c/b;->r:Z

    .line 21
    .line 22
    const-string v0, "0"

    .line 23
    .line 24
    iput-object v0, p0, Lcom/beizi/fusion/c/b;->s:Ljava/lang/String;

    .line 25
    .line 26
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/beizi/fusion/c/b;->t:Ljava/util/List;

    .line 32
    .line 33
    return-void
.end method

.method private A()V
    .locals 10

    .line 1
    const-string v0, "0"

    .line 2
    .line 3
    const-string v1, "SM_STATUS"

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/beizi/fusion/c/b;->f:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v2}, Lcom/beizi/fusion/model/ResponseInfo;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/model/ResponseInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lcom/beizi/fusion/model/ResponseInfo;->getSmFlag()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_6

    .line 20
    .line 21
    iget-object v2, p0, Lcom/beizi/fusion/c/b;->f:Landroid/content/Context;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-static {v2, v1, v4}, Lcom/beizi/fusion/tool/as;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/lang/Integer;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    const-string v4, "SM_STATUS_EXPIRE_TIME"

    .line 39
    .line 40
    const/4 v5, 0x3

    .line 41
    const/4 v6, 0x1

    .line 42
    if-ne v2, v6, :cond_0

    .line 43
    .line 44
    :try_start_1
    iget-object v2, p0, Lcom/beizi/fusion/c/b;->f:Landroid/content/Context;

    .line 45
    .line 46
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    invoke-static {v2, v1, v7}, Lcom/beizi/fusion/tool/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-object v2, p0, Lcom/beizi/fusion/c/b;->f:Landroid/content/Context;

    .line 54
    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 56
    .line 57
    .line 58
    move-result-wide v7

    .line 59
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    invoke-static {v2, v4, v7}, Lcom/beizi/fusion/tool/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    const/4 v2, 0x3

    .line 67
    :cond_0
    const/4 v7, 0x2

    .line 68
    if-eqz v2, :cond_2

    .line 69
    .line 70
    if-ne v2, v7, :cond_1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    move v6, v2

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/beizi/fusion/c/b;->f:Landroid/content/Context;

    .line 76
    .line 77
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    invoke-static {v2, v1, v8}, Lcom/beizi/fusion/tool/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    :goto_1
    if-ne v6, v5, :cond_4

    .line 85
    .line 86
    iget-object v2, p0, Lcom/beizi/fusion/c/b;->f:Landroid/content/Context;

    .line 87
    .line 88
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 89
    .line 90
    .line 91
    move-result-wide v5

    .line 92
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-static {v2, v4, v5}, Lcom/beizi/fusion/tool/as;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    check-cast v2, Ljava/lang/Long;

    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 103
    .line 104
    .line 105
    move-result-wide v5

    .line 106
    const-wide/16 v7, 0x0

    .line 107
    .line 108
    cmp-long v9, v5, v7

    .line 109
    .line 110
    if-eqz v9, :cond_3

    .line 111
    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 113
    .line 114
    .line 115
    move-result-wide v5

    .line 116
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 117
    .line 118
    .line 119
    move-result-wide v7

    .line 120
    sub-long/2addr v5, v7

    .line 121
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 126
    .line 127
    .line 128
    move-result-wide v5

    .line 129
    const-wide/32 v7, 0x337f9800

    .line 130
    .line 131
    .line 132
    cmp-long v2, v5, v7

    .line 133
    .line 134
    if-lez v2, :cond_3

    .line 135
    .line 136
    iget-object v2, p0, Lcom/beizi/fusion/c/b;->f:Landroid/content/Context;

    .line 137
    .line 138
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-static {v2, v1, v3}, Lcom/beizi/fusion/tool/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    iget-object v1, p0, Lcom/beizi/fusion/c/b;->f:Landroid/content/Context;

    .line 146
    .line 147
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 148
    .line 149
    .line 150
    move-result-wide v2

    .line 151
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-static {v1, v4, v0}, Lcom/beizi/fusion/tool/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    :cond_3
    return-void

    .line 159
    :cond_4
    iget-object v0, p0, Lcom/beizi/fusion/c/b;->f:Landroid/content/Context;

    .line 160
    .line 161
    invoke-static {v0}, Lcom/beizi/fusion/sm/b/a;->a(Landroid/content/Context;)Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-eqz v0, :cond_5

    .line 166
    .line 167
    iget-object v0, p0, Lcom/beizi/fusion/c/b;->f:Landroid/content/Context;

    .line 168
    .line 169
    new-instance v2, Lcom/beizi/fusion/c/b$3;

    .line 170
    .line 171
    invoke-direct {v2, p0}, Lcom/beizi/fusion/c/b$3;-><init>(Lcom/beizi/fusion/c/b;)V

    .line 172
    .line 173
    .line 174
    invoke-static {v0, v2}, Lcom/beizi/fusion/sm/b/a;->a(Landroid/content/Context;Lcom/beizi/fusion/sm/b/b;)V

    .line 175
    .line 176
    .line 177
    :cond_5
    iget-object v0, p0, Lcom/beizi/fusion/c/b;->f:Landroid/content/Context;

    .line 178
    .line 179
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-static {v0, v1, v2}, Lcom/beizi/fusion/tool/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    .line 185
    .line 186
    :catchall_0
    :cond_6
    return-void
.end method

.method private B()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "HONOR"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/beizi/fusion/c/b;->f:Landroid/content/Context;

    .line 12
    .line 13
    const-string v1, "__HONOROAID__"

    .line 14
    .line 15
    const-string v2, ""

    .line 16
    .line 17
    invoke-static {v0, v1, v2}, Lcom/beizi/fusion/tool/as;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    iget-object v1, p0, Lcom/beizi/fusion/c/b;->f:Landroid/content/Context;

    .line 30
    .line 31
    invoke-static {v1}, Lcom/beizi/fusion/model/RequestInfo;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/model/RequestInfo;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lcom/beizi/fusion/model/RequestInfo;->getDevInfo()Lcom/beizi/fusion/model/DevInfo;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    iget-object v1, p0, Lcom/beizi/fusion/c/b;->f:Landroid/content/Context;

    .line 42
    .line 43
    invoke-static {v1}, Lcom/beizi/fusion/model/RequestInfo;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/model/RequestInfo;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lcom/beizi/fusion/model/RequestInfo;->getDevInfo()Lcom/beizi/fusion/model/DevInfo;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1, v0}, Lcom/beizi/fusion/model/DevInfo;->setHonorOaid(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    invoke-static {}, Lcom/beizi/fusion/tool/e;->b()Lcom/beizi/fusion/tool/e;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/beizi/fusion/tool/e;->c()Ljava/util/concurrent/ExecutorService;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    new-instance v1, Lcom/beizi/fusion/c/b$4;

    .line 63
    .line 64
    invoke-direct {v1, p0}, Lcom/beizi/fusion/c/b$4;-><init>(Lcom/beizi/fusion/c/b;)V

    .line 65
    .line 66
    .line 67
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    :catch_0
    :cond_1
    return-void
.end method

.method private C()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/c/b;->f:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/update/b;->a(Landroid/content/Context;)Lcom/beizi/fusion/update/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x5

    .line 8
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/update/b;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    :catch_0
    return-void
.end method

.method public static a()Lcom/beizi/fusion/c/b;
    .locals 2

    .line 2
    sget-object v0, Lcom/beizi/fusion/c/b;->d:Lcom/beizi/fusion/c/b;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/beizi/fusion/c/b;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/beizi/fusion/c/b;->d:Lcom/beizi/fusion/c/b;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/beizi/fusion/c/b;

    invoke-direct {v1}, Lcom/beizi/fusion/c/b;-><init>()V

    sput-object v1, Lcom/beizi/fusion/c/b;->d:Lcom/beizi/fusion/c/b;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lcom/beizi/fusion/c/b;->d:Lcom/beizi/fusion/c/b;

    return-object v0
.end method

.method static synthetic a(Lcom/beizi/fusion/c/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/c/b;->y()V

    return-void
.end method

.method private declared-synchronized b(Lcom/beizi/fusion/BeiZiInitCallBack;)V
    .locals 1

    monitor-enter p0

    .line 23
    :try_start_0
    invoke-static {}, Lcom/beizi/fusion/BeiZis;->isIsSyncInit()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 24
    monitor-exit p0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 25
    :try_start_1
    iget-boolean v0, p0, Lcom/beizi/fusion/c/b;->g:Z

    if-eqz v0, :cond_1

    .line 26
    invoke-interface {p1}, Lcom/beizi/fusion/BeiZiInitCallBack;->success()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    monitor-exit p0

    return-void

    .line 28
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/beizi/fusion/c/b;->t:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    monitor-exit p0

    return-void

    :cond_2
    const/4 p1, 0x1

    .line 30
    :try_start_3
    iput-boolean p1, p0, Lcom/beizi/fusion/c/b;->g:Z

    .line 31
    iget-object p1, p0, Lcom/beizi/fusion/c/b;->t:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/beizi/fusion/BeiZiInitCallBack;

    .line 32
    invoke-interface {v0}, Lcom/beizi/fusion/BeiZiInitCallBack;->success()V

    goto :goto_0

    .line 33
    :cond_3
    iget-object p1, p0, Lcom/beizi/fusion/c/b;->t:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 34
    :catchall_0
    monitor-exit p0

    return-void
.end method

.method static synthetic b(Lcom/beizi/fusion/c/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/c/b;->B()V

    return-void
.end method

.method static synthetic c(Lcom/beizi/fusion/c/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/c/b;->A()V

    return-void
.end method

.method static synthetic d(Lcom/beizi/fusion/c/b;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/c/b;->f:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e(Lcom/beizi/fusion/c/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/c/b;->z()V

    return-void
.end method

.method static synthetic x()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/beizi/fusion/c/b;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private y()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/beizi/fusion/c/b;->o:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/beizi/fusion/tool/n;->a()Lcom/beizi/fusion/tool/n;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/beizi/fusion/c/b;->f:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/tool/n;->a(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/c/b;->f:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/beizi/fusion/model/ResponseInfo;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/model/ResponseInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/beizi/fusion/model/ResponseInfo;->init()Lcom/beizi/fusion/model/ResponseInfo;

    .line 21
    .line 22
    .line 23
    iget-boolean v0, p0, Lcom/beizi/fusion/c/b;->m:Z

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/beizi/fusion/c/b;->i:Lcom/beizi/fusion/events/b;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->a:Lcom/beizi/fusion/events/a$i;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/a$l;->a(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/beizi/fusion/c/b;->n()V

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/beizi/fusion/c/b;->g()V

    .line 39
    .line 40
    .line 41
    iget-boolean v0, p0, Lcom/beizi/fusion/c/b;->m:Z

    .line 42
    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    iget-object v0, p0, Lcom/beizi/fusion/c/b;->i:Lcom/beizi/fusion/events/b;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->a:Lcom/beizi/fusion/events/a$i;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/beizi/fusion/events/a$l;->a()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-ne v0, v1, :cond_2

    .line 54
    .line 55
    iget-object v0, p0, Lcom/beizi/fusion/c/b;->i:Lcom/beizi/fusion/events/b;

    .line 56
    .line 57
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->a:Lcom/beizi/fusion/events/a$i;

    .line 58
    .line 59
    const/4 v1, 0x2

    .line 60
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/a$l;->a(I)V

    .line 61
    .line 62
    .line 63
    :cond_2
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, v0}, Lcom/beizi/fusion/c/b;->b(Lcom/beizi/fusion/BeiZiInitCallBack;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method private z()V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/beizi/fusion/d/a/b;

    .line 2
    .line 3
    sget-object v1, Lcom/beizi/fusion/tool/ag;->b:Lcom/beizi/fusion/d/a/b$a;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/beizi/fusion/d/a/b;-><init>(Lcom/beizi/fusion/d/a/b$a;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/beizi/fusion/c/b;->f:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/d/a/b;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    :catchall_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/beizi/fusion/c/b;
    .locals 0

    .line 8
    sput-object p1, Lcom/beizi/fusion/c/b;->e:Ljava/lang/String;

    .line 9
    sget-object p1, Lcom/beizi/fusion/c/b;->d:Lcom/beizi/fusion/c/b;

    return-object p1
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 10
    const-class v0, Lcom/beizi/fusion/c/b;

    monitor-enter v0

    .line 11
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init start applicationCode\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_3

    .line 12
    iget-boolean v1, p0, Lcom/beizi/fusion/c/b;->g:Z

    if-nez v1, :cond_1

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/beizi/fusion/c/b;->f:Landroid/content/Context;

    .line 14
    invoke-static {}, Lcom/beizi/fusion/tool/at;->a()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/beizi/fusion/c/b;->b:Ljava/lang/String;

    .line 15
    new-instance p1, Lcom/beizi/fusion/events/EventBean;

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v7, ""

    const-string v8, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    move-object v1, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v10}, Lcom/beizi/fusion/events/EventBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance v1, Lcom/beizi/fusion/events/b;

    invoke-direct {v1, p1}, Lcom/beizi/fusion/events/b;-><init>(Lcom/beizi/fusion/events/EventBean;)V

    iput-object v1, p0, Lcom/beizi/fusion/c/b;->i:Lcom/beizi/fusion/events/b;

    .line 17
    sput-object p2, Lcom/beizi/fusion/c/b;->a:Ljava/lang/String;

    .line 18
    sput-object p3, Lcom/beizi/fusion/c/b;->j:Ljava/lang/String;

    .line 19
    sput-object p4, Lcom/beizi/fusion/c/b;->k:Ljava/lang/String;

    .line 20
    iget-object p2, p0, Lcom/beizi/fusion/c/b;->i:Lcom/beizi/fusion/events/b;

    iget-object p3, p2, Lcom/beizi/fusion/events/b;->a:Lcom/beizi/fusion/events/a$i;

    invoke-virtual {p3, p2}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 21
    iget-object p2, p0, Lcom/beizi/fusion/c/b;->i:Lcom/beizi/fusion/events/b;

    invoke-virtual {p2}, Lcom/beizi/fusion/events/b;->a()Lcom/beizi/fusion/events/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/beizi/fusion/events/a;->a(Lcom/beizi/fusion/events/EventBean;)V

    .line 22
    iget-object p1, p0, Lcom/beizi/fusion/c/b;->f:Landroid/content/Context;

    invoke-static {p1}, Lcom/beizi/fusion/model/AppEventId;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/model/AppEventId;

    move-result-object p1

    invoke-virtual {p1}, Lcom/beizi/fusion/model/AppEventId;->setAppStart()V

    .line 23
    iget-object p1, p0, Lcom/beizi/fusion/c/b;->f:Landroid/content/Context;

    invoke-static {p1}, Lcom/beizi/fusion/model/AppEventId;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/model/AppEventId;

    move-result-object p1

    invoke-virtual {p1}, Lcom/beizi/fusion/model/AppEventId;->setAppSdkInit()V

    .line 24
    invoke-static {}, Lcom/beizi/fusion/tool/z;->a()Lcom/beizi/fusion/tool/z;

    move-result-object p1

    iget-object p2, p0, Lcom/beizi/fusion/c/b;->f:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/beizi/fusion/tool/z;->b(Landroid/content/Context;)V

    .line 25
    iget-object p1, p0, Lcom/beizi/fusion/c/b;->i:Lcom/beizi/fusion/events/b;

    iget-object p1, p1, Lcom/beizi/fusion/events/b;->a:Lcom/beizi/fusion/events/a$i;

    invoke-virtual {p1}, Lcom/beizi/fusion/events/a$l;->a()I

    move-result p1

    if-nez p1, :cond_2

    .line 26
    invoke-static {}, Lcom/beizi/fusion/BeiZis;->isIsSyncInit()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 27
    invoke-direct {p0}, Lcom/beizi/fusion/c/b;->y()V

    goto :goto_0

    .line 28
    :cond_0
    invoke-static {}, Lcom/beizi/fusion/tool/e;->b()Lcom/beizi/fusion/tool/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/beizi/fusion/tool/e;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lcom/beizi/fusion/c/b$1;

    invoke-direct {p2, p0}, Lcom/beizi/fusion/c/b$1;-><init>(Lcom/beizi/fusion/c/b;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lcom/beizi/fusion/c/b;->g:Z

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 30
    invoke-direct {p0, p1}, Lcom/beizi/fusion/c/b;->b(Lcom/beizi/fusion/BeiZiInitCallBack;)V

    .line 31
    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    .line 32
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Context cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcom/beizi/fusion/BeiZiInitCallBack;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/beizi/fusion/c/b;->b(Lcom/beizi/fusion/BeiZiInitCallBack;)V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "open_async"

    const-string v1, "forbid_collect_store_info"

    const-string v2, "limit_location_frequency"

    const-string v3, "open_location_frequency"

    const-string v4, "simOperator"

    const-string v5, "isCanUseSimOperator"

    const-string v6, "allow_use_app_status"

    const-string v7, "forbid_verify_window_focus"

    const-string v8, "forbid_collect_crash"

    const-string v9, "speed_first_strategy"

    const-string v10, "forbid_config_network"

    if-nez p1, :cond_0

    return-void

    .line 34
    :cond_0
    :try_start_0
    invoke-interface {p1, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 35
    invoke-interface {p1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 36
    instance-of v11, v10, Ljava/lang/Boolean;

    if-eqz v11, :cond_1

    .line 37
    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    iput-boolean v10, p0, Lcom/beizi/fusion/c/b;->m:Z

    .line 38
    :cond_1
    invoke-interface {p1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 39
    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 40
    instance-of v10, v9, Ljava/lang/Boolean;

    if-eqz v10, :cond_2

    .line 41
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iput-boolean v9, p0, Lcom/beizi/fusion/c/b;->n:Z

    .line 42
    :cond_2
    invoke-interface {p1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 43
    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 44
    instance-of v9, v8, Ljava/lang/Boolean;

    if-eqz v9, :cond_3

    .line 45
    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iput-boolean v8, p0, Lcom/beizi/fusion/c/b;->o:Z

    .line 46
    :cond_3
    invoke-interface {p1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 47
    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 48
    instance-of v8, v7, Ljava/lang/Boolean;

    if-eqz v8, :cond_4

    .line 49
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iput-boolean v7, p0, Lcom/beizi/fusion/c/b;->p:Z

    .line 50
    :cond_4
    invoke-interface {p1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 51
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 52
    instance-of v7, v6, Ljava/lang/Boolean;

    if-eqz v7, :cond_5

    .line 53
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, p0, Lcom/beizi/fusion/c/b;->q:Z

    .line 54
    :cond_5
    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 55
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 56
    instance-of v6, v5, Ljava/lang/Boolean;

    if-eqz v6, :cond_6

    .line 57
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lcom/beizi/fusion/c/b;->r:Z

    .line 58
    :cond_6
    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 59
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 60
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 61
    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/beizi/fusion/c/b;->s:Ljava/lang/String;

    .line 62
    :cond_7
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 63
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 64
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_8

    .line 65
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/beizi/fusion/c/b;->v:Z

    .line 66
    :cond_8
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 67
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 68
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_9

    .line 69
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/beizi/fusion/c/b;->w:Z

    .line 70
    :cond_9
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 71
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 72
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_a

    .line 73
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/beizi/fusion/c/b;->x:Z

    .line 74
    :cond_a
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 75
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 76
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 77
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/beizi/fusion/c/b;->y:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_b
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lcom/beizi/fusion/c/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/beizi/fusion/c/b;->f:Landroid/content/Context;

    if-nez v1, :cond_1

    return-object v0

    .line 5
    :cond_1
    iget-boolean v1, p0, Lcom/beizi/fusion/c/b;->g:Z

    if-nez v1, :cond_2

    return-object v0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/beizi/fusion/c/b;->h()V

    .line 7
    iget-object v1, p0, Lcom/beizi/fusion/c/b;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/beizi/fusion/model/ResponseInfo;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/model/ResponseInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/beizi/fusion/model/ResponseInfo;->getAdSpaceBean(Ljava/lang/String;)Lcom/beizi/fusion/model/AdSpacesBean;

    move-result-object p1

    if-nez p1, :cond_3

    .line 8
    invoke-direct {p0}, Lcom/beizi/fusion/c/b;->C()V

    .line 9
    iget-object p1, p0, Lcom/beizi/fusion/c/b;->f:Landroid/content/Context;

    invoke-static {p1, v0, v0}, Lcom/beizi/fusion/c/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 10
    :cond_3
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean;->getBuyer()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 11
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    .line 12
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const-string v2, "S2S"

    .line 13
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getBidType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 14
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getAppId()Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_7
    move-object p1, v0

    move-object v1, p1

    .line 16
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_2

    .line 17
    :cond_8
    iget-object v2, p0, Lcom/beizi/fusion/c/b;->f:Landroid/content/Context;

    invoke-static {v2, p1, v1}, Lcom/beizi/fusion/c/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 18
    :cond_9
    :goto_2
    invoke-direct {p0}, Lcom/beizi/fusion/c/b;->C()V

    .line 19
    iget-object p1, p0, Lcom/beizi/fusion/c/b;->f:Landroid/content/Context;

    invoke-static {p1, v0, v0}, Lcom/beizi/fusion/c/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 20
    :cond_a
    :goto_3
    invoke-direct {p0}, Lcom/beizi/fusion/c/b;->C()V

    .line 21
    iget-object p1, p0, Lcom/beizi/fusion/c/b;->f:Landroid/content/Context;

    invoke-static {p1, v0, v0}, Lcom/beizi/fusion/c/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 22
    :catch_0
    iget-object p1, p0, Lcom/beizi/fusion/c/b;->f:Landroid/content/Context;

    invoke-static {p1, v0, v0}, Lcom/beizi/fusion/c/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lcom/beizi/fusion/c/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lcom/beizi/fusion/c/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method public e()Landroid/content/Context;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/beizi/fusion/c/b;->f:Landroid/content/Context;

    return-object v0
.end method

.method public f()Lcom/beizi/fusion/events/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/c/b;->i:Lcom/beizi/fusion/events/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/beizi/fusion/tool/ah;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/beizi/fusion/BeiZis;->isLimitPersonalAds()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-static {}, Lcom/beizi/fusion/BeiZis;->getCustomController()Lcom/beizi/fusion/BeiZiCustomController;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-static {}, Lcom/beizi/fusion/BeiZis;->getCustomController()Lcom/beizi/fusion/BeiZiCustomController;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-static {}, Lcom/beizi/fusion/BeiZis;->getCustomController()Lcom/beizi/fusion/BeiZiCustomController;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/beizi/fusion/BeiZiCustomController;->isCanUseOaid()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/c/b;->f:Landroid/content/Context;

    .line 36
    .line 37
    const-string v1, "__OAID__"

    .line 38
    .line 39
    const-string v2, ""

    .line 40
    .line 41
    invoke-static {v0, v1, v2}, Lcom/beizi/fusion/tool/as;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_1

    .line 52
    .line 53
    iget-object v1, p0, Lcom/beizi/fusion/c/b;->f:Landroid/content/Context;

    .line 54
    .line 55
    invoke-static {v1}, Lcom/beizi/fusion/model/RequestInfo;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/model/RequestInfo;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lcom/beizi/fusion/model/RequestInfo;->getDevInfo()Lcom/beizi/fusion/model/DevInfo;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    if-eqz v1, :cond_1

    .line 64
    .line 65
    iget-object v1, p0, Lcom/beizi/fusion/c/b;->f:Landroid/content/Context;

    .line 66
    .line 67
    invoke-static {v1}, Lcom/beizi/fusion/model/RequestInfo;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/model/RequestInfo;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1}, Lcom/beizi/fusion/model/RequestInfo;->getDevInfo()Lcom/beizi/fusion/model/DevInfo;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1, v0}, Lcom/beizi/fusion/model/DevInfo;->setOaid(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :cond_1
    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/beizi/fusion/c/b;->u:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/beizi/fusion/c/b;->u:Z

    .line 8
    .line 9
    invoke-static {}, Lcom/beizi/fusion/tool/ah;->b()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-static {}, Lcom/beizi/fusion/BeiZis;->isLimitPersonalAds()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    invoke-static {}, Lcom/beizi/fusion/BeiZis;->getCustomController()Lcom/beizi/fusion/BeiZiCustomController;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-static {}, Lcom/beizi/fusion/BeiZis;->getCustomController()Lcom/beizi/fusion/BeiZiCustomController;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-static {}, Lcom/beizi/fusion/BeiZis;->getCustomController()Lcom/beizi/fusion/BeiZiCustomController;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/beizi/fusion/BeiZiCustomController;->isCanUseOaid()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    :cond_1
    invoke-static {}, Lcom/beizi/fusion/tool/e;->b()Lcom/beizi/fusion/tool/e;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/beizi/fusion/tool/e;->c()Ljava/util/concurrent/ExecutorService;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-instance v1, Lcom/beizi/fusion/c/b$2;

    .line 52
    .line 53
    invoke-direct {v1, p0}, Lcom/beizi/fusion/c/b$2;-><init>(Lcom/beizi/fusion/c/b;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    return-void
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/beizi/fusion/c/b;->m:Z

    .line 2
    .line 3
    return v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/beizi/fusion/c/b;->n:Z

    .line 2
    .line 3
    return v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/beizi/fusion/c/b;->q:Z

    .line 2
    .line 3
    return v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/beizi/fusion/c/b;->y:Z

    .line 2
    .line 3
    return v0
.end method

.method public m()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/c/b;->h()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/beizi/fusion/c/b;->m:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/beizi/fusion/c/b;->g:Z

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/c/b;->f:Landroid/content/Context;

    .line 15
    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    return-void

    .line 19
    :cond_2
    iget-object v0, p0, Lcom/beizi/fusion/c/b;->i:Lcom/beizi/fusion/events/b;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->a:Lcom/beizi/fusion/events/a$i;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/beizi/fusion/events/a$l;->a()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_3

    .line 28
    .line 29
    iget-object v0, p0, Lcom/beizi/fusion/c/b;->i:Lcom/beizi/fusion/events/b;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->a:Lcom/beizi/fusion/events/a$i;

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/a$l;->a(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/beizi/fusion/c/b;->i:Lcom/beizi/fusion/events/b;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->a:Lcom/beizi/fusion/events/a$i;

    .line 40
    .line 41
    const/4 v1, 0x2

    .line 42
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/a$l;->a(I)V

    .line 43
    .line 44
    .line 45
    :cond_3
    return-void
.end method

.method public n()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/c/b;->f:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/beizi/fusion/c/b;->h:Lcom/beizi/fusion/update/b;

    .line 7
    .line 8
    if-nez v1, :cond_2

    .line 9
    .line 10
    invoke-static {v0}, Lcom/beizi/fusion/model/ResponseInfo;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/model/ResponseInfo;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/beizi/fusion/model/ResponseInfo;->isInit()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/beizi/fusion/c/b;->f:Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/beizi/fusion/events/EventCar;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/events/EventCar;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v11, Lcom/beizi/fusion/events/EventBean;

    .line 27
    .line 28
    sget-object v2, Lcom/beizi/fusion/c/b;->b:Ljava/lang/String;

    .line 29
    .line 30
    const-string v3, ""

    .line 31
    .line 32
    const-string v4, "410.000"

    .line 33
    .line 34
    const-string v5, ""

    .line 35
    .line 36
    invoke-static {}, Lcom/beizi/fusion/c/b;->a()Lcom/beizi/fusion/c/b;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lcom/beizi/fusion/c/b;->b()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    const-string v7, ""

    .line 45
    .line 46
    const-string v8, ""

    .line 47
    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 49
    .line 50
    .line 51
    move-result-wide v9

    .line 52
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    const-string v10, ""

    .line 57
    .line 58
    move-object v1, v11

    .line 59
    invoke-direct/range {v1 .. v10}, Lcom/beizi/fusion/events/EventBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v11}, Lcom/beizi/fusion/events/EventCar;->goRoad(Lcom/beizi/fusion/events/EventBean;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/beizi/fusion/c/b;->f:Landroid/content/Context;

    .line 66
    .line 67
    invoke-static {v0}, Lcom/beizi/fusion/events/EventCar;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/events/EventCar;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    new-instance v11, Lcom/beizi/fusion/events/EventBean;

    .line 72
    .line 73
    sget-object v2, Lcom/beizi/fusion/c/b;->b:Ljava/lang/String;

    .line 74
    .line 75
    const-string v3, ""

    .line 76
    .line 77
    const-string v4, "410.200"

    .line 78
    .line 79
    const-string v5, ""

    .line 80
    .line 81
    invoke-static {}, Lcom/beizi/fusion/c/b;->a()Lcom/beizi/fusion/c/b;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v1}, Lcom/beizi/fusion/c/b;->b()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    const-string v7, ""

    .line 90
    .line 91
    const-string v8, ""

    .line 92
    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 94
    .line 95
    .line 96
    move-result-wide v9

    .line 97
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v9

    .line 101
    const-string v10, ""

    .line 102
    .line 103
    move-object v1, v11

    .line 104
    invoke-direct/range {v1 .. v10}, Lcom/beizi/fusion/events/EventBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v11}, Lcom/beizi/fusion/events/EventCar;->goRoad(Lcom/beizi/fusion/events/EventBean;)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/c/b;->f:Landroid/content/Context;

    .line 112
    .line 113
    invoke-static {v0}, Lcom/beizi/fusion/events/EventCar;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/events/EventCar;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    new-instance v11, Lcom/beizi/fusion/events/EventBean;

    .line 118
    .line 119
    sget-object v2, Lcom/beizi/fusion/c/b;->b:Ljava/lang/String;

    .line 120
    .line 121
    const-string v3, ""

    .line 122
    .line 123
    const-string v4, "410.000"

    .line 124
    .line 125
    const-string v5, ""

    .line 126
    .line 127
    invoke-static {}, Lcom/beizi/fusion/c/b;->a()Lcom/beizi/fusion/c/b;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v1}, Lcom/beizi/fusion/c/b;->b()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    const-string v7, ""

    .line 136
    .line 137
    const-string v8, ""

    .line 138
    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 140
    .line 141
    .line 142
    move-result-wide v9

    .line 143
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v9

    .line 147
    const-string v10, ""

    .line 148
    .line 149
    move-object v1, v11

    .line 150
    invoke-direct/range {v1 .. v10}, Lcom/beizi/fusion/events/EventBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v11}, Lcom/beizi/fusion/events/EventCar;->goRoad(Lcom/beizi/fusion/events/EventBean;)V

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Lcom/beizi/fusion/c/b;->f:Landroid/content/Context;

    .line 157
    .line 158
    invoke-static {v0}, Lcom/beizi/fusion/events/EventCar;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/events/EventCar;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    new-instance v11, Lcom/beizi/fusion/events/EventBean;

    .line 163
    .line 164
    sget-object v2, Lcom/beizi/fusion/c/b;->b:Ljava/lang/String;

    .line 165
    .line 166
    const-string v3, ""

    .line 167
    .line 168
    const-string v4, "410.500"

    .line 169
    .line 170
    const-string v5, ""

    .line 171
    .line 172
    invoke-static {}, Lcom/beizi/fusion/c/b;->a()Lcom/beizi/fusion/c/b;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v1}, Lcom/beizi/fusion/c/b;->b()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    const-string v7, ""

    .line 181
    .line 182
    const-string v8, ""

    .line 183
    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 185
    .line 186
    .line 187
    move-result-wide v9

    .line 188
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v9

    .line 192
    const-string v10, ""

    .line 193
    .line 194
    move-object v1, v11

    .line 195
    invoke-direct/range {v1 .. v10}, Lcom/beizi/fusion/events/EventBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v11}, Lcom/beizi/fusion/events/EventCar;->goRoad(Lcom/beizi/fusion/events/EventBean;)V

    .line 199
    .line 200
    .line 201
    :goto_0
    iget-object v0, p0, Lcom/beizi/fusion/c/b;->f:Landroid/content/Context;

    .line 202
    .line 203
    invoke-static {v0}, Lcom/beizi/fusion/update/b;->a(Landroid/content/Context;)Lcom/beizi/fusion/update/b;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    iput-object v0, p0, Lcom/beizi/fusion/c/b;->h:Lcom/beizi/fusion/update/b;

    .line 208
    .line 209
    const/4 v1, 0x0

    .line 210
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/update/b;->b(I)V

    .line 211
    .line 212
    .line 213
    :cond_2
    return-void
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/beizi/fusion/c/b;->p:Z

    .line 2
    .line 3
    return v0
.end method

.method public p()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/beizi/fusion/BeiZis;->getCustomController()Lcom/beizi/fusion/BeiZiCustomController;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-static {}, Lcom/beizi/fusion/BeiZis;->getCustomController()Lcom/beizi/fusion/BeiZiCustomController;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/beizi/fusion/BeiZiCustomController;->forbidSensor()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/beizi/fusion/c/b;->f:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/beizi/fusion/model/ResponseInfo;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/model/ResponseInfo;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/beizi/fusion/model/ResponseInfo;->isOpenSensor()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    return v1

    .line 31
    :cond_0
    const/4 v0, 0x1

    .line 32
    return v0

    .line 33
    :cond_1
    return v1
.end method

.method public q()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/beizi/fusion/BeiZis;->getCustomController()Lcom/beizi/fusion/BeiZiCustomController;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-static {}, Lcom/beizi/fusion/BeiZis;->getCustomController()Lcom/beizi/fusion/BeiZiCustomController;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/beizi/fusion/BeiZiCustomController;->isCanUseAndroidId()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    return v1

    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    return v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/beizi/fusion/BeiZis;->getCustomController()Lcom/beizi/fusion/BeiZiCustomController;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-static {}, Lcom/beizi/fusion/BeiZis;->getCustomController()Lcom/beizi/fusion/BeiZiCustomController;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/beizi/fusion/BeiZiCustomController;->getAndroidId()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/beizi/fusion/c/b;->r:Z

    .line 2
    .line 3
    return v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/c/b;->s:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public u()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/beizi/fusion/c/b;->v:Z

    .line 2
    .line 3
    return v0
.end method

.method public v()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/beizi/fusion/c/b;->w:Z

    .line 2
    .line 3
    return v0
.end method

.method public w()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/beizi/fusion/c/b;->x:Z

    .line 2
    .line 3
    return v0
.end method
