.class public Lcom/byazt/ete/nu;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8,
        0x89
    }
.end annotation


# static fields
.field public static volatile c:Ljava/lang/String;


# instance fields
.field public a:I

.field public i:Z

.field public n:Lorg/json/JSONObject;

.field public sp:Ljava/lang/String;

.field public tt:Ljava/lang/String;

.field public uj:I

.field public ve:Ljava/lang/String;

.field public x:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/byazt/ete/nu;->sp:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/byazt/ete/nu;->x:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/byazt/ete/nu;->sp:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/byazt/ete/nu;->x:Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "deeplink_url"

    .line 7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/byazt/ete/nu;->tt(Ljava/lang/String;)V

    const-string v0, "fallback_url"

    .line 8
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/byazt/ete/nu;->ve(Ljava/lang/String;)V

    const-string v0, "fallback_type"

    .line 9
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/byazt/ete/nu;->c(I)V

    const-string v0, "addon_params"

    .line 10
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/ete/nu;->n:Lorg/json/JSONObject;

    const-string v0, "fallback_landing"

    .line 11
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/byazt/ete/nu;->a:I

    const-string v0, "fallback_landing_ugen_url"

    .line 12
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/ete/nu;->sp:Ljava/lang/String;

    const-string v0, "fallback_landing_ugen_md5"

    .line 13
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/ete/nu;->x:Ljava/lang/String;

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/byazt/ete/nu;->c:Ljava/lang/String;

    return-void
.end method

.method private uj(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/nu;->n:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/byazt/ete/nu;->tt:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/byazt/ete/nu;->n:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/byazt/ete/nu;->tt:Ljava/lang/String;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "&"

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/byazt/ete/nu;->tt:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/byazt/ete/nu;->tt:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/nu;->sp:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public c(I)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/byazt/ete/nu;->uj:I

    return-void
.end method

.method public c(Lcom/byazt/ete/nu;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/ete/nu;->tt()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 16
    invoke-virtual {p1}, Lcom/byazt/ete/nu;->tt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/byazt/ete/nu;->tt(Ljava/lang/String;)V

    .line 17
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/ete/nu;->uj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 18
    invoke-virtual {p1}, Lcom/byazt/ete/nu;->uj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/byazt/ete/nu;->ve(Ljava/lang/String;)V

    .line 19
    :cond_2
    invoke-virtual {p1}, Lcom/byazt/ete/nu;->n()I

    move-result v0

    if-eqz v0, :cond_3

    .line 20
    invoke-virtual {p1}, Lcom/byazt/ete/nu;->n()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/byazt/ete/nu;->c(I)V

    :cond_3
    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 3

    .line 2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "deeplink_url"

    .line 3
    invoke-virtual {p0}, Lcom/byazt/ete/nu;->tt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "fallback_url"

    .line 4
    invoke-virtual {p0}, Lcom/byazt/ete/nu;->uj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "fallback_type"

    .line 5
    invoke-virtual {p0}, Lcom/byazt/ete/nu;->n()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "addon_params"

    .line 6
    iget-object v2, p0, Lcom/byazt/ete/nu;->n:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "fallback_landing"

    .line 7
    iget v2, p0, Lcom/byazt/ete/nu;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "fallback_landing_ugen_url"

    .line 8
    iget-object v2, p0, Lcom/byazt/ete/nu;->sp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "fallback_landing_ugen_md5"

    .line 9
    iget-object v2, p0, Lcom/byazt/ete/nu;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "deep_link"

    .line 10
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 11
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/byazt/ete/nu;->i:Z

    return-void
.end method

.method public c()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/byazt/ete/nu;->i:Z

    return v0
.end method

.method public n()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/nu;->uj:I

    .line 2
    .line 3
    return v0
.end method

.method public sp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/nu;->x:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/ete/nu;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/byazt/ete/nu;->uj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tt(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/ete/nu;->tt:Ljava/lang/String;

    return-void
.end method

.method public uj()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/byazt/ete/nu;->ve:Ljava/lang/String;

    return-object v0
.end method

.method public ve()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/nu;->a:I

    return v0
.end method

.method public ve(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/ete/nu;->ve:Ljava/lang/String;

    return-void
.end method
