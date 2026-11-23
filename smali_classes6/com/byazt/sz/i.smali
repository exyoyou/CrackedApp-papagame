.class public Lcom/byazt/sz/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x26a,
        0x2a
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/sz/i$c;
    }
.end annotation


# instance fields
.field public a:Lorg/json/JSONObject;

.field public c:Lorg/json/JSONObject;

.field public da:Z

.field public i:F

.field public n:Ljava/lang/String;

.field public sp:Z

.field public tt:Lorg/json/JSONObject;

.field public uj:Lorg/json/JSONObject;

.field public ve:Ljava/lang/String;

.field public x:F


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/byazt/sz/i;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/byazt/sz/i;->da:Z

    if-eqz p1, :cond_7

    const-string v1, "body"

    .line 4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, p0, Lcom/byazt/sz/i;->c:Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string v2, "main_template"

    .line 6
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, p0, Lcom/byazt/sz/i;->c:Lorg/json/JSONObject;

    :goto_0
    const-string v2, "sub_templates"

    .line 7
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, p0, Lcom/byazt/sz/i;->tt:Lorg/json/JSONObject;

    const-string v2, "meta"

    .line 8
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, "template_info"

    .line 10
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    :goto_1
    const-string v3, "3.0"

    if-eqz v2, :cond_5

    .line 11
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    iput-boolean v0, p0, Lcom/byazt/sz/i;->sp:Z

    const-string p1, "version"

    .line 13
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/sz/i;->ve:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 15
    iput-object v3, p0, Lcom/byazt/sz/i;->ve:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const-string p1, "sdk_version"

    .line 16
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/sz/i;->ve:Ljava/lang/String;

    :cond_3
    :goto_2
    const-string p1, "adType"

    .line 17
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 18
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/sz/i;->n:Ljava/lang/String;

    :cond_4
    const-string p1, "gestureThrough"

    .line 19
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 20
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {p1, v0}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/byazt/sz/i;->da:Z

    goto :goto_3

    .line 22
    :cond_5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 23
    iput-object v3, p0, Lcom/byazt/sz/i;->ve:Ljava/lang/String;

    .line 24
    iput-boolean v0, p0, Lcom/byazt/sz/i;->sp:Z

    .line 25
    :cond_6
    :goto_3
    iput-object p2, p0, Lcom/byazt/sz/i;->uj:Lorg/json/JSONObject;

    .line 26
    iput-object p3, p0, Lcom/byazt/sz/i;->a:Lorg/json/JSONObject;

    :cond_7
    return-void
.end method

