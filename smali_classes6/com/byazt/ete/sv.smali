.class public Lcom/byazt/ete/sv;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8,
        0x265
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/ete/sv$c;,
        Lcom/byazt/ete/sv$tt;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public da:Lcom/byazt/ete/sv$c;

.field public i:Lcom/byazt/ete/sv$tt;

.field public n:Ljava/lang/String;

.field public sp:Lorg/json/JSONArray;

.field public tt:Z

.field public uj:Ljava/lang/String;

.field public ve:Z

.field public x:I


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

.method public static c(Lorg/json/JSONObject;)Lcom/byazt/ete/sv;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Lcom/byazt/ete/sv;

    invoke-direct {v0}, Lcom/byazt/ete/sv;-><init>()V

    const-string v1, "promotion_id"

    .line 2
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/byazt/ete/sv;->c:Ljava/lang/String;

    const-string v1, "is_silent_auth"

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/byazt/ete/sv;->tt:Z

    const-string v1, "enable_playable_auth"

    .line 4
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/byazt/ete/sv;->ve:Z

    const-string v1, "aweme_agreements"

    .line 5
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/byazt/ete/sv;->uj:Ljava/lang/String;

    const-string v1, "aweme_privacy"

    .line 6
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/byazt/ete/sv;->n:Ljava/lang/String;

    const-string v1, "live_csj_libra_param"

    .line 7
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/byazt/ete/sv;->a:Ljava/lang/String;

    const-string v1, "tasks"

    .line 8
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, v0, Lcom/byazt/ete/sv;->sp:Lorg/json/JSONArray;

    const-string v1, "live_playable"

    .line 9
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/byazt/ete/sv;->x:I

    const-string v1, "product"

    .line 10
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/byazt/ete/sv$c;->c(Lorg/json/JSONObject;)Lcom/byazt/ete/sv$c;

    move-result-object v1

    iput-object v1, v0, Lcom/byazt/ete/sv;->da:Lcom/byazt/ete/sv$c;

    const-string v1, "coupon"

    .line 11
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/byazt/ete/sv$tt;->c(Lorg/json/JSONObject;)Lcom/byazt/ete/sv$tt;

    move-result-object p0

    iput-object p0, v0, Lcom/byazt/ete/sv;->i:Lcom/byazt/ete/sv$tt;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/sv;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Lorg/json/JSONObject;
    .locals 3

    .line 12
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "promotion_id"

    .line 13
    iget-object v2, p0, Lcom/byazt/ete/sv;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "is_silent_auth"

    .line 14
    iget-boolean v2, p0, Lcom/byazt/ete/sv;->tt:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "enable_playable_auth"

    .line 15
    iget-boolean v2, p0, Lcom/byazt/ete/sv;->ve:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "aweme_agreements"

    .line 16
    iget-object v2, p0, Lcom/byazt/ete/sv;->uj:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "aweme_privacy"

    .line 17
    iget-object v2, p0, Lcom/byazt/ete/sv;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "live_csj_libra_param"

    .line 18
    iget-object v2, p0, Lcom/byazt/ete/sv;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "tasks"

    .line 19
    iget-object v2, p0, Lcom/byazt/ete/sv;->sp:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "live_playable"

    .line 20
    iget v2, p0, Lcom/byazt/ete/sv;->x:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 21
    iget-object v1, p0, Lcom/byazt/ete/sv;->da:Lcom/byazt/ete/sv$c;

    if-eqz v1, :cond_0

    const-string v2, "product"

    .line 22
    invoke-virtual {v1}, Lcom/byazt/ete/sv$c;->n()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/byazt/ete/sv;->i:Lcom/byazt/ete/sv$tt;

    if-eqz v1, :cond_1

    const-string v2, "coupon"

    .line 24
    invoke-virtual {v1}, Lcom/byazt/ete/sv$tt;->ve()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 25
    invoke-static {v1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public da()Lcom/byazt/ete/sv$tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/sv;->i:Lcom/byazt/ete/sv$tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/ete/sv;->x:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/byazt/ete/sv;->ve:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    return v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/sv;->uj:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public sl()Lcom/byazt/ete/sv$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/sv;->da:Lcom/byazt/ete/sv$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public sp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/sv;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/sv;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public uj()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/ete/sv;->ve:Z

    .line 2
    .line 3
    return v0
.end method

.method public ve()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/ete/sv;->tt:Z

    .line 2
    .line 3
    return v0
.end method

.method public x()Lorg/json/JSONArray;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/sv;->sp:Lorg/json/JSONArray;

    .line 2
    .line 3
    return-object v0
.end method
