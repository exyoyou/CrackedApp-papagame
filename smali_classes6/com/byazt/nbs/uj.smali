.class public Lcom/byazt/nbs/uj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x74f,
        0xf
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public c:D

.field public n:I

.field public sp:Lorg/json/JSONObject;

.field public tt:D

.field public uj:Ljava/lang/String;

.field public ve:I


# direct methods
.method private constructor <init>(DDILjava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/byazt/nbs/uj;->c:D

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/byazt/nbs/uj;->tt:D

    .line 7
    .line 8
    iput p5, p0, Lcom/byazt/nbs/uj;->ve:I

    .line 9
    .line 10
    iput-object p6, p0, Lcom/byazt/nbs/uj;->uj:Ljava/lang/String;

    .line 11
    .line 12
    iput p7, p0, Lcom/byazt/nbs/uj;->n:I

    .line 13
    .line 14
    iput-object p8, p0, Lcom/byazt/nbs/uj;->a:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p9, p0, Lcom/byazt/nbs/uj;->sp:Lorg/json/JSONObject;

    .line 17
    .line 18
    return-void
.end method

.method public static c(Lorg/json/JSONObject;Ljava/util/Map;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byazt/nbs/uj;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v0, "prime_rits"

    .line 1
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 2
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 3
    :try_start_0
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v14, Lcom/byazt/nbs/uj;

    const-string v4, "upper"

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    const-string v4, "lower"

    .line 5
    invoke-virtual {v1, v4, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    const-string v4, "type"

    .line 6
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    const-string v4, "js_mode"

    .line 7
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    const-string v4, "rule_id"

    .line 8
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v4, "refresh_time"

    .line 9
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    move-object v4, v14

    move-wide v5, v7

    move-wide v7, v9

    move v9, v11

    move-object v10, v0

    move v11, v12

    move-object v12, v13

    move-object v13, v15

    invoke-direct/range {v4 .. v13}, Lcom/byazt/nbs/uj;-><init>(DDILjava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v4, p1

    .line 10
    :try_start_1
    invoke-interface {v4, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v4, p1

    .line 11
    :goto_1
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public c()D
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/byazt/nbs/uj;->c:D

    return-wide v0
.end method

.method public c(Ljava/lang/String;)I
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/byazt/nbs/uj;->sp:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/nbs/uj;->ve:I

    .line 2
    .line 3
    return v0
.end method

.method public n()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/byazt/nbs/uj;->c:D

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmpg-double v4, v0, v2

    .line 6
    .line 7
    if-gtz v4, :cond_0

    .line 8
    .line 9
    iget-wide v0, p0, Lcom/byazt/nbs/uj;->tt:D

    .line 10
    .line 11
    cmpg-double v4, v0, v2

    .line 12
    .line 13
    if-gtz v4, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method public tt()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/nbs/uj;->tt:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public uj()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nbs/uj;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/nbs/uj;->n:I

    .line 2
    .line 3
    return v0
.end method
