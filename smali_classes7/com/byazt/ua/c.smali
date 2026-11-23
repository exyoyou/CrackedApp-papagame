.class public Lcom/byazt/ua/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x217,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/ua/c$c;
    }
.end annotation


# instance fields
.field public a:J

.field public c:Z

.field public n:J

.field public sp:J

.field public tt:Z

.field public uj:Z

.field public ve:Z

.field public x:Z


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

.method public static c(Lorg/json/JSONObject;)Lcom/byazt/ua/c;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 12
    :cond_0
    new-instance v0, Lcom/byazt/ua/c;

    invoke-direct {v0}, Lcom/byazt/ua/c;-><init>()V

    const-string v1, "isCompleted"

    .line 13
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/ua/c;->ve(Z)Lcom/byazt/ua/c;

    const-string v1, "isFromVideoDetailPage"

    .line 14
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/ua/c;->uj(Z)Lcom/byazt/ua/c;

    const-string v1, "isFromDetailPage"

    .line 15
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/ua/c;->n(Z)Lcom/byazt/ua/c;

    const-string v1, "duration"

    .line 16
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/byazt/ua/c;->c(J)Lcom/byazt/ua/c;

    const-string v1, "totalPlayDuration"

    .line 17
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/byazt/ua/c;->tt(J)Lcom/byazt/ua/c;

    const-string v1, "currentPlayPosition"

    .line 18
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/byazt/ua/c;->ve(J)Lcom/byazt/ua/c;

    const-string v1, "isAutoPlay"

    .line 19
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/ua/c;->tt(Z)Lcom/byazt/ua/c;

    const-string v1, "isMute"

    .line 20
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/byazt/ua/c;->c(Z)V

    return-object v0
.end method


# virtual methods
.method public c(J)Lcom/byazt/ua/c;
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/ua/c;->n:J

    return-object p0
.end method

.method public c()Lorg/json/JSONObject;
    .locals 4

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "isCompleted"

    .line 4
    iget-boolean v2, p0, Lcom/byazt/ua/c;->c:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "isFromVideoDetailPage"

    .line 5
    iget-boolean v2, p0, Lcom/byazt/ua/c;->tt:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "isFromDetailPage"

    .line 6
    iget-boolean v2, p0, Lcom/byazt/ua/c;->ve:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "duration"

    .line 7
    iget-wide v2, p0, Lcom/byazt/ua/c;->n:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "totalPlayDuration"

    .line 8
    iget-wide v2, p0, Lcom/byazt/ua/c;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "currentPlayPosition"

    .line 9
    iget-wide v2, p0, Lcom/byazt/ua/c;->sp:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "isAutoPlay"

    .line 10
    iget-boolean v2, p0, Lcom/byazt/ua/c;->uj:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "isMute"

    .line 11
    iget-boolean v2, p0, Lcom/byazt/ua/c;->x:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public c(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/ua/c;->x:Z

    return-void
.end method

.method public n(Z)Lcom/byazt/ua/c;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/ua/c;->ve:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public tt(J)Lcom/byazt/ua/c;
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/ua/c;->a:J

    return-object p0
.end method

.method public tt(Z)Lcom/byazt/ua/c;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/ua/c;->uj:Z

    return-object p0
.end method

.method public uj(Z)Lcom/byazt/ua/c;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/ua/c;->tt:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public ve(J)Lcom/byazt/ua/c;
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/ua/c;->sp:J

    return-object p0
.end method

.method public ve(Z)Lcom/byazt/ua/c;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/ua/c;->c:Z

    return-object p0
.end method
