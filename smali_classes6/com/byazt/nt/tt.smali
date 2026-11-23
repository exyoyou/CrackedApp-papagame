.class public Lcom/byazt/nt/tt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/nt/uj;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x570,
        0xd
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/nt/tt$c;
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/pop/c;

.field public final c:Lcom/byazt/ete/ic;

.field public n:Z

.field public sp:Z

.field public final tt:Lcom/byazt/nt/ve;

.field public final uj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byazt/pop/ve;",
            ">;"
        }
    .end annotation
.end field

.field public ve:Z

.field public x:Z


# direct methods
.method private constructor <init>(Lcom/byazt/nt/ve;Lcom/byazt/ete/ic;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/nt/tt;->uj:Ljava/util/Map;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/byazt/nt/tt;->n:Z

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/byazt/nt/tt;->sp:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/byazt/nt/tt;->x:Z

    .line 18
    .line 19
    iput-object p1, p0, Lcom/byazt/nt/tt;->tt:Lcom/byazt/nt/ve;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/byazt/nt/tt;->c:Lcom/byazt/ete/ic;

    .line 22
    .line 23
    iput-boolean p3, p0, Lcom/byazt/nt/tt;->ve:Z

    .line 24
    .line 25
    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/byazt/ete/ic;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const-string v2, "download_url"

    .line 5
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const-string v2, ""

    const/4 v3, 0x0

    .line 6
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    move-result-object v4

    invoke-virtual {v4}, Lcom/byazt/ete/n;->tt()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    move-result-object v4

    invoke-virtual {v4}, Lcom/byazt/ete/n;->tt()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    const-string v3, "has_valid_download_url"

    const-string v4, "download_config_json"

    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 9
    invoke-virtual {v5, v3, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_d

    .line 10
    new-instance v0, Lcom/byazt/ete/ic;

    invoke-direct {v0}, Lcom/byazt/ete/ic;-><init>()V

    .line 11
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->jl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/byazt/ete/ic;->qp(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->eo()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/byazt/ete/ic;->a(I)V

    .line 13
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->en()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/byazt/ete/ic;->zb(I)V

    .line 14
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->st()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/byazt/ete/ic;->eo(I)V

    const-string v5, "lp_down_rule"

    .line 15
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/byazt/ete/ic;->zb(I)V

    const/4 v5, 0x4

    .line 16
    invoke-virtual {v0, v5}, Lcom/byazt/ete/ic;->nb(I)V

    const-string v5, "id"

    .line 17
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/byazt/ete/ic;->gu(Ljava/lang/String;)V

    const-string v5, "source"

    .line 18
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/byazt/ete/ic;->m(Ljava/lang/String;)V

    .line 19
    new-instance v5, Lcom/byazt/ete/n;

    invoke-direct {v5}, Lcom/byazt/ete/n;-><init>()V

    const-string v6, "pkg_name"

    .line 20
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/byazt/ete/n;->uj(Ljava/lang/String;)V

    const-string v6, "name"

    .line 21
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/byazt/ete/n;->ve(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v5, v2}, Lcom/byazt/ete/n;->tt(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0, v5}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/n;)V

    .line 24
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 25
    new-instance v4, Lcom/byazt/ete/gt;

    invoke-direct {v4, v2}, Lcom/byazt/ete/gt;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0, v4}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/gt;)V

    .line 26
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_4

    .line 27
    invoke-virtual {v0, v1}, Lcom/byazt/ete/ic;->u(Z)V

    :cond_4
    const-string v1, "market_url"

    .line 28
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 30
    invoke-virtual {v0, v1}, Lcom/byazt/ete/ic;->h(Ljava/lang/String;)V

    :cond_5
    const-string v1, "app_manage_json"

    .line 31
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 32
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->rh()Lcom/byazt/ete/a;

    move-result-object v2

    if-eqz v2, :cond_6

    goto :goto_2

    .line 33
    :cond_6
    new-instance v2, Lcom/byazt/ete/a;

    invoke-direct {v2}, Lcom/byazt/ete/a;-><init>()V

    :goto_2
    const-string v3, "score"

    .line 34
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/byazt/ete/a;->c(F)V

    const-string v3, "creative_tags"

    .line 35
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/byazt/ete/a;->c(Lorg/json/JSONArray;)V

    .line 36
    invoke-virtual {v0, v2}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/a;)V

    .line 37
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/byazt/ete/ic;->z(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->te()Lcom/byazt/ete/zb;

    move-result-object v2

    if-eqz v2, :cond_7

    goto :goto_3

    .line 39
    :cond_7
    new-instance v2, Lcom/byazt/ete/zb;

    invoke-direct {v2}, Lcom/byazt/ete/zb;-><init>()V

    :goto_3
    const-string v3, "icon_url"

    .line 40
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/byazt/ete/zb;->c(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0, v2}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/zb;)V

    const-string v2, "desc"

    .line 42
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Lcom/byazt/ete/ic;->rl(Ljava/lang/String;)V

    :cond_8
    const-string v1, "app_manage_type_json"

    .line 44
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_9

    const-string v2, "app_manage_type"

    .line 45
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 46
    invoke-virtual {v0, v1}, Lcom/byazt/ete/ic;->eo(I)V

    :cond_9
    const-string v1, "live_interaction_type"

    .line 47
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "live_room_id"

    .line 48
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-lez v1, :cond_a

    .line 49
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 50
    invoke-virtual {v0, v1}, Lcom/byazt/ete/ic;->v(I)V

    .line 51
    invoke-virtual {v0, v2}, Lcom/byazt/ete/ic;->pf(Ljava/lang/String;)V

    :cond_a
    const-string v1, "ad_type"

    .line 52
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 53
    invoke-virtual {v0, v1}, Lcom/byazt/ete/ic;->tx(I)V

    const-string v1, "wc_miniapp_info"

    .line 54
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/byazt/ete/hq;->c(Lorg/json/JSONObject;)Lcom/byazt/ete/hq;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 55
    invoke-virtual {v0, v1}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/hq;)V

    :cond_b
    const-string v1, "quick_app_url"

    .line 56
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 58
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    move-result-object v2

    goto :goto_4

    :cond_c
    new-instance v2, Lcom/byazt/ete/n;

    invoke-direct {v2}, Lcom/byazt/ete/n;-><init>()V

    .line 59
    :goto_4
    invoke-virtual {v2, v1}, Lcom/byazt/ete/n;->c(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0, v2}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/n;)V

    goto :goto_5

    .line 61
    :cond_d
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->yg()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/omf/c;->c(Lorg/json/JSONObject;)Lcom/byazt/ete/ic;

    move-result-object v0

    .line 62
    :cond_e
    :goto_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 63
    invoke-virtual {v0, p2}, Lcom/byazt/ete/ic;->gr(Ljava/lang/String;)V

    :cond_f
    if-eqz p1, :cond_11

    const-string p2, "deep_link"

    .line 64
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 65
    new-instance p2, Lcom/byazt/ete/nu;

    invoke-direct {p2}, Lcom/byazt/ete/nu;-><init>()V

    .line 66
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->yp()Lcom/byazt/ete/nu;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 67
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->yp()Lcom/byazt/ete/nu;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/byazt/ete/nu;->c(Lcom/byazt/ete/nu;)V

    .line 68
    :cond_10
    new-instance p0, Lcom/byazt/ete/nu;

    invoke-direct {p0, p1}, Lcom/byazt/ete/nu;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p2, p0}, Lcom/byazt/ete/nu;->c(Lcom/byazt/ete/nu;)V

    .line 69
    invoke-virtual {v0, p2}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/nu;)V

    :cond_11
    return-object v0
