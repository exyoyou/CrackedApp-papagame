.class public Lcom/byazt/jzl/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/jzl/tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x626,
        0x2e
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/jzl/n$c;
    }
.end annotation


# static fields
.field public static final rl:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public a:I

.field public c:Ljava/lang/StringBuilder;

.field public da:D

.field public gr:I

.field public gt:I

.field public gu:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public m:I

.field public my:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public nu:I

.field public qy:I

.field public rh:Z

.field public sl:D

.field public sp:Ljava/lang/String;

.field public t:J

.field public tt:Lorg/json/JSONArray;

.field public u:J

.field public uj:Ljava/lang/String;

.field public ve:Ljava/lang/String;

.field public x:Ljava/lang/StringBuilder;

.field public yp:J

.field public z:I

.field public zm:Lorg/json/JSONObject;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/jzl/n;->rl:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/byazt/jzl/n;->c:Ljava/lang/StringBuilder;

    .line 4
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/byazt/jzl/n;->tt:Lorg/json/JSONArray;

    const/16 v0, -0x22b8

    .line 5
    iput v0, p0, Lcom/byazt/jzl/n;->nu:I

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcom/byazt/jzl/n;->rh:Z

    .line 7
    iput v0, p0, Lcom/byazt/jzl/n;->gt:I

    .line 8
    iput v1, p0, Lcom/byazt/jzl/n;->qy:I

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/byazt/jzl/n;->gr:I

    .line 10
    sget-object v0, Lcom/byazt/jzl/n;->rl:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    iput v0, p0, Lcom/byazt/jzl/n;->qy:I

    return-void
.end method

