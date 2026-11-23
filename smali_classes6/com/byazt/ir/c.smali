.class public Lcom/byazt/ir/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/fk/sp;
.implements Lcom/byazt/dna/qp$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x271,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/ir/c$c;
    }
.end annotation


# instance fields
.field public a:Landroid/os/Handler;

.field public c:Lcom/bykv/vk/component/ttvideo/ILivePlayer;

.field public cu:Z

.field public d:J

.field public volatile da:Z

.field public final eo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public gr:J

.field public final gt:I

.field public gu:J

.field public volatile h:Lcom/byazt/fk/u;

.field public i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile m:Z

.field public volatile md:I

.field public my:J

.field public n:I

.field public final nb:Lcom/bykv/vk/component/ttvideo/ILiveListener;

.field public nu:J

.field public or:Lorg/json/JSONObject;

.field public p:Landroid/graphics/SurfaceTexture;

.field public qp:Z

.field public qy:J

.field public rh:J

.field public rl:I

.field public volatile sl:Z

.field public volatile sp:Z

.field public volatile t:Z

.field public final tt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/byazt/fk/sp$c;",
            ">;>;"
        }
    .end annotation
.end field

.field public volatile u:Z

.field public uj:I

.field public final ve:Landroid/content/Context;

.field public x:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile yp:Z

.field public yv:Landroid/view/SurfaceHolder;

.field public volatile z:Z

.field public final zb:Ljava/lang/Runnable;

