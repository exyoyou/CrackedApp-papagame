.class public final Lcom/byazt/ogz/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4a6,
        0xd
    }
.end annotation


# instance fields
.field public c:Z

.field public n:Z

.field public tt:Ljava/lang/String;

.field public uj:Lorg/json/JSONObject;

.field public ve:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/byazt/ogz/tt;->ve:J

    .line 7
    .line 8
    sget-boolean v0, Lcom/byazt/ogz/uj;->tt:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/byazt/ogz/tt;->n:Z

    .line 11
    .line 12
    return-void
.end method

.method public static c(Lorg/json/JSONObject;)Lcom/byazt/ogz/tt;
    .locals 5

    .line 1
    new-instance v0, Lcom/byazt/ogz/tt;

    invoke-direct {v0}, Lcom/byazt/ogz/tt;-><init>()V

    if-eqz p0, :cond_0

    const-string v1, "ec_mall_back_url"

    .line 2
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/byazt/ogz/tt;->c(Ljava/lang/String;)V

    const-string v2, "sub_process"

    const/4 v3, 0x0

    .line 3
    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/byazt/ogz/tt;->c:Z

    .line 4
    sget v2, Lcom/byazt/ogz/uj;->c:I

    int-to-long v2, v2

    const-string v4, "init_delay"

    .line 5
    invoke-virtual {p0, v4, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/byazt/ogz/tt;->ve:J

    const-string v2, "live_tob_init_extra"

    .line 6
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v0, Lcom/byazt/ogz/tt;->uj:Lorg/json/JSONObject;

    .line 7
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/ogz/tt;->c(Ljava/lang/String;)V

    const-string v1, "init_after_click"

    .line 8
    sget-boolean v2, Lcom/byazt/ogz/uj;->tt:Z

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    iput-boolean p0, v0, Lcom/byazt/ogz/tt;->n:Z

    :cond_0
    return-object v0
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/byazt/ogz/tt;->tt:Ljava/lang/String;

    return-void
.end method

.method public c()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/byazt/ogz/tt;->c:Z

    return v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/ogz/tt;->n:Z

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "ec_mall_back_url"

    .line 7
    .line 8
    iget-object v2, p0, Lcom/byazt/ogz/tt;->tt:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "sub_process"

    .line 14
    .line 15
    iget-boolean v2, p0, Lcom/byazt/ogz/tt;->c:Z

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    const-string v1, "init_delay"

    .line 21
    .line 22
    iget-wide v2, p0, Lcom/byazt/ogz/tt;->ve:J

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    const-string v1, "live_tob_init_extra"

    .line 28
    .line 29
    iget-object v2, p0, Lcom/byazt/ogz/tt;->uj:Lorg/json/JSONObject;

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    const-string v1, "init_after_click"

    .line 35
    .line 36
    iget-boolean v2, p0, Lcom/byazt/ogz/tt;->n:Z

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception v1

    .line 43
    const/4 v2, 0x1

    .line 44
    new-array v2, v2, [Ljava/lang/Object;

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    aput-object v1, v2, v3

    .line 48
    .line 49
    const-string v1, "AppLiveConfig"

    .line 50
    .line 51
    invoke-static {v1, v2}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    return-object v0
.end method

.method public tt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/ogz/tt;->ve:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public uj()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ogz/tt;->tt:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ogz/tt;->uj:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method