.end method

.method public static c(Lcom/byazt/nt/ve;Lcom/byazt/ete/ic;Z)Lcom/byazt/nt/tt;
    .locals 1

    .line 2
    new-instance v0, Lcom/byazt/nt/tt;

    invoke-direct {v0, p0, p1, p2}, Lcom/byazt/nt/tt;-><init>(Lcom/byazt/nt/ve;Lcom/byazt/ete/ic;Z)V

    return-object v0
.end method

.method public static synthetic c(Lcom/byazt/nt/tt;)Lcom/byazt/pop/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nt/tt;->a:Lcom/byazt/pop/c;

    return-object p0
.end method

.method private c(Landroid/content/Context;Lcom/byazt/ete/ic;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/byazt/pop/ve;
    .locals 1

    .line 129
    invoke-static {p1, p2, p4}, Lcom/byazt/yih/x;->tt(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;)Lcom/byazt/pop/ve;

    move-result-object p1

    .line 130
    instance-of p4, p1, Lcom/byazt/wz/c;

    if-eqz p4, :cond_0

    .line 131
    move-object p4, p1

    check-cast p4, Lcom/byazt/wz/c;

    iget-boolean v0, p0, Lcom/byazt/nt/tt;->ve:Z

    invoke-virtual {p4, v0}, Lcom/byazt/wz/c;->a(Z)V

    .line 132
    :cond_0
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object p2

    .line 133
    new-instance p4, Lcom/byazt/nt/tt$2;

    invoke-direct {p4, p0, p2, p3}, Lcom/byazt/nt/tt$2;-><init>(Lcom/byazt/nt/tt;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-interface {p1, p4}, Lcom/byazt/pop/ve;->c(Lcom/byazt/pop/c;)V

    return-object p1
.end method

.method private c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "ext"

    .line 88
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 89
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    :cond_1
    return-object p1
.end method

.method private c(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 90
    :cond_0
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 91
    invoke-static {p1, p2, p3}, Lcom/byazt/yih/x;->tt(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;)Lcom/byazt/pop/ve;

    move-result-object p3

    .line 92
    instance-of v0, p3, Lcom/byazt/wz/c;

    if-eqz v0, :cond_1

    .line 93
    move-object v0, p3

    check-cast v0, Lcom/byazt/wz/c;

    iget-boolean v2, p0, Lcom/byazt/nt/tt;->ve:Z

    invoke-virtual {v0, v2}, Lcom/byazt/wz/c;->a(Z)V

    .line 94
    iget-boolean v0, p0, Lcom/byazt/nt/tt;->x:Z

    invoke-interface {p3, v0}, Lcom/byazt/pop/ve;->uj(Z)V

    .line 95
    :cond_1
    invoke-interface {p3, p2, v1}, Lcom/byazt/pop/ve;->c(Lcom/byazt/ete/ic;Z)V

    goto :goto_1

    .line 96
    :cond_2
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object p3

    .line 97
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ete/n;->tt()Ljava/lang/String;

    move-result-object v0

    .line 98
    iget-object v2, p0, Lcom/byazt/nt/tt;->uj:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/pop/ve;

    if-eqz v0, :cond_5

    .line 99
    iget-boolean v2, p0, Lcom/byazt/nt/tt;->sp:Z

    invoke-interface {v0, v2}, Lcom/byazt/pop/ve;->tt(Z)V

    .line 100
    iget-boolean v2, p0, Lcom/byazt/nt/tt;->x:Z

    invoke-interface {v0, v2}, Lcom/byazt/pop/ve;->uj(Z)V

    .line 101
    instance-of v2, v0, Lcom/byazt/wz/c;

    if-eqz v2, :cond_3

    .line 102
    move-object v2, v0

    check-cast v2, Lcom/byazt/wz/c;

    .line 103
    invoke-virtual {v2}, Lcom/byazt/wz/c;->x()Lcom/byazt/yzg/ve;

    move-result-object v2

    iget-boolean v3, p0, Lcom/byazt/nt/tt;->n:Z

    invoke-virtual {v2, v3}, Lcom/byazt/yzg/ve;->c(Z)V

    goto :goto_0

    .line 104
    :cond_3
    instance-of v2, v0, Lcom/byazt/wz/sp;

    if-eqz v2, :cond_4

    .line 105
    move-object v2, v0

    check-cast v2, Lcom/byazt/wz/sp;

    .line 106
    invoke-virtual {v2}, Lcom/byazt/wz/sp;->x()Lcom/byazt/yzg/ve;

    move-result-object v2

    iget-boolean v3, p0, Lcom/byazt/nt/tt;->n:Z

    invoke-virtual {v2, v3}, Lcom/byazt/yzg/ve;->c(Z)V

    .line 107
    :cond_4
    :goto_0
    invoke-interface {v0, p2, v1}, Lcom/byazt/pop/ve;->c(Lcom/byazt/ete/ic;Z)V

    .line 108
    new-instance p2, Lcom/byazt/nt/tt$1;

    invoke-direct {p2, p0, p3}, Lcom/byazt/nt/tt$1;-><init>(Lcom/byazt/nt/tt;Ljava/lang/String;)V

    invoke-interface {v0, p2}, Lcom/byazt/pop/ve;->c(Lcom/byazt/pop/c;)V

    .line 109
    :cond_5
    :goto_1
    instance-of p2, p1, Lcom/byazt/fh/tt;

    if-eqz p2, :cond_6

    .line 110
    check-cast p1, Lcom/byazt/fh/tt;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/byazt/fh/tt;->c(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method private c(Landroid/content/Context;Lcom/byazt/ete/ic;Lorg/json/JSONObject;IIZ)V
    .locals 2

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 74
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p3, :cond_4

    iget-object v0, p0, Lcom/byazt/nt/tt;->tt:Lcom/byazt/nt/ve;

    if-nez v0, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/byazt/nt/tt;->uj:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/ete/n;->tt()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/pop/ve;

    if-eqz v0, :cond_1

    .line 76
    invoke-interface {v0, p5}, Lcom/byazt/pop/ve;->c(I)V

    return-void

    .line 77
    :cond_1
    invoke-static {p4}, Lcom/byazt/aas/nb;->c(I)Ljava/lang/String;

    move-result-object p4

    .line 78
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 79
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/byazt/nt/tt;->c(Landroid/content/Context;Lcom/byazt/ete/ic;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/byazt/pop/ve;

    move-result-object p1

    .line 80
    invoke-interface {p1, p5}, Lcom/byazt/pop/ve;->c(I)V

    .line 81
    instance-of p3, p1, Lcom/byazt/wz/n;

    if-eqz p3, :cond_3

    .line 82
    move-object p3, p1

    check-cast p3, Lcom/byazt/wz/n;

    invoke-virtual {p3, p6}, Lcom/byazt/wz/c;->a(Z)V

    .line 83
    :cond_3
    iget-object p3, p0, Lcom/byazt/nt/tt;->uj:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    move-result-object p2

    invoke-virtual {p2}, Lcom/byazt/ete/n;->tt()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_0
    return-void
.end method

.method private c(Lcom/byazt/ete/ic;Lorg/json/JSONObject;)V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/byazt/nt/tt;->tt:Lcom/byazt/nt/ve;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/ete/n;->tt()Ljava/lang/String;

    move-result-object p1

    .line 116
    iget-object v0, p0, Lcom/byazt/nt/tt;->uj:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/byazt/nt/tt;->uj:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/pop/ve;

    if-eqz p1, :cond_1

    .line 118
    :try_start_0
    invoke-interface {p1}, Lcom/byazt/pop/ve;->ve()V

    .line 119
    :cond_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "message"

    const-string v1, "success"

    .line 120
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "status"

    const-string v1, "unsubscribed"

    .line 121
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "appad"

    .line 122
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    iget-object p2, p0, Lcom/byazt/nt/tt;->tt:Lcom/byazt/nt/ve;

    const-string v0, "app_ad_event"

    invoke-interface {p2, v0, p1}, Lcom/byazt/nt/ve;->tt(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 124
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic tt(Lcom/byazt/nt/tt;)Lcom/byazt/nt/ve;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nt/tt;->tt:Lcom/byazt/nt/ve;

    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/byazt/nt/tt;->uj:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/pop/ve;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1}, Lcom/byazt/pop/ve;->tt()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;IZZ)V
    .locals 8

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "data"

    .line 70
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 71
    invoke-direct {p0, v4, p3}, Lcom/byazt/nt/tt;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 72
    iget-object p3, p0, Lcom/byazt/nt/tt;->c:Lcom/byazt/ete/ic;

    invoke-static {p3, v4, p2}, Lcom/byazt/nt/tt;->c(Lcom/byazt/ete/ic;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/byazt/ete/ic;

    move-result-object v3

    if-eqz p5, :cond_1

    .line 73
    invoke-static {v3}, Lcom/byazt/wz/x;->c(Lcom/byazt/ete/ic;)I

    move-result p2

    move v6, p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    const/4 v6, 0x0

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move v5, p4

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/byazt/nt/tt;->c(Landroid/content/Context;Lcom/byazt/ete/ic;Lorg/json/JSONObject;IIZ)V

    :cond_2
    :goto_1
    return-void
.end method

.method public c(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "data"

    .line 84
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 85
    invoke-direct {p0, p2, p4}, Lcom/byazt/nt/tt;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 86
    iget-object v0, p0, Lcom/byazt/nt/tt;->c:Lcom/byazt/ete/ic;

    invoke-static {v0, p2, p4}, Lcom/byazt/nt/tt;->c(Lcom/byazt/ete/ic;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/byazt/ete/ic;

    move-result-object p2

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/nt/tt;->c(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;Z)V
    .locals 1

    .line 126
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/byazt/nt/tt;->uj:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/pop/ve;

    if-eqz p1, :cond_1

    .line 128
    invoke-interface {p1, p2}, Lcom/byazt/pop/ve;->c(Z)V

    :cond_1
    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "data"

    .line 111
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 112
    iget-object v0, p0, Lcom/byazt/nt/tt;->c:Lcom/byazt/ete/ic;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/byazt/nt/tt;->c(Lcom/byazt/ete/ic;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/byazt/ete/ic;

    move-result-object v0

    .line 113
    invoke-direct {p0, v0, p1}, Lcom/byazt/nt/tt;->c(Lcom/byazt/ete/ic;Lorg/json/JSONObject;)V

    :cond_1
    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 125
    iput-boolean p1, p0, Lcom/byazt/nt/tt;->n:Z

    return-void
.end method

.method public tt()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/nt/tt;->uj:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public tt(Lorg/json/JSONObject;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/byazt/nt/tt;->tt:Lcom/byazt/nt/ve;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "data"

    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/byazt/nt/tt;->c:Lcom/byazt/ete/ic;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/byazt/nt/tt;->c(Lcom/byazt/ete/ic;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/byazt/ete/ic;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/byazt/nt/tt;->uj:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/ete/n;->tt()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/pop/ve;

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p1}, Lcom/byazt/pop/ve;->n()V

    :cond_1
    :goto_0
    return-void
.end method

.method public tt(Z)V
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/byazt/nt/tt;->sp:Z

    return-void
.end method

.method public ve()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/byazt/nt/tt;->tt()V

    .line 2
    iget-object v0, p0, Lcom/byazt/nt/tt;->uj:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/pop/ve;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Lcom/byazt/pop/ve;->ve()V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/byazt/nt/tt;->uj:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public ve(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/byazt/nt/tt;->x:Z

    return-void
.end method