.field public volatile zm:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZJLorg/json/JSONObject;Landroid/os/Looper;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/byazt/ir/c;->tt:Ljava/util/List;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/byazt/ir/c;->a:Landroid/os/Handler;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/byazt/ir/c;->sp:Z

    .line 20
    .line 21
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/byazt/ir/c;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    .line 30
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/byazt/ir/c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/byazt/ir/c;->da:Z

    .line 36
    .line 37
    iput-boolean v0, p0, Lcom/byazt/ir/c;->sl:Z

    .line 38
    .line 39
    iput-boolean v0, p0, Lcom/byazt/ir/c;->t:Z

    .line 40
    .line 41
    iput-boolean v0, p0, Lcom/byazt/ir/c;->u:Z

    .line 42
    .line 43
    iput-boolean v0, p0, Lcom/byazt/ir/c;->yp:Z

    .line 44
    .line 45
    iput-boolean v0, p0, Lcom/byazt/ir/c;->z:Z

    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    iput-boolean v1, p0, Lcom/byazt/ir/c;->m:Z

    .line 49
    .line 50
    const-wide/16 v2, 0x0

    .line 51
    .line 52
    iput-wide v2, p0, Lcom/byazt/ir/c;->rh:J

    .line 53
    .line 54
    iput-wide v2, p0, Lcom/byazt/ir/c;->my:J

    .line 55
    .line 56
    iput v0, p0, Lcom/byazt/ir/c;->gt:I

    .line 57
    .line 58
    iput v0, p0, Lcom/byazt/ir/c;->rl:I

    .line 59
    .line 60
    iput-wide v2, p0, Lcom/byazt/ir/c;->qy:J

    .line 61
    .line 62
    iput-wide v2, p0, Lcom/byazt/ir/c;->gu:J

    .line 63
    .line 64
    iput-wide v2, p0, Lcom/byazt/ir/c;->gr:J

    .line 65
    .line 66
    iput-boolean v0, p0, Lcom/byazt/ir/c;->zm:Z

    .line 67
    .line 68
    const/16 v0, 0xc8

    .line 69
    .line 70
    iput v0, p0, Lcom/byazt/ir/c;->md:I

    .line 71
    .line 72
    iput-wide v2, p0, Lcom/byazt/ir/c;->d:J

    .line 73
    .line 74
    new-instance v0, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Lcom/byazt/ir/c;->eo:Ljava/util/ArrayList;

    .line 80
    .line 81
    new-instance v0, Lcom/byazt/ir/c$1;

    .line 82
    .line 83
    invoke-direct {v0, p0}, Lcom/byazt/ir/c$1;-><init>(Lcom/byazt/ir/c;)V

    .line 84
    .line 85
    .line 86
    iput-object v0, p0, Lcom/byazt/ir/c;->zb:Ljava/lang/Runnable;

    .line 87
    .line 88
    new-instance v0, Lcom/byazt/ir/c$7;

    .line 89
    .line 90
    invoke-direct {v0, p0}, Lcom/byazt/ir/c$7;-><init>(Lcom/byazt/ir/c;)V

    .line 91
    .line 92
    .line 93
    iput-object v0, p0, Lcom/byazt/ir/c;->nb:Lcom/bykv/vk/component/ttvideo/ILiveListener;

    .line 94
    .line 95
    iput-object p1, p0, Lcom/byazt/ir/c;->ve:Landroid/content/Context;

    .line 96
    .line 97
    iput-object p5, p0, Lcom/byazt/ir/c;->or:Lorg/json/JSONObject;

    .line 98
    .line 99
    cmp-long p1, p3, v2

    .line 100
    .line 101
    if-lez p1, :cond_0

    .line 102
    .line 103
    const-wide/16 v2, 0x3e8

    .line 104
    .line 105
    mul-long p3, p3, v2

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_0
    const-wide/16 p3, -0x1

    .line 109
    .line 110
    :goto_0
    iput-wide p3, p0, Lcom/byazt/ir/c;->gu:J

    .line 111
    .line 112
    if-eqz p6, :cond_1

    .line 113
    .line 114
    new-instance p1, Lcom/byazt/nr/d;

    .line 115
    .line 116
    invoke-direct {p1, p6, p0}, Lcom/byazt/nr/d;-><init>(Landroid/os/Looper;Lcom/byazt/dna/qp$c;)V

    .line 117
    .line 118
    .line 119
    iput-object p1, p0, Lcom/byazt/ir/c;->a:Landroid/os/Handler;

    .line 120
    .line 121
    iput-boolean v1, p0, Lcom/byazt/ir/c;->sp:Z

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_1
    iget-object p1, p0, Lcom/byazt/ir/c;->a:Landroid/os/Handler;

    .line 125
    .line 126
    if-nez p1, :cond_2

    .line 127
    .line 128
    const-string p1, "thread_service"

    .line 129
    .line 130
    invoke-static {p1}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    check-cast p1, Lcom/byazt/dna/qp;

    .line 135
    .line 136
    const-string p3, "tt-live-video-player"

    .line 137
    .line 138
    invoke-interface {p1, p0, p3}, Lcom/byazt/dna/qp;->obtainHandler(Lcom/byazt/dna/qp$c;Ljava/lang/String;)Landroid/os/Handler;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    iput-object p1, p0, Lcom/byazt/ir/c;->a:Landroid/os/Handler;

    .line 143
    .line 144
    :cond_2
    :goto_1
    invoke-direct {p0, p2}, Lcom/byazt/ir/c;->c(Z)V

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method public static synthetic a(Lcom/byazt/ir/c;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/byazt/ir/c;->my:J

    return-wide p1
.end method

.method public static synthetic a(Lcom/byazt/ir/c;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/byazt/ir/c;->u:Z

    return p0
.end method

.method public static synthetic c(Lcom/byazt/ir/c;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/ir/c;->uj:I

    return p1
.end method

.method public static synthetic c(Lcom/byazt/ir/c;)J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/byazt/ir/c;->gr:J

    return-wide v0
.end method

.method public static synthetic c(Lcom/byazt/ir/c;J)J
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/byazt/ir/c;->gr:J

    return-wide p1
.end method

.method public static synthetic c(Lcom/byazt/ir/c;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/ir/c;->p:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/ir/c;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/byazt/ir/c;->a:Landroid/os/Handler;

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/ir/c;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/byazt/ir/c;->yv:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/ir/c;Lcom/bykv/vk/component/ttvideo/ILivePlayer;)Lcom/bykv/vk/component/ttvideo/ILivePlayer;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/byazt/ir/c;->c:Lcom/bykv/vk/component/ttvideo/ILivePlayer;

    return-object p1
.end method

.method private declared-synchronized c()V
    .locals 1

    monitor-enter p0

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/byazt/ir/c;->eo:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/byazt/ir/c;->tt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit p0

    return-void

    .line 18
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c(JJ)V
    .locals 8

    .line 10
    iget-object v0, p0, Lcom/byazt/ir/c;->tt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/byazt/fk/sp$c;

    if-eqz v2, :cond_0

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    .line 12
    invoke-interface/range {v2 .. v7}, Lcom/byazt/fk/sp$c;->onPlayPositionUpdate(Lcom/byazt/fk/sp;JJ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic c(Lcom/byazt/ir/c;JJ)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/byazt/ir/c;->c(JJ)V

    return-void
.end method

.method private declared-synchronized c(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/byazt/ir/c;->eo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private c(Ljava/lang/String;)V
    .locals 10

    const-string v0, "ld"

    const-string v1, "sd"

    const-string v2, "hd"

    const-string v3, "uhd"

    const-string v4, "TTLiveVideoPlayer"

    const/4 v5, 0x1

    .line 21
    :try_start_0
    iget-object v6, p0, Lcom/byazt/ir/c;->or:Lorg/json/JSONObject;

    if-nez v6, :cond_0

    return-void

    :cond_0
    const-string v7, "live "

    .line 22
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "enable"

    .line 23
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "appids"

    .line 24
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-ne v7, v5, :cond_7

    .line 25
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto/16 :goto_1

    .line 26
    :cond_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "common"

    .line 27
    invoke-virtual {v7, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v8, "data"

    .line 28
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz p1, :cond_7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    const-string v8, "app_id"

    .line 29
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v8, "api "

    .line 30
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v6, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 32
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_3

    move-object v0, v3

    goto :goto_0

    .line 33
    :cond_3
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_4

    move-object v0, v2

    goto :goto_0

    .line 34
    :cond_4
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_5

    move-object v0, v1

    goto :goto_0

    .line 35
    :cond_5
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    .line 36
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "update reso:"

    .line 37
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object p1, p0, Lcom/byazt/ir/c;->c:Lcom/bykv/vk/component/ttvideo/ILivePlayer;

    const/16 v1, 0x2b

    invoke-interface {p1, v1, v0}, Lcom/bykv/vk/component/ttvideo/ILivePlayer;->setStringOption(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_1
    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "updateStream: catch exception:"

    aput-object v2, v0, v1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v5

    invoke-static {v4, v0}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private c(Z)V
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/byazt/ir/c;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 14
    new-instance v1, Lcom/byazt/ir/c$2;

    invoke-direct {v1, p0, p1}, Lcom/byazt/ir/c$2;-><init>(Lcom/byazt/ir/c;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/byazt/ir/c;Z)Z
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/byazt/ir/c;->u:Z

    return p1
.end method

.method public static synthetic da(Lcom/byazt/ir/c;)Lcom/bykv/vk/component/ttvideo/ILivePlayer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ir/c;->c:Lcom/bykv/vk/component/ttvideo/ILivePlayer;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic i(Lcom/byazt/ir/c;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ir/c;->ve:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic m(Lcom/byazt/ir/c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/ir/c;->nu:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic my(Lcom/byazt/ir/c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/ir/c;->qy:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic n(Lcom/byazt/ir/c;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/byazt/ir/c;->qy:J

    return-wide p1
.end method

.method public static synthetic n(Lcom/byazt/ir/c;)Ljava/util/List;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/ir/c;->tt:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic nu(Lcom/byazt/ir/c;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/ir/c;->rl:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/byazt/ir/c;->rl:I

    .line 6
    .line 7
    return v0
.end method

.method public static synthetic rh(Lcom/byazt/ir/c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/ir/c;->my:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic sl(Lcom/byazt/ir/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/ir/c;->c()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic sp(Lcom/byazt/ir/c;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ir/c;->a:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic t(Lcom/byazt/ir/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/ir/c;->qp:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic tt(Lcom/byazt/ir/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/ir/c;->md:I

    return p0
.end method

.method public static synthetic tt(Lcom/byazt/ir/c;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/ir/c;->n:I

    return p1
.end method

.method public static synthetic tt(Lcom/byazt/ir/c;J)J
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/byazt/ir/c;->d:J

    return-wide p1
.end method

.method private declared-synchronized tt()V
    .locals 2

    monitor-enter p0

    .line 5
    :try_start_0
    iget-boolean v0, p0, Lcom/byazt/ir/c;->cu:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 6
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 7
    :try_start_1
    iput-boolean v0, p0, Lcom/byazt/ir/c;->cu:Z

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/byazt/ir/c;->eo:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 10
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/byazt/ir/c;->eo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/byazt/ir/c;->cu:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic tt(Lcom/byazt/ir/c;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/byazt/ir/c;->m:Z

    return p1
.end method

.method public static synthetic u(Lcom/byazt/ir/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/ir/c;->sp:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic uj(Lcom/byazt/ir/c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/ir/c;->gu:J

    return-wide v0
.end method

.method public static synthetic uj(Lcom/byazt/ir/c;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/ir/c;->rh:J

    return-wide p1
.end method

.method private uj()V
    .locals 1

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/byazt/ir/c;->da:Z

    .line 5
    iput-boolean v0, p0, Lcom/byazt/ir/c;->u:Z

    .line 6
    iput-boolean v0, p0, Lcom/byazt/ir/c;->yp:Z

    .line 7
    iput-boolean v0, p0, Lcom/byazt/ir/c;->z:Z

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/byazt/ir/c;->m:Z

    return-void
.end method

.method public static synthetic uj(Lcom/byazt/ir/c;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/ir/c;->yp:Z

    return p1
.end method

.method public static synthetic ve(Lcom/byazt/ir/c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/ir/c;->d:J

    return-wide v0
.end method

.method public static synthetic ve(Lcom/byazt/ir/c;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/ir/c;->nu:J

    return-wide p1
.end method

.method private ve()V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/byazt/ir/c;->a:Landroid/os/Handler;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/byazt/ir/c;->a:Landroid/os/Handler;

    new-instance v1, Lcom/byazt/ir/c$6;

    invoke-direct {v1, p0}, Lcom/byazt/ir/c$6;-><init>(Lcom/byazt/ir/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic ve(Lcom/byazt/ir/c;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/ir/c;->zm:Z

    return p1
.end method

.method public static synthetic x(Lcom/byazt/ir/c;)Lcom/bykv/vk/component/ttvideo/ILiveListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ir/c;->nb:Lcom/bykv/vk/component/ttvideo/ILiveListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic yp(Lcom/byazt/ir/c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/ir/c;->rh:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic z(Lcom/byazt/ir/c;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ir/c;->zb:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public addIVideoPlayerCallback(Lcom/byazt/fk/sp$c;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/ir/c;->tt:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-ne v1, p1, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    iget-object v0, p0, Lcom/byazt/ir/c;->tt:Ljava/util/List;

    .line 32
    .line 33
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 34
    .line 35
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public getBufferCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ir/c;->rl:I

    .line 2
    .line 3
    return v0
.end method

.method public getCodec()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/ir/c;->gr:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ir/c;->yv:Landroid/view/SurfaceHolder;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ir/c;->p:Landroid/graphics/SurfaceTexture;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTotalBufferTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/ir/c;->my:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getUpdateProgressInterval()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ir/c;->md:I

    .line 2
    .line 3
    return v0
.end method

.method public getVideoDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/ir/c;->gu:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ir/c;->n:I

    .line 2
    .line 3
    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ir/c;->uj:I

    .line 2
    .line 3
    return v0
.end method

.method public handleMsg(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const-string v1, "TTLiveVideoPlayer"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    :pswitch_0
    goto/16 :goto_5

    .line 10
    .line 11
    :pswitch_1
    :try_start_0
    iget-object p1, p0, Lcom/byazt/ir/c;->c:Lcom/bykv/vk/component/ttvideo/ILivePlayer;

    .line 12
    .line 13
    if-eqz p1, :cond_5

    .line 14
    .line 15
    new-instance v0, Landroid/view/Surface;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/byazt/ir/c;->p:Landroid/graphics/SurfaceTexture;

    .line 18
    .line 19
    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, v0}, Lcom/bykv/vk/component/ttvideo/ILivePlayer;->setSurface(Landroid/view/Surface;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/byazt/ir/c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/byazt/ir/c;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_5

    .line 37
    .line 38
    invoke-direct {p0}, Lcom/byazt/ir/c;->c()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_2
    iget-object v0, p0, Lcom/byazt/ir/c;->c:Lcom/bykv/vk/component/ttvideo/ILivePlayer;

    .line 43
    .line 44
    if-eqz v0, :cond_5

    .line 45
    .line 46
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p1, Landroid/view/SurfaceHolder;

    .line 49
    .line 50
    invoke-interface {v0, p1}, Lcom/bykv/vk/component/ttvideo/ILivePlayer;->setSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/byazt/ir/c;->c:Lcom/bykv/vk/component/ttvideo/ILivePlayer;

    .line 54
    .line 55
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-interface {v0, p1}, Lcom/bykv/vk/component/ttvideo/ILivePlayer;->setSurface(Landroid/view/Surface;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/byazt/ir/c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    .line 64
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/byazt/ir/c;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_0

    .line 74
    .line 75
    invoke-direct {p0}, Lcom/byazt/ir/c;->c()V

    .line 76
    .line 77
    .line 78
    :cond_0
    return-void

    .line 79
    :pswitch_3
    iget-object p1, p0, Lcom/byazt/ir/c;->c:Lcom/bykv/vk/component/ttvideo/ILivePlayer;

    .line 80
    .line 81
    if-eqz p1, :cond_5

    .line 82
    .line 83
    iget-object p1, p0, Lcom/byazt/ir/c;->h:Lcom/byazt/fk/u;

    .line 84
    .line 85
    if-eqz p1, :cond_5

    .line 86
    .line 87
    iget-object p1, p0, Lcom/byazt/ir/c;->h:Lcom/byazt/fk/u;

    .line 88
    .line 89
    invoke-interface {p1}, Lcom/byazt/fk/u;->getUrl()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-direct {p0, p1}, Lcom/byazt/ir/c;->c(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/byazt/ir/c;->c:Lcom/bykv/vk/component/ttvideo/ILivePlayer;

    .line 97
    .line 98
    invoke-interface {v0, p1}, Lcom/bykv/vk/component/ttvideo/ILivePlayer;->setStreamInfo(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iput-boolean v2, p0, Lcom/byazt/ir/c;->da:Z

    .line 102
    .line 103
    new-instance p1, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string v0, "set Datasource:"

    .line 106
    .line 107
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-boolean v0, p0, Lcom/byazt/ir/c;->da:Z

    .line 111
    .line 112
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-static {v1, p1}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    const/4 p1, 0x0

    .line 123
    iput p1, p0, Lcom/byazt/ir/c;->rl:I

    .line 124
    .line 125
    return-void

    .line 126
    :pswitch_4
    iget-object p1, p0, Lcom/byazt/ir/c;->c:Lcom/bykv/vk/component/ttvideo/ILivePlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .line 128
    if-eqz p1, :cond_5

    .line 129
    .line 130
    :try_start_1
    invoke-interface {p1}, Lcom/bykv/vk/component/ttvideo/ILivePlayer;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :catchall_0
    move-exception p1

    .line 135
    :try_start_2
    const-string v0, "stop: catch exception:"

    .line 136
    .line 137
    invoke-static {v1, v0, p1}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    .line 139
    .line 140
    :goto_0
    iput-boolean v2, p0, Lcom/byazt/ir/c;->m:Z

    .line 141
    .line 142
    return-void

    .line 143
    :pswitch_5
    iget-object p1, p0, Lcom/byazt/ir/c;->c:Lcom/bykv/vk/component/ttvideo/ILivePlayer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 144
    .line 145
    if-eqz p1, :cond_5

    .line 146
    .line 147
    :try_start_3
    invoke-interface {p1}, Lcom/bykv/vk/component/ttvideo/ILivePlayer;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :catchall_1
    move-exception p1

    .line 152
    :try_start_4
    const-string v0, "release: catch exception:"

    .line 153
    .line 154
    invoke-static {v1, v0, p1}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    .line 156
    .line 157
    :goto_1
    iput-boolean v2, p0, Lcom/byazt/ir/c;->sl:Z

    .line 158
    .line 159
    iput-boolean v2, p0, Lcom/byazt/ir/c;->m:Z

    .line 160
    .line 161
    goto :goto_5

    .line 162
    :pswitch_6
    iget-object p1, p0, Lcom/byazt/ir/c;->c:Lcom/bykv/vk/component/ttvideo/ILivePlayer;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 163
    .line 164
    if-eqz p1, :cond_5

    .line 165
    .line 166
    :try_start_5
    invoke-interface {p1}, Lcom/bykv/vk/component/ttvideo/ILivePlayer;->reset()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 167
    .line 168
    .line 169
    goto :goto_2

    .line 170
    :catchall_2
    move-exception p1

    .line 171
    :try_start_6
    const-string v0, "reset: catch exception:"

    .line 172
    .line 173
    invoke-static {v1, v0, p1}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    .line 175
    .line 176
    :goto_2
    iput-boolean v2, p0, Lcom/byazt/ir/c;->m:Z

    .line 177
    .line 178
    return-void

    .line 179
    :pswitch_7
    iget-object p1, p0, Lcom/byazt/ir/c;->c:Lcom/bykv/vk/component/ttvideo/ILivePlayer;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 180
    .line 181
    if-eqz p1, :cond_5

    .line 182
    .line 183
    :try_start_7
    invoke-interface {p1}, Lcom/bykv/vk/component/ttvideo/ILivePlayer;->stop()V

    .line 184
    .line 185
    .line 186
    iget-object p1, p0, Lcom/byazt/ir/c;->tt:Ljava/util/List;

    .line 187
    .line 188
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    :cond_1
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-eqz v0, :cond_2

    .line 197
    .line 198
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 203
    .line 204
    if-eqz v0, :cond_1

    .line 205
    .line 206
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    check-cast v0, Lcom/byazt/fk/sp$c;

    .line 211
    .line 212
    if-eqz v0, :cond_1

    .line 213
    .line 214
    invoke-interface {v0, p0}, Lcom/byazt/fk/sp$c;->onPause(Lcom/byazt/fk/sp;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 215
    .line 216
    .line 217
    goto :goto_3

    .line 218
    :catchall_3
    move-exception p1

    .line 219
    :try_start_8
    const-string v0, "pause: catch exception:"

    .line 220
    .line 221
    invoke-static {v1, v0, p1}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 222
    .line 223
    .line 224
    :cond_2
    iput-boolean v2, p0, Lcom/byazt/ir/c;->m:Z

    .line 225
    .line 226
    return-void

    .line 227
    :pswitch_8
    iget-object p1, p0, Lcom/byazt/ir/c;->tt:Ljava/util/List;

    .line 228
    .line 229
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    :cond_3
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    if-eqz v0, :cond_4

    .line 238
    .line 239
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 244
    .line 245
    if-eqz v0, :cond_3

    .line 246
    .line 247
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    check-cast v0, Lcom/byazt/fk/sp$c;

    .line 252
    .line 253
    if-eqz v0, :cond_3

    .line 254
    .line 255
    invoke-interface {v0, p0}, Lcom/byazt/fk/sp$c;->onStart(Lcom/byazt/fk/sp;)V

    .line 256
    .line 257
    .line 258
    goto :goto_4

    .line 259
    :cond_4
    invoke-virtual {p0}, Lcom/byazt/ir/c;->play()V

    .line 260
    .line 261
    .line 262
    iput-boolean v2, p0, Lcom/byazt/ir/c;->z:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 263
    .line 264
    return-void

    .line 265
    :catch_0
    move-exception p1

    .line 266
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    :cond_5
    :goto_5
    return-void

    .line 270
    nop

    .line 271
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public isCompleted()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TTLiveVideoPlayer...isCompleted......isComplete....="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/byazt/ir/c;->u:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "TTLiveVideoPlayer"

    .line 18
    .line 19
    invoke-static {v1, v0}, Lcom/byazt/lt/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/byazt/ir/c;->u:Z

    .line 23
    .line 24
    return v0
.end method

.method public isFirstFrameSuccess()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/ir/c;->zm:Z

    .line 2
    .line 3
    return v0
.end method

.method public isLooping()Z
    .locals 2

    .line 1
    const-string v0, "TTLiveVideoPlayer"

    .line 2
    .line 3
    const-string v1, "isLooping: live is invalid "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public isPaused()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/ir/c;->m:Z

    .line 2
    .line 3
    return v0
.end method

.method public isPlaying()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/ir/c;->c:Lcom/bykv/vk/component/ttvideo/ILivePlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {v0}, Lcom/bykv/vk/component/ttvideo/ILivePlayer;->isPlaying()Z

    .line 6
    .line 7
    .line 8
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    return v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    const-string v1, "TTLiveVideoPlayer"

    .line 12
    .line 13
    const-string v2, "isPlaying: catch exception:"

    .line 14
    .line 15
    invoke-static {v1, v2, v0}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    return v0
.end method

.method public isPrepared()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/ir/c;->yp:Z

    .line 2
    .line 3
    return v0
.end method

.method public isReleased()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/ir/c;->sl:Z

    .line 2
    .line 3
    return v0
.end method

.method public isStarted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/ir/c;->z:Z

    .line 2
    .line 3
    return v0
.end method

.method public pause()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TTLiveVideoPlayer...pause......pause....currentPosition="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/byazt/ir/c;->getCurrentPosition()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "TTLiveVideoPlayer"

    .line 20
    .line 21
    invoke-static {v1, v0}, Lcom/byazt/lt/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/byazt/ir/c;->a:Landroid/os/Handler;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object v1, p0, Lcom/byazt/ir/c;->zb:Ljava/lang/Runnable;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    const/16 v1, 0x65

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public play()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ir/c;->a:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/byazt/ir/c$5;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/byazt/ir/c$5;-><init>(Lcom/byazt/ir/c;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ir/c;->a:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/byazt/ir/c;->zb:Ljava/lang/Runnable;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    const/16 v1, 0x67

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/byazt/ir/c;->ve()V

    .line 16
    .line 17
    .line 18
    :cond_0
    const-string v0, "TTLiveVideoPlayer"

    .line 19
    .line 20
    const-string v1, "TTLiveVideoPlayer...release......release...."

    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/byazt/lt/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public removeIVideoPlayerCallback(Lcom/byazt/fk/sp$c;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/ir/c;->tt:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-ne v1, p1, :cond_1

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    return-void
.end method

.method public reset()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/byazt/ir/c;->uj()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/ir/c;->a:Landroid/os/Handler;

    .line 5
    .line 6
    const-string v1, "TTLiveVideoPlayer"

    .line 7
    .line 8
    const-string v2, "TTLiveVideoPlayer...reset......reset...."

    .line 9
    .line 10
    invoke-static {v1, v2}, Lcom/byazt/lt/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/byazt/ir/c;->zb:Ljava/lang/Runnable;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    const/16 v1, 0x66

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public restart()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/byazt/ir/c;->rl:I

    .line 3
    .line 4
    const-wide/16 v1, 0x0

    .line 5
    .line 6
    iput-wide v1, p0, Lcom/byazt/ir/c;->my:J

    .line 7
    .line 8
    iput-wide v1, p0, Lcom/byazt/ir/c;->qy:J

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    invoke-virtual {p0, v3, v1, v2, v0}, Lcom/byazt/ir/c;->start(ZJZ)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public seekTo(J)V
    .locals 0

    return-void
.end method

.method public setDataSource(Lcom/byazt/fk/u;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/byazt/ir/c;->h:Lcom/byazt/fk/u;

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "setDataSource: model = "

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Lcom/byazt/fk/u;->getUrl()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v0, "TTLiveVideoPlayer"

    .line 25
    .line 26
    invoke-static {v0, p1}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/byazt/ir/c;->a:Landroid/os/Handler;

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    const/16 v0, 0x6b

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/byazt/ir/c;->yv:Landroid/view/SurfaceHolder;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "TTLiveVideoPlayer...SurfaceHolder......"

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "TTLiveVideoPlayer"

    .line 14
    .line 15
    invoke-static {v1, v0}, Lcom/byazt/lt/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/byazt/ir/c;->a:Landroid/os/Handler;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const/16 v1, 0x6e

    .line 23
    .line 24
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public setLoop(Z)V
    .locals 1

    .line 1
    const-string p1, "TTLiveVideoPlayer"

    .line 2
    .line 3
    const-string v0, "setLoop: live is invalid "

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setPlaySpeedRatio(F)V
    .locals 0

    return-void
.end method

.method public setQuietPlay(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/byazt/ir/c;->qp:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/byazt/ir/c;->c:Lcom/bykv/vk/component/ttvideo/ILivePlayer;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "TTLiveVideoPlayer...setQuietPlay......isMute="

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "TTLiveVideoPlayer"

    .line 18
    .line 19
    invoke-static {v1, v0}, Lcom/byazt/lt/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/byazt/ir/c;->c:Lcom/bykv/vk/component/ttvideo/ILivePlayer;

    .line 23
    .line 24
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-interface {v0, p1}, Lcom/bykv/vk/component/ttvideo/ILivePlayer;->setMute(Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    const-string v0, "setMute: catch exception:"

    .line 34
    .line 35
    invoke-static {v1, v0, p1}, Lcom/byazt/lt/tt;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public setSeekMode(I)V
    .locals 0

    return-void
.end method

.method public setSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/byazt/ir/c;->p:Landroid/graphics/SurfaceTexture;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/byazt/ir/c;->a:Landroid/os/Handler;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/16 v1, 0x6f

    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 14
    .line 15
    .line 16
    :cond_0
    const-string p1, "TTLiveVideoPlayer"

    .line 17
    .line 18
    const-string v0, "setSurface...surface="

    .line 19
    .line 20
    invoke-static {p1, v0}, Lcom/byazt/lt/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public setSurfaceValid(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/ir/c;->t:Z

    .line 2
    .line 3
    return-void
.end method

.method public setUpdateProgressInterval(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/ir/c;->md:I

    .line 2
    .line 3
    return-void
.end method

.method public start(ZJZ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/byazt/ir/c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-boolean p1, p0, Lcom/byazt/ir/c;->da:Z

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lcom/byazt/ir/c;->c:Lcom/bykv/vk/component/ttvideo/ILivePlayer;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iput-wide p2, p0, Lcom/byazt/ir/c;->gr:J

    .line 18
    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide p1

    .line 23
    iput-wide p1, p0, Lcom/byazt/ir/c;->nu:J

    .line 24
    .line 25
    invoke-virtual {p0, p4}, Lcom/byazt/ir/c;->setQuietPlay(Z)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/byazt/ir/c;->a:Landroid/os/Handler;

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    const/16 p2, 0x64

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 35
    .line 36
    .line 37
    :cond_0
    const-string p1, "TTLiveVideoPlayer"

    .line 38
    .line 39
    const-string p2, "TTLiveVideoPlayer...play......"

    .line 40
    .line 41
    invoke-static {p1, p2}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    new-instance p1, Lcom/byazt/ir/c$3;

    .line 46
    .line 47
    invoke-direct {p1, p0, p2, p3, p4}, Lcom/byazt/ir/c$3;-><init>(Lcom/byazt/ir/c;JZ)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, p1}, Lcom/byazt/ir/c;->c(Ljava/lang/Runnable;)V

    .line 51
    .line 52
    .line 53
    :goto_0
    iget-object p1, p0, Lcom/byazt/ir/c;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    .line 55
    const/4 p2, 0x1

    .line 56
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/byazt/ir/c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    iget-object p1, p0, Lcom/byazt/ir/c;->a:Landroid/os/Handler;

    .line 68
    .line 69
    if-eqz p1, :cond_2

    .line 70
    .line 71
    new-instance p2, Lcom/byazt/ir/c$4;

    .line 72
    .line 73
    invoke-direct {p2, p0}, Lcom/byazt/ir/c$4;-><init>(Lcom/byazt/ir/c;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    .line 78
    .line 79
    :cond_2
    return-void
.end method

.method public stop()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TTLiveVideoPlayer...stop......stop....currentPosition="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/byazt/ir/c;->getCurrentPosition()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "TTLiveVideoPlayer"

    .line 20
    .line 21
    invoke-static {v1, v0}, Lcom/byazt/lt/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/byazt/ir/c;->a:Landroid/os/Handler;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object v1, p0, Lcom/byazt/ir/c;->zb:Ljava/lang/Runnable;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    const/16 v1, 0x69

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method
