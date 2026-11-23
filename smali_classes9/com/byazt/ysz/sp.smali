.class public Lcom/byazt/ysz/sp;
.super Lcom/byazt/ysz/a;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x24d,
        0x5b
    }
.end annotation


# instance fields
.field public volatile da:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final gt:Ljava/util/concurrent/atomic/AtomicInteger;

.field public volatile i:I

.field public m:J

.field public volatile my:Lcom/byazt/qya/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/qya/n<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public nu:J

.field public rh:Z

.field public volatile sl:Z

.field public volatile sp:Lcom/byazt/qh/uj;

.field public final t:J

.field public volatile u:Z

.field public final x:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile yp:Z

.field public z:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/byazt/ysz/a;-><init>()V

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
    iput-object v0, p0, Lcom/byazt/ysz/sp;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/byazt/ysz/sp;->sp:Lcom/byazt/qh/uj;

    .line 14
    .line 15
    const/4 v0, -0x5

    .line 16
    iput v0, p0, Lcom/byazt/ysz/sp;->i:I

    .line 17
    .line 18
    iput-boolean v1, p0, Lcom/byazt/ysz/sp;->sl:Z

    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    iput-wide v2, p0, Lcom/byazt/ysz/sp;->t:J

    .line 25
    .line 26
    iput-boolean v1, p0, Lcom/byazt/ysz/sp;->u:Z

    .line 27
    .line 28
    iput-boolean v1, p0, Lcom/byazt/ysz/sp;->yp:Z

    .line 29
    .line 30
    const-wide/16 v2, -0x1

    .line 31
    .line 32
    iput-wide v2, p0, Lcom/byazt/ysz/sp;->z:J

    .line 33
    .line 34
    iput-wide v2, p0, Lcom/byazt/ysz/sp;->m:J

    .line 35
    .line 36
    iput-wide v2, p0, Lcom/byazt/ysz/sp;->nu:J

    .line 37
    .line 38
    iput-boolean v1, p0, Lcom/byazt/ysz/sp;->rh:Z

    .line 39
    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 41
    .line 42
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/byazt/ysz/sp;->gt:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    .line 47
    invoke-static {}, Lcom/byazt/bzd/x;->c()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    new-instance v0, Lcom/byazt/ysz/sp$1;

    .line 54
    .line 55
    invoke-direct {v0, p0}, Lcom/byazt/ysz/sp$1;-><init>(Lcom/byazt/ysz/sp;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Lcom/byazt/bzd/x;->uj(Ljava/lang/Runnable;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_0
    invoke-direct {p0}, Lcom/byazt/ysz/sp;->i()V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method private c(Ljava/util/function/Function;ILjava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 3
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p2}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    move-result-object p2

    .line 5
    invoke-virtual {p2, p3}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    move-result-object p2

    const/4 p3, 0x0

    const-string v0, "com.byted.live.lite"

    .line 6
    invoke-virtual {p2, p3, v0}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    move-result-object p2

    .line 7
    invoke-virtual {p2}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object p2

    .line 8
    invoke-static {p1, p2}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private c(ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/byazt/ysz/sp;->tt(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "status"

    const/4 v2, 0x1

    .line 86
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 87
    :goto_0
    iget-object v1, p0, Lcom/byazt/ysz/a;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/ete/ic;

    if-eqz v1, :cond_0

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/byazt/fri/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private c(ILcom/byazt/eia/i;ZI)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 131
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "handle_result"

    .line 132
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "req_id"

    .line 133
    invoke-interface {p2}, Lcom/byazt/eia/i;->qy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "auth"

    .line 134
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 135
    invoke-interface {p2}, Lcom/byazt/eia/i;->C_()Lcom/byazt/ete/q;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p3, "saas_info"

    .line 136
    invoke-virtual {p1}, Lcom/byazt/ete/q;->c()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string p1, "status"

    .line 137
    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "ext"

    .line 138
    invoke-interface {p2}, Lcom/byazt/eia/i;->w_()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "ec_scheme"

    .line 139
    invoke-interface {p2}, Lcom/byazt/eia/i;->t_()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :catch_0
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/byazt/ukr/yp;->tt(Lorg/json/JSONObject;)V

    return-void
.end method

.method private c(Lcom/byazt/eia/i;Lcom/byazt/ysz/ve;Ljava/lang/String;ZZLjava/lang/String;ILjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/eia/i;",
            "Lcom/byazt/ysz/ve;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 125
    invoke-virtual {p0, p3}, Lcom/byazt/ysz/a;->c(Ljava/lang/String;)I

    move-result p3

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "auth result:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", schema handle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTLiveSDkBridge"

    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-direct {p0, p3, p1, p4, p7}, Lcom/byazt/ysz/sp;->c(ILcom/byazt/eia/i;ZI)V

    const/4 p7, 0x1

    if-eq p3, p7, :cond_0

    if-eqz p2, :cond_1

    .line 128
    invoke-interface {p2, p3}, Lcom/byazt/ysz/ve;->c(I)V

    return-void

    :cond_0
    if-nez p4, :cond_1

    if-eqz p5, :cond_1

    .line 129
    new-instance p2, Lcom/byazt/glq/c;

    invoke-direct {p2}, Lcom/byazt/glq/c;-><init>()V

    invoke-virtual {p2, p6}, Lcom/byazt/glq/c;->c(Ljava/lang/String;)Lcom/byazt/glq/c;

    move-result-object p2

    .line 130
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p2, p3, p8, p1}, Lcom/byazt/glq/c;->c(Landroid/content/Context;Ljava/util/Map;Lcom/byazt/eia/i;)V

    :cond_1
    return-void
.end method

.method public static synthetic c(Lcom/byazt/ysz/sp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/ysz/sp;->i()V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/ysz/sp;Lcom/byazt/eia/i;Lcom/byazt/ysz/ve;Ljava/lang/String;ZZLjava/lang/String;ILjava/util/Map;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p8}, Lcom/byazt/ysz/sp;->c(Lcom/byazt/eia/i;Lcom/byazt/ysz/ve;Ljava/lang/String;ZZLjava/lang/String;ILjava/util/Map;)V

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 104
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "req_id"

    .line 105
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "label"

    .line 106
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mesage"

    .line 107
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :catch_0
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object p1

    const-string p2, "reportPangleEvent"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, v0, p3}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Throwable;)V

    return-void
.end method

.method private c(Ljava/lang/String;ZZ)V
    .locals 4

    .line 61
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "msg"

    .line 62
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "has_install"

    .line 63
    iget-boolean v1, p0, Lcom/byazt/ysz/sp;->rh:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "fake_init"

    .line 64
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-string v1, "init_cost"

    .line 66
    iget-wide v2, p0, Lcom/byazt/ysz/sp;->m:J

    sub-long v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cost"

    .line 67
    iget-wide v2, p0, Lcom/byazt/ysz/sp;->nu:J

    sub-long/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "success"

    .line 68
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "init_max_count"

    .line 69
    invoke-static {}, Lcom/byazt/ogz/da;->tt()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "uuid"

    .line 70
    invoke-static {}, Lcom/byazt/by/c;->ve()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "retry_count"

    .line 71
    iget-object p2, p0, Lcom/byazt/ysz/sp;->gt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "live_plugin_version"

    .line 72
    iget-object p2, p0, Lcom/byazt/ysz/a;->n:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :catch_0
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/byazt/ukr/yp;->uj(Lorg/json/JSONObject;)V

    return-void
.end method

.method private c(Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "allow_apm_init"

    .line 40
    sget-object v1, Lcom/byazt/ogz/uj;->ve:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "allow_npth_init"

    .line 41
    sget-object v1, Lcom/byazt/ogz/uj;->uj:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "allow_vlog_init"

    .line 42
    sget-object v1, Lcom/byazt/ogz/uj;->n:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sec_init_use_thread"

    .line 43
    sget-object v1, Lcom/byazt/ogz/uj;->a:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "live_tob_init_extra"

    .line 44
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private da()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/byazt/ysz/sp;->u:Z

    .line 2
    .line 3
    const-string v1, "TTLiveSDkBridge"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "tryLoad saas hasLoaded"

    .line 8
    .line 9
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/byazt/ysz/sp;->t()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v2, "tryLoad saas failed mHasSaasMetaClicked = "

    .line 22
    .line 23
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-boolean v2, p0, Lcom/byazt/ysz/sp;->sl:Z

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/byazt/ysz/sp;->u:Z

    .line 41
    .line 42
    invoke-static {}, Lcom/byazt/nr/da;->ve()Landroid/os/Handler;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    new-instance v1, Lcom/byazt/ysz/sp$2;

    .line 47
    .line 48
    invoke-direct {v1, p0}, Lcom/byazt/ysz/sp$2;-><init>(Lcom/byazt/ysz/sp;)V

    .line 49
    .line 50
    .line 51
    invoke-direct {p0}, Lcom/byazt/ysz/sp;->sl()J

    .line 52
    .line 53
    .line 54
    move-result-wide v2

    .line 55
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method private i()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/byazt/ysz/sp;->yp()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.byted.live.lite"

    .line 5
    .line 6
    invoke-static {v0}, Lcom/byazt/bzd/u;->tt(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-direct {p0, v1}, Lcom/byazt/ysz/sp;->ve(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iget-object v3, p0, Lcom/byazt/ysz/a;->n:Ljava/lang/String;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/byazt/omf/x;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->fb()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    const/4 v0, -0x4

    .line 35
    iput v0, p0, Lcom/byazt/ysz/sp;->i:I

    .line 36
    .line 37
    const-string v0, "TTLiveSDkBridge"

    .line 38
    .line 39
    const-string v1, "forbiddom init live"

    .line 40
    .line 41
    invoke-static {v0, v1}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    invoke-direct {p0}, Lcom/byazt/ysz/sp;->da()V

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lcom/byazt/omf/tt;->c()Lcom/byazt/it/ve;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string v1, "live_last_init_time"

    .line 53
    .line 54
    const-wide/16 v2, 0x0

    .line 55
    .line 56
    invoke-interface {v0, v1, v2, v3}, Lcom/byazt/it/c;->get(Ljava/lang/String;J)J

    .line 57
    .line 58
    .line 59
    move-result-wide v0

    .line 60
    iput-wide v0, p0, Lcom/byazt/ysz/sp;->z:J

    .line 61
    .line 62
    return-void
.end method

.method private m()Ljava/util/Map;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "app_name"

    .line 15
    .line 16
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/byazt/ogz/sl;->cf()Lcom/byazt/ete/aw;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    const-string v2, "partner"

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/byazt/ete/aw;->ve()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    const-string v2, "p_secret"

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/byazt/ete/aw;->uj()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/byazt/ete/aw;->tt()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-string v2, "g_appid"

    .line 56
    .line 57
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    :cond_0
    const-string v1, "channel"

    .line 61
    .line 62
    const-string v2, "csj_channel"

    .line 63
    .line 64
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    invoke-static {}, Lcom/byazt/nr/m;->ve()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const-string v2, "debug"

    .line 76
    .line 77
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    const-string v1, "ec_host_appid"

    .line 81
    .line 82
    const-string v2, "1371"

    .line 83
    .line 84
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    new-instance v1, Ljava/util/HashMap;

    .line 88
    .line 89
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-static {}, Lcom/byazt/whk/c;->c()Lcom/byazt/whk/c;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    const-string v3, "bytebench_value"

    .line 97
    .line 98
    invoke-static {}, Lcom/byazt/vxy/c;->uj()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    const-string v5, "DeviceRate"

    .line 103
    .line 104
    invoke-virtual {v2, v5, v3, v4}, Lcom/byazt/whk/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    const-string v3, "device_score"

    .line 109
    .line 110
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v2}, Lcom/byazt/omf/x;->sp()Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    const-string v3, "enable_init_oaid"

    .line 122
    .line 123
    const-string v4, "false"

    .line 124
    .line 125
    if-nez v2, :cond_1

    .line 126
    .line 127
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    :cond_1
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-virtual {v2}, Lcom/byazt/omf/x;->u()Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-nez v2, :cond_2

    .line 139
    .line 140
    const-string v2, "can_use_ip"

    .line 141
    .line 142
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    :cond_2
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-virtual {v2}, Lcom/byazt/omf/x;->uj()Z

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    if-nez v2, :cond_3

    .line 154
    .line 155
    const-string v2, "can_use_sensor"

    .line 156
    .line 157
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    :cond_3
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-virtual {v2}, Lcom/byazt/omf/x;->i()Z

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    const/4 v4, 0x0

    .line 169
    if-eqz v2, :cond_5

    .line 170
    .line 171
    const-string v2, "embed_applog"

    .line 172
    .line 173
    invoke-static {v2}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    check-cast v2, Lcom/byazt/dna/ve;

    .line 178
    .line 179
    invoke-interface {v2, v4}, Lcom/byazt/dna/ve;->getOAID(Z)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-static {}, Lcom/byazt/xo/c;->ve()Z

    .line 184
    .line 185
    .line 186
    move-result v5

    .line 187
    if-eqz v5, :cond_4

    .line 188
    .line 189
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 190
    .line 191
    .line 192
    move-result v5

    .line 193
    if-nez v5, :cond_4

    .line 194
    .line 195
    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    invoke-static {v2}, Lcom/byazt/aas/gu;->tt(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    goto :goto_0

    .line 203
    :cond_4
    iget-object v2, p0, Lcom/byazt/ysz/sp;->sp:Lcom/byazt/qh/uj;

    .line 204
    .line 205
    invoke-static {v2}, Lcom/byazt/aas/gu;->tt(Lcom/byazt/qh/uj;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    if-nez v3, :cond_5

    .line 214
    .line 215
    const-string v3, "oaid_object"

    .line 216
    .line 217
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    :cond_5
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    invoke-virtual {v2}, Lcom/byazt/ogz/sl;->ku()Lcom/byazt/ogz/tt;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    if-eqz v2, :cond_6

    .line 229
    .line 230
    invoke-virtual {v2}, Lcom/byazt/ogz/tt;->c()Z

    .line 231
    .line 232
    .line 233
    move-result v2

    .line 234
    const/4 v3, 0x2

    .line 235
    new-array v3, v3, [Ljava/lang/Object;

    .line 236
    .line 237
    const-string v5, "INIT_SUB_PROCESS="

    .line 238
    .line 239
    aput-object v5, v3, v4

    .line 240
    .line 241
    const/4 v4, 0x1

    .line 242
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 243
    .line 244
    .line 245
    move-result-object v5

    .line 246
    aput-object v5, v3, v4

    .line 247
    .line 248
    const-string v4, "TTLiveSDkBridge"

    .line 249
    .line 250
    invoke-static {v4, v3}, Lcom/byazt/nr/m;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    const-string v3, "sub_process"

    .line 254
    .line 255
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    :cond_6
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    invoke-virtual {v2}, Lcom/byazt/omf/x;->nu()Lcom/byazt/dj/uj;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    const-string v3, "c_control"

    .line 271
    .line 272
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    invoke-virtual {v2}, Lcom/byazt/ogz/sl;->ku()Lcom/byazt/ogz/tt;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    if-eqz v2, :cond_9

    .line 284
    .line 285
    invoke-virtual {v2}, Lcom/byazt/ogz/tt;->ve()Lorg/json/JSONObject;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    if-eqz v2, :cond_8

    .line 290
    .line 291
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 296
    .line 297
    .line 298
    move-result v4

    .line 299
    if-eqz v4, :cond_7

    .line 300
    .line 301
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    check-cast v4, Ljava/lang/String;

    .line 306
    .line 307
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v5

    .line 311
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v5

    .line 315
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    goto :goto_1

    .line 319
    :cond_7
    const-string v2, "live_tob_init_extra"

    .line 320
    .line 321
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    goto :goto_2

    .line 325
    :cond_8
    invoke-direct {p0, v0, v1}, Lcom/byazt/ysz/sp;->c(Ljava/util/Map;Ljava/util/Map;)V

    .line 326
    .line 327
    .line 328
    goto :goto_2

    .line 329
    :cond_9
    invoke-direct {p0, v0, v1}, Lcom/byazt/ysz/sp;->c(Ljava/util/Map;Ljava/util/Map;)V

    .line 330
    .line 331
    .line 332
    :goto_2
    return-object v0
.end method

.method private my()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/ogz/da;->uj()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/ysz/sp;->my:Lcom/byazt/qya/n;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/ysz/sp;->my:Lcom/byazt/qya/n;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/byazt/qya/n;->ve()V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public static synthetic n(Lcom/byazt/ysz/sp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/ysz/sp;->nu()V

    return-void
.end method

.method private nu()V
    .locals 2

    .line 1
    const-string v0, "getLiveSdkConfig"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/byazt/ysz/sp;->tt(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    instance-of v1, v0, Lorg/json/JSONObject;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast v0, Lorg/json/JSONObject;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/byazt/ysz/c;->ve:Lorg/json/JSONObject;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private rh()V
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "init_max_count"

    .line 7
    .line 8
    invoke-static {}, Lcom/byazt/ogz/da;->tt()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    .line 18
    .line 19
    const-string v1, "uuid"

    .line 20
    .line 21
    invoke-static {}, Lcom/byazt/by/c;->ve()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    .line 27
    .line 28
    const-string v1, "has_install"

    .line 29
    .line 30
    iget-boolean v2, p0, Lcom/byazt/ysz/sp;->rh:Z

    .line 31
    .line 32
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    .line 38
    .line 39
    const-string v1, "retry_count"

    .line 40
    .line 41
    iget-object v2, p0, Lcom/byazt/ysz/sp;->gt:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 48
    .line 49
    .line 50
    const-string v1, "live_plugin_version"

    .line 51
    .line 52
    iget-object v2, p0, Lcom/byazt/ysz/a;->n:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    :catch_0
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1, v0}, Lcom/byazt/ukr/yp;->n(Lorg/json/JSONObject;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method private sl()J
    .locals 7

    .line 1
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->ku()Lcom/byazt/ogz/tt;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget v1, Lcom/byazt/ogz/uj;->c:I

    .line 10
    .line 11
    int-to-long v1, v1

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/byazt/ogz/tt;->tt()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    iget-wide v5, p0, Lcom/byazt/ysz/sp;->t:J

    .line 23
    .line 24
    sub-long/2addr v3, v5

    .line 25
    cmp-long v0, v3, v1

    .line 26
    .line 27
    if-lez v0, :cond_1

    .line 28
    .line 29
    const-wide/16 v0, 0x0

    .line 30
    .line 31
    return-wide v0

    .line 32
    :cond_1
    return-wide v1
.end method

.method private t()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/omf/x;->i()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/ysz/sp;->sp:Lcom/byazt/qh/uj;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    return v0

    .line 17
    :cond_0
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->ku()Lcom/byazt/ogz/tt;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/byazt/ogz/tt;->n()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-boolean v0, p0, Lcom/byazt/ysz/sp;->sl:Z

    .line 34
    .line 35
    return v0

    .line 36
    :cond_1
    sget-boolean v0, Lcom/byazt/ogz/uj;->tt:Z

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-boolean v0, p0, Lcom/byazt/ysz/sp;->sl:Z

    .line 41
    .line 42
    return v0

    .line 43
    :cond_2
    const/4 v0, 0x1

    .line 44
    return v0
.end method

.method private tt(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 3
    iget v0, p0, Lcom/byazt/ysz/sp;->i:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "callSimpleExpandMethod "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed for plugin state = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/byazt/ysz/sp;->i:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TTLiveSDkBridge"

    invoke-static {v0, p1}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 5
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "expand_method_name"

    .line 6
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Lcom/byazt/ysz/c;->c:Ljava/util/function/Function;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/byazt/ysz/c;->c:Ljava/util/function/Function;

    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object v1

    const/4 v2, 0x7

    .line 8
    invoke-virtual {v1, v2}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    move-result-object v1

    const-class v2, Ljava/lang/Void;

    .line 9
    invoke-virtual {v1, v2}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    move-result-object v1

    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, v2, v0}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object v0

    .line 12
    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v2
.end method

.method private tt(ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    .line 13
    iget-object v0, p0, Lcom/byazt/ysz/a;->a:Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/byazt/ysz/a;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 14
    iget-object v0, p0, Lcom/byazt/ysz/a;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/ete/ic;

    .line 15
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->rl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 16
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->sl()Lcom/byazt/ete/sv;

    move-result-object p2

    if-nez p2, :cond_0

    return-object v1

    .line 17
    :cond_0
    invoke-virtual {p2}, Lcom/byazt/ete/sv;->x()Lorg/json/JSONArray;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 18
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 20
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "type"

    .line 21
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, p1, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v1
.end method

.method public static synthetic tt(Lcom/byazt/ysz/sp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/ysz/sp;->u()V

    return-void
.end method

.method private u()V
    .locals 5

    .line 1
    const-string v0, "doInitLive"

    .line 2
    .line 3
    const-string v1, "TTLiveSDkBridge"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    iput-wide v2, p0, Lcom/byazt/ysz/sp;->nu:J

    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/ysz/c;->c:Ljava/util/function/Function;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, v2}, Lcom/byazt/omf/x;->a(I)Ljava/util/function/Function;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/byazt/ysz/c;->c:Ljava/util/function/Function;

    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/byazt/ysz/c;->c:Ljava/util/function/Function;

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/byazt/ysz/c;->c:Ljava/util/function/Function;

    .line 35
    .line 36
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const/16 v4, 0x9

    .line 41
    .line 42
    invoke-virtual {v1, v4}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const-class v4, Ljava/lang/Void;

    .line 47
    .line 48
    invoke-virtual {v1, v4}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    new-instance v4, Lcom/byazt/cn/c;

    .line 53
    .line 54
    invoke-direct {v4, p0}, Lcom/byazt/cn/c;-><init>(Lcom/byazt/ysz/sp;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v3, v4}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-static {v0, v1}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const-string v0, "No bridge for live"

    .line 70
    .line 71
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :goto_0
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/byazt/omf/x;->lt()Ljava/util/function/Function;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-eqz v0, :cond_2

    .line 83
    .line 84
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    const/4 v4, 0x6

    .line 89
    invoke-virtual {v1, v4}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    const-class v4, Ljava/lang/Boolean;

    .line 94
    .line 95
    invoke-virtual {v1, v4}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    const-string v4, "com.byted.live.lite"

    .line 100
    .line 101
    invoke-virtual {v1, v3, v4}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v1}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-static {v0, v1}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    if-eqz v0, :cond_2

    .line 114
    .line 115
    check-cast v0, Ljava/lang/Boolean;

    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    :cond_2
    if-eqz v3, :cond_3

    .line 122
    .line 123
    iget v0, p0, Lcom/byazt/ysz/sp;->i:I

    .line 124
    .line 125
    if-eq v0, v2, :cond_3

    .line 126
    .line 127
    const/4 v0, 0x1

    .line 128
    iput v0, p0, Lcom/byazt/ysz/sp;->i:I

    .line 129
    .line 130
    :cond_3
    invoke-virtual {p0}, Lcom/byazt/ysz/sp;->tt()I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    const-string v1, "1"

    .line 135
    .line 136
    const-string v3, "0"

    .line 137
    .line 138
    if-lez v0, :cond_4

    .line 139
    .line 140
    move-object v0, v1

    .line 141
    goto :goto_1

    .line 142
    :cond_4
    move-object v0, v3

    .line 143
    :goto_1
    const/16 v4, 0x15

    .line 144
    .line 145
    invoke-static {v4, v0}, Lcom/byazt/zlb/ve;->ve(ILjava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/byazt/ysz/sp;->tt()I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-ne v0, v2, :cond_5

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_5
    move-object v1, v3

    .line 156
    :goto_2
    const/16 v0, 0x14

    .line 157
    .line 158
    invoke-static {v0, v1}, Lcom/byazt/zlb/ve;->ve(ILjava/lang/String;)V

    .line 159
    .line 160
    .line 161
    return-void
.end method

.method public static synthetic uj(Lcom/byazt/ysz/sp;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ysz/sp;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private uj(Lcom/byazt/eia/i;)Z
    .locals 3

    .line 18
    invoke-interface {p1}, Lcom/byazt/eia/i;->q_()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "landing_type"

    .line 19
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    return v2

    .line 20
    :cond_1
    invoke-interface {p1}, Lcom/byazt/eia/i;->da()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    .line 22
    :cond_2
    invoke-static {p1}, Lcom/byazt/wu/c;->c(Lcom/byazt/eia/i;)Z

    move-result p1

    return p1
.end method

.method private uj(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "csj_saas"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/byazt/ysz/sp;->da:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/byazt/ysz/sp;->da:Ljava/util/Set;

    .line 7
    iget-object v0, p0, Lcom/byazt/ysz/sp;->da:Ljava/util/Set;

    const-string v1, "saas_easyplayable"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Lcom/byazt/ysz/sp;->da:Ljava/util/Set;

    const-string v1, "real_auth_status"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v0, p0, Lcom/byazt/ysz/sp;->da:Ljava/util/Set;

    const-string v1, "live_panel"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v0, p0, Lcom/byazt/ysz/sp;->da:Ljava/util/Set;

    const-string v1, "live_exit"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v0, p0, Lcom/byazt/ysz/sp;->da:Ljava/util/Set;

    const-string v1, "mnpl_user_close"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v0, p0, Lcom/byazt/ysz/sp;->da:Ljava/util/Set;

    const-string v2, "clickarea"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v0, p0, Lcom/byazt/ysz/sp;->da:Ljava/util/Set;

    const-string v2, "enterSection"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v0, p0, Lcom/byazt/ysz/sp;->da:Ljava/util/Set;

    const-string v2, "mini_playable_real_show"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v0, p0, Lcom/byazt/ysz/sp;->da:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v0, p0, Lcom/byazt/ysz/sp;->da:Ljava/util/Set;

    const-string v1, "mnpl_sdk_lifecycle_status"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/byazt/ysz/sp;->da:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public static synthetic ve(Lcom/byazt/ysz/sp;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/ysz/sp;->i:I

    return p0
.end method

.method private ve(I)Ljava/lang/String;
    .locals 3

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 6
    aget-char v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    const-string v2, "."

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private ve(Ljava/lang/String;)V
    .locals 3

    .line 10
    invoke-static {}, Lcom/byazt/ogz/da;->uj()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 11
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "UnknownHostException"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SocketException"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "device_info_new"

    .line 12
    invoke-static {p1}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/dna/u;

    const-wide/16 v0, 0x0

    invoke-interface {p1, v0, v1}, Lcom/byazt/dna/u;->getRealNetworkType(J)I

    move-result p1

    if-nez p1, :cond_2

    .line 13
    invoke-static {}, Lcom/byazt/qya/ve;->c()Lcom/byazt/qya/ve;

    move-result-object p1

    new-instance v0, Lcom/byazt/ysz/sp$3;

    invoke-direct {v0, p0}, Lcom/byazt/ysz/sp$3;-><init>(Lcom/byazt/ysz/sp;)V

    invoke-virtual {p1, v0}, Lcom/byazt/qya/ve;->c(Lcom/byazt/qya/ve$tt;)V

    return-void

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/byazt/ysz/sp;->my:Lcom/byazt/qya/n;

    if-nez p1, :cond_3

    .line 15
    new-instance p1, Lcom/byazt/ysz/sp$4;

    invoke-direct {p1, p0}, Lcom/byazt/ysz/sp$4;-><init>(Lcom/byazt/ysz/sp;)V

    .line 16
    new-instance v0, Lcom/byazt/qya/n$c;

    invoke-direct {v0, p1}, Lcom/byazt/qya/n$c;-><init>(Ljava/util/concurrent/Callable;)V

    const-wide/16 v1, 0x2710

    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/byazt/qya/n$c;->c(J)Lcom/byazt/qya/n$c;

    move-result-object p1

    .line 18
    invoke-static {}, Lcom/byazt/ogz/da;->tt()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/byazt/qya/n$c;->c(I)Lcom/byazt/qya/n$c;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/byazt/qya/n$c;->c()Lcom/byazt/qya/n;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/ysz/sp;->my:Lcom/byazt/qya/n;

    .line 20
    iget-object p1, p0, Lcom/byazt/ysz/sp;->my:Lcom/byazt/qya/n;

    invoke-virtual {p1}, Lcom/byazt/qya/n;->tt()V

    :cond_3
    :goto_0
    return-void
.end method

.method private yp()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/omf/x;->lt()Ljava/util/function/Function;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/16 v1, 0x8

    .line 13
    .line 14
    const-class v2, Ljava/lang/String;

    .line 15
    .line 16
    invoke-direct {p0, v0, v1, v2}, Lcom/byazt/ysz/sp;->c(Ljava/util/function/Function;ILjava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/byazt/ysz/a;->a_(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private z()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget v1, Lcom/byazt/omf/p;->uj:I

    .line 3
    .line 4
    const/16 v2, 0x1b58

    .line 5
    .line 6
    if-lt v1, v2, :cond_1

    .line 7
    .line 8
    iget-object v1, p0, Lcom/byazt/ysz/a;->n:Ljava/lang/String;

    .line 9
    .line 10
    const-string v2, "\\."

    .line 11
    .line 12
    const-string v3, ""

    .line 13
    .line 14
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    const-string v1, "com.byted.live.lite"

    .line 25
    .line 26
    invoke-static {v1}, Lcom/byazt/bzd/u;->ve(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :cond_0
    const v2, 0x339d5

    .line 31
    .line 32
    .line 33
    if-gt v1, v2, :cond_1

    .line 34
    .line 35
    return v0

    .line 36
    :catch_0
    nop

    .line 37
    :cond_1
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Lcom/byazt/ogz/sl;->cf()Lcom/byazt/ete/aw;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v3}, Lcom/byazt/omf/x;->zm()Lcom/byazt/eli/c;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v3}, Lcom/byazt/eli/c;->tt()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/byazt/ete/aw;->n()Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_2

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/byazt/ogz/sl;->fb()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    const/4 v1, 0x4

    .line 72
    if-eq v3, v1, :cond_2

    .line 73
    .line 74
    const/4 v1, 0x5

    .line 75
    if-eq v3, v1, :cond_2

    .line 76
    .line 77
    const/4 v0, 0x1

    .line 78
    :cond_2
    return v0
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/ysz/sp;->i:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    return v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public c(Lcom/byazt/eia/i;Lcom/byazt/ysz/ve;Ljava/lang/String;Ljava/util/Map;)I
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/eia/i;",
            "Lcom/byazt/ysz/ve;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p4

    const/4 v14, 0x0

    if-nez v12, :cond_0

    return v14

    .line 109
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/byazt/eia/i;->t_()Ljava/lang/String;

    move-result-object v15

    .line 110
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v14

    .line 111
    :cond_1
    iget v0, v11, Lcom/byazt/ysz/sp;->i:I

    const/4 v9, 0x2

    if-eq v0, v9, :cond_2

    const/4 v0, -0x1

    return v0

    :cond_2
    move-object/from16 v10, p3

    .line 112
    iput-object v10, v11, Lcom/byazt/ysz/c;->tt:Ljava/lang/String;

    .line 113
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-static {v12, v13}, Lcom/byazt/ppf/ve;->c(Ljava/lang/Object;Ljava/util/Map;)Lcom/byazt/ete/ic;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, v11, Lcom/byazt/ysz/a;->a:Ljava/lang/ref/SoftReference;

    .line 114
    invoke-interface/range {p1 .. p1}, Lcom/byazt/eia/i;->C_()Lcom/byazt/ete/q;

    move-result-object v16

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/ysz/sp;->n()I

    move-result v0

    if-eq v9, v0, :cond_6

    if-eqz v16, :cond_6

    .line 116
    invoke-virtual/range {v16 .. v16}, Lcom/byazt/ete/q;->uj()I

    move-result v0

    const/4 v8, 0x1

    if-ne v0, v8, :cond_3

    const/16 v17, 0x1

    goto :goto_0

    :cond_3
    const/16 v17, 0x0

    .line 117
    :goto_0
    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v7, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 119
    new-instance v6, Lcom/byazt/ysz/sp$7;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v7

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object v5, v15

    move-object v14, v6

    move/from16 v6, v17

    move-object/from16 v20, v7

    move-object/from16 v7, p3

    move-object/from16 v21, v15

    const/4 v15, 0x1

    move-object/from16 v8, p4

    const/16 v22, 0x2

    move-wide/from16 v9, v18

    invoke-direct/range {v0 .. v10}, Lcom/byazt/ysz/sp$7;-><init>(Lcom/byazt/ysz/sp;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/byazt/eia/i;Lcom/byazt/ysz/ve;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;J)V

    .line 120
    invoke-virtual {v11, v12, v14, v15, v13}, Lcom/byazt/ysz/a;->c(Lcom/byazt/eia/i;Lcom/byazt/ysz/a$c;ZLjava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 121
    invoke-virtual/range {v16 .. v16}, Lcom/byazt/ete/q;->n()J

    move-result-wide v9

    const-wide/16 v0, 0x0

    cmp-long v2, v9, v0

    if-lez v2, :cond_4

    .line 122
    invoke-static {}, Lcom/byazt/nr/da;->tt()Landroid/os/Handler;

    move-result-object v14

    new-instance v15, Lcom/byazt/ysz/sp$8;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, v21

    move/from16 v6, v17

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/byazt/ysz/sp$8;-><init>(Lcom/byazt/ysz/sp;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/byazt/eia/i;Lcom/byazt/ysz/ve;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v14, v15, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return v22

    :cond_5
    move-object/from16 v0, v21

    goto :goto_1

    :cond_6
    move-object v0, v15

    .line 123
    :goto_1
    invoke-virtual {v11, v0}, Lcom/byazt/ysz/a;->c(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 124
    invoke-direct {v11, v0, v12, v1, v1}, Lcom/byazt/ysz/sp;->c(ILcom/byazt/eia/i;ZI)V

    return v0
.end method

.method public c()V
    .locals 6

    .line 9
    invoke-static {}, Lcom/byazt/ogz/da;->uj()Z

    move-result v0

    const-string v1, "TTLiveSDkBridge"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/ysz/sp;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget v0, p0, Lcom/byazt/ysz/sp;->i:I

    const/4 v2, -0x3

    if-eq v0, v2, :cond_1

    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/byazt/ysz/sp;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "already init!"

    .line 12
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 13
    :cond_1
    invoke-static {}, Lcom/byazt/ogz/da;->uj()Z

    move-result v0

    const-string v2, "plugin not Load! "

    const/4 v3, 0x5

    if-eqz v0, :cond_2

    .line 14
    iget-boolean v0, p0, Lcom/byazt/ysz/sp;->yp:Z

    if-nez v0, :cond_3

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/byazt/ysz/sp;->i:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 16
    :cond_2
    iget v0, p0, Lcom/byazt/ysz/sp;->i:I

    if-eq v0, v3, :cond_3

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/byazt/ysz/sp;->i:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 18
    :cond_3
    iget v0, p0, Lcom/byazt/ysz/sp;->i:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "init started or successed:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/byazt/ysz/sp;->i:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 20
    :cond_4
    invoke-direct {p0}, Lcom/byazt/ysz/sp;->z()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "init live failed\uff01 not valid env\uff01"

    .line 21
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 22
    :cond_5
    iget-object v0, p0, Lcom/byazt/ysz/a;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/byazt/wu/tt;->ve(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 23
    iget-object v0, p0, Lcom/byazt/ysz/a;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/byazt/wu/tt;->uj(Ljava/lang/String;)V

    return-void

    :cond_6
    const-string v0, "com.byted.live.lite"

    .line 24
    invoke-static {v0}, Lcom/byazt/bzd/u;->x(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/byazt/ysz/sp;->rh:Z

    .line 25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/byazt/ysz/sp;->m:J

    .line 26
    iget-object v0, p0, Lcom/byazt/ysz/sp;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 27
    iget-object v0, p0, Lcom/byazt/ysz/a;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/byazt/wu/tt;->c(Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 28
    iput v0, p0, Lcom/byazt/ysz/sp;->i:I

    .line 29
    iget-object v0, p0, Lcom/byazt/ysz/c;->c:Ljava/util/function/Function;

    if-eqz v0, :cond_7

    const-string v0, "liveSDkBridge init invoke 5500"

    .line 30
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/byazt/ysz/c;->c:Ljava/util/function/Function;

    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object v1

    .line 32
    invoke-virtual {v1, v3}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    move-result-object v1

    const-class v2, Ljava/lang/Void;

    .line 33
    invoke-virtual {v1, v2}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    move-result-object v1

    const/4 v2, 0x0

    .line 34
    invoke-direct {p0}, Lcom/byazt/ysz/sp;->m()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object v1

    .line 36
    invoke-static {v0, v1}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lcom/byazt/ysz/sp;->gt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 38
    invoke-direct {p0}, Lcom/byazt/ysz/sp;->rh()V

    .line 39
    :cond_7
    iget-object v0, p0, Lcom/byazt/ysz/a;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/byazt/wu/tt;->tt(Ljava/lang/String;)V

    return-void
.end method

.method public c(ILjava/lang/String;ZZ)V
    .locals 6

    .line 45
    iget v0, p0, Lcom/byazt/ysz/sp;->i:I

    .line 46
    iput p1, p0, Lcom/byazt/ysz/sp;->i:I

    const/4 v1, -0x3

    if-eq p1, v1, :cond_4

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-eq p1, v1, :cond_3

    const/16 v1, 0x15

    const-string v3, "1"

    if-eq p1, v2, :cond_2

    const/4 v4, 0x2

    if-eq p1, v4, :cond_0

    return-void

    .line 47
    :cond_0
    invoke-direct {p0}, Lcom/byazt/ysz/sp;->my()V

    .line 48
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/byazt/ysz/sp;->z:J

    if-nez p3, :cond_1

    .line 49
    iget p1, p0, Lcom/byazt/ysz/sp;->i:I

    if-eq p1, v0, :cond_1

    .line 50
    invoke-direct {p0, p2, p4, v2}, Lcom/byazt/ysz/sp;->c(Ljava/lang/String;ZZ)V

    .line 51
    :cond_1
    invoke-static {v1, v3}, Lcom/byazt/zlb/ve;->ve(ILjava/lang/String;)V

    const/16 p1, 0x14

    .line 52
    invoke-static {p1, v3}, Lcom/byazt/zlb/ve;->ve(ILjava/lang/String;)V

    .line 53
    invoke-direct {p0}, Lcom/byazt/ysz/sp;->yp()V

    .line 54
    invoke-direct {p0}, Lcom/byazt/ysz/sp;->nu()V

    .line 55
    invoke-static {}, Lcom/byazt/omf/tt;->c()Lcom/byazt/it/ve;

    move-result-object p1

    const-string p2, "live_last_init_time"

    iget-wide p3, p0, Lcom/byazt/ysz/sp;->z:J

    invoke-interface {p1, p2, p3, p4}, Lcom/byazt/it/c;->put(Ljava/lang/String;J)V

    return-void

    .line 56
    :cond_2
    invoke-static {v1, v3}, Lcom/byazt/zlb/ve;->ve(ILjava/lang/String;)V

    return-void

    .line 57
    :cond_3
    iput-boolean v2, p0, Lcom/byazt/ysz/sp;->yp:Z

    return-void

    :cond_4
    if-nez p3, :cond_5

    .line 58
    iget p1, p0, Lcom/byazt/ysz/sp;->i:I

    if-eq p1, v0, :cond_5

    const/4 p1, 0x0

    .line 59
    invoke-direct {p0, p2, p4, p1}, Lcom/byazt/ysz/sp;->c(Ljava/lang/String;ZZ)V

    .line 60
    :cond_5
    invoke-direct {p0, p2}, Lcom/byazt/ysz/sp;->ve(Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/byazt/qh/uj;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/byazt/ysz/sp;->sp:Lcom/byazt/qh/uj;

    .line 142
    invoke-direct {p0}, Lcom/byazt/ysz/sp;->i()V

    return-void
.end method

.method public c(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "label"

    .line 89
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "req_id"

    .line 90
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 91
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 92
    :cond_0
    invoke-direct {p0, v0}, Lcom/byazt/ysz/sp;->uj(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "not valid label "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TTLiveSDkBridge"

    invoke-static {v0, p1}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 94
    :cond_1
    iget-object v2, p0, Lcom/byazt/ysz/a;->a:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_2

    .line 95
    iget-object v2, p0, Lcom/byazt/ysz/a;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/ete/ic;

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    const-string v3, "ad_extra_data"

    .line 96
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 97
    new-instance v3, Lcom/byazt/ysz/sp$6;

    invoke-direct {v3, p0, p1, v1}, Lcom/byazt/ysz/sp$6;-><init>(Lcom/byazt/ysz/sp;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_4

    .line 98
    iget-object p1, p0, Lcom/byazt/ysz/c;->tt:Ljava/lang/String;

    invoke-static {v2, p1, v0, v3}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    .line 99
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->qy()Ljava/lang/String;

    move-result-object p1

    .line 100
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mate req is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, v0, p1}, Lcom/byazt/ysz/sp;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    .line 102
    :cond_4
    new-instance p1, Lcom/byazt/ddx/c$c;

    invoke-direct {p1}, Lcom/byazt/ddx/c$c;-><init>()V

    iget-object v2, p0, Lcom/byazt/ysz/c;->tt:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/byazt/ddx/c$c;->c(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/byazt/ddx/c$c;->tt(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/byazt/ddx/c$c;->c(Lcom/byazt/ya/c;)V

    const-string p1, "mate is null"

    .line 103
    invoke-direct {p0, v1, v0, p1}, Lcom/byazt/ysz/sp;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(ZLjava/lang/String;)V
    .locals 4

    .line 74
    new-instance v0, Lcom/byazt/ysz/sp$5;

    const-string v1, "getLiveSdk"

    invoke-direct {v0, p0, v1}, Lcom/byazt/ysz/sp$5;-><init>(Lcom/byazt/ysz/sp;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Lcom/byazt/bwm/sp;)V

    .line 75
    iget-object v0, p0, Lcom/byazt/ysz/a;->a:Ljava/lang/ref/SoftReference;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/byazt/ysz/a;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/byazt/ysz/a;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/ete/ic;

    if-eqz p1, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 77
    :goto_0
    iget-object v3, p0, Lcom/byazt/ysz/c;->tt:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/byazt/ysz/c;->tt:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v3, ""

    :goto_1
    invoke-static {v2, v3, v0}, Lcom/byazt/ddx/uj;->c(ILjava/lang/String;Lcom/byazt/ete/ic;)V

    :cond_2
    if-eqz p1, :cond_4

    .line 78
    iget-object p1, p0, Lcom/byazt/ysz/a;->uj:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 79
    const-class v0, Lcom/byazt/ocd/tt;

    .line 80
    invoke-static {p1, v0}, Lcom/byazt/omf/rl;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/ocd/tt;

    if-nez p1, :cond_3

    return-void

    .line 81
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "open_uid"

    .line 82
    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-virtual {p1, v1, v0}, Lcom/byazt/ocd/tt;->c(ILjava/util/Map;)V

    const/16 p1, 0x2712

    .line 84
    iget-object p2, p0, Lcom/byazt/ysz/a;->uj:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/byazt/ysz/sp;->c(ILjava/lang/String;)Lorg/json/JSONObject;

    :cond_4
    return-void
.end method

.method public n()I
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/ysz/c;->c:Ljava/util/function/Function;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/byazt/ysz/sp;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "hasAuthenticated"

    .line 3
    invoke-direct {p0, v0}, Lcom/byazt/ysz/sp;->tt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 5
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public tt()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/byazt/ysz/sp;->i:I

    return v0
.end method

.method public tt(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 22
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "type"

    .line 23
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "status"

    .line 24
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "open_uid"

    .line 25
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "task_key"

    .line 26
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v4, "1"

    .line 27
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "TTLiveSDkBridge"

    if-eqz v4, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 28
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 29
    invoke-direct {p0, v0, p1}, Lcom/byazt/ysz/sp;->tt(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "extra"

    .line 30
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string v0, "callback"

    .line 31
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 33
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "name"

    .line 34
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 36
    :cond_3
    iget-object p1, p0, Lcom/byazt/ysz/a;->uj:Ljava/lang/String;

    const-class v1, Lcom/byazt/ocd/tt;

    .line 37
    invoke-static {p1, v1}, Lcom/byazt/omf/rl;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/ocd/tt;

    if-nez p1, :cond_4

    return-void

    .line 38
    :cond_4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 39
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 41
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 42
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    const/4 v0, 0x3

    .line 43
    invoke-virtual {p1, v0, v1}, Lcom/byazt/ocd/tt;->c(ILjava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "onTaskFinish parse extra error"

    .line 44
    invoke-static {v5, v0, p1}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 45
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onTaskFinish status is :"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public uj()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/ysz/c;->c:Ljava/util/function/Function;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/byazt/ysz/sp;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "warmingUpBeforeEnter"

    .line 3
    invoke-direct {p0, v0}, Lcom/byazt/ysz/sp;->tt(Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public ve()J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/byazt/ysz/sp;->z:J

    return-wide v0
.end method

.method public ve(Lcom/byazt/eia/i;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 21
    :cond_0
    iget-boolean v0, p0, Lcom/byazt/ysz/sp;->sl:Z

    if-eqz v0, :cond_1

    return-void

    .line 22
    :cond_1
    invoke-direct {p0, p1}, Lcom/byazt/ysz/sp;->uj(Lcom/byazt/eia/i;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/byazt/ysz/sp;->sl:Z

    .line 24
    invoke-direct {p0}, Lcom/byazt/ysz/sp;->i()V

    :cond_2
    return-void
.end method

.method public ve(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/byazt/ysz/a;->uj:Ljava/lang/String;

    const-class v1, Lcom/byazt/ocd/tt;

    .line 26
    invoke-static {v0, v1}, Lcom/byazt/omf/rl;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/ocd/tt;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x4

    .line 27
    invoke-virtual {v0, v1, p1}, Lcom/byazt/ocd/tt;->c(ILjava/util/Map;)V

    return-void
.end method

.method public x()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ysz/c;->ve:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method
