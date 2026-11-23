.class public Lcom/byazt/ete/kk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8,
        0x26b
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/ete/nu;

.field public n:Lcom/byazt/ete/yp;

.field public tt:Lcom/byazt/ete/q;

.field public uj:Ljava/lang/String;

.field public ve:Lcom/byazt/ete/sv;


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

.method public static c(Lorg/json/JSONObject;)Lcom/byazt/ete/kk;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    new-instance v1, Lcom/byazt/ete/kk;

    invoke-direct {v1}, Lcom/byazt/ete/kk;-><init>()V

    .line 2
    new-instance v2, Lcom/byazt/ete/nu;

    invoke-direct {v2}, Lcom/byazt/ete/nu;-><init>()V

    iput-object v2, v1, Lcom/byazt/ete/kk;->c:Lcom/byazt/ete/nu;

    const-string v3, "deeplink_url"

    const-string v4, ""

    .line 3
    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/byazt/ete/nu;->tt(Ljava/lang/String;)V

    const-string v2, "saas_info"

    .line 4
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/byazt/ete/q;->c(Lorg/json/JSONObject;)Lcom/byazt/ete/q;

    move-result-object v2

    iput-object v2, v1, Lcom/byazt/ete/kk;->tt:Lcom/byazt/ete/q;

    const-string v2, "live_info"

    .line 5
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/byazt/ete/sv;->c(Lorg/json/JSONObject;)Lcom/byazt/ete/sv;

    move-result-object v2

    iput-object v2, v1, Lcom/byazt/ete/kk;->ve:Lcom/byazt/ete/sv;

    const-string v2, "ecom_live_params"

    .line 6
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/byazt/ete/kk;->uj:Ljava/lang/String;

    const-string v2, "coupon"

    .line 7
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/byazt/ete/yp;->c(Lorg/json/JSONObject;)Lcom/byazt/ete/yp;

    move-result-object p0

    iput-object p0, v1, Lcom/byazt/ete/kk;->n:Lcom/byazt/ete/yp;

    .line 8
    iget-object p0, v1, Lcom/byazt/ete/kk;->c:Lcom/byazt/ete/nu;

    invoke-virtual {p0}, Lcom/byazt/ete/nu;->tt()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public a()Lcom/byazt/ete/sv;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/kk;->ve:Lcom/byazt/ete/sv;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Lorg/json/JSONObject;
    .locals 3

    .line 9
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/byazt/ete/kk;->c:Lcom/byazt/ete/nu;

    if-eqz v1, :cond_0

    const-string v2, "deeplink_url"

    .line 11
    invoke-virtual {v1}, Lcom/byazt/ete/nu;->tt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/byazt/ete/kk;->tt:Lcom/byazt/ete/q;

    if-eqz v1, :cond_1

    const-string v2, "saas_info"

    .line 13
    invoke-virtual {v1}, Lcom/byazt/ete/q;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    :cond_1
    iget-object v1, p0, Lcom/byazt/ete/kk;->ve:Lcom/byazt/ete/sv;

    if-eqz v1, :cond_2

    const-string v2, "live_info"

    .line 15
    invoke-virtual {v1}, Lcom/byazt/ete/sv;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    :cond_2
    iget-object v1, p0, Lcom/byazt/ete/kk;->uj:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v2, "ecom_live_params"

    .line 17
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    :cond_3
    iget-object v1, p0, Lcom/byazt/ete/kk;->n:Lcom/byazt/ete/yp;

    if-eqz v1, :cond_4

    const-string v2, "coupon"

    .line 19
    invoke-virtual {v1}, Lcom/byazt/ete/yp;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 20
    invoke-static {v1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/kk;->uj:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()Lcom/byazt/ete/yp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/kk;->n:Lcom/byazt/ete/yp;

    .line 2
    .line 3
    return-object v0
.end method

.method public uj()Lcom/byazt/ete/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/kk;->tt:Lcom/byazt/ete/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()Lcom/byazt/ete/nu;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/kk;->c:Lcom/byazt/ete/nu;

    .line 2
    .line 3
    return-object v0
.end method
