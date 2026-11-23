.class public final Lcom/bytedance/pangle/LocalBroadcastManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/pangle/LocalBroadcastManager$c;,
        Lcom/bytedance/pangle/LocalBroadcastManager$tt;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final MSG_EXEC_PENDING_BROADCASTS:I = 0x1

.field public static final TAG:Ljava/lang/String; = "LocalBroadcastManager"

.field public static mInstance:Lcom/bytedance/pangle/LocalBroadcastManager;

.field public static final mLock:Ljava/lang/Object;


# instance fields
.field public final mActions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/pangle/LocalBroadcastManager$tt;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mAppContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mPendingBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/pangle/LocalBroadcastManager$c;",
            ">;"
        }
    .end annotation
.end field

.field public final mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/bytedance/pangle/receiver/PluginBroadcastReceiver;",
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/pangle/LocalBroadcastManager$tt;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/bytedance/pangle/LocalBroadcastManager;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/pangle/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/bytedance/pangle/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/bytedance/pangle/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/bytedance/pangle/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    .line 26
    .line 27
    new-instance v0, Lcom/bytedance/pangle/LocalBroadcastManager$1;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {v0, p0, p1}, Lcom/bytedance/pangle/LocalBroadcastManager$1;-><init>(Lcom/bytedance/pangle/LocalBroadcastManager;Landroid/os/Looper;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/bytedance/pangle/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    .line 37
    .line 38
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/bytedance/pangle/LocalBroadcastManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/pangle/LocalBroadcastManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/bytedance/pangle/LocalBroadcastManager;->mInstance:Lcom/bytedance/pangle/LocalBroadcastManager;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/bytedance/pangle/LocalBroadcastManager;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-direct {v1, p0}, Lcom/bytedance/pangle/LocalBroadcastManager;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/bytedance/pangle/LocalBroadcastManager;->mInstance:Lcom/bytedance/pangle/LocalBroadcastManager;

    .line 18
    .line 19
    :cond_0
    sget-object p0, Lcom/bytedance/pangle/LocalBroadcastManager;->mInstance:Lcom/bytedance/pangle/LocalBroadcastManager;

    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-object p0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method


# virtual methods
.method public executePendingBroadcasts()V
    .locals 10

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/bytedance/pangle/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/pangle/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-gtz v1, :cond_1

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :cond_1
    new-array v2, v1, [Lcom/bytedance/pangle/LocalBroadcastManager$c;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/bytedance/pangle/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    iget-object v3, p0, Lcom/bytedance/pangle/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 24
    .line 25
    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    const/4 v0, 0x0

    .line 28
    const/4 v3, 0x0

    .line 29
    :goto_0
    if-ge v3, v1, :cond_0

    .line 30
    .line 31
    aget-object v4, v2, v3

    .line 32
    .line 33
    iget-object v5, v4, Lcom/bytedance/pangle/LocalBroadcastManager$c;->tt:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    const/4 v6, 0x0

    .line 40
    :goto_1
    if-ge v6, v5, :cond_3

    .line 41
    .line 42
    iget-object v7, v4, Lcom/bytedance/pangle/LocalBroadcastManager$c;->tt:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    check-cast v7, Lcom/bytedance/pangle/LocalBroadcastManager$tt;

    .line 49
    .line 50
    iget-boolean v8, v7, Lcom/bytedance/pangle/LocalBroadcastManager$tt;->uj:Z

    .line 51
    .line 52
    if-nez v8, :cond_2

    .line 53
    .line 54
    iget-object v7, v7, Lcom/bytedance/pangle/LocalBroadcastManager$tt;->tt:Lcom/bytedance/pangle/receiver/PluginBroadcastReceiver;

    .line 55
    .line 56
    iget-object v8, p0, Lcom/bytedance/pangle/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    .line 57
    .line 58
    iget-object v9, v4, Lcom/bytedance/pangle/LocalBroadcastManager$c;->c:Landroid/content/Intent;

    .line 59
    .line 60
    invoke-virtual {v7, v8, v9}, Lcom/bytedance/pangle/receiver/PluginBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    move-exception v1

    .line 70
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    throw v1
.end method

.method public registerReceiver(Lcom/bytedance/pangle/receiver/PluginBroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Lcom/bytedance/pangle/LocalBroadcastManager$tt;

    .line 5
    .line 6
    invoke-direct {v1, p2, p1}, Lcom/bytedance/pangle/LocalBroadcastManager$tt;-><init>(Landroid/content/IntentFilter;Lcom/bytedance/pangle/receiver/PluginBroadcastReceiver;)V

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Lcom/bytedance/pangle/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Ljava/util/ArrayList;

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    new-instance v2, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    .line 24
    .line 25
    iget-object v4, p0, Lcom/bytedance/pangle/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    :goto_0
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countActions()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-ge p1, v2, :cond_2

    .line 39
    .line 40
    invoke-virtual {p2, p1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    iget-object v4, p0, Lcom/bytedance/pangle/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    .line 45
    .line 46
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Ljava/util/ArrayList;

    .line 51
    .line 52
    if-nez v4, :cond_1

    .line 53
    .line 54
    new-instance v4, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 57
    .line 58
    .line 59
    iget-object v5, p0, Lcom/bytedance/pangle/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    .line 60
    .line 61
    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    :cond_1
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    add-int/lit8 p1, p1, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    monitor-exit v0

    .line 71
    return-void

    .line 72
    :catchall_0
    move-exception p1

    .line 73
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    throw p1
.end method

.method public sendBroadcast(Landroid/content/Intent;)Z
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v1, Lcom/bytedance/pangle/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v10

    .line 12
    iget-object v3, v1, Lcom/bytedance/pangle/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v0, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v11

    .line 22
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 23
    .line 24
    .line 25
    move-result-object v12

    .line 26
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v13

    .line 30
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    .line 31
    .line 32
    .line 33
    move-result-object v14

    .line 34
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    and-int/lit8 v3, v3, 0x8

    .line 39
    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    const/16 v16, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/16 v16, 0x0

    .line 46
    .line 47
    :goto_0
    if-eqz v16, :cond_1

    .line 48
    .line 49
    const-string v3, "LocalBroadcastManager"

    .line 50
    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v5, "Resolving type "

    .line 54
    .line 55
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v5, " scheme "

    .line 62
    .line 63
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v5, " of intent "

    .line 70
    .line 71
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-static {v3, v4}, Lcom/byazt/bog/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_1
    iget-object v3, v1, Lcom/bytedance/pangle/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    .line 85
    .line 86
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    move-object v8, v3

    .line 95
    check-cast v8, Ljava/util/ArrayList;

    .line 96
    .line 97
    if-eqz v8, :cond_11

    .line 98
    .line 99
    if-eqz v16, :cond_2

    .line 100
    .line 101
    const-string v3, "LocalBroadcastManager"

    .line 102
    .line 103
    const-string v4, "Action list: "

    .line 104
    .line 105
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-static {v3, v4}, Lcom/byazt/bog/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :cond_2
    const/4 v3, 0x0

    .line 117
    move-object v7, v3

    .line 118
    const/4 v6, 0x0

    .line 119
    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    if-ge v6, v3, :cond_e

    .line 124
    .line 125
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    move-object v5, v3

    .line 130
    check-cast v5, Lcom/bytedance/pangle/LocalBroadcastManager$tt;

    .line 131
    .line 132
    if-eqz v16, :cond_3

    .line 133
    .line 134
    const-string v3, "LocalBroadcastManager"

    .line 135
    .line 136
    new-instance v4, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    const-string v9, "Matching against filter "

    .line 139
    .line 140
    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iget-object v9, v5, Lcom/bytedance/pangle/LocalBroadcastManager$tt;->c:Landroid/content/IntentFilter;

    .line 144
    .line 145
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    invoke-static {v3, v4}, Lcom/byazt/bog/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    :cond_3
    iget-boolean v3, v5, Lcom/bytedance/pangle/LocalBroadcastManager$tt;->ve:Z

    .line 156
    .line 157
    if-eqz v3, :cond_5

    .line 158
    .line 159
    if-eqz v16, :cond_4

    .line 160
    .line 161
    const-string v3, "LocalBroadcastManager"

    .line 162
    .line 163
    const-string v4, "  Filter\'s target already added"

    .line 164
    .line 165
    invoke-static {v3, v4}, Lcom/byazt/bog/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    :cond_4
    move/from16 v17, v6

    .line 169
    .line 170
    move-object/from16 v19, v8

    .line 171
    .line 172
    move-object/from16 v18, v10

    .line 173
    .line 174
    move-object/from16 v20, v11

    .line 175
    .line 176
    const/4 v11, 0x1

    .line 177
    move-object v10, v7

    .line 178
    goto/16 :goto_4

    .line 179
    .line 180
    :cond_5
    iget-object v3, v5, Lcom/bytedance/pangle/LocalBroadcastManager$tt;->c:Landroid/content/IntentFilter;

    .line 181
    .line 182
    const-string v9, "LocalBroadcastManager"

    .line 183
    .line 184
    move-object v4, v10

    .line 185
    move-object v15, v5

    .line 186
    move-object v5, v11

    .line 187
    move/from16 v17, v6

    .line 188
    .line 189
    move-object v6, v13

    .line 190
    move-object/from16 v18, v10

    .line 191
    .line 192
    move-object v10, v7

    .line 193
    move-object v7, v12

    .line 194
    move-object/from16 v19, v8

    .line 195
    .line 196
    move-object v8, v14

    .line 197
    move-object/from16 v20, v11

    .line 198
    .line 199
    const/4 v11, 0x1

    .line 200
    invoke-virtual/range {v3 .. v9}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    if-ltz v3, :cond_8

    .line 205
    .line 206
    if-eqz v16, :cond_6

    .line 207
    .line 208
    const-string v4, "LocalBroadcastManager"

    .line 209
    .line 210
    new-instance v5, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    const-string v6, "  Filter matched!  match=0x"

    .line 213
    .line 214
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    invoke-static {v4, v3}, Lcom/byazt/bog/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    :cond_6
    if-nez v10, :cond_7

    .line 232
    .line 233
    new-instance v7, Ljava/util/ArrayList;

    .line 234
    .line 235
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .line 237
    .line 238
    goto :goto_2

    .line 239
    :cond_7
    move-object v7, v10

    .line 240
    :goto_2
    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    iput-boolean v11, v15, Lcom/bytedance/pangle/LocalBroadcastManager$tt;->ve:Z

    .line 244
    .line 245
    goto :goto_5

    .line 246
    :cond_8
    if-eqz v16, :cond_d

    .line 247
    .line 248
    const/4 v4, -0x4

    .line 249
    if-eq v3, v4, :cond_c

    .line 250
    .line 251
    const/4 v4, -0x3

    .line 252
    if-eq v3, v4, :cond_b

    .line 253
    .line 254
    const/4 v4, -0x2

    .line 255
    if-eq v3, v4, :cond_a

    .line 256
    .line 257
    const/4 v4, -0x1

    .line 258
    if-eq v3, v4, :cond_9

    .line 259
    .line 260
    const-string v3, "unknown reason"

    .line 261
    .line 262
    goto :goto_3

    .line 263
    :cond_9
    const-string v3, "type"

    .line 264
    .line 265
    goto :goto_3

    .line 266
    :cond_a
    const-string v3, "data"

    .line 267
    .line 268
    goto :goto_3

    .line 269
    :cond_b
    const-string v3, "action"

    .line 270
    .line 271
    goto :goto_3

    .line 272
    :cond_c
    const-string v3, "category"

    .line 273
    .line 274
    :goto_3
    const-string v4, "LocalBroadcastManager"

    .line 275
    .line 276
    const-string v5, "  Filter did not match: "

    .line 277
    .line 278
    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    invoke-static {v4, v3}, Lcom/byazt/bog/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    :cond_d
    :goto_4
    move-object v7, v10

    .line 286
    :goto_5
    add-int/lit8 v6, v17, 0x1

    .line 287
    .line 288
    move-object/from16 v10, v18

    .line 289
    .line 290
    move-object/from16 v8, v19

    .line 291
    .line 292
    move-object/from16 v11, v20

    .line 293
    .line 294
    goto/16 :goto_1

    .line 295
    .line 296
    :cond_e
    move-object v10, v7

    .line 297
    const/4 v11, 0x1

    .line 298
    if-eqz v10, :cond_11

    .line 299
    .line 300
    const/4 v3, 0x0

    .line 301
    :goto_6
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 302
    .line 303
    .line 304
    move-result v4

    .line 305
    if-ge v3, v4, :cond_f

    .line 306
    .line 307
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v4

    .line 311
    check-cast v4, Lcom/bytedance/pangle/LocalBroadcastManager$tt;

    .line 312
    .line 313
    const/4 v5, 0x0

    .line 314
    iput-boolean v5, v4, Lcom/bytedance/pangle/LocalBroadcastManager$tt;->ve:Z

    .line 315
    .line 316
    add-int/lit8 v3, v3, 0x1

    .line 317
    .line 318
    goto :goto_6

    .line 319
    :cond_f
    iget-object v3, v1, Lcom/bytedance/pangle/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    .line 320
    .line 321
    new-instance v4, Lcom/bytedance/pangle/LocalBroadcastManager$c;

    .line 322
    .line 323
    invoke-direct {v4, v0, v10}, Lcom/bytedance/pangle/LocalBroadcastManager$c;-><init>(Landroid/content/Intent;Ljava/util/ArrayList;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    iget-object v0, v1, Lcom/bytedance/pangle/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    .line 330
    .line 331
    invoke-virtual {v0, v11}, Landroid/os/Handler;->hasMessages(I)Z

    .line 332
    .line 333
    .line 334
    move-result v0

    .line 335
    if-nez v0, :cond_10

    .line 336
    .line 337
    iget-object v0, v1, Lcom/bytedance/pangle/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    .line 338
    .line 339
    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 340
    .line 341
    .line 342
    :cond_10
    monitor-exit v2

    .line 343
    return v11

    .line 344
    :cond_11
    monitor-exit v2

    .line 345
    const/4 v0, 0x0

    .line 346
    return v0

    .line 347
    :catchall_0
    move-exception v0

    .line 348
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    throw v0
.end method

.method public sendBroadcastSync(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/bytedance/pangle/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/bytedance/pangle/LocalBroadcastManager;->executePendingBroadcasts()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public unregisterReceiver(Lcom/bytedance/pangle/receiver/PluginBroadcastReceiver;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/bytedance/pangle/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/pangle/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x1

    .line 21
    sub-int/2addr v2, v3

    .line 22
    :goto_0
    if-ltz v2, :cond_5

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Lcom/bytedance/pangle/LocalBroadcastManager$tt;

    .line 29
    .line 30
    iput-boolean v3, v4, Lcom/bytedance/pangle/LocalBroadcastManager$tt;->uj:Z

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    :goto_1
    iget-object v6, v4, Lcom/bytedance/pangle/LocalBroadcastManager$tt;->c:Landroid/content/IntentFilter;

    .line 34
    .line 35
    invoke-virtual {v6}, Landroid/content/IntentFilter;->countActions()I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-ge v5, v6, :cond_4

    .line 40
    .line 41
    iget-object v6, v4, Lcom/bytedance/pangle/LocalBroadcastManager$tt;->c:Landroid/content/IntentFilter;

    .line 42
    .line 43
    invoke-virtual {v6, v5}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    iget-object v7, p0, Lcom/bytedance/pangle/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    .line 48
    .line 49
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    check-cast v7, Ljava/util/ArrayList;

    .line 54
    .line 55
    if-eqz v7, :cond_3

    .line 56
    .line 57
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    sub-int/2addr v8, v3

    .line 62
    :goto_2
    if-ltz v8, :cond_2

    .line 63
    .line 64
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    check-cast v9, Lcom/bytedance/pangle/LocalBroadcastManager$tt;

    .line 69
    .line 70
    iget-object v10, v9, Lcom/bytedance/pangle/LocalBroadcastManager$tt;->tt:Lcom/bytedance/pangle/receiver/PluginBroadcastReceiver;

    .line 71
    .line 72
    if-ne v10, p1, :cond_1

    .line 73
    .line 74
    iput-boolean v3, v9, Lcom/bytedance/pangle/LocalBroadcastManager$tt;->uj:Z

    .line 75
    .line 76
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    :cond_1
    add-int/lit8 v8, v8, -0x1

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    if-gtz v7, :cond_3

    .line 87
    .line 88
    iget-object v7, p0, Lcom/bytedance/pangle/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    .line 89
    .line 90
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_4
    add-int/lit8 v2, v2, -0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_5
    monitor-exit v0

    .line 100
    return-void

    .line 101
    :catchall_0
    move-exception p1

    .line 102
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    throw p1
.end method
