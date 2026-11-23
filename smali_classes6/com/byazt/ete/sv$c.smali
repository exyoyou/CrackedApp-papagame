.class public Lcom/byazt/ete/sv$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8,
        0x667
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/ete/sv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field public tt:Ljava/lang/String;

.field public uj:D

.field public ve:D


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

.method public static c(Lorg/json/JSONObject;)Lcom/byazt/ete/sv$c;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Lcom/byazt/ete/sv$c;

    invoke-direct {v0}, Lcom/byazt/ete/sv$c;-><init>()V

    const-string v1, "title"

    .line 2
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/byazt/ete/sv$c;->c:Ljava/lang/String;

    const-string v1, "image"

    .line 3
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/byazt/ete/sv$c;->tt:Ljava/lang/String;

    const-string v1, "price"

    .line 4
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/byazt/ete/sv$c;->uj:D

    const-string v1, "origin_price"

    .line 5
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/byazt/ete/sv$c;->ve:D

    return-object v0
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/byazt/ete/sv$c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public n()Lorg/json/JSONObject;
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
    const-string v1, "title"

    .line 7
    .line 8
    iget-object v2, p0, Lcom/byazt/ete/sv$c;->c:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "image"

    .line 14
    .line 15
    iget-object v2, p0, Lcom/byazt/ete/sv$c;->tt:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    const-string v1, "price"

    .line 21
    .line 22
    iget-wide v2, p0, Lcom/byazt/ete/sv$c;->uj:D

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    const-string v1, "origin_price"

    .line 28
    .line 29
    iget-wide v2, p0, Lcom/byazt/ete/sv$c;->ve:D

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    :catch_0
    return-object v0
.end method

.method public tt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/sv$c;->tt:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public uj()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/ete/sv$c;->uj:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public ve()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/ete/sv$c;->ve:D

    .line 2
    .line 3
    return-wide v0
.end method
