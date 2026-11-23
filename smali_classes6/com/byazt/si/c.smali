.class public Lcom/byazt/si/c;
.super Lcom/byazt/si/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x260,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/si/c$c;
    }
.end annotation


# instance fields
.field public cf:Z

.field public ij:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/si/tt;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/byazt/si/c;->cf:Z

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic a(Lcom/byazt/si/c;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->uj:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/si/c;)Lcom/byazt/sz/rh;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/xj/ve;->hq:Lcom/byazt/sz/rh;

    return-object p0
.end method

.method private c(Lcom/byazt/xj/ve;Ljava/lang/String;)Lcom/byazt/xj/ve;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 50
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/byazt/xj/ve;->d()Lcom/byazt/xj/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {p1}, Lcom/byazt/xj/ve;->d()Lcom/byazt/xj/c;

    move-result-object p1

    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {p1, p2}, Lcom/byazt/xj/ve;->uj(Ljava/lang/String;)Lcom/byazt/xj/ve;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/si/c;Lcom/byazt/sz/m;Lorg/json/JSONArray;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/byazt/si/c;->c(Lcom/byazt/sz/m;Lorg/json/JSONArray;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/si/c;Ljava/util/Map;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/byazt/si/c;->c(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/si/c;Ljava/util/Map;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/byazt/si/c;->c(Ljava/util/Map;I)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/si/c;Lorg/json/JSONObject;IILjava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/byazt/si/c;->c(Lorg/json/JSONObject;IILjava/lang/String;)V

    return-void
.end method

.method private c(Lcom/byazt/sz/m;Lorg/json/JSONArray;)V
    .locals 5

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 37
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 38
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "vid"

    .line 39
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 40
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "hd"

    .line 41
    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 42
    invoke-virtual {p1}, Lcom/byazt/sz/m;->c()Lcom/byazt/xj/ve;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/byazt/si/c;->c(Lcom/byazt/xj/ve;Ljava/lang/String;)Lcom/byazt/xj/ve;

    move-result-object v3

    if-eqz v3, :cond_2

    if-nez v2, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    const/16 v4, 0x8

    .line 43
    :goto_1
    invoke-virtual {v3, v4}, Lcom/byazt/xj/ve;->tt(I)V

    .line 44
    invoke-virtual {v3}, Lcom/byazt/xj/ve;->i()Landroid/view/View;

    move-result-object v3

    .line 45
    instance-of v4, v3, Lcom/byazt/si/UgenLottieView;

    if-eqz v4, :cond_2

    .line 46
    check-cast v3, Lcom/byazt/si/UgenLottieView;

    if-nez v2, :cond_1

    .line 47
    invoke-virtual {v3}, Lcom/byazt/ga/LottieAnimationView;->c()V

    .line 48
    invoke-direct {p0}, Lcom/byazt/si/c;->kk()V

    goto :goto_2

    .line 49
    :cond_1
    invoke-virtual {v3}, Lcom/byazt/ga/LottieAnimationView;->a()V

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private varargs c(Lcom/byazt/xj/ve;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 31
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/byazt/xj/ve;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    instance-of v0, p1, Lcom/byazt/xj/c;

    if-eqz v0, :cond_2

    .line 33
    check-cast p1, Lcom/byazt/xj/c;

    invoke-virtual {p1}, Lcom/byazt/xj/c;->sp()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 34
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 35
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/xj/ve;

    .line 36
    invoke-direct {p0, v0, p2, p3}, Lcom/byazt/si/c;->c(Lcom/byazt/xj/ve;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private c(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ugen_url"

    .line 53
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 54
    instance-of v1, v0, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 55
    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const-string v1, "ugen_md5"

    .line 56
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 57
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 58
    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    const-string v3, "ugen_v"

    .line 59
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 60
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 61
    move-object v2, v3

    check-cast v2, Ljava/lang/String;

    :cond_2
    const-string v3, "ugen_w"

    .line 62
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 63
    instance-of v4, v3, Ljava/lang/Integer;

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 64
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    const-string v4, "ugen_h"

    .line 65
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 66
    instance-of v4, p1, Ljava/lang/Integer;

    if-eqz v4, :cond_4

    .line 67
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :cond_4
    if-lez v3, :cond_6

    if-lez v5, :cond_6

    .line 68
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    .line 69
    :cond_5
    new-instance p1, Lcom/byazt/si/c$6;

    invoke-direct {p1, p0, v3, v5, v2}, Lcom/byazt/si/c$6;-><init>(Lcom/byazt/si/c;IILjava/lang/String;)V

    invoke-static {v0, v1, p1}, Lcom/byazt/xs/da;->c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/xs/ve;)Lorg/json/JSONObject;

    :cond_6
    :goto_3
    return-void
.end method

.method private c(Ljava/util/Map;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "duration"

    .line 8
    new-instance v1, Lcom/byazt/sz/m;

    invoke-direct {v1}, Lcom/byazt/sz/m;-><init>()V

    .line 9
    invoke-virtual {v1, p2}, Lcom/byazt/sz/m;->c(I)V

    .line 10
    invoke-virtual {v1, p0}, Lcom/byazt/sz/m;->c(Lcom/byazt/xj/ve;)V

    if-eqz p1, :cond_0

    const-string v2, "lel"

    .line 11
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 12
    instance-of v3, v2, Lorg/json/JSONArray;

    if-eqz v3, :cond_0

    .line 13
    check-cast v2, Lorg/json/JSONArray;

    invoke-direct {p0, v1, v2}, Lcom/byazt/si/c;->c(Lcom/byazt/sz/m;Lorg/json/JSONArray;)V

    .line 14
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "lottieEvent"

    const/4 v4, 0x1

    .line 15
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-eqz p1, :cond_2

    .line 16
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 17
    instance-of v4, v3, Ljava/lang/Long;

    if-eqz v4, :cond_1

    .line 18
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "uttieUrl"

    .line 19
    iget-object v3, p0, Lcom/byazt/si/tt;->c:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v0, "el"

    .line 20
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 21
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "type"

    .line 22
    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    :cond_2
    invoke-virtual {v1, v2}, Lcom/byazt/sz/m;->c(Lorg/json/JSONObject;)V

    .line 24
    iget-object p1, p0, Lcom/byazt/xj/ve;->hq:Lcom/byazt/sz/rh;

    invoke-interface {p1, v1, p0, p0}, Lcom/byazt/sz/rh;->c(Lcom/byazt/sz/m;Lcom/byazt/sz/rh$tt;Lcom/byazt/sz/rh$c;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 25
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 26
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    invoke-virtual {p0}, Lcom/byazt/xj/ve;->eo()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x13

    if-ne p2, v0, :cond_3

    const-string p2, "start"

    goto :goto_1

    :cond_3
    const-string p2, "complete"

    .line 28
    :goto_1
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-virtual {p0, p0}, Lcom/byazt/xj/ve;->tt(Lcom/byazt/xj/ve;)Lcom/byazt/xj/ve;

    move-result-object p2

    const-string v0, "Lottie://state"

    .line 30
    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p2, v0, p1}, Lcom/byazt/si/c;->c(Lcom/byazt/xj/ve;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private c(Lorg/json/JSONObject;IILjava/lang/String;)V
    .locals 0

    .line 70
    new-instance p2, Lcom/byazt/sz/z;

    iget-object p3, p0, Lcom/byazt/xj/ve;->tt:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/byazt/sz/z;-><init>(Landroid/content/Context;)V

    const-string p3, "2"

    .line 71
    invoke-virtual {p4, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 72
    invoke-virtual {p2, p1}, Lcom/byazt/sz/z;->c(Lorg/json/JSONObject;)Lcom/byazt/xj/ve;

    move-result-object p1

    .line 73
    iget-object p3, p0, Lcom/byazt/xj/ve;->uj:Lorg/json/JSONObject;

    invoke-virtual {p2, p3}, Lcom/byazt/sz/z;->tt(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    const-string p3, "3"

    .line 74
    invoke-virtual {p4, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_1

    .line 75
    iget-object p3, p0, Lcom/byazt/xj/ve;->uj:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, p3, p4}, Lcom/byazt/sz/z;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/byazt/xj/ve;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, p4

    :goto_0
    if-eqz p1, :cond_2

    .line 76
    invoke-virtual {p1}, Lcom/byazt/xj/ve;->i()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/si/c;->ij:Landroid/view/View;

    :cond_2
    return-void
.end method

.method public static synthetic c(Lcom/byazt/si/c;Z)Z
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/byazt/si/c;->cf:Z

    return p1
.end method

.method public static synthetic da(Lcom/byazt/si/c;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->uj:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic i(Lcom/byazt/si/c;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->uj:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object p0
.end method

.method private kk()V
    .locals 4

    .line 1
    new-instance v0, Lcom/byazt/sz/m;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/sz/m;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x15

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/byazt/sz/m;->c(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Lcom/byazt/sz/m;->c(Lcom/byazt/xj/ve;)V

    .line 12
    .line 13
    .line 14
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 15
    .line 16
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "lottieEvent"

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 23
    .line 24
    .line 25
    const-string v2, "uttieUrl"

    .line 26
    .line 27
    iget-object v3, p0, Lcom/byazt/si/tt;->c:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/byazt/sz/m;->c(Lorg/json/JSONObject;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/byazt/xj/ve;->hq:Lcom/byazt/sz/rh;

    .line 36
    .line 37
    invoke-interface {v1, v0, p0, p0}, Lcom/byazt/sz/rh;->c(Lcom/byazt/sz/m;Lcom/byazt/sz/rh$tt;Lcom/byazt/sz/rh$c;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public static synthetic n(Lcom/byazt/si/c;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/si/c;->ij:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic sl(Lcom/byazt/si/c;)Lcom/byazt/sz/yp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->i:Lcom/byazt/sz/yp;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic sp(Lcom/byazt/si/c;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->uj:Lorg/json/JSONObject;

    return-object p0
.end method

.method public static synthetic t(Lcom/byazt/si/c;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/si/c;)Lcom/byazt/sz/rh;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->hq:Lcom/byazt/sz/rh;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/si/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/si/c;->cf:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic ve(Lcom/byazt/si/c;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->uj:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic x(Lcom/byazt/si/c;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->uj:Lorg/json/JSONObject;

    return-object p0
.end method


# virtual methods
.method public synthetic c()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/si/c;->sp()Lcom/byazt/si/UgenLottieView;

    move-result-object v0

    return-object v0
.end method

.method public sp()Lcom/byazt/si/UgenLottieView;
    .locals 3

    .line 2
    new-instance v0, Lcom/byazt/si/c$1;

    invoke-direct {v0, p0}, Lcom/byazt/si/c$1;-><init>(Lcom/byazt/si/c;)V

    .line 3
    invoke-super {p0}, Lcom/byazt/si/tt;->sp()Lcom/byazt/si/UgenLottieView;

    move-result-object v1

    .line 4
    new-instance v2, Lcom/byazt/si/c$2;

    invoke-direct {v2, p0, v1}, Lcom/byazt/si/c$2;-><init>(Lcom/byazt/si/c;Lcom/byazt/ga/LottieAnimationView;)V

    invoke-virtual {v1, v2}, Lcom/byazt/ga/LottieAnimationView;->setTextDelegate(Lcom/byazt/ga/gt;)V

    .line 5
    new-instance v2, Lcom/byazt/si/c$3;

    invoke-direct {v2, p0}, Lcom/byazt/si/c$3;-><init>(Lcom/byazt/si/c;)V

    invoke-virtual {v1, v2}, Lcom/byazt/ga/LottieAnimationView;->setViewDelegate(Lcom/byazt/ga/rl;)V

    .line 6
    invoke-virtual {v1, v0}, Lcom/byazt/ga/LottieAnimationView;->setLottieClicklistener(Lcom/byazt/ga/LottieAnimationView$tt;)V

    .line 7
    new-instance v2, Lcom/byazt/si/c$4;

    invoke-direct {v2, p0}, Lcom/byazt/si/c$4;-><init>(Lcom/byazt/si/c;)V

    invoke-virtual {v1, v2}, Lcom/byazt/ga/LottieAnimationView;->setLottieAnimListener(Lcom/byazt/ga/LottieAnimationView$c;)V

    .line 8
    new-instance v2, Lcom/byazt/si/c$c;

    invoke-direct {v2, p0, v0}, Lcom/byazt/si/c$c;-><init>(Lcom/byazt/xj/ve;Lcom/byazt/ga/LottieAnimationView$tt;)V

    invoke-virtual {v1, v2}, Lcom/byazt/ga/LottieAnimationView;->setEventMonitorProxy(Lcom/byazt/qm/tt;)V

    return-object v1
.end method

.method public x()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/byazt/si/UgenLottieView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    check-cast v0, Lcom/byazt/si/UgenLottieView;

    new-instance v1, Lcom/byazt/si/c$5;

    invoke-direct {v1, p0}, Lcom/byazt/si/c$5;-><init>(Lcom/byazt/si/c;)V

    invoke-virtual {v0, v1}, Lcom/byazt/ga/LottieAnimationView;->setImageAssetDelegate(Lcom/byazt/ga/uj;)V

    .line 4
    invoke-virtual {p0}, Lcom/byazt/si/tt;->b()V

    .line 5
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    check-cast v0, Lcom/byazt/si/UgenLottieView;

    invoke-virtual {v0}, Lcom/byazt/ga/LottieAnimationView;->c()V

    .line 6
    invoke-direct {p0}, Lcom/byazt/si/c;->kk()V

    :cond_0
    return-void
.end method
