.class public Lcom/byazt/afw/ve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/afw/uj;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x21e,
        0x36
    }
.end annotation


# instance fields
.field public a:J

.field public c:J

.field public n:J

.field public sp:I

.field public tt:J

.field public uj:I

.field public ve:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a_(Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    const-string v0, "buffers_time"

    .line 5
    .line 6
    iget-wide v1, p0, Lcom/byazt/afw/ve;->c:J

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 9
    .line 10
    .line 11
    const-string v0, "total_duration"

    .line 12
    .line 13
    iget-wide v1, p0, Lcom/byazt/afw/ve;->tt:J

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 16
    .line 17
    .line 18
    const-string v0, "vbtt_skip_type"

    .line 19
    .line 20
    iget v1, p0, Lcom/byazt/afw/ve;->ve:I

    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 23
    .line 24
    .line 25
    const-string v0, "skip_reason"

    .line 26
    .line 27
    iget v1, p0, Lcom/byazt/afw/ve;->uj:I

    .line 28
    .line 29
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 30
    .line 31
    .line 32
    const-string v0, "video_cache_size"

    .line 33
    .line 34
    iget-wide v1, p0, Lcom/byazt/afw/ve;->n:J

    .line 35
    .line 36
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 37
    .line 38
    .line 39
    const-string v0, "current"

    .line 40
    .line 41
    iget-wide v1, p0, Lcom/byazt/afw/ve;->a:J

    .line 42
    .line 43
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 44
    .line 45
    .line 46
    const-string v0, "percent"

    .line 47
    .line 48
    iget v1, p0, Lcom/byazt/afw/ve;->sp:I

    .line 49
    .line 50
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public c(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/afw/ve;->sp:I

    return-void
.end method

.method public c(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/byazt/afw/ve;->a:J

    return-void
.end method

.method public tt(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/afw/ve;->ve:I

    return-void
.end method

.method public tt(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/byazt/afw/ve;->n:J

    return-void
.end method

.method public uj(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/byazt/afw/ve;->tt:J

    .line 2
    .line 3
    return-void
.end method

.method public ve(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/afw/ve;->uj:I

    return-void
.end method

.method public ve(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/byazt/afw/ve;->c:J

    return-void
.end method
