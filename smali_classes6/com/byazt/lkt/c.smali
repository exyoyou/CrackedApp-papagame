.class public Lcom/byazt/lkt/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x221,
        0x14
    }
.end annotation


# static fields
.field public static volatile a:Ljava/lang/String; = ""

.field public static volatile c:Lcom/byazt/lkt/c;

.field public static volatile i:Lcom/byazt/qh/uj;


# instance fields
.field public volatile n:Ljava/lang/String;

.field public final sp:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public tt:Lcom/volcengine/mobsecBiz/metasec/ml/PglMSManager;

.field public final uj:Ljava/lang/String;

.field public volatile ve:Z

.field public volatile x:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/byazt/lkt/c;->sp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    const v0, 0x1869f

    .line 13
    .line 14
    .line 15
    iput v0, p0, Lcom/byazt/lkt/c;->x:I

    .line 16
    .line 17
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/byazt/omf/x;->rl()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lcom/byazt/omf/x;->nu()Lcom/byazt/dj/uj;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/byazt/dj/uj;->isCanUsePhoneState()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const/16 v3, 0x122

    .line 40
    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/byazt/dj/uj;->isCanUseWifiState()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/byazt/dj/uj;->isCanUseWriteExternal()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_1

    .line 54
    .line 55
    :cond_0
    iput v3, p0, Lcom/byazt/lkt/c;->x:I

    .line 56
    .line 57
    :cond_1
    invoke-virtual {v1}, Lcom/byazt/dj/uj;->isCanUseAndroidId()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_2

    .line 62
    .line 63
    iput v3, p0, Lcom/byazt/lkt/c;->x:I

    .line 64
    .line 65
    :cond_2
    const/4 v1, 0x0

    .line 66
    iput-object v1, p0, Lcom/byazt/lkt/c;->n:Ljava/lang/String;

    .line 67
    .line 68
    iput-object v0, p0, Lcom/byazt/lkt/c;->uj:Ljava/lang/String;

    .line 69
    .line 70
    invoke-direct {p0, p1}, Lcom/byazt/lkt/c;->n(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    iput-boolean p1, p0, Lcom/byazt/lkt/c;->ve:Z

    .line 75
    .line 76
    return-void
.end method

.method public static c()Lcom/byazt/lkt/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/lkt/c;->c:Lcom/byazt/lkt/c;

    return-object v0
.end method

.method public static c(Z)Lcom/byazt/lkt/c;
    .locals 2

    .line 15
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 16
    sget-object v0, Lcom/byazt/lkt/c;->i:Lcom/byazt/qh/uj;

    if-eqz v0, :cond_1

    .line 17
    sget-object p0, Lcom/byazt/lkt/c;->c:Lcom/byazt/lkt/c;

    if-nez p0, :cond_0

    .line 18
    sget-object p0, Lcom/byazt/lkt/c;->i:Lcom/byazt/qh/uj;

    invoke-static {p0}, Lcom/byazt/aas/gu;->ve(Lcom/byazt/qh/uj;)Ljava/lang/String;

    move-result-object p0

    .line 19
    invoke-static {p0}, Lcom/byazt/lkt/c;->uj(Ljava/lang/String;)Lcom/byazt/lkt/c;

    move-result-object p0

    return-object p0

    .line 20
    :cond_0
    sget-object p0, Lcom/byazt/lkt/c;->c:Lcom/byazt/lkt/c;

    return-object p0

    :cond_1
    if-eqz p0, :cond_2

    const-string p0, "error"

    .line 21
    invoke-static {p0}, Lcom/byazt/lkt/c;->uj(Ljava/lang/String;)Lcom/byazt/lkt/c;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1

    .line 22
    :cond_3
    invoke-static {v1}, Lcom/byazt/lkt/c;->uj(Ljava/lang/String;)Lcom/byazt/lkt/c;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/byazt/qh/uj;)V
    .locals 0

    .line 13
    sput-object p0, Lcom/byazt/lkt/c;->i:Lcom/byazt/qh/uj;

    const/4 p0, 0x1

    .line 14
    invoke-static {p0}, Lcom/byazt/lkt/c;->c(Z)Lcom/byazt/lkt/c;

    return-void
.end method

