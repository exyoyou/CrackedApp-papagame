.class public Lcom/byazt/tl/uj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1d3,
        0xf
    }
.end annotation


# instance fields
.field public c:Z

.field public tt:Ljava/lang/String;

.field public uj:Lcom/byazt/vo/ve;

.field public ve:Ljava/lang/String;


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

.method public static c(Ljava/lang/String;)Lcom/byazt/tl/uj;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/byazt/tl/uj;->c(Lorg/json/JSONObject;)Lcom/byazt/tl/uj;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "parse failed:"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "OncallUploadConfig"

    invoke-static {v0, p0}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static c(Lorg/json/JSONObject;)Lcom/byazt/tl/uj;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Lcom/byazt/tl/uj;

    invoke-direct {v0}, Lcom/byazt/tl/uj;-><init>()V

    const-string v1, "enable"

    .line 5
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/byazt/tl/uj;->c:Z

    const-string v1, "upload_api"

    .line 6
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/byazt/tl/uj;->tt:Ljava/lang/String;

    const-string v1, "alert_text"

    .line 7
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/byazt/tl/uj;->ve:Ljava/lang/String;

    const-string v1, "filter_word"

    .line 8
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 9
    invoke-static {p0}, Lcom/byazt/vo/ve;->parseFromJson(Lorg/json/JSONObject;)Lcom/byazt/vo/ve;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 10
    invoke-virtual {p0}, Lcom/byazt/vo/ve;->getId()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "99:1"

    .line 12
    invoke-virtual {p0, v1}, Lcom/byazt/vo/ve;->setId(Ljava/lang/String;)V

    .line 13
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/vo/ve;->getName()Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "\u7d20\u6750\u53cd\u9988"

    .line 15
    invoke-virtual {p0, v1}, Lcom/byazt/vo/ve;->setName(Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p0, v1}, Lcom/byazt/vo/ve;->setNewUi(Z)V

    .line 17
    :cond_3
    iput-object p0, v0, Lcom/byazt/tl/uj;->uj:Lcom/byazt/vo/ve;

    :cond_4
    return-object v0
.end method

.method public static c()Lcom/byazt/vo/ve;
    .locals 3

    .line 18
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->ij()Lcom/byazt/tl/uj;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 19
    :cond_0
    iget-object v2, v0, Lcom/byazt/tl/uj;->tt:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 20
    :cond_1
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/ogz/sl;->cg()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 21
    new-instance v0, Lcom/byazt/vo/ve;

    invoke-direct {v0}, Lcom/byazt/vo/ve;-><init>()V

    const-string v1, "99:1"

    .line 22
    invoke-virtual {v0, v1}, Lcom/byazt/vo/ve;->setId(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, Lcom/byazt/vo/ve;->setNewUi(Z)V

    const-string v1, "\u5176\u4ed6\u95ee\u9898"

    .line 24
    invoke-virtual {v0, v1}, Lcom/byazt/vo/ve;->setName(Ljava/lang/String;)V

    return-object v0

    .line 25
    :cond_2
    invoke-virtual {v0}, Lcom/byazt/tl/uj;->n()Lcom/byazt/vo/ve;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public n()Lcom/byazt/vo/ve;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/tl/uj;->uj:Lcom/byazt/vo/ve;

    .line 2
    .line 3
    return-object v0
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
    const-string v1, "enable"

    .line 7
    .line 8
    iget-boolean v2, p0, Lcom/byazt/tl/uj;->c:Z

    .line 9
    .line 10
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    .line 16
    .line 17
    const-string v1, "upload_api"

    .line 18
    .line 19
    iget-object v2, p0, Lcom/byazt/tl/uj;->tt:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    .line 23
    .line 24
    const-string v1, "alert_text"

    .line 25
    .line 26
    iget-object v2, p0, Lcom/byazt/tl/uj;->ve:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/byazt/tl/uj;->uj:Lcom/byazt/vo/ve;

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    const-string v2, "filter_word"

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/byazt/vo/ve;->toJson()Lorg/json/JSONObject;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception v1

    .line 46
    const/4 v2, 0x1

    .line 47
    new-array v2, v2, [Ljava/lang/Object;

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    aput-object v1, v2, v3

    .line 51
    .line 52
    const-string v1, "OncallUploadConfig"

    .line 53
    .line 54
    invoke-static {v1, v2}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    return-object v0
.end method

.method public tt()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/tl/uj;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public uj()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/tl/uj;->ve:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/tl/uj;->tt:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