.method private c(Lorg/json/JSONObject;Lcom/byazt/sz/i$c;)Lcom/byazt/sz/i$c;
    .locals 11

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "type"

    .line 4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "name"

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v4, "id"

    .line 7
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 8
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 9
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 10
    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v9, "children"

    if-eqz v8, :cond_3

    .line 11
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 12
    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 13
    :try_start_0
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v8

    .line 14
    invoke-static {v8}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 15
    :cond_3
    new-instance v7, Lcom/byazt/sz/i$c;

    invoke-direct {v7}, Lcom/byazt/sz/i$c;-><init>()V

    .line 16
    invoke-static {v7, v5}, Lcom/byazt/sz/i$c;->tt(Lcom/byazt/sz/i$c;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    iget-boolean v5, p0, Lcom/byazt/sz/i;->sp:Z

    if-eqz v5, :cond_4

    const-string v5, "Video"

    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 18
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "V3"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/byazt/sz/i$c;->c(Lcom/byazt/sz/i$c;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 19
    :cond_4
    invoke-static {v7, v2}, Lcom/byazt/sz/i$c;->c(Lcom/byazt/sz/i$c;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    :goto_2
    invoke-static {v7, v6}, Lcom/byazt/sz/i$c;->c(Lcom/byazt/sz/i$c;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 21
    invoke-static {v7, p2}, Lcom/byazt/sz/i$c;->c(Lcom/byazt/sz/i$c;Lcom/byazt/sz/i$c;)Lcom/byazt/sz/i$c;

    .line 22
    iget-object p2, p0, Lcom/byazt/sz/i;->ve:Ljava/lang/String;

    invoke-static {v7, p2}, Lcom/byazt/sz/i$c;->ve(Lcom/byazt/sz/i$c;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    iget-boolean p2, p0, Lcom/byazt/sz/i;->da:Z

    invoke-static {v7, p2}, Lcom/byazt/sz/i$c;->c(Lcom/byazt/sz/i$c;Z)Z

    .line 24
    iget-object p2, p0, Lcom/byazt/sz/i;->n:Ljava/lang/String;

    invoke-static {v7, p2}, Lcom/byazt/sz/i$c;->uj(Lcom/byazt/sz/i$c;Ljava/lang/String;)Ljava/lang/String;

    const-string p2, "i18n"

    .line 25
    invoke-virtual {v6, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 26
    invoke-virtual {v6, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {v7, p2}, Lcom/byazt/sz/i$c;->tt(Lcom/byazt/sz/i$c;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    :cond_5
    const-string p2, "CustomComponent"

    .line 27
    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 28
    invoke-static {v7}, Lcom/byazt/sz/i$c;->ve(Lcom/byazt/sz/i$c;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/byazt/sz/i;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 29
    :cond_6
    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-eqz p2, :cond_e

    .line 30
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-gtz v2, :cond_7

    goto :goto_8

    :cond_7
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 31
    :goto_3
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_e

    .line 32
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 33
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 34
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    .line 35
    :cond_8
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 36
    :goto_4
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/byazt/sz/i;->uj:Lorg/json/JSONObject;

    invoke-static {v9, v10}, Lcom/byazt/wj/tt;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "Template"

    .line 37
    invoke-static {v8, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 38
    iget-object v6, p0, Lcom/byazt/sz/i;->tt:Lorg/json/JSONObject;

    if-eqz v6, :cond_9

    .line 39
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    goto :goto_5

    :cond_9
    move-object v6, v0

    goto :goto_6

    .line 40
    :cond_a
    :goto_5
    invoke-direct {p0, v6, v7}, Lcom/byazt/sz/i;->c(Lorg/json/JSONObject;Lcom/byazt/sz/i$c;)Lcom/byazt/sz/i$c;

    move-result-object v6

    :goto_6
    if-eqz v6, :cond_b

    .line 41
    invoke-virtual {p0, v6}, Lcom/byazt/sz/i;->tt(Lcom/byazt/sz/i$c;)Z

    move-result v8

    invoke-virtual {v6, v8}, Lcom/byazt/sz/i$c;->tt(Z)V

    .line 42
    invoke-virtual {p0, v6}, Lcom/byazt/sz/i;->c(Lcom/byazt/sz/i$c;)Z

    move-result v8

    invoke-virtual {v6, v8}, Lcom/byazt/sz/i$c;->c(Z)V

    .line 43
    :cond_b
    invoke-virtual {p0, v6}, Lcom/byazt/sz/i;->ve(Lcom/byazt/sz/i$c;)Z

    move-result v8

    if-eqz v8, :cond_c

    add-int/lit8 v5, v5, 0x1

    .line 44
    invoke-virtual {v7, v6}, Lcom/byazt/sz/i$c;->tt(Lcom/byazt/sz/i$c;)V

    goto :goto_7

    :cond_c
    if-eqz v6, :cond_d

    sub-int v8, v2, v5

    .line 45
    invoke-virtual {v7, v8, v6}, Lcom/byazt/sz/i$c;->c(ILcom/byazt/sz/i$c;)V

    :cond_d
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_e
    :goto_8
    return-object v7
.end method

.method private c(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 7

    const-string v0, "events"

    const-string v1, "children"

    .line 48
    iget-object v2, p0, Lcom/byazt/sz/i;->a:Lorg/json/JSONObject;

    if-eqz v2, :cond_7

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "targetId"

    .line 49
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 50
    :try_start_0
    iget-object v3, p0, Lcom/byazt/sz/i;->a:Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 52
    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "targetProps"

    .line 53
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 54
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 55
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 56
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 57
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 58
    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 59
    instance-of v4, v5, Lorg/json/JSONArray;

    if-eqz v4, :cond_2

    .line 60
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    check-cast v5, Lorg/json/JSONArray;

    invoke-static {v4, v5}, Lcom/byazt/cd/tt;->c(Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    goto :goto_0

    .line 61
    :cond_3
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 62
    :cond_4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-nez p2, :cond_5

    .line 63
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    .line 64
    :cond_5
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 65
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 66
    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    return-void

    :catch_0
    move-exception p1

    .line 67
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    return-void
.end method

.method private n()Lcom/byazt/sz/i$c;
    .locals 8

    .line 1
    const-string v0, "flex_start"

    .line 2
    .line 3
    const-string v1, "height"

    .line 4
    .line 5
    const-string v2, "width"

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/byazt/sz/i;->uj()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x0

    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/sz/i;->c:Lorg/json/JSONObject;

    .line 15
    .line 16
    invoke-direct {p0, v0, v4}, Lcom/byazt/sz/i;->c(Lorg/json/JSONObject;Lcom/byazt/sz/i$c;)Lcom/byazt/sz/i$c;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    .line 22
    .line 23
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 24
    .line 25
    .line 26
    :try_start_0
    const-string v5, "flexDirection"

    .line 27
    .line 28
    const-string v6, "row"

    .line 29
    .line 30
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    .line 32
    .line 33
    const-string v5, "justifyContent"

    .line 34
    .line 35
    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    .line 37
    .line 38
    const-string v5, "alignItems"

    .line 39
    .line 40
    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    .line 42
    .line 43
    const-string v0, "clickable"

    .line 44
    .line 45
    const/4 v5, 0x0

    .line 46
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 47
    .line 48
    .line 49
    const-string v0, "match_parent"

    .line 50
    .line 51
    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    .line 53
    .line 54
    const-string v0, "wrap_content"

    .line 55
    .line 56
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    .line 58
    .line 59
    iget v0, p0, Lcom/byazt/sz/i;->x:F

    .line 60
    .line 61
    const/4 v5, 0x0

    .line 62
    cmpl-float v6, v0, v5

    .line 63
    .line 64
    if-lez v6, :cond_1

    .line 65
    .line 66
    float-to-double v6, v0

    .line 67
    invoke-virtual {v3, v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 68
    .line 69
    .line 70
    :cond_1
    iget v0, p0, Lcom/byazt/sz/i;->i:F

    .line 71
    .line 72
    cmpl-float v5, v0, v5

    .line 73
    .line 74
    if-lez v5, :cond_2

    .line 75
    .line 76
    float-to-double v5, v0

    .line 77
    invoke-virtual {v3, v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 78
    .line 79
    .line 80
    :cond_2
    iget-object v0, p0, Lcom/byazt/sz/i;->uj:Lorg/json/JSONObject;

    .line 81
    .line 82
    if-eqz v0, :cond_4

    .line 83
    .line 84
    const-string v5, "xSize"

    .line 85
    .line 86
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-nez v5, :cond_4

    .line 95
    .line 96
    new-instance v5, Lorg/json/JSONObject;

    .line 97
    .line 98
    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-lez v0, :cond_3

    .line 106
    .line 107
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 112
    .line 113
    .line 114
    :cond_3
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-lez v0, :cond_4

    .line 119
    .line 120
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .line 126
    .line 127
    :catch_0
    :cond_4
    new-instance v0, Lcom/byazt/sz/i$c;

    .line 128
    .line 129
    invoke-direct {v0}, Lcom/byazt/sz/i$c;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string v1, "View"

    .line 133
    .line 134
    invoke-static {v0, v1}, Lcom/byazt/sz/i$c;->c(Lcom/byazt/sz/i$c;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    const-string v1, "virtualNode"

    .line 138
    .line 139
    invoke-static {v0, v1}, Lcom/byazt/sz/i$c;->tt(Lcom/byazt/sz/i$c;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    invoke-static {v0, v3}, Lcom/byazt/sz/i$c;->c(Lcom/byazt/sz/i$c;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 143
    .line 144
    .line 145
    invoke-static {v0, v4}, Lcom/byazt/sz/i$c;->c(Lcom/byazt/sz/i$c;Lcom/byazt/sz/i$c;)Lcom/byazt/sz/i$c;

    .line 146
    .line 147
    .line 148
    iget-object v1, p0, Lcom/byazt/sz/i;->ve:Ljava/lang/String;

    .line 149
    .line 150
    invoke-static {v0, v1}, Lcom/byazt/sz/i$c;->ve(Lcom/byazt/sz/i$c;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    iget-boolean v1, p0, Lcom/byazt/sz/i;->da:Z

    .line 154
    .line 155
    invoke-static {v0, v1}, Lcom/byazt/sz/i$c;->c(Lcom/byazt/sz/i$c;Z)Z

    .line 156
    .line 157
    .line 158
    iget-object v1, p0, Lcom/byazt/sz/i;->n:Ljava/lang/String;

    .line 159
    .line 160
    invoke-static {v0, v1}, Lcom/byazt/sz/i$c;->uj(Lcom/byazt/sz/i$c;Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    iget-object v1, p0, Lcom/byazt/sz/i;->c:Lorg/json/JSONObject;

    .line 164
    .line 165
    invoke-direct {p0, v1, v0}, Lcom/byazt/sz/i;->c(Lorg/json/JSONObject;Lcom/byazt/sz/i$c;)Lcom/byazt/sz/i$c;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {v0, v1}, Lcom/byazt/sz/i$c;->c(Lcom/byazt/sz/i$c;)V

    .line 170
    .line 171
    .line 172
    return-object v0
.end method

.method public static uj(Lcom/byazt/sz/i$c;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/byazt/sz/i$c;->ve(Lcom/byazt/sz/i$c;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public c()Lcom/byazt/sz/i$c;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/byazt/sz/i;->n()Lcom/byazt/sz/i$c;

    move-result-object v0

    return-object v0
.end method

.method public c(FF)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/sz/i;->x:F

    .line 3
    iput p2, p0, Lcom/byazt/sz/i;->i:F

    return-void
.end method

.method public c(Lcom/byazt/sz/i$c;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 46
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/sz/i$c;->n()Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const-string v0, "width"

    .line 47
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "match_parent"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public tt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/sz/i;->ve:Ljava/lang/String;

    return-object v0
.end method

.method public tt(Lcom/byazt/sz/i$c;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/sz/i$c;->n()Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const-string v0, "height"

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "match_parent"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public uj()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/sz/i;->sp:Z

    return v0
.end method

.method public ve()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/sz/i$c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/sz/i;->tt:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/byazt/sz/i;->tt:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 4
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6
    iget-object v4, p0, Lcom/byazt/sz/i;->tt:Lorg/json/JSONObject;

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 7
    invoke-direct {p0, v3, v1}, Lcom/byazt/sz/i;->c(Lorg/json/JSONObject;Lcom/byazt/sz/i$c;)Lcom/byazt/sz/i$c;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 8
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public ve(Lcom/byazt/sz/i$c;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/sz/i$c;->n()Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const-string v0, "position"

    .line 10
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "absolute"

    .line 11
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method