.method private n(Ljava/lang/String;)Z
    .locals 6

    .line 1
    const-string v0, "1371"

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Lcom/volcengine/mobsecBiz/metasec/ml/PglMSConfig$Builder;

    .line 8
    .line 9
    iget-object v3, p0, Lcom/byazt/lkt/c;->uj:Ljava/lang/String;

    .line 10
    .line 11
    const-string v4, "THYFfhd167Y/Etj/JFI+OYhGnAsIhCvIXKQbbKuslfRMO6XQmCuZImqOyljyF6dQ900Hy8ecQzUcHu72ks7Xvvncqt7BZjf4VSth/OzZbJlDJqtayy2lcb5mqCQUzE5fIvFXAZkyxl+SRzGnzUojBcyqITZ3bGRvteMi+qu/15oKM3BWY0IDJ9Ry5FUGfzt+FyCqvZI8PFQNAzvZXcWHlJoRXydZUjUbtEy/AFUvusIO1HDx"

    .line 12
    .line 13
    iget v5, p0, Lcom/byazt/lkt/c;->x:I

    .line 14
    .line 15
    invoke-direct {v2, v0, v3, v4, v5}, Lcom/volcengine/mobsecBiz/metasec/ml/PglMSConfig$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    new-instance v3, Lcom/byazt/lkt/c$1;

    .line 19
    .line 20
    invoke-direct {v3, p0}, Lcom/byazt/lkt/c$1;-><init>(Lcom/byazt/lkt/c;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v3}, Lms/bz/bd/c/Pgl/pblv$pgla;->addDataObserver(Lcom/volcengine/mobsecBiz/metasec/listener/PglITokenObserver;)Lms/bz/bd/c/Pgl/pblv$pblb;

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v3}, Lcom/byazt/omf/x;->sp()Z

    .line 31
    .line 32
    .line 33
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    const-string v4, "1"

    .line 35
    .line 36
    if-nez v3, :cond_0

    .line 37
    .line 38
    :try_start_1
    const-string p1, "kOA1"

    .line 39
    .line 40
    invoke-virtual {v2, p1, v4}, Lcom/volcengine/mobsecBiz/metasec/ml/PglMSConfig$Builder;->addAdvanceInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/volcengine/mobsecBiz/metasec/ml/PglMSConfig$Builder;

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v3}, Lcom/byazt/omf/x;->da()Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-nez v3, :cond_1

    .line 53
    .line 54
    invoke-virtual {v2, p1}, Lcom/volcengine/mobsecBiz/metasec/ml/PglMSConfig$Builder;->setOaid(Ljava/lang/String;)Lcom/volcengine/mobsecBiz/metasec/ml/PglMSConfig$Builder;

    .line 55
    .line 56
    .line 57
    :cond_1
    :goto_0
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1}, Lcom/byazt/omf/x;->uj()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_2

    .line 66
    .line 67
    const-string p1, "kS1"

    .line 68
    .line 69
    invoke-virtual {v2, p1, v4}, Lcom/volcengine/mobsecBiz/metasec/ml/PglMSConfig$Builder;->addAdvanceInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/volcengine/mobsecBiz/metasec/ml/PglMSConfig$Builder;

    .line 70
    .line 71
    .line 72
    :cond_2
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1}, Lcom/byazt/omf/x;->sl()Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-nez p1, :cond_3

    .line 81
    .line 82
    const-string p1, "kDisableBlueToothCollection"

    .line 83
    .line 84
    invoke-virtual {v2, p1, v4}, Lcom/volcengine/mobsecBiz/metasec/ml/PglMSConfig$Builder;->addAdvanceInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/volcengine/mobsecBiz/metasec/ml/PglMSConfig$Builder;

    .line 85
    .line 86
    .line 87
    :cond_3
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1}, Lcom/byazt/omf/x;->u()Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-nez p1, :cond_4

    .line 96
    .line 97
    const-string p1, "kDisableIpCollection"

    .line 98
    .line 99
    invoke-virtual {v2, p1, v4}, Lcom/volcengine/mobsecBiz/metasec/ml/PglMSConfig$Builder;->addAdvanceInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/volcengine/mobsecBiz/metasec/ml/PglMSConfig$Builder;

    .line 100
    .line 101
    .line 102
    :cond_4
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1}, Lcom/byazt/omf/x;->nu()Lcom/byazt/dj/uj;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    if-eqz p1, :cond_5

    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/byazt/dj/uj;->alist()Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-nez p1, :cond_5

    .line 117
    .line 118
    const-string p1, "kDisableAppListCollection"

    .line 119
    .line 120
    invoke-virtual {v2, p1, v4}, Lcom/volcengine/mobsecBiz/metasec/ml/PglMSConfig$Builder;->addAdvanceInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/volcengine/mobsecBiz/metasec/ml/PglMSConfig$Builder;

    .line 121
    .line 122
    .line 123
    const-string p1, "kDisableImeListCollection"

    .line 124
    .line 125
    invoke-virtual {v2, p1, v4}, Lcom/volcengine/mobsecBiz/metasec/ml/PglMSConfig$Builder;->addAdvanceInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/volcengine/mobsecBiz/metasec/ml/PglMSConfig$Builder;

    .line 126
    .line 127
    .line 128
    :cond_5
    iget-object p1, p0, Lcom/byazt/lkt/c;->n:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v2, p1}, Lcom/volcengine/mobsecBiz/metasec/ml/PglMSConfig$Builder;->setDeviceID(Ljava/lang/String;)Lcom/volcengine/mobsecBiz/metasec/ml/PglMSConfig$Builder;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    const/4 v2, 0x1

    .line 135
    invoke-virtual {p1, v2}, Lcom/volcengine/mobsecBiz/metasec/ml/PglMSConfig$Builder;->setClientType(I)Lcom/volcengine/mobsecBiz/metasec/ml/PglMSConfig$Builder;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {p1}, Lcom/volcengine/mobsecBiz/metasec/ml/PglMSConfig$Builder;->build()Lcom/volcengine/mobsecBiz/metasec/ml/PglMSConfig;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-static {v1, p1}, Lcom/volcengine/mobsecBiz/metasec/ml/PglMSManagerUtils;->init(Landroid/content/Context;Lcom/volcengine/mobsecBiz/metasec/ml/PglMSConfig;)Z

    .line 144
    .line 145
    .line 146
    invoke-static {v0}, Lcom/volcengine/mobsecBiz/metasec/ml/PglMSManagerUtils;->initToken(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-direct {p0}, Lcom/byazt/lkt/c;->ve()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    .line 151
    .line 152
    return v2

    .line 153
    :catchall_0
    move-exception p1

    .line 154
    const-string v0, "MSSdkImpl"

    .line 155
    .line 156
    const-string v1, "appid \u4e3a\u7a7a\uff0c\u521d\u59cb\u5316\u5931\u8d25\uff01"

    .line 157
    .line 158
    invoke-static {v0, v1, p1}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    .line 160
    .line 161
    const/4 p1, 0x0

    .line 162
    return p1
.end method

.method public static tt()Ljava/lang/String;
    .locals 1

    .line 5
    sget-object v0, Lcom/byazt/lkt/c;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/by/uj;->nu()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/byazt/lkt/c;->a:Ljava/lang/String;

    .line 7
    :cond_0
    sget-object v0, Lcom/byazt/lkt/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static uj(Ljava/lang/String;)Lcom/byazt/lkt/c;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/lkt/c;->c:Lcom/byazt/lkt/c;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/byazt/lkt/c;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/byazt/lkt/c;->c:Lcom/byazt/lkt/c;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/byazt/lkt/c;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/byazt/lkt/c;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/byazt/lkt/c;->c:Lcom/byazt/lkt/c;

    .line 18
    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0

    .line 24
    :cond_1
    :goto_0
    sget-object p0, Lcom/byazt/lkt/c;->c:Lcom/byazt/lkt/c;

    .line 25
    .line 26
    return-object p0
.end method

.method public static synthetic ve(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    sput-object p0, Lcom/byazt/lkt/c;->a:Ljava/lang/String;

    return-object p0
.end method

.method private ve()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/lkt/c;->tt:Lcom/volcengine/mobsecBiz/metasec/ml/PglMSManager;

    if-nez v0, :cond_0

    const-string v0, "1371"

    .line 3
    invoke-static {v0}, Lcom/volcengine/mobsecBiz/metasec/ml/PglMSManagerUtils;->get(Ljava/lang/String;)Lcom/volcengine/mobsecBiz/metasec/ml/PglMSManager;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/lkt/c;->tt:Lcom/volcengine/mobsecBiz/metasec/ml/PglMSManager;

    :cond_0
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;[B)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7
    iget-boolean v0, p0, Lcom/byazt/lkt/c;->ve:Z

    if-nez v0, :cond_0

    .line 8
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/byazt/lkt/c;->ve()V

    .line 10
    iget-object v0, p0, Lcom/byazt/lkt/c;->tt:Lcom/volcengine/mobsecBiz/metasec/ml/PglMSManager;

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/volcengine/mobsecBiz/metasec/ml/PglMSManager;->getFeatureHash(Ljava/lang/String;[B)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 12
    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/byazt/lkt/c;->ve:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/byazt/lkt/c;->ve()V

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/byazt/lkt/c;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/byazt/lkt/c;->tt:Lcom/volcengine/mobsecBiz/metasec/ml/PglMSManager;

    if-eqz v0, :cond_1

    .line 5
    iput-object p1, p0, Lcom/byazt/lkt/c;->n:Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lcom/byazt/lkt/c;->tt:Lcom/volcengine/mobsecBiz/metasec/ml/PglMSManager;

    invoke-virtual {v0, p1}, Lcom/volcengine/mobsecBiz/metasec/ml/PglMSManager;->setDeviceID(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public tt(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/lkt/c;->ve:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/byazt/lkt/c;->ve()V

    .line 3
    iget-object v0, p0, Lcom/byazt/lkt/c;->tt:Lcom/volcengine/mobsecBiz/metasec/ml/PglMSManager;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lcom/volcengine/mobsecBiz/metasec/ml/PglMSManager;->report(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
