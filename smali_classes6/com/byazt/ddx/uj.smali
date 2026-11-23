.class public Lcom/byazt/ddx/uj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1e3,
        0xf
    }
.end annotation


# static fields
.field public static c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ete/ic;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-static {p0, p1, p2, p3}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static a(Lcom/byazt/ete/ic;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/byazt/omf/p;->x()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->ij()Lcom/byazt/dj/tt;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/byazt/dj/tt;->u()Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "media_extra"

    .line 5
    invoke-virtual {p2, p1, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 79
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->w_()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/byazt/ete/ic;->qy()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0, p1, p2}, Lcom/byazt/ddx/uj;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 80
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "log_extra"

    .line 81
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "ad_id"

    .line 82
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "req_id"

    .line 83
    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "tag"

    .line 84
    invoke-virtual {v0, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "track_type"

    .line 85
    invoke-virtual {v0, p0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public static c(ILjava/lang/String;Lcom/byazt/ete/ic;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 178
    :cond_0
    new-instance v0, Lcom/byazt/ddx/uj$34;

    invoke-direct {v0, p0, p2}, Lcom/byazt/ddx/uj$34;-><init>(ILcom/byazt/ete/ic;)V

    const-string p0, "saas_auth"

    invoke-static {p2, p1, p0, v0}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    return-void
.end method

.method public static c(JLcom/byazt/ete/ic;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 114
    :cond_0
    new-instance v0, Lcom/byazt/ddx/uj$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/byazt/ddx/uj$5;-><init>(JLcom/byazt/ete/ic;)V

    const-string p0, "splash_ad"

    const-string p1, "skip"

    invoke-static {p2, p0, p1, v0}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    return-void
.end method

.method public static c(JLjava/lang/String;Lcom/byazt/ete/ic;)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    .line 167
    :cond_0
    new-instance v0, Lcom/byazt/ddx/uj$19;

    invoke-direct {v0, p0, p1}, Lcom/byazt/ddx/uj$19;-><init>(J)V

    const-string p0, "open_appback"

    invoke-static {p3, p2, p0, v0}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    .line 168
    invoke-static {}, Lcom/byazt/omf/tt;->c()Lcom/byazt/it/ve;

    move-result-object p0

    const-string p1, "save_jump_success_time"

    const-wide/16 p2, 0x0

    .line 169
    invoke-interface {p0, p1, p2, p3}, Lcom/byazt/it/c;->put(Ljava/lang/String;J)V

    const-string p1, "save_jump_success_ad_tag"

    const-string p2, ""

    .line 170
    invoke-interface {p0, p1, p2}, Lcom/byazt/it/c;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .line 92
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz p1, :cond_6

    if-nez p4, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v0, "value"

    .line 93
    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 94
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "category"

    .line 95
    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "app_union"

    :cond_2
    const-string v2, "log_extra"

    .line 97
    invoke-virtual {p4, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 98
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->w_()Ljava/lang/String;

    move-result-object v2

    :cond_3
    :try_start_0
    const-string p1, "nt"

    .line 99
    invoke-static {p0}, Lcom/byazt/nr/rh;->ve(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p4, p1, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "scene_tag"

    const-string p1, "csj_sdk"

    .line 100
    invoke-virtual {p4, p0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "tag"

    const-string p1, "7.6.1.1"

    .line 101
    invoke-virtual {p4, p0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "subtag"

    .line 102
    invoke-virtual {p4, p0, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 103
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;)V

    :goto_0
    const-string p0, ""

    if-nez v0, :cond_4

    move-object p1, p0

    goto :goto_1

    .line 104
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    if-nez v2, :cond_5

    goto :goto_2

    .line 105
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 106
    :goto_2
    new-instance v0, Lcom/byazt/ddx/c$c;

    invoke-direct {v0}, Lcom/byazt/ddx/c$c;-><init>()V

    .line 107
    invoke-virtual {v0, p1}, Lcom/byazt/ddx/c$c;->n(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object p1

    .line 108
    invoke-virtual {p1, v1}, Lcom/byazt/ddx/c$c;->ve(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object p1

    .line 109
    invoke-virtual {p1, p0}, Lcom/byazt/ddx/c$c;->uj(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object p0

    .line 110
    invoke-virtual {p0, p2}, Lcom/byazt/ddx/c$c;->c(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object p0

    .line 111
    invoke-virtual {p0, p4}, Lcom/byazt/ddx/c$c;->c(Lorg/json/JSONObject;)Lcom/byazt/ddx/c$c;

    move-result-object p0

    .line 112
    invoke-virtual {p0, p3}, Lcom/byazt/ddx/c$c;->tt(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object p0

    new-instance p1, Lcom/byazt/ddx/uj$4;

    invoke-direct {p1}, Lcom/byazt/ddx/uj$4;-><init>()V

    .line 113
    invoke-virtual {p0, p1}, Lcom/byazt/ddx/c$c;->c(Lcom/byazt/ya/c;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;I)V
    .locals 2

    .line 118
    invoke-static {p0}, Lcom/byazt/aas/nb;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/byazt/ddx/uj$9;

    invoke-direct {v1, p0, p1}, Lcom/byazt/ddx/uj$9;-><init>(Lcom/byazt/ete/ic;I)V

    const-string p1, "reward_callback"

    invoke-static {p0, v0, p1, v1}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    invoke-static {p0}, Lcom/byazt/aas/nb;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 57
    :cond_1
    new-instance v1, Lcom/byazt/ddx/uj$42;

    invoke-direct {v1, p1, p0}, Lcom/byazt/ddx/uj$42;-><init>(Ljava/lang/String;Lcom/byazt/ete/ic;)V

    const-string p1, "page_on_create"

    invoke-static {p0, v0, p1, v1}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;Ljava/lang/String;I)V
    .locals 1

    .line 177
    new-instance v0, Lcom/byazt/ddx/uj$29;

    invoke-direct {v0, p2, p0}, Lcom/byazt/ddx/uj$29;-><init>(ILcom/byazt/ete/ic;)V

    const-string p2, "qpon_join"

    invoke-static {p0, p1, p2, v0}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;Ljava/lang/String;IIIZ)V
    .locals 8

    if-nez p0, :cond_0

    return-void

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->xl()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    return-void

    .line 176
    :cond_1
    new-instance v0, Lcom/byazt/ddx/uj$28;

    move-object v2, v0

    move v3, p4

    move-object v4, p0

    move v5, p2

    move v6, p3

    move v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/byazt/ddx/uj$28;-><init>(ILcom/byazt/ete/ic;IIZ)V

    const-string p2, "open_live"

    invoke-static {p0, p1, p2, v0}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 171
    new-instance v0, Lcom/byazt/ddx/uj$24;

    invoke-direct {v0, p2, p3}, Lcom/byazt/ddx/uj$24;-><init>(ILjava/lang/String;)V

    const-string p2, "render_live_picture_fail"

    invoke-static {p0, p1, p2, v0}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 173
    new-instance v0, Lcom/byazt/ddx/uj$26;

    invoke-direct {v0, p2, p3, p4}, Lcom/byazt/ddx/uj$26;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const-string p2, "live_play_fail"

    invoke-static {p0, p1, p2, v0}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;Ljava/lang/String;J)V
    .locals 1

    .line 48
    new-instance v0, Lcom/byazt/ddx/uj$39;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/byazt/ddx/uj$39;-><init>(Ljava/lang/String;JLcom/byazt/ete/ic;)V

    const-string p2, "download_creative_duration"

    invoke-static {p0, p1, p2, v0}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    .line 172
    new-instance v0, Lcom/byazt/ddx/uj$25;

    invoke-direct {v0, p2, p3, p4}, Lcom/byazt/ddx/uj$25;-><init>(JLjava/lang/String;)V

    const-string p2, "live_play_success"

    invoke-static {p0, p1, p2, v0}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;Ljava/lang/String;JLorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    .line 174
    new-instance v0, Lcom/byazt/ddx/uj$27;

    invoke-direct {v0, p4, p5, p2, p3}, Lcom/byazt/ddx/uj$27;-><init>(Lorg/json/JSONObject;Ljava/lang/String;J)V

    const-string p2, "live_play_close"

    invoke-static {p0, p1, p2, v0}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 86
    :cond_0
    new-instance v0, Lcom/byazt/ddx/uj$3;

    invoke-direct {v0, p3, p4, p0}, Lcom/byazt/ddx/uj$3;-><init>(JLcom/byazt/ete/ic;)V

    invoke-static {p0, p1, p2, v0}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;JILjava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ete/ic;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JI",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 117
    new-instance v6, Lcom/byazt/ddx/uj$8;

    move-object v0, v6

    move-wide v1, p3

    move v3, p5

    move-object v4, p6

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/byazt/ddx/uj$8;-><init>(JILjava/util/Map;Lcom/byazt/ete/ic;)V

    invoke-static {p0, p1, p2, v6}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;)V
    .locals 1

    if-eqz p0, :cond_1

    if-nez p5, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    new-instance v0, Lcom/byazt/ddx/uj$11;

    invoke-direct {v0, p3, p4, p5, p0}, Lcom/byazt/ddx/uj$11;-><init>(JLorg/json/JSONObject;Lcom/byazt/ete/ic;)V

    invoke-static {p0, p1, p2, v0}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 8
    :cond_0
    new-instance v0, Lcom/byazt/ddx/c$c;

    invoke-direct {v0}, Lcom/byazt/ddx/c$c;-><init>()V

    .line 9
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/ddx/c$c;->n(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->w_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/ddx/c$c;->uj(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Lcom/byazt/ddx/c$c;->c(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object p1

    .line 12
    invoke-virtual {p1, p2}, Lcom/byazt/ddx/c$c;->tt(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object p1

    .line 13
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->qy()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/byazt/ddx/c$c;->sp(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object p0

    .line 14
    invoke-virtual {p0, p3}, Lcom/byazt/ddx/c$c;->c(Lcom/byazt/ya/c;)V

    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 128
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 129
    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "refer"

    .line 130
    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    invoke-static {v0, p0}, Lcom/byazt/ic/c;->c(Lorg/json/JSONObject;Lcom/byazt/ete/ic;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :catchall_0
    :cond_0
    new-instance p3, Lcom/byazt/ddx/uj$17;

    invoke-direct {p3, v0}, Lcom/byazt/ddx/uj$17;-><init>(Lorg/json/JSONObject;)V

    invoke-static {p0, p1, p2, p3}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 161
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->A_()Lcom/byazt/ete/hq;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 162
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "wc_type"

    .line 163
    invoke-virtual {v0}, Lcom/byazt/ete/hq;->n()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    move-object v1, v2

    goto :goto_1

    :catchall_0
    nop

    goto :goto_0

    :catchall_1
    nop

    :cond_0
    :goto_1
    if-eqz p3, :cond_2

    if-nez v1, :cond_1

    .line 164
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v0

    :cond_1
    :try_start_2
    const-string v0, "throwable"

    .line 165
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 166
    :catch_0
    :cond_2
    invoke-static {p0, p1, p2, v1}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ete/ic;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/byazt/ddx/uj$12;

    invoke-direct {v0, p3, p0}, Lcom/byazt/ddx/uj$12;-><init>(Ljava/util/Map;Lcom/byazt/ete/ic;)V

    invoke-static {p0, p1, p2, v0}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 31
    new-instance v0, Lcom/byazt/ddx/uj$1;

    invoke-direct {v0, p3, p0}, Lcom/byazt/ddx/uj$1;-><init>(Lorg/json/JSONObject;Lcom/byazt/ete/ic;)V

    invoke-static {p0, p1, p2, v0}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/ya/c;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 23
    :cond_0
    new-instance v0, Lcom/byazt/ddx/c$c;

    invoke-direct {v0}, Lcom/byazt/ddx/c$c;-><init>()V

    .line 24
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/ddx/c$c;->n(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object v0

    .line 25
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->w_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/ddx/c$c;->uj(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object v0

    .line 26
    invoke-virtual {v0, p1}, Lcom/byazt/ddx/c$c;->c(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object p1

    .line 27
    invoke-virtual {p1, p2}, Lcom/byazt/ddx/c$c;->tt(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object p1

    .line 28
    invoke-virtual {p1, p3}, Lcom/byazt/ddx/c$c;->c(Lorg/json/JSONObject;)Lcom/byazt/ddx/c$c;

    move-result-object p1

    .line 29
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->qy()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/byazt/ddx/c$c;->sp(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object p0

    .line 30
    invoke-virtual {p0, p4}, Lcom/byazt/ddx/c$c;->c(Lcom/byazt/ya/c;)V

    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/Throwable;ZZ)V
    .locals 0

    if-eqz p4, :cond_1

    if-eqz p3, :cond_0

    const-string p3, "lp_openurl"

    .line 155
    invoke-static {p0, p1, p3, p2}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p3, "lp_deeplink_success_realtime"

    .line 156
    invoke-static {p0, p1, p3, p2}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const-string p3, "deeplink_success_realtime"

    .line 157
    invoke-static {p0, p1, p3, p2}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    if-eqz p3, :cond_2

    const-string p3, "lp_openurl_failed"

    .line 158
    invoke-static {p0, p1, p3, p2}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p3, "lp_deeplink_fail_realtime"

    .line 159
    invoke-static {p0, p1, p3, p2}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_2
    const-string p3, "deeplink_fail_realtime"

    .line 160
    invoke-static {p0, p1, p3, p2}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ete/ic;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/byazt/ddx/uj$22;

    const-string v1, "repost_show_check"

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/byazt/ddx/uj$22;-><init>(Ljava/lang/String;Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Double;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ete/ic;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Double;",
            ")V"
        }
    .end annotation

    .line 34
    new-instance v6, Lcom/byazt/ddx/uj$33;

    const-string v1, "report_show"

    move-object v0, v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/byazt/ddx/uj$33;-><init>(Ljava/lang/String;Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Double;)V

    invoke-static {v6}, Lcom/byazt/bzd/x;->c(Lcom/byazt/bwm/sp;)V

    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ete/ic;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    const-string p3, "lp_open_dpl"

    .line 146
    invoke-static {p0, p1, p3, p2}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->A_()Lcom/byazt/ete/hq;

    move-result-object p3

    if-nez p2, :cond_1

    .line 148
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_1
    if-eqz p3, :cond_2

    .line 149
    invoke-virtual {p3}, Lcom/byazt/ete/hq;->n()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "wc_type"

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string p3, "rom_new_version"

    .line 150
    invoke-static {}, Lcom/byazt/aas/zm;->yp()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object p3

    invoke-virtual {p3}, Lcom/byazt/omf/x;->c()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const-string v0, "is_background"

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->i()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "interaction_type"

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-static {}, Lcom/byazt/aas/nb;->yv()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const-string v0, "can_query"

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "open_url_app"

    .line 154
    invoke-static {p0, p1, p3, p2}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 115
    invoke-static {p0}, Lcom/byazt/aas/nb;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v0

    .line 116
    new-instance v1, Lcom/byazt/ddx/uj$6;

    invoke-direct {v1, p2, p0}, Lcom/byazt/ddx/uj$6;-><init>(Lorg/json/JSONObject;Lcom/byazt/ete/ic;)V

    invoke-static {p0, v0, p1, v1}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    return-void
.end method

.method private static c(Lcom/byazt/ete/ic;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ete/ic;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 35
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "track_type"

    .line 36
    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p4, "error_msg"

    .line 37
    invoke-virtual {v0, p4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "["

    .line 39
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_1

    .line 41
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 42
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p4, -0x1

    if-ne v1, v2, :cond_0

    const-string v2, "]"

    .line 43
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v2, ","

    .line 44
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "url"

    .line 45
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "urls_size"

    .line 46
    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :catch_0
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/byazt/ete/ic;->w_()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p1, p0, v0}, Lcom/byazt/ddx/uj;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static c(Lcom/byazt/vo/tt;Lcom/byazt/nc/a;)V
    .locals 1

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-static {}, Lcom/byazt/omf/gt;->c()Lcom/byazt/omf/gu;

    move-result-object p1

    invoke-interface {p1, p0, v0}, Lcom/byazt/omf/gu;->c(Lcom/byazt/vo/tt;Ljava/util/List;)V

    .line 90
    invoke-static {}, Lcom/byazt/nr/m;->ve()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "tt_dislike_icon "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/byazt/vo/tt;->uj()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AdEvent"

    invoke-static {p1, p0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;Lcom/byazt/ete/ic;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 179
    :cond_0
    new-instance v0, Lcom/byazt/ddx/uj$35;

    invoke-direct {v0}, Lcom/byazt/ddx/uj$35;-><init>()V

    const-string v1, "ec_mall_task"

    invoke-static {p1, p0, v1, v0}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Lcom/byazt/ete/ic;Lcom/byazt/ete/i;Ljava/lang/String;ZLjava/util/Map;IZZ)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/byazt/ete/ic;",
            "Lcom/byazt/ete/i;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;IZZ)V"
        }
    .end annotation

    move-object v0, p0

    move-object v10, p1

    move-object/from16 v11, p3

    if-nez v10, :cond_0

    return-void

    :cond_0
    if-eqz p7, :cond_1

    return-void

    .line 58
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-double v1, v1

    .line 59
    invoke-static {p1}, Lcom/byazt/aas/nb;->z(Lcom/byazt/ete/ic;)D

    move-result-wide v3

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v9

    .line 60
    new-instance v12, Lcom/byazt/ddx/uj$2;

    move-object v1, v12

    move-object v2, p2

    move-object v3, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p6

    move-object/from16 v7, p5

    move/from16 v8, p8

    invoke-direct/range {v1 .. v9}, Lcom/byazt/ddx/uj$2;-><init>(Lcom/byazt/ete/i;Lcom/byazt/ete/ic;Ljava/lang/String;ZILjava/util/Map;ZF)V

    invoke-static {p1, v11, p0, v12}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    .line 61
    invoke-static {}, Lcom/byazt/aas/z;->c()Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->gl()Ljava/util/List;

    move-result-object v2

    .line 63
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    const-string v5, "click"

    if-nez v3, :cond_2

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 64
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v6, "aid"

    .line 65
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->gu()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "cid"

    .line 66
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "req_id"

    .line 67
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->qy()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "customer_id"

    .line 68
    invoke-static {p1}, Lcom/byazt/aas/nb;->yp(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-static {p1, v11, v5}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 70
    invoke-static {v1, v2, v4, v3, v6}, Lcom/byazt/ukr/tt;->c(Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 71
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "no did"

    .line 72
    invoke-static {p1, v2, v11, v1, v5}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    if-ne v0, v5, :cond_5

    .line 73
    invoke-static {p1}, Lcom/byazt/ex/c;->c(Lcom/byazt/ete/ic;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "tobsdk_livesdk_rec_live_play"

    const-wide/16 v2, 0x0

    .line 74
    invoke-static {v1, p1, v2, v3}, Lcom/byazt/ex/c;->c(Ljava/lang/String;Lcom/byazt/ete/ic;J)V

    .line 75
    :cond_4
    invoke-static {}, Lcom/byazt/apd/tt;->c()Lcom/byazt/apd/tt;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/byazt/apd/tt;->uj(Lcom/byazt/ete/ic;)V

    :cond_5
    const/4 v1, 0x2

    .line 76
    invoke-static {v4, v1}, Lcom/byazt/aas/gr;->c(II)V

    .line 77
    invoke-static {}, Lcom/byazt/nr/m;->ve()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdEvent"

    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public static c(Ljava/lang/String;Lcom/byazt/ete/ic;Ljava/lang/String;ILjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/byazt/ete/ic;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 49
    :cond_0
    new-instance v0, Lcom/byazt/ddx/uj$40;

    invoke-direct {v0, p3, p4, p0}, Lcom/byazt/ddx/uj$40;-><init>(ILjava/util/Map;Ljava/lang/String;)V

    const-string p0, "ad_show_time"

    invoke-static {p1, p2, p0, v0}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;B)V
    .locals 5

    const-string v0, "log_extra"

    .line 133
    invoke-virtual {p7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-double v1, v1

    .line 135
    invoke-static {v0}, Lcom/byazt/aas/nb;->x(Ljava/lang/String;)D

    move-result-wide v3

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    .line 136
    new-instance v1, Lcom/byazt/ddx/c$c;

    invoke-direct {v1}, Lcom/byazt/ddx/c$c;-><init>()V

    .line 137
    invoke-virtual {v1, p1}, Lcom/byazt/ddx/c$c;->c(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object v1

    .line 138
    invoke-virtual {v1, p2}, Lcom/byazt/ddx/c$c;->tt(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object v1

    .line 139
    invoke-virtual {v1, p0}, Lcom/byazt/ddx/c$c;->ve(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object p0

    .line 140
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/byazt/ddx/c$c;->n(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object p0

    .line 141
    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/byazt/ddx/c$c;->a(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object p0

    .line 142
    invoke-virtual {p0, p7}, Lcom/byazt/ddx/c$c;->c(Lorg/json/JSONObject;)Lcom/byazt/ddx/c$c;

    move-result-object p0

    new-instance p3, Lcom/byazt/ddx/uj$18;

    invoke-direct {p3, p1, p8, p2, v0}, Lcom/byazt/ddx/uj$18;-><init>(Ljava/lang/String;BLjava/lang/String;F)V

    .line 143
    invoke-virtual {p0, p3}, Lcom/byazt/ddx/c$c;->c(Lcom/byazt/ya/c;)V

    .line 144
    invoke-static {}, Lcom/byazt/nr/m;->ve()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "AdEvent"

    const-string p1, "sendJsAdEvent"

    .line 145
    invoke-static {p0, p1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 120
    new-instance v0, Lcom/byazt/ddx/c$c;

    invoke-direct {v0}, Lcom/byazt/ddx/c$c;-><init>()V

    .line 121
    invoke-virtual {v0, p2}, Lcom/byazt/ddx/c$c;->c(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object v0

    .line 122
    invoke-virtual {v0, p3}, Lcom/byazt/ddx/c$c;->tt(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object v0

    .line 123
    invoke-virtual {v0, p0}, Lcom/byazt/ddx/c$c;->n(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object v0

    .line 124
    invoke-virtual {v0, p1}, Lcom/byazt/ddx/c$c;->uj(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object p1

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p1, v0}, Lcom/byazt/ddx/c$c;->c(Lcom/byazt/ya/c;)V

    .line 126
    invoke-static {}, Lcom/byazt/nr/m;->ve()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 127
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "tag: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "label: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AdEvent"

    invoke-static {p1, p0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/byazt/ddx/c$c;

    invoke-direct {v0}, Lcom/byazt/ddx/c$c;-><init>()V

    .line 3
    invoke-virtual {v0, p2}, Lcom/byazt/ddx/c$c;->n(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object p2

    .line 4
    invoke-virtual {p2, p3}, Lcom/byazt/ddx/c$c;->uj(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object p2

    .line 5
    invoke-virtual {p2, p0}, Lcom/byazt/ddx/c$c;->c(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object p0

    .line 6
    invoke-virtual {p0, p1}, Lcom/byazt/ddx/c$c;->tt(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object p0

    .line 7
    invoke-virtual {p0, p4}, Lcom/byazt/ddx/c$c;->c(Lcom/byazt/ya/c;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/ya/c;)V
    .locals 1

    .line 15
    new-instance v0, Lcom/byazt/ddx/c$c;

    invoke-direct {v0}, Lcom/byazt/ddx/c$c;-><init>()V

    .line 16
    invoke-virtual {v0, p3}, Lcom/byazt/ddx/c$c;->uj(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object p3

    .line 17
    invoke-virtual {p3, p0}, Lcom/byazt/ddx/c$c;->c(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object p0

    .line 18
    invoke-virtual {p0, p2}, Lcom/byazt/ddx/c$c;->ve(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object p0

    .line 19
    invoke-virtual {p0, p1}, Lcom/byazt/ddx/c$c;->tt(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object p0

    .line 20
    invoke-virtual {p0, p4}, Lcom/byazt/ddx/c$c;->n(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object p0

    .line 21
    invoke-virtual {p0, p5}, Lcom/byazt/ddx/c$c;->c(Lorg/json/JSONObject;)Lcom/byazt/ddx/c$c;

    move-result-object p0

    .line 22
    invoke-virtual {p0, p6}, Lcom/byazt/ddx/c$c;->c(Lcom/byazt/ya/c;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 55
    new-instance v0, Lcom/byazt/ddx/uj$41;

    invoke-direct {v0, p3}, Lcom/byazt/ddx/uj$41;-><init>(Lorg/json/JSONObject;)V

    const-string p3, "show_url"

    invoke-static {p0, p3, p1, p2, v0}, Lcom/byazt/ddx/uj;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    return-void
.end method

.method public static c(Lorg/json/JSONObject;)V
    .locals 6

    .line 180
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 181
    :try_start_0
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/omf/x;->nu()Lcom/byazt/dj/uj;

    move-result-object v1

    const-string v2, "isCanUseLocation"

    .line 182
    invoke-virtual {v1}, Lcom/byazt/dj/uj;->isCanUseLocation()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "isCanUsePhoneState"

    .line 183
    invoke-virtual {v1}, Lcom/byazt/dj/uj;->isCanUsePhoneState()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "isCanUseWifiState"

    .line 184
    invoke-virtual {v1}, Lcom/byazt/dj/uj;->isCanUseWifiState()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "isCanUseWriteExternal"

    .line 185
    invoke-virtual {v1}, Lcom/byazt/dj/uj;->isCanUseWriteExternal()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "alist"

    .line 186
    invoke-virtual {v1}, Lcom/byazt/dj/uj;->alist()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "isCanUseAndroidId"

    .line 187
    invoke-virtual {v1}, Lcom/byazt/dj/uj;->isCanUseAndroidId()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "isCanUsePermissionRecordAudio"

    .line 188
    invoke-virtual {v1}, Lcom/byazt/dj/uj;->isCanUsePermissionRecordAudio()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 189
    invoke-virtual {v1}, Lcom/byazt/dj/uj;->userPrivacyConfig()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 190
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 191
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 192
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 193
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 194
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    const-string v5, "mcod"

    .line 195
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 196
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/byazt/ogz/sl;->bx()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v3, "-1"

    .line 197
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 198
    :cond_0
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    const-string v1, "update_privacyConfig"

    .line 199
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string v1, "regulation_data"

    .line 200
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static c(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "tag"

    .line 50
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ad_id"

    .line 51
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "log_extra"

    .line 52
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 53
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 54
    :cond_1
    invoke-static {v0, v1, p0, p1}, Lcom/byazt/ddx/uj;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static i(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ete/ic;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->A_()Lcom/byazt/ete/hq;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    new-instance p3, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    :cond_0
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/byazt/ete/hq;->n()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "wc_type"

    .line 23
    .line 24
    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    :cond_1
    const-string v0, "rom_new_version"

    .line 28
    .line 29
    invoke-static {}, Lcom/byazt/aas/zm;->yp()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/byazt/omf/x;->c()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v1, "is_background"

    .line 49
    .line 50
    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->i()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string v1, "interaction_type"

    .line 62
    .line 63
    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    invoke-static {}, Lcom/byazt/aas/nb;->yv()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const-string v1, "can_query"

    .line 75
    .line 76
    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    invoke-static {p0, p1, p2, p3}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public static n(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ete/ic;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic n(Lcom/byazt/ete/ic;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/byazt/ddx/uj;->a(Lcom/byazt/ete/ic;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static sp(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ete/ic;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static tt(JLcom/byazt/ete/ic;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 51
    :cond_0
    invoke-static {p2}, Lcom/byazt/ete/ic;->ve(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_1

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    .line 53
    :cond_1
    new-instance p0, Lcom/byazt/ddx/uj$32;

    invoke-direct {p0, v0, v1, p2}, Lcom/byazt/ddx/uj$32;-><init>(JLcom/byazt/ete/ic;)V

    const-string p1, "splash_ad"

    const-string v0, "play_duration_sum"

    invoke-static {p2, p1, v0, p0}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    :cond_2
    return-void
.end method

.method public static tt(Lcom/byazt/ete/ic;)V
    .locals 3

    .line 49
    new-instance v0, Lcom/byazt/ddx/uj$20;

    invoke-direct {v0, p0}, Lcom/byazt/ddx/uj$20;-><init>(Lcom/byazt/ete/ic;)V

    const-string v1, "landingpage"

    const-string v2, "open_url_h5"

    invoke-static {p0, v1, v2, v0}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    return-void
.end method

.method public static tt(Lcom/byazt/ete/ic;I)V
    .locals 2

    .line 39
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->hs()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 40
    :cond_0
    invoke-static {p0}, Lcom/byazt/aas/nb;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/byazt/ddx/uj$10;

    invoke-direct {v1, p0, p1}, Lcom/byazt/ddx/uj$10;-><init>(Lcom/byazt/ete/ic;I)V

    const-string p1, "reward_task_diff"

    invoke-static {p0, v0, p1, v1}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    return-void
.end method

.method public static tt(Lcom/byazt/ete/ic;Ljava/lang/String;)V
    .locals 8

    if-eqz p0, :cond_0

    .line 32
    new-instance v0, Lcom/byazt/vo/ve;

    invoke-direct {v0}, Lcom/byazt/vo/ve;-><init>()V

    const-string v1, "0:00"

    .line 33
    invoke-virtual {v0, v1}, Lcom/byazt/vo/ve;->setId(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0, p1}, Lcom/byazt/vo/ve;->setName(Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/byazt/qw/ve;->ve()Lcom/byazt/qw/ve;

    move-result-object v2

    const-string v3, "skip"

    invoke-virtual {p0}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/byazt/ete/ic;->qy()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/byazt/ete/ic;->q_()Lorg/json/JSONObject;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/byazt/qw/ve;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->wq()Lcom/byazt/vo/tt;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/vo/tt;Lcom/byazt/nc/a;)V

    :cond_0
    return-void
.end method

.method public static tt(Lcom/byazt/ete/ic;Ljava/lang/String;I)V
    .locals 1

    .line 50
    new-instance v0, Lcom/byazt/ddx/uj$30;

    invoke-direct {v0, p2, p0}, Lcom/byazt/ddx/uj$30;-><init>(ILcom/byazt/ete/ic;)V

    const-string p2, "qpon_apply"

    invoke-static {p0, p1, p2, v0}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    return-void
.end method

.method public static tt(Lcom/byazt/ete/ic;Ljava/lang/String;J)V
    .locals 2

    .line 45
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->hj()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 46
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 p3, -0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "draw_ad"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x6

    goto :goto_0

    :sswitch_1
    const-string p2, "interaction"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p3, 0x5

    goto :goto_0

    :sswitch_2
    const-string p2, "embeded_ad"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 p3, 0x4

    goto :goto_0

    :sswitch_3
    const-string p2, "fullscreen_interstitial_ad"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 p3, 0x3

    goto :goto_0

    :sswitch_4
    const-string p2, "stream"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    const/4 p3, 0x2

    goto :goto_0

    :sswitch_5
    const-string p2, "rewarded_video"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_0

    :cond_6
    const/4 p3, 0x1

    goto :goto_0

    :sswitch_6
    const-string p2, "banner_ad"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_0

    :cond_7
    const/4 p3, 0x0

    :goto_0
    packed-switch p3, :pswitch_data_0

    const-string p2, ""

    goto :goto_1

    :pswitch_0
    const-string p2, "draw_ad_loadtime"

    goto :goto_1

    :pswitch_1
    const-string p2, "interaction_loadtime"

    goto :goto_1

    :pswitch_2
    const-string p2, "embeded_ad_loadtime"

    goto :goto_1

    :pswitch_3
    const-string p2, "fullscreen_interstitial_ad_loadtime"

    goto :goto_1

    :pswitch_4
    const-string p2, "stream_loadtime"

    goto :goto_1

    :pswitch_5
    const-string p2, "rewarded_video_loadtime"

    goto :goto_1

    :pswitch_6
    const-string p2, "banner_ad_loadtime"

    .line 48
    :goto_1
    new-instance p3, Lcom/byazt/ddx/uj$16;

    invoke-direct {p3, v0, v1}, Lcom/byazt/ddx/uj$16;-><init>(J)V

    invoke-static {p0, p1, p2, p3}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x65146dea -> :sswitch_6
        -0x514cfef6 -> :sswitch_5
        -0x352ab080 -> :sswitch_4
        -0x2d935a6e -> :sswitch_3
        -0x2a77c376 -> :sswitch_2
        0x6deace12 -> :sswitch_1
        0x72060cfe -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static tt(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-static {p0, p1, p2, v0}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    return-void
.end method

.method public static tt(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 41
    :cond_0
    new-instance v0, Lcom/byazt/ddx/uj$13;

    invoke-direct {v0, p3, p4}, Lcom/byazt/ddx/uj$13;-><init>(J)V

    invoke-static {p0, p1, p2, v0}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    return-void
.end method

.method public static tt(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;)V
    .locals 1

    if-eqz p0, :cond_1

    if-nez p5, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    new-instance v0, Lcom/byazt/ddx/uj$14;

    invoke-direct {v0, p3, p4, p5, p0}, Lcom/byazt/ddx/uj$14;-><init>(JLorg/json/JSONObject;Lcom/byazt/ete/ic;)V

    invoke-static {p0, p1, p2, v0}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static tt(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ete/ic;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-static {p0, p1, p2, p3}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static tt(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 44
    invoke-static {p0, p1, p2, p3}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static tt(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Double;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ete/ic;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Double;",
            ")V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-double v0, v0

    .line 2
    invoke-static {p0}, Lcom/byazt/aas/nb;->z(Lcom/byazt/ete/ic;)D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v6

    const-string v0, "device_info_new"

    .line 3
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/dna/u;

    invoke-interface {v0}, Lcom/byazt/dna/u;->getUnlockTime()J

    move-result-wide v0

    invoke-static {p0}, Lcom/byazt/aas/nb;->t(Lcom/byazt/ete/ic;)I

    move-result v2

    invoke-static {}, Lcom/byazt/ue/tt;->c()Z

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Lcom/byazt/aas/gr;->c(Ljava/lang/String;JIZ)Ljava/lang/String;

    move-result-object v5

    .line 4
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->bn()Lcom/byazt/ete/hd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ete/hd;->ve()V

    .line 5
    sget v0, Lcom/byazt/ddx/uj;->c:I

    const/4 v8, 0x1

    add-int/2addr v0, v8

    sput v0, Lcom/byazt/ddx/uj;->c:I

    .line 6
    new-instance v0, Lcom/byazt/ddx/uj$38;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/byazt/ddx/uj$38;-><init>(Ljava/lang/String;Lcom/byazt/ete/ic;Ljava/util/Map;Ljava/lang/String;FLjava/lang/Double;)V

    const-string p2, "show"

    invoke-static {p0, p1, p2, v0}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    .line 7
    invoke-static {}, Lcom/byazt/aas/z;->c()Ljava/lang/String;

    move-result-object p3

    .line 8
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->pr()Ljava/util/List;

    move-result-object v0

    .line 9
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 10
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "aid"

    .line 11
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->gu()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "cid"

    .line 12
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "req_id"

    .line 13
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->qy()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "customer_id"

    .line 14
    invoke-static {p0}, Lcom/byazt/aas/nb;->yp(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {p0, p1, p2}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 16
    invoke-static {p3, v0, v8, v1, p1}, Lcom/byazt/ukr/tt;->c(Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, "no did"

    .line 18
    invoke-static {p0, v0, p1, p3, p2}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_2
    :goto_0
    sget p1, Lcom/byazt/ddx/uj;->c:I

    rem-int/lit8 p1, p1, 0x5

    if-nez p1, :cond_3

    invoke-static {}, Lcom/byazt/lkt/c;->c()Lcom/byazt/lkt/c;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 20
    invoke-static {}, Lcom/byazt/lkt/c;->c()Lcom/byazt/lkt/c;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "AdShow"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/byazt/lkt/c;->tt(Ljava/lang/String;)V

    .line 21
    :cond_3
    invoke-static {}, Lcom/byazt/apd/tt;->c()Lcom/byazt/apd/tt;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/byazt/apd/tt;->a(Lcom/byazt/ete/ic;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 22
    invoke-static {p0}, Lcom/byazt/ukr/yp;->c(Lcom/byazt/ete/ic;)V

    const-string p1, "tobsdk_livesdk_live_show"

    const-wide/16 p2, 0x0

    .line 23
    invoke-static {p1, p0, p2, p3}, Lcom/byazt/ex/c;->c(Ljava/lang/String;Lcom/byazt/ete/ic;J)V

    .line 24
    :cond_4
    invoke-static {}, Lcom/byazt/aas/nb;->ve()V

    .line 25
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->jl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/qh/tt;->c(Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lcom/byazt/apd/tt;->c()Lcom/byazt/apd/tt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/apd/tt;->uj()V

    .line 27
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/omf/x;->ve()Lcom/byazt/aas/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/aas/c;->uj()V

    .line 28
    sget p1, Lcom/byazt/ddx/uj;->c:I

    invoke-static {p1, v8}, Lcom/byazt/aas/gr;->c(II)V

    .line 29
    invoke-static {}, Lcom/byazt/omf/uj;->c()Lcom/byazt/omf/uj;

    move-result-object p1

    invoke-virtual {p0}, Lcom/byazt/ete/ic;->mk()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/byazt/omf/uj;->ve(Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/byazt/qw/ve;->ve()Lcom/byazt/qw/ve;

    move-result-object p0

    invoke-virtual {p0}, Lcom/byazt/qw/ve;->a()V

    return-void
.end method

.method public static tt(Lcom/byazt/ete/ic;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 37
    invoke-static {p0}, Lcom/byazt/aas/nb;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v0

    .line 38
    new-instance v1, Lcom/byazt/ddx/uj$7;

    invoke-direct {v1, p2}, Lcom/byazt/ddx/uj$7;-><init>(Lorg/json/JSONObject;)V

    invoke-static {p0, v0, p1, v1}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    return-void
.end method

.method public static uj(Lcom/byazt/ete/ic;Ljava/lang/String;J)V
    .locals 1

    .line 2
    new-instance v0, Lcom/byazt/ddx/uj$23;

    invoke-direct {v0, p2, p3}, Lcom/byazt/ddx/uj$23;-><init>(J)V

    const-string p2, "render_live_picture_success"

    invoke-static {p0, p1, p2, v0}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    return-void
.end method

.method public static uj(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ete/ic;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static uj(Lcom/byazt/ete/ic;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    if-eqz p0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/byazt/ddx/uj$36;

    invoke-direct {v0, p2}, Lcom/byazt/ddx/uj$36;-><init>(Lorg/json/JSONObject;)V

    const-string p2, "splash_ad_showstat"

    invoke-static {p0, p1, p2, v0}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static ve(Lcom/byazt/ete/ic;Ljava/lang/String;)V
    .locals 2

    .line 13
    new-instance v0, Lcom/byazt/ddx/uj$37;

    invoke-direct {v0, p0}, Lcom/byazt/ddx/uj$37;-><init>(Lcom/byazt/ete/ic;)V

    const-string v1, "cache_ana_upload"

    invoke-static {p0, p1, v1, v0}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    return-void
.end method

.method public static ve(Lcom/byazt/ete/ic;Ljava/lang/String;J)V
    .locals 1

    .line 11
    new-instance v0, Lcom/byazt/ddx/uj$21;

    invoke-direct {v0, p0, p2, p3}, Lcom/byazt/ddx/uj$21;-><init>(Lcom/byazt/ete/ic;J)V

    const-string p2, "load"

    invoke-static {p0, p1, p2, v0}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    return-void
.end method

.method public static ve(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, p1, p2, v0}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    return-void
.end method

.method public static ve(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/byazt/ddx/uj$15;

    invoke-direct {v0, p3, p4, p5, p0}, Lcom/byazt/ddx/uj$15;-><init>(JLorg/json/JSONObject;Lcom/byazt/ete/ic;)V

    invoke-static {p0, p1, p2, v0}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    return-void
.end method

.method public static ve(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ete/ic;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static ve(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/byazt/ddx/c$c;

    invoke-direct {v0}, Lcom/byazt/ddx/c$c;-><init>()V

    .line 5
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/ddx/c$c;->n(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->w_()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/byazt/ddx/c$c;->uj(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Lcom/byazt/ddx/c$c;->c(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object p0

    .line 8
    invoke-virtual {p0, p2}, Lcom/byazt/ddx/c$c;->tt(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object p0

    .line 9
    invoke-virtual {p0, p3}, Lcom/byazt/ddx/c$c;->c(Lorg/json/JSONObject;)Lcom/byazt/ddx/c$c;

    move-result-object p0

    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Lcom/byazt/ddx/c$c;->c(Lcom/byazt/ya/c;)V

    return-void
.end method

.method public static ve(Lcom/byazt/ete/ic;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    if-eqz p0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/byazt/ddx/uj$31;

    invoke-direct {v0, p2}, Lcom/byazt/ddx/uj$31;-><init>(Lorg/json/JSONObject;)V

    const-string p2, "cache_correct_details"

    invoke-static {p0, p1, p2, v0}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ya/c;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static x(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ete/ic;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->A_()Lcom/byazt/ete/hq;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    new-instance p3, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    :cond_0
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/byazt/ete/hq;->n()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "wc_type"

    .line 23
    .line 24
    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    :cond_1
    const-string v0, "rom_new_version"

    .line 28
    .line 29
    invoke-static {}, Lcom/byazt/aas/zm;->yp()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/byazt/omf/x;->c()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v1, "is_background"

    .line 49
    .line 50
    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->i()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string v1, "interaction_type"

    .line 62
    .line 63
    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    invoke-static {}, Lcom/byazt/aas/nb;->yv()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const-string v1, "can_query"

    .line 75
    .line 76
    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    invoke-static {p0, p1, p2, p3}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method
