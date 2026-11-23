.class public Lcom/byazt/gf/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x392,
        0x2e
    }
.end annotation


# static fields
.field public static c:Lcom/byazt/gf/n;


# instance fields
.field public a:J

.field public n:J

.field public sp:J

.field public tt:Z

.field public uj:J

.field public ve:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/gf/n;->tt:Z

    .line 6
    .line 7
    const-wide/32 v0, 0x2bf20

    .line 8
    .line 9
    .line 10
    iput-wide v0, p0, Lcom/byazt/gf/n;->ve:J

    .line 11
    .line 12
    const-wide/32 v0, 0x2932e00

    .line 13
    .line 14
    .line 15
    iput-wide v0, p0, Lcom/byazt/gf/n;->uj:J

    .line 16
    .line 17
    const-wide/16 v0, 0x3

    .line 18
    .line 19
    iput-wide v0, p0, Lcom/byazt/gf/n;->n:J

    .line 20
    .line 21
    const-wide/16 v0, 0x1e

    .line 22
    .line 23
    iput-wide v0, p0, Lcom/byazt/gf/n;->a:J

    .line 24
    .line 25
    const-wide/16 v0, 0xf

    .line 26
    .line 27
    iput-wide v0, p0, Lcom/byazt/gf/n;->sp:J

    .line 28
    .line 29
    return-void
.end method

.method public static c()Lcom/byazt/gf/n;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/gf/n;->c:Lcom/byazt/gf/n;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/byazt/gf/n;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/byazt/gf/n;->c:Lcom/byazt/gf/n;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/byazt/gf/n;

    invoke-direct {v1}, Lcom/byazt/gf/n;-><init>()V

    sput-object v1, Lcom/byazt/gf/n;->c:Lcom/byazt/gf/n;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/byazt/gf/n;->c:Lcom/byazt/gf/n;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/gf/n;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public declared-synchronized c(Lorg/json/JSONObject;)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 7
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sensorenable"

    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/byazt/gf/n;->tt:Z

    const-string v0, "interval"

    const-wide/32 v1, 0x2bf20

    .line 9
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/gf/n;->ve:J

    const-string v0, "expireduation"

    const-wide/32 v1, 0x2932e00

    .line 10
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/gf/n;->uj:J

    const-string v0, "showinterval"

    const-wide/16 v1, 0x3

    .line 11
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/gf/n;->n:J

    const-string v0, "azimuth_unit"

    const-wide/16 v1, 0x1e

    .line 12
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/gf/n;->a:J

    const-string v0, "angle_unit"

    const-wide/16 v1, 0xf

    .line 13
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/gf/n;->sp:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 14
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public n()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/gf/n;->n:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public sp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/gf/n;->sp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public tt()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/gf/n;->tt:Z

    .line 2
    .line 3
    return v0
.end method

.method public uj()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/gf/n;->ve:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public ve()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/gf/n;->uj:J

    .line 2
    .line 3
    return-wide v0
.end method
