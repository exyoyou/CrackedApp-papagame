.class public final Lcom/byazt/vm/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa5,
        0x82
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/String;

.field public static da:Ljava/lang/String;

.field public static sl:J

.field public static t:Z

.field public static final tt:Ljava/lang/String;

.field public static final uj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/gj/n;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Z

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final n:Lcom/byazt/vm/nu;

.field public final sp:Lcom/byazt/vm/gt;

.field public u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final ve:Ljava/util/concurrent/locks/ReentrantLock;

.field public final x:Landroid/content/Context;

.field public yp:Ljava/lang/Long;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Lcom/byazt/vm/m;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, "#"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lcom/byazt/vm/m;->tt:Ljava/lang/String;

    .line 25
    .line 26
    sput-object v0, Lcom/byazt/vm/m;->c:Ljava/lang/String;

    .line 27
    .line 28
    new-instance v0, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    sput-object v0, Lcom/byazt/vm/m;->uj:Ljava/util/List;

    .line 34
    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/vm/m;->ve:Ljava/util/concurrent/locks/ReentrantLock;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/byazt/vm/m;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/byazt/vm/m;->x:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/byazt/vm/rh;->c(Landroid/content/Context;)Lcom/byazt/vm/nu;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/byazt/vm/m;->n:Lcom/byazt/vm/nu;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-interface {v0, p1}, Lcom/byazt/vm/nu;->tt(Landroid/content/Context;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iput-boolean v0, p0, Lcom/byazt/vm/m;->a:Z

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iput-boolean v1, p0, Lcom/byazt/vm/m;->a:Z

    .line 41
    .line 42
    :goto_0
    new-instance v0, Lcom/byazt/vm/gt;

    .line 43
    .line 44
    invoke-direct {v0, p1}, Lcom/byazt/vm/gt;-><init>(Landroid/content/Context;)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/byazt/vm/m;->sp:Lcom/byazt/vm/gt;

    .line 48
    .line 49
    return-void
.end method

.method private c(Landroid/content/Context;)Landroid/util/Pair;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/byazt/vm/m;->n:Lcom/byazt/vm/nu;

    if-eqz v0, :cond_0

    .line 27
    invoke-interface {v0, p1}, Lcom/byazt/vm/nu;->ve(Landroid/content/Context;)Lcom/byazt/vm/nu$c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 28
    iget-object v0, p1, Lcom/byazt/vm/nu$c;->tt:Ljava/lang/String;

    .line 29
    iget-boolean v1, p1, Lcom/byazt/vm/nu$c;->ve:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 30
    instance-of v2, p1, Lcom/byazt/vm/i$c;

    if-eqz v2, :cond_1

    .line 31
    check-cast p1, Lcom/byazt/vm/i$c;

    iget-wide v2, p1, Lcom/byazt/vm/i$c;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/vm/m;->yp:Ljava/lang/Long;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object v1, v0

    .line 32
    :cond_1
    :goto_0
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private static c(Lcom/byazt/gj/n$c;[Ljava/lang/Object;)V
    .locals 3
    .param p0    # Lcom/byazt/gj/n$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 20
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 21
    check-cast v2, Lcom/byazt/gj/n;

    invoke-interface {v2, p0}, Lcom/byazt/gj/n;->c(Lcom/byazt/gj/n$c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static c(Lcom/byazt/gj/n;)V
    .locals 5
    .param p0    # Lcom/byazt/gj/n;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .line 13
    sget-object v0, Lcom/byazt/vm/m;->uj:Ljava/util/List;

    monitor-enter v0

    .line 14
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    sget-object v0, Lcom/byazt/vm/m;->da:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 17
    new-instance v1, Lcom/byazt/gj/n$c;

    sget-boolean v2, Lcom/byazt/vm/m;->t:Z

    sget-wide v3, Lcom/byazt/vm/m;->sl:J

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/byazt/gj/n$c;-><init>(Ljava/lang/String;ZJ)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v0, v2

    invoke-static {v1, v0}, Lcom/byazt/vm/m;->c(Lcom/byazt/gj/n$c;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 18
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static synthetic c(Lcom/byazt/vm/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/vm/m;->uj()V

    return-void
.end method

.method private static c(Ljava/lang/Runnable;)V
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/byazt/vm/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-query"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/byazt/vm/x;->c(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;TK;TV;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 25
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 23
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 24
    invoke-static {p0}, Lcom/byazt/yv/da;->c(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private uj()V
    .locals 15

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/vm/m;->ve:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/vm/m;->sp:Lcom/byazt/vm/gt;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/byazt/vm/gt;->c()Lcom/byazt/vm/my;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-wide/16 v1, -0x1

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x1

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-object v5, v0, Lcom/byazt/vm/my;->c:Ljava/lang/String;

    .line 19
    .line 20
    sput-object v5, Lcom/byazt/vm/m;->da:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v5, v0, Lcom/byazt/vm/my;->ve:Ljava/lang/Boolean;

    .line 23
    .line 24
    if-eqz v5, :cond_0

    .line 25
    .line 26
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-eqz v5, :cond_0

    .line 31
    .line 32
    const/4 v5, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v5, 0x0

    .line 35
    :goto_0
    sput-boolean v5, Lcom/byazt/vm/m;->t:Z

    .line 36
    .line 37
    iget-object v5, v0, Lcom/byazt/vm/my;->sp:Ljava/lang/Long;

    .line 38
    .line 39
    if-nez v5, :cond_1

    .line 40
    .line 41
    move-wide v5, v1

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 44
    .line 45
    .line 46
    move-result-wide v5

    .line 47
    :goto_1
    sput-wide v5, Lcom/byazt/vm/m;->sl:J

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/byazt/vm/my;->c()Ljava/util/Map;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    iput-object v5, p0, Lcom/byazt/vm/m;->u:Ljava/util/Map;

    .line 54
    .line 55
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 56
    .line 57
    .line 58
    move-result-wide v5

    .line 59
    iget-object v7, p0, Lcom/byazt/vm/m;->x:Landroid/content/Context;

    .line 60
    .line 61
    invoke-direct {p0, v7}, Lcom/byazt/vm/m;->c(Landroid/content/Context;)Landroid/util/Pair;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 66
    .line 67
    .line 68
    move-result-wide v8

    .line 69
    sub-long/2addr v8, v5

    .line 70
    iget-object v5, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 71
    .line 72
    const/4 v6, 0x0

    .line 73
    if-eqz v5, :cond_6

    .line 74
    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    iget-object v6, v0, Lcom/byazt/vm/my;->tt:Ljava/lang/String;

    .line 78
    .line 79
    iget-object v0, v0, Lcom/byazt/vm/my;->a:Ljava/lang/Integer;

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    add-int/2addr v0, v4

    .line 86
    goto :goto_2

    .line 87
    :cond_3
    const/4 v0, -0x1

    .line 88
    :goto_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-eqz v5, :cond_4

    .line 93
    .line 94
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    :cond_4
    move-object v10, v6

    .line 103
    if-gtz v0, :cond_5

    .line 104
    .line 105
    const/4 v0, 0x1

    .line 106
    :cond_5
    new-instance v13, Lcom/byazt/vm/my;

    .line 107
    .line 108
    iget-object v5, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 109
    .line 110
    move-object v6, v5

    .line 111
    check-cast v6, Ljava/lang/String;

    .line 112
    .line 113
    iget-object v5, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 114
    .line 115
    move-object v11, v5

    .line 116
    check-cast v11, Ljava/lang/Boolean;

    .line 117
    .line 118
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 119
    .line 120
    .line 121
    move-result-object v9

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 123
    .line 124
    .line 125
    move-result-wide v7

    .line 126
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 127
    .line 128
    .line 129
    move-result-object v12

    .line 130
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    iget-object v14, p0, Lcom/byazt/vm/m;->yp:Ljava/lang/Long;

    .line 135
    .line 136
    move-object v5, v13

    .line 137
    move-object v7, v10

    .line 138
    move-object v8, v11

    .line 139
    move-object v10, v12

    .line 140
    move-object v11, v0

    .line 141
    move-object v12, v14

    .line 142
    invoke-direct/range {v5 .. v12}, Lcom/byazt/vm/my;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;)V

    .line 143
    .line 144
    .line 145
    iget-object v0, p0, Lcom/byazt/vm/m;->sp:Lcom/byazt/vm/gt;

    .line 146
    .line 147
    invoke-virtual {v0, v13}, Lcom/byazt/vm/gt;->c(Lcom/byazt/vm/my;)V

    .line 148
    .line 149
    .line 150
    move-object v6, v13

    .line 151
    :cond_6
    if-eqz v6, :cond_9

    .line 152
    .line 153
    iget-object v0, v6, Lcom/byazt/vm/my;->c:Ljava/lang/String;

    .line 154
    .line 155
    sput-object v0, Lcom/byazt/vm/m;->da:Ljava/lang/String;

    .line 156
    .line 157
    iget-object v0, v6, Lcom/byazt/vm/my;->ve:Ljava/lang/Boolean;

    .line 158
    .line 159
    if-eqz v0, :cond_7

    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-eqz v0, :cond_7

    .line 166
    .line 167
    const/4 v3, 0x1

    .line 168
    :cond_7
    sput-boolean v3, Lcom/byazt/vm/m;->t:Z

    .line 169
    .line 170
    iget-object v0, v6, Lcom/byazt/vm/my;->sp:Ljava/lang/Long;

    .line 171
    .line 172
    if-nez v0, :cond_8

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 176
    .line 177
    .line 178
    move-result-wide v1

    .line 179
    :goto_3
    sput-wide v1, Lcom/byazt/vm/m;->sl:J

    .line 180
    .line 181
    invoke-virtual {v6}, Lcom/byazt/vm/my;->c()Ljava/util/Map;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    iput-object v0, p0, Lcom/byazt/vm/m;->u:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    .line 187
    :cond_9
    iget-object v0, p0, Lcom/byazt/vm/m;->ve:Ljava/util/concurrent/locks/ReentrantLock;

    .line 188
    .line 189
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 190
    .line 191
    .line 192
    new-instance v0, Lcom/byazt/gj/n$c;

    .line 193
    .line 194
    sget-object v1, Lcom/byazt/vm/m;->da:Ljava/lang/String;

    .line 195
    .line 196
    sget-boolean v2, Lcom/byazt/vm/m;->t:Z

    .line 197
    .line 198
    sget-wide v3, Lcom/byazt/vm/m;->sl:J

    .line 199
    .line 200
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/byazt/gj/n$c;-><init>(Ljava/lang/String;ZJ)V

    .line 201
    .line 202
    .line 203
    invoke-static {}, Lcom/byazt/vm/m;->ve()[Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-static {v0, v1}, Lcom/byazt/vm/m;->c(Lcom/byazt/gj/n$c;[Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    return-void

    .line 211
    :catchall_0
    move-exception v0

    .line 212
    iget-object v1, p0, Lcom/byazt/vm/m;->ve:Ljava/util/concurrent/locks/ReentrantLock;

    .line 213
    .line 214
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 215
    .line 216
    .line 217
    new-instance v1, Lcom/byazt/gj/n$c;

    .line 218
    .line 219
    sget-object v2, Lcom/byazt/vm/m;->da:Ljava/lang/String;

    .line 220
    .line 221
    sget-boolean v3, Lcom/byazt/vm/m;->t:Z

    .line 222
    .line 223
    sget-wide v4, Lcom/byazt/vm/m;->sl:J

    .line 224
    .line 225
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/byazt/gj/n$c;-><init>(Ljava/lang/String;ZJ)V

    .line 226
    .line 227
    .line 228
    invoke-static {}, Lcom/byazt/vm/m;->ve()[Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    invoke-static {v1, v2}, Lcom/byazt/vm/m;->c(Lcom/byazt/gj/n$c;[Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    throw v0
.end method

.method private static ve()[Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/vm/m;->uj:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-lez v1, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    monitor-exit v0

    .line 17
    return-object v1

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw v1
.end method


# virtual methods
.method public c()Lcom/byazt/vm/nu;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/byazt/vm/m;->n:Lcom/byazt/vm/nu;

    return-object v0
.end method

.method public c(J)Ljava/util/Map;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    iget-boolean v0, p0, Lcom/byazt/vm/m;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    sget-boolean v0, Lcom/byazt/gj/c;->tt:Z

    if-nez v0, :cond_2

    .line 4
    iget-object p1, p0, Lcom/byazt/vm/m;->sp:Lcom/byazt/vm/gt;

    invoke-virtual {p1}, Lcom/byazt/vm/gt;->c()Lcom/byazt/vm/my;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/byazt/vm/my;->c()Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/byazt/vm/m;->tt()V

    .line 7
    iget-object v0, p0, Lcom/byazt/vm/m;->u:Ljava/util/Map;

    if-nez v0, :cond_3

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/byazt/vm/m;->ve:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    .line 10
    iget-object p1, p0, Lcom/byazt/vm/m;->ve:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    throw p1

    :catch_0
    move-exception p1

    .line 11
    invoke-static {p1}, Lcom/byazt/yv/da;->c(Ljava/lang/Throwable;)V

    .line 12
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/byazt/vm/m;->u:Ljava/util/Map;

    return-object p1
.end method

.method public tt()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/vm/m;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/byazt/vm/m$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/byazt/vm/m$1;-><init>(Lcom/byazt/vm/m;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/byazt/vm/m;->c(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
