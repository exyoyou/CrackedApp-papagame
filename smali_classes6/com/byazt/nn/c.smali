.class public Lcom/byazt/nn/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3fc,
        0x14
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public c:J

.field public n:Ljava/lang/String;

.field public sp:Ljava/lang/String;

.field public tt:J

.field public uj:Ljava/lang/String;

.field public ve:J

.field public volatile x:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/byazt/nn/c;->c:J

    .line 4
    iput-wide p3, p0, Lcom/byazt/nn/c;->tt:J

    .line 5
    iput-wide p5, p0, Lcom/byazt/nn/c;->ve:J

    .line 6
    iput-object p7, p0, Lcom/byazt/nn/c;->uj:Ljava/lang/String;

    .line 7
    iput-object p8, p0, Lcom/byazt/nn/c;->n:Ljava/lang/String;

    .line 8
    iput-object p9, p0, Lcom/byazt/nn/c;->a:Ljava/lang/String;

    .line 9
    iput-object p10, p0, Lcom/byazt/nn/c;->sp:Ljava/lang/String;

    return-void
.end method

.method public static c(Lorg/json/JSONObject;)Lcom/byazt/nn/c;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 11
    :cond_0
    new-instance v1, Lcom/byazt/nn/c;

    invoke-direct {v1}, Lcom/byazt/nn/c;-><init>()V

    :try_start_0
    const-string v2, "mDownloadId"

    .line 12
    invoke-static {p0, v2}, Lcom/byazt/hu/u;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/byazt/nn/c;->c:J

    const-string v2, "mAdId"

    .line 13
    invoke-static {p0, v2}, Lcom/byazt/hu/u;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/byazt/nn/c;->tt:J

    const-string v2, "mExtValue"

    .line 14
    invoke-static {p0, v2}, Lcom/byazt/hu/u;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/byazt/nn/c;->ve:J

    const-string v2, "mPackageName"

    .line 15
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/byazt/nn/c;->uj:Ljava/lang/String;

    const-string v2, "mAppName"

    .line 16
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/byazt/nn/c;->n:Ljava/lang/String;

    const-string v2, "mLogExtra"

    .line 17
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/byazt/nn/c;->a:Ljava/lang/String;

    const-string v2, "mFileName"

    .line 18
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/byazt/nn/c;->sp:Ljava/lang/String;

    const-string v2, "mTimeStamp"

    .line 19
    invoke-static {p0, v2}, Lcom/byazt/hu/u;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/byazt/nn/c;->x:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 20
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public c()Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "mDownloadId"

    .line 2
    iget-wide v2, p0, Lcom/byazt/nn/c;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "mAdId"

    .line 3
    iget-wide v2, p0, Lcom/byazt/nn/c;->tt:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "mExtValue"

    .line 4
    iget-wide v2, p0, Lcom/byazt/nn/c;->ve:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "mPackageName"

    .line 5
    iget-object v2, p0, Lcom/byazt/nn/c;->uj:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mAppName"

    .line 6
    iget-object v2, p0, Lcom/byazt/nn/c;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mLogExtra"

    .line 7
    iget-object v2, p0, Lcom/byazt/nn/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mFileName"

    .line 8
    iget-object v2, p0, Lcom/byazt/nn/c;->sp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mTimeStamp"

    .line 9
    iget-wide v2, p0, Lcom/byazt/nn/c;->x:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 10
    invoke-static {v1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method