.method private constructor <init>(Lcom/byazt/jzl/n$c;)V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/byazt/jzl/n;->c:Ljava/lang/StringBuilder;

    .line 13
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/byazt/jzl/n;->tt:Lorg/json/JSONArray;

    const/16 v0, -0x22b8

    .line 14
    iput v0, p0, Lcom/byazt/jzl/n;->nu:I

    const/4 v1, 0x0

    .line 15
    iput-boolean v1, p0, Lcom/byazt/jzl/n;->rh:Z

    .line 16
    iput v0, p0, Lcom/byazt/jzl/n;->gt:I

    .line 17
    iput v1, p0, Lcom/byazt/jzl/n;->qy:I

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lcom/byazt/jzl/n;->gr:I

    .line 19
    invoke-static {p1}, Lcom/byazt/jzl/n$c;->c(Lcom/byazt/jzl/n$c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/jzl/n;->ve:Ljava/lang/String;

    .line 20
    invoke-static {p1}, Lcom/byazt/jzl/n$c;->tt(Lcom/byazt/jzl/n$c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/jzl/n;->uj:Ljava/lang/String;

    .line 21
    invoke-static {p1}, Lcom/byazt/jzl/n$c;->ve(Lcom/byazt/jzl/n$c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/jzl/n;->n:Ljava/lang/String;

    .line 22
    invoke-static {p1}, Lcom/byazt/jzl/n$c;->uj(Lcom/byazt/jzl/n$c;)I

    move-result v0

    iput v0, p0, Lcom/byazt/jzl/n;->a:I

    .line 23
    invoke-static {p1}, Lcom/byazt/jzl/n$c;->n(Lcom/byazt/jzl/n$c;)I

    move-result v0

    iput v0, p0, Lcom/byazt/jzl/n;->z:I

    .line 24
    invoke-static {p1}, Lcom/byazt/jzl/n$c;->a(Lcom/byazt/jzl/n$c;)I

    move-result v0

    iput v0, p0, Lcom/byazt/jzl/n;->gr:I

    .line 25
    invoke-static {p1}, Lcom/byazt/jzl/n$c;->sp(Lcom/byazt/jzl/n$c;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/jzl/n;->yp:J

    .line 26
    invoke-static {p1}, Lcom/byazt/jzl/n$c;->x(Lcom/byazt/jzl/n$c;)I

    move-result v0

    iput v0, p0, Lcom/byazt/jzl/n;->m:I

    .line 27
    invoke-static {p1}, Lcom/byazt/jzl/n$c;->i(Lcom/byazt/jzl/n$c;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/jzl/n;->da:D

    .line 28
    invoke-static {p1}, Lcom/byazt/jzl/n$c;->da(Lcom/byazt/jzl/n$c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/jzl/n;->gu:Ljava/lang/String;

    .line 29
    invoke-static {p1}, Lcom/byazt/jzl/n$c;->sl(Lcom/byazt/jzl/n$c;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/jzl/n;->zm:Lorg/json/JSONObject;

    .line 30
    invoke-static {p1}, Lcom/byazt/jzl/n$c;->t(Lcom/byazt/jzl/n$c;)Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/byazt/jzl/n;->x:Ljava/lang/StringBuilder;

    .line 33
    sget-object p1, Lcom/byazt/jzl/n;->rl:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result p1

    iput p1, p0, Lcom/byazt/jzl/n;->qy:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/jzl/n$c;Lcom/byazt/jzl/n$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/jzl/n;-><init>(Lcom/byazt/jzl/n$c;)V

    return-void
.end method

.method private tt()Lorg/json/JSONObject;
    .locals 5

    .line 5
    iget-object v0, p0, Lcom/byazt/jzl/n;->zm:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    :try_start_0
    const-string v1, "session_id"

    .line 7
    iget-object v2, p0, Lcom/byazt/jzl/n;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "node_line"

    .line 8
    iget-object v2, p0, Lcom/byazt/jzl/n;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "node_line_detail"

    .line 9
    iget-object v2, p0, Lcom/byazt/jzl/n;->tt:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "video_url"

    .line 10
    iget-object v2, p0, Lcom/byazt/jzl/n;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "video_duration"

    .line 11
    iget-wide v2, p0, Lcom/byazt/jzl/n;->da:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "video_size"

    .line 12
    iget-wide v2, p0, Lcom/byazt/jzl/n;->sl:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 13
    iget-wide v1, p0, Lcom/byazt/jzl/n;->u:J

    iget-wide v3, p0, Lcom/byazt/jzl/n;->t:J

    sub-long/2addr v1, v3

    const-string v3, "start_duration"

    .line 14
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/byazt/jzl/n;->t:J

    sub-long/2addr v1, v3

    const-string v3, "play_duration"

    .line 16
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "play_cache_size"

    .line 17
    iget-wide v2, p0, Lcom/byazt/jzl/n;->yp:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "play_type"

    .line 18
    iget v2, p0, Lcom/byazt/jzl/n;->z:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "player_type"

    .line 19
    iget v2, p0, Lcom/byazt/jzl/n;->m:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "video_index"

    .line 20
    iget v2, p0, Lcom/byazt/jzl/n;->qy:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "is_audio"

    .line 21
    iget-boolean v2, p0, Lcom/byazt/jzl/n;->rh:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "dynamic_join_type"

    .line 22
    iget v2, p0, Lcom/byazt/jzl/n;->gr:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 23
    iget v1, p0, Lcom/byazt/jzl/n;->nu:I

    const/16 v2, -0x22b8

    if-eq v1, v2, :cond_2

    const-string v3, "error_code"

    .line 24
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    const-string v1, "error_msg"

    .line 25
    iget-object v3, p0, Lcom/byazt/jzl/n;->my:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    iget v1, p0, Lcom/byazt/jzl/n;->gt:I

    if-eq v1, v2, :cond_3

    const-string v2, "extra_error_code"

    .line 27
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-object v0
.end method


# virtual methods
.method public c()Lorg/json/JSONObject;
    .locals 3

    .line 4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "rit"

    .line 5
    iget-object v2, p0, Lcom/byazt/jzl/n;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cid"

    .line 6
    iget-object v2, p0, Lcom/byazt/jzl/n;->uj:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "adtype"

    .line 7
    iget v2, p0, Lcom/byazt/jzl/n;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "req_id"

    .line 8
    iget-object v2, p0, Lcom/byazt/jzl/n;->ve:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "duration"

    .line 9
    iget-object v2, p0, Lcom/byazt/jzl/n;->sp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public c(IILjava/lang/String;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/jzl/n;->nu:I

    .line 2
    iput p2, p0, Lcom/byazt/jzl/n;->gt:I

    .line 3
    iput-object p3, p0, Lcom/byazt/jzl/n;->my:Ljava/lang/String;

    return-void
.end method

.method public c(JLcom/byazt/fk/u;)V
    .locals 3

    const-string v0, "event"

    .line 21
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/dna/z;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 22
    invoke-interface {p3}, Lcom/byazt/fk/u;->getVideoSize()J

    move-result-wide v1

    long-to-double v1, v1

    iput-wide v1, p0, Lcom/byazt/jzl/n;->sl:D

    .line 23
    invoke-interface {p3}, Lcom/byazt/fk/u;->isAudio()Z

    move-result v1

    iput-boolean v1, p0, Lcom/byazt/jzl/n;->rh:Z

    .line 24
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/jzl/n;->sp:Ljava/lang/String;

    .line 25
    invoke-interface {p3}, Lcom/byazt/fk/u;->getUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/jzl/n;->i:Ljava/lang/String;

    .line 26
    invoke-direct {p0}, Lcom/byazt/jzl/n;->tt()Lorg/json/JSONObject;

    move-result-object p1

    .line 27
    invoke-virtual {p0}, Lcom/byazt/jzl/n;->c()Lorg/json/JSONObject;

    move-result-object p2

    .line 28
    iget-object p3, p0, Lcom/byazt/jzl/n;->gu:Ljava/lang/String;

    invoke-interface {v0, p3, p2, p1}, Lcom/byazt/dna/z;->onStatsEvent(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 5

    .line 10
    iget-object v0, p0, Lcom/byazt/jzl/n;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p0, p1}, Lcom/byazt/jzl/n;->ve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-string v4, "0505"

    .line 14
    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 15
    iput-wide v2, p0, Lcom/byazt/jzl/n;->t:J

    goto :goto_0

    :cond_0
    const-string v4, "0506"

    .line 16
    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 17
    iput-wide v2, p0, Lcom/byazt/jzl/n;->u:J

    :cond_1
    :goto_0
    :try_start_0
    const-string p1, "type"

    .line 18
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "ts"

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :catch_0
    iget-object p1, p0, Lcom/byazt/jzl/n;->tt:Lorg/json/JSONArray;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-void
.end method

.method public tt(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/jzl/n;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/byazt/jzl/n;->x:Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/byazt/jzl/n;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/byazt/jzl/n;->x:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public ve(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "unknown"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v2, -0x1

    .line 18
    sparse-switch v0, :sswitch_data_0

    .line 19
    .line 20
    .line 21
    goto/16 :goto_0

    .line 22
    .line 23
    :sswitch_0
    const-string v0, "0510"

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    goto/16 :goto_0

    .line 32
    .line 33
    :cond_1
    const/16 v2, 0x9

    .line 34
    .line 35
    goto/16 :goto_0

    .line 36
    .line 37
    :sswitch_1
    const-string v0, "0509"

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_2

    .line 44
    .line 45
    goto/16 :goto_0

    .line 46
    .line 47
    :cond_2
    const/16 v2, 0x8

    .line 48
    .line 49
    goto/16 :goto_0

    .line 50
    .line 51
    :sswitch_2
    const-string v0, "0508"

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_3

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    const/4 v2, 0x7

    .line 61
    goto :goto_0

    .line 62
    :sswitch_3
    const-string v0, "0507"

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_4

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_4
    const/4 v2, 0x6

    .line 72
    goto :goto_0

    .line 73
    :sswitch_4
    const-string v0, "0506"

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-nez p1, :cond_5

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_5
    const/4 v2, 0x5

    .line 83
    goto :goto_0

    .line 84
    :sswitch_5
    const-string v0, "0505"

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-nez p1, :cond_6

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_6
    const/4 v2, 0x4

    .line 94
    goto :goto_0

    .line 95
    :sswitch_6
    const-string v0, "0504"

    .line 96
    .line 97
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-nez p1, :cond_7

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_7
    const/4 v2, 0x3

    .line 105
    goto :goto_0

    .line 106
    :sswitch_7
    const-string v0, "0503"

    .line 107
    .line 108
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-nez p1, :cond_8

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_8
    const/4 v2, 0x2

    .line 116
    goto :goto_0

    .line 117
    :sswitch_8
    const-string v0, "0502"

    .line 118
    .line 119
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-nez p1, :cond_9

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_9
    const/4 v2, 0x1

    .line 127
    goto :goto_0

    .line 128
    :sswitch_9
    const-string v0, "0501"

    .line 129
    .line 130
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-nez p1, :cond_a

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_a
    const/4 v2, 0x0

    .line 138
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :pswitch_0
    const-string v1, "error"

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :pswitch_1
    const-string v1, "completed"

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :pswitch_2
    const-string v1, "stopped"

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :pswitch_3
    const-string v1, "paused"

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :pswitch_4
    const-string v1, "played"

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :pswitch_5
    const-string v1, "started"

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :pswitch_6
    const-string v1, "prepared"

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :pswitch_7
    const-string v1, "initialized"

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :pswitch_8
    const-string v1, "bindview"

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :pswitch_9
    const-string v1, "created"

    .line 170
    .line 171
    :goto_1
    return-object v1

    .line 172
    nop

    .line 173
    :sswitch_data_0
    .sparse-switch
        0x169ec6 -> :sswitch_9
        0x169ec7 -> :sswitch_8
        0x169ec8 -> :sswitch_7
        0x169ec9 -> :sswitch_6
        0x169eca -> :sswitch_5
        0x169ecb -> :sswitch_4
        0x169ecc -> :sswitch_3
        0x169ecd -> :sswitch_2
        0x169ece -> :sswitch_1
        0x169ee4 -> :sswitch_0
    .end sparse-switch

    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
