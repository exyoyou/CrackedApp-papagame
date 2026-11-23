.class public Lcom/byazt/hnr/c;
.super Lcom/byazt/ro/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x220,
        0x14
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/ro/c;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public b()Lcom/byazt/dy/UGFrameLayout;
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/dy/UGFrameLayout;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/xj/ve;->tt:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/byazt/dy/UGFrameLayout;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/byazt/dy/UGFrameLayout;->c(Lcom/byazt/sa/uj;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public synthetic c()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/hnr/c;->b()Lcom/byazt/dy/UGFrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public c(JJ)V
    .locals 10

    const/16 v0, 0xc

    .line 2
    invoke-virtual {p0, v0}, Lcom/byazt/xj/ve;->c(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3
    iget-object v1, p0, Lcom/byazt/xj/ve;->gx:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/sz/m;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/sz/m;->ve()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "type"

    .line 5
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "actions"

    .line 6
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 7
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-gtz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 8
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 9
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 10
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "progress"

    .line 11
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v7, v6

    cmp-long v9, v7, p3

    if-lez v9, :cond_3

    long-to-int v6, p3

    :cond_3
    int-to-long v6, v6

    cmp-long v8, p1, v6

    if-nez v8, :cond_4

    const-string v6, "onShow"

    .line 12
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 13
    invoke-virtual {p0, p0}, Lcom/byazt/xj/ve;->tt(Lcom/byazt/xj/ve;)Lcom/byazt/xj/ve;

    move-result-object v5

    const-string v6, "nodeId"

    .line 14
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v5, :cond_4

    .line 15
    invoke-virtual {v5, v4}, Lcom/byazt/xj/ve;->uj(Ljava/lang/String;)Lcom/byazt/xj/ve;

    move-result-object v4

    .line 16
    invoke-virtual {v4, v2}, Lcom/byazt/xj/ve;->tt(I)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method

.method public tt()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/byazt/ro/c;->tt()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
