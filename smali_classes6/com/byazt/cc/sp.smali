.class public Lcom/byazt/cc/sp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1c0,
        0x5b
    }
.end annotation


# static fields
.field public static volatile c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static c(Lcom/byazt/dj/tt;ILcom/byazt/ete/ic;)Lcom/byazt/qal/tt;
    .locals 3

    if-eqz p2, :cond_0

    .line 96
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->w_()Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-static {p2}, Lcom/byazt/aas/nb;->m(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object p2, v0

    move-object v1, p2

    .line 99
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    invoke-static {}, Lcom/byazt/aas/nb;->sp()Ljava/lang/String;

    move-result-object p2

    .line 101
    :cond_1
    invoke-static {}, Lcom/byazt/qal/tt;->tt()Lcom/byazt/qal/tt;

    move-result-object v2

    .line 102
    invoke-virtual {v2, p2}, Lcom/byazt/qal/tt;->a(Ljava/lang/String;)Lcom/byazt/qal/tt;

    move-result-object p2

    .line 103
    invoke-virtual {p2, p1}, Lcom/byazt/qal/tt;->c(I)Lcom/byazt/qal/tt;

    move-result-object p1

    .line 104
    invoke-virtual {p0}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/byazt/qal/tt;->ve(Ljava/lang/String;)Lcom/byazt/qal/tt;

    move-result-object p0

    if-eqz v0, :cond_2

    .line 105
    invoke-virtual {p0, v0}, Lcom/byazt/qal/tt;->uj(Ljava/lang/String;)Lcom/byazt/qal/tt;

    :cond_2
    if-eqz v1, :cond_3

    .line 106
    invoke-virtual {p0, v1}, Lcom/byazt/qal/tt;->x(Ljava/lang/String;)Lcom/byazt/qal/tt;

    :cond_3
    return-object p0
.end method

.method public static c(ILcom/byazt/ete/ic;Ljava/lang/String;I)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p0, v0, :cond_1

    .line 149
    sget-boolean v0, Lcom/byazt/cc/sp;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 150
    :cond_0
    sput-boolean v1, Lcom/byazt/cc/sp;->c:Z

    .line 151
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "event_type"

    .line 152
    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-ne p0, v1, :cond_2

    const-string p0, "show_cnt"

    .line 153
    invoke-virtual {v0, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 154
    :cond_2
    invoke-static {p1, p2, v0}, Lcom/byazt/ddx/uj;->uj(Lcom/byazt/ete/ic;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static c(Landroid/content/Context;Lcom/byazt/ete/y;Lcom/byazt/ete/ic;ZJ)V
    .locals 8

    if-eqz p0, :cond_b

    if-eqz p2, :cond_b

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 1
    :cond_0
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/byazt/ogz/sl;->hj()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/ete/y;->uj()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Lcom/byazt/ete/y;->x()I

    move-result v2

    if-ne v2, v1, :cond_3

    const/4 v0, 0x1

    .line 4
    :cond_3
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "splash_load_type"

    .line 5
    invoke-virtual {p1}, Lcom/byazt/ete/y;->c()I

    move-result v3

    invoke-virtual {v7, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "server_load_type"

    .line 6
    invoke-virtual {p1}, Lcom/byazt/ete/y;->tt()I

    move-result v3

    invoke-virtual {v7, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "tmax_type"

    .line 7
    invoke-virtual {p1}, Lcom/byazt/ete/y;->or()I

    move-result v3

    invoke-virtual {v7, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "splash_final_type"

    if-eqz p3, :cond_4

    :try_start_1
    const-string v3, "cache_ad"

    .line 8
    invoke-virtual {v7, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_4
    const-string v3, "real_time_ad"

    .line 9
    invoke-virtual {v7, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1
    const-string v2, "active_type"

    .line 10
    invoke-virtual {p1}, Lcom/byazt/ete/y;->ve()I

    move-result v3

    invoke-virtual {v7, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "splash_creative_type"

    .line 11
    invoke-virtual {p1}, Lcom/byazt/ete/y;->uj()I

    move-result v3

    invoke-virtual {v7, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 12
    invoke-virtual {p1}, Lcom/byazt/ete/y;->gu()I

    move-result v2

    if-lez v2, :cond_6

    .line 13
    invoke-virtual {p1}, Lcom/byazt/ete/y;->gu()I

    move-result v2

    const/16 v3, 0x16

    if-ne v2, v3, :cond_5

    const-string v2, "check_cloud_error_code"

    .line 14
    invoke-virtual {p1}, Lcom/byazt/ete/y;->md()J

    move-result-wide v3

    invoke-virtual {v7, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_5
    const-string v2, "splash_get_cache_error_code"

    .line 15
    invoke-virtual {p1}, Lcom/byazt/ete/y;->gu()I

    move-result v3

    invoke-virtual {v7, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_6
    if-eqz p0, :cond_9

    if-eqz v0, :cond_7

    const-string p0, "cache_image_duration"

    .line 16
    invoke-virtual {p1}, Lcom/byazt/ete/y;->sp()J

    move-result-wide v2

    invoke-virtual {v7, p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_2

    :cond_7
    const-string p0, "download_image_duration"

    .line 17
    invoke-virtual {p1}, Lcom/byazt/ete/y;->a()J

    move-result-wide v2

    invoke-virtual {v7, p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "download_client_start_time"

    .line 18
    invoke-virtual {p1}, Lcom/byazt/ete/y;->m()J

    move-result-wide v2

    invoke-virtual {v7, p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "download_net_time"

    .line 19
    invoke-virtual {p1}, Lcom/byazt/ete/y;->nu()J

    move-result-wide v2

    invoke-virtual {v7, p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "download_client_end_time"

    .line 20
    invoke-virtual {p1}, Lcom/byazt/ete/y;->rh()J

    move-result-wide v2

    invoke-virtual {v7, p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "img_conttype"

    .line 21
    invoke-virtual {p1}, Lcom/byazt/ete/y;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "img_net_bframe_time"

    .line 22
    invoke-virtual {p1}, Lcom/byazt/ete/y;->h()J

    move-result-wide v2

    invoke-virtual {v7, p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "img_net_aframe_time"

    .line 23
    invoke-virtual {p1}, Lcom/byazt/ete/y;->d()J

    move-result-wide v2

    invoke-virtual {v7, p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :goto_2
    if-nez p3, :cond_8

    const-string p0, "client_start_time"

    .line 24
    invoke-virtual {p1}, Lcom/byazt/ete/y;->t()J

    move-result-wide v2

    invoke-virtual {v7, p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "network_time"

    .line 25
    invoke-virtual {p1}, Lcom/byazt/ete/y;->u()J

    move-result-wide v2

    invoke-virtual {v7, p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "sever_time"

    .line 26
    invoke-virtual {p1}, Lcom/byazt/ete/y;->yp()J

    move-result-wide v2

    invoke-virtual {v7, p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "client_end_time"

    .line 27
    invoke-virtual {p1}, Lcom/byazt/ete/y;->z()J

    move-result-wide v2

    invoke-virtual {v7, p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_8
    const-string p0, "load_duration"

    .line 28
    invoke-virtual {p1}, Lcom/byazt/ete/y;->n()J

    move-result-wide v2

    invoke-virtual {v7, p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "image_resolution"

    .line 29
    invoke-virtual {p1}, Lcom/byazt/ete/y;->da()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v7, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "image_cachetype"

    .line 30
    invoke-virtual {p1}, Lcom/byazt/ete/y;->x()I

    move-result p3

    invoke-virtual {v7, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "image_size"

    .line 31
    invoke-virtual {p1}, Lcom/byazt/ete/y;->i()D

    move-result-wide v2

    invoke-virtual {v7, p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 32
    :cond_9
    invoke-virtual {p1}, Lcom/byazt/ete/y;->gr()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-lez p0, :cond_a

    const-string p0, "real_user_duration"

    .line 33
    invoke-virtual {p1}, Lcom/byazt/ete/y;->gr()J

    move-result-wide v2

    sub-long v2, p4, v2

    invoke-virtual {v7, p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_a
    const-string p0, "sdk_parallel_load"

    .line 34
    invoke-virtual {v7, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "switch_thread_time"

    .line 35
    invoke-virtual {p1}, Lcom/byazt/ete/y;->zm()J

    move-result-wide v0

    invoke-virtual {v7, p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "on_call_back_time"

    .line 36
    invoke-virtual {p1}, Lcom/byazt/ete/y;->yv()J

    move-result-wide v0

    invoke-virtual {v7, p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "load_suc_time"

    .line 37
    invoke-virtual {p1}, Lcom/byazt/ete/y;->eo()J

    move-result-wide v0

    invoke-virtual {v7, p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "is_boost"

    .line 38
    invoke-static {}, Lcom/byazt/xo/c;->n()I

    move-result p3

    invoke-virtual {v7, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 39
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 40
    :goto_3
    invoke-virtual {p1}, Lcom/byazt/ete/y;->gt()J

    move-result-wide p0

    sub-long v5, p4, p0

    const-string v3, "splash_ad"

    const-string v4, "splash_ad_loadtime"

    move-object v2, p2

    .line 41
    invoke-static/range {v2 .. v7}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;)V

    :cond_b
    :goto_4
    return-void
.end method

.method public static c(Lcom/byazt/dj/tt;J)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 107
    :cond_0
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v0

    new-instance v1, Lcom/byazt/cc/sp$2;

    invoke-direct {v1, p1, p2, p0}, Lcom/byazt/cc/sp$2;-><init>(JLcom/byazt/dj/tt;)V

    invoke-virtual {v0, v1}, Lcom/byazt/ukr/yp;->c(Lcom/byazt/ee/c;)V

    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;Lcom/byazt/ete/y;Lcom/byazt/im/x;)V
    .locals 6

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    .line 79
    :cond_0
    invoke-virtual {p2}, Lcom/byazt/im/x;->n()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 80
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/ete/y;->x()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    return-void

    .line 81
    :cond_2
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/byazt/ogz/sl;->hj()Z

    move-result p2

    if-nez p2, :cond_3

    return-void

    .line 82
    :cond_3
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string p2, "image_size"

    .line 83
    invoke-virtual {p1}, Lcom/byazt/ete/y;->i()D

    move-result-wide v0

    invoke-virtual {v5, p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p2, "image_resolution"

    .line 84
    invoke-virtual {p1}, Lcom/byazt/ete/y;->da()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "download_client_start_time"

    .line 85
    invoke-virtual {p1}, Lcom/byazt/ete/y;->m()J

    move-result-wide v0

    invoke-virtual {v5, p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p2, "download_net_time"

    .line 86
    invoke-virtual {p1}, Lcom/byazt/ete/y;->nu()J

    move-result-wide v0

    invoke-virtual {v5, p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p2, "download_client_end_time"

    .line 87
    invoke-virtual {p1}, Lcom/byazt/ete/y;->rh()J

    move-result-wide v0

    invoke-virtual {v5, p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 88
    invoke-static {p2}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 89
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/byazt/ete/y;->my()J

    move-result-wide p1

    sub-long v3, v0, p1

    const-string v1, "splash_ad"

    const-string v2, "download_image_duration"

    move-object v0, p0

    .line 90
    invoke-static/range {v0 .. v5}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;Lcom/byazt/im/uj;)V
    .locals 7

    if-eqz p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_1

    .line 124
    :cond_0
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->hj()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 125
    :cond_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "render_control"

    .line 126
    invoke-virtual {p1}, Lcom/byazt/im/uj;->c()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "render_sequence"

    .line 127
    invoke-virtual {p1}, Lcom/byazt/im/uj;->tt()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "real_render_sequence"

    .line 128
    invoke-virtual {p1}, Lcom/byazt/im/uj;->ve()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 129
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 130
    :goto_0
    invoke-virtual {p1}, Lcom/byazt/im/uj;->a()J

    move-result-wide v4

    const-string v2, "splash_ad"

    const-string v3, "splash_render_duration"

    move-object v1, p0

    .line 131
    invoke-static/range {v1 .. v6}, Lcom/byazt/ddx/uj;->tt(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;Lcom/byazt/im/uj;Lcom/byazt/im/i;)V
    .locals 4

    if-eqz p0, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    invoke-static {p0}, Lcom/byazt/ete/pu;->c(Lcom/byazt/ete/ic;)I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x63

    const-string v3, "Splash_FullLink"

    if-ne v0, v1, :cond_1

    const-string p0, "\u81ea\u6e32\u67d3 "

    .line 133
    invoke-static {v3, p0}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1, v2}, Lcom/byazt/im/uj;->ve(I)V

    return-void

    .line 135
    :cond_1
    invoke-virtual {p2}, Lcom/byazt/im/i;->tt()Z

    move-result p2

    if-nez p2, :cond_2

    .line 136
    invoke-static {p0}, Lcom/byazt/ete/pu;->tt(Lcom/byazt/ete/ic;)I

    move-result p0

    const-string p2, "\u6a21\u7248\u6e32\u67d3 "

    .line 137
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p1, p0}, Lcom/byazt/im/uj;->ve(I)V

    return-void

    :cond_2
    const-string p0, "\u6a21\u7248\u515c\u5e95 "

    .line 139
    invoke-static {v3, p0}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1, v2}, Lcom/byazt/im/uj;->ve(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static c(Lcom/byazt/ete/y;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 42
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/byazt/ete/y;->gt()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 43
    invoke-virtual {p0, v0, v1}, Lcom/byazt/ete/y;->c(J)V

    return-void
.end method

.method public static c(Lcom/byazt/ete/y;I)V
    .locals 1

    if-eqz p0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/byazt/ete/y;->or()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 148
    invoke-virtual {p0, p1}, Lcom/byazt/ete/y;->sp(I)V

    :cond_0
    return-void
.end method

.method public static c(Lcom/byazt/ete/y;J)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 52
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/byazt/ete/y;->tt(J)V

    return-void
.end method

.method public static c(Lcom/byazt/ete/y;Lcom/byazt/ete/y;)V
    .locals 2

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/byazt/ete/y;->t(J)V

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/byazt/ete/y;->t(J)V

    .line 46
    sget-object v0, Lcom/byazt/omf/rh;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, v0}, Lcom/byazt/ete/y;->ve(I)V

    .line 48
    invoke-virtual {p1, v0}, Lcom/byazt/ete/y;->ve(I)V

    .line 49
    sget-object p0, Lcom/byazt/omf/rh;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 50
    invoke-virtual {p0, v0}, Lcom/byazt/ete/y;->ve(I)V

    .line 51
    invoke-virtual {p1, v0}, Lcom/byazt/ete/y;->ve(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static c(Lcom/byazt/ete/y;Lcom/byazt/ete/y;Lcom/byazt/ete/bm;II)V
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 141
    invoke-virtual {p0, p3}, Lcom/byazt/ete/y;->c(I)V

    .line 142
    invoke-virtual {p0, p4}, Lcom/byazt/ete/y;->tt(I)V

    .line 143
    iget-wide v0, p2, Lcom/byazt/ete/bm;->i:J

    invoke-virtual {p0, v0, v1}, Lcom/byazt/ete/y;->z(J)V

    .line 144
    invoke-virtual {p1, p3}, Lcom/byazt/ete/y;->c(I)V

    .line 145
    invoke-virtual {p1, p4}, Lcom/byazt/ete/y;->tt(I)V

    .line 146
    iget-wide p2, p2, Lcom/byazt/ete/bm;->i:J

    invoke-virtual {p1, p2, p3}, Lcom/byazt/ete/y;->z(J)V

    :cond_0
    return-void
.end method

.method public static c(Lcom/byazt/ete/y;Lcom/byazt/im/a;)V
    .locals 8

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/im/a;->a()J

    move-result-wide v0

    .line 72
    invoke-virtual {p1}, Lcom/byazt/im/a;->x()J

    move-result-wide v2

    .line 73
    invoke-virtual {p1}, Lcom/byazt/im/a;->sp()J

    move-result-wide v4

    .line 74
    invoke-virtual {p1}, Lcom/byazt/im/a;->i()J

    move-result-wide v6

    .line 75
    invoke-virtual {p0, v0, v1}, Lcom/byazt/ete/y;->uj(J)V

    .line 76
    invoke-virtual {p0, v4, v5}, Lcom/byazt/ete/y;->n(J)V

    .line 77
    invoke-virtual {p0, v2, v3}, Lcom/byazt/ete/y;->a(J)V

    .line 78
    invoke-virtual {p0, v6, v7}, Lcom/byazt/ete/y;->sp(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static c(Lcom/byazt/ete/y;Lcom/byazt/im/x;)V
    .locals 0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/im/x;->n()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 54
    invoke-virtual {p0, p1}, Lcom/byazt/ete/y;->uj(I)V

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 55
    invoke-virtual {p0, p1}, Lcom/byazt/ete/y;->uj(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static c(Lcom/byazt/ete/y;Lcom/byazt/im/x;J)V
    .locals 2

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/im/x;->sp()J

    move-result-wide v0

    sub-long/2addr p2, v0

    .line 92
    invoke-virtual {p0, p2, p3}, Lcom/byazt/ete/y;->da(J)V

    .line 93
    invoke-virtual {p1}, Lcom/byazt/im/x;->x()J

    move-result-wide p1

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/byazt/ete/y;->gt(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static c(Lcom/byazt/ete/y;Lcom/byazt/im/x;JLcom/byazt/ete/ic;)V
    .locals 9

    if-eqz p1, :cond_3

    if-eqz p0, :cond_3

    if-nez p4, :cond_0

    goto :goto_1

    .line 108
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/im/x;->n()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v6, 0x0

    const-string v8, "loadSuccess"

    move-wide v1, p2

    move-object v5, p4

    .line 109
    invoke-static/range {v1 .. v8}, Lcom/byazt/cc/x;->c(JZZLcom/byazt/ete/ic;JLjava/lang/String;)V

    .line 110
    invoke-virtual {p1}, Lcom/byazt/im/x;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p2

    invoke-static {p0, v0, v1}, Lcom/byazt/cc/sp;->c(Lcom/byazt/ete/y;J)V

    .line 112
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p2

    const-string p2, "splash_ad"

    .line 113
    invoke-static {p4, p2, v0, v1}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;J)V

    goto :goto_0

    .line 114
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p2

    invoke-static {p0, v0, v1}, Lcom/byazt/cc/sp;->tt(Lcom/byazt/ete/y;J)V

    .line 115
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/byazt/im/x;->a()Z

    move-result p2

    invoke-static {p0, p2}, Lcom/byazt/cc/sp;->c(Lcom/byazt/ete/y;Z)V

    .line 116
    invoke-virtual {p1}, Lcom/byazt/im/x;->uj()Lcom/byazt/uph/tt;

    move-result-object p2

    invoke-virtual {p1}, Lcom/byazt/im/x;->i()Ljava/util/Map;

    move-result-object p3

    invoke-static {p0, p2, p3}, Lcom/byazt/cc/sp;->c(Lcom/byazt/ete/y;Lcom/byazt/uph/tt;Ljava/util/Map;)V

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p0, p1, p2, p3}, Lcom/byazt/cc/sp;->c(Lcom/byazt/ete/y;Lcom/byazt/im/x;J)V

    .line 118
    invoke-virtual {p1}, Lcom/byazt/im/x;->u()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/byazt/cc/sp;->c(Lcom/byazt/ete/y;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static c(Lcom/byazt/ete/y;Lcom/byazt/uph/tt;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ete/y;",
            "Lcom/byazt/uph/tt;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    if-nez p0, :cond_0

    goto/16 :goto_1

    .line 58
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/uph/tt;->tt()I

    move-result v0

    .line 59
    invoke-virtual {p0}, Lcom/byazt/ete/y;->i()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_1

    int-to-float v0, v0

    const/high16 v1, 0x44800000    # 1024.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 60
    invoke-virtual {p0, v0, v1}, Lcom/byazt/ete/y;->c(D)V

    .line 61
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/uph/tt;->c()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 62
    invoke-virtual {p0}, Lcom/byazt/ete/y;->da()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "X"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 64
    invoke-virtual {p0, p1}, Lcom/byazt/ete/y;->c(Ljava/lang/String;)V

    :cond_2
    if-eqz p2, :cond_5

    .line 65
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_5

    invoke-virtual {p0}, Lcom/byazt/ete/y;->sl()Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_5

    .line 66
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 67
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 68
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 69
    :try_start_0
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 70
    :cond_4
    invoke-virtual {p0, p1}, Lcom/byazt/ete/y;->c(Lorg/json/JSONObject;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public static c(Lcom/byazt/ete/y;Ljava/lang/String;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 119
    :cond_0
    invoke-virtual {p0, p1}, Lcom/byazt/ete/y;->tt(Ljava/lang/String;)V

    return-void
.end method

.method public static c(Lcom/byazt/ete/y;Z)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 56
    invoke-virtual {p0, p1}, Lcom/byazt/ete/y;->n(I)V

    return-void

    :cond_1
    const/4 p1, 0x2

    .line 57
    invoke-virtual {p0, p1}, Lcom/byazt/ete/y;->n(I)V

    return-void
.end method

.method public static c(ZLcom/byazt/ete/ic;Lcom/byazt/dj/tt;)V
    .locals 0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p0, :cond_1

    const/4 p0, 0x4

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    .line 122
    :goto_0
    invoke-static {p2, p0, p1}, Lcom/byazt/cc/sp;->c(Lcom/byazt/dj/tt;ILcom/byazt/ete/ic;)Lcom/byazt/qal/tt;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    .line 123
    :cond_2
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object p1

    new-instance p2, Lcom/byazt/cc/sp$4;

    invoke-direct {p2, p0}, Lcom/byazt/cc/sp$4;-><init>(Lcom/byazt/qal/tt;)V

    invoke-virtual {p1, p2}, Lcom/byazt/ukr/yp;->uj(Lcom/byazt/ee/c;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static c(ZLcom/byazt/ete/ic;Lcom/byazt/dj/tt;Lcom/byazt/im/sp;)V
    .locals 0

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p0, :cond_1

    const/4 p0, 0x4

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    .line 94
    :goto_0
    invoke-static {p2, p0, p1}, Lcom/byazt/cc/sp;->c(Lcom/byazt/dj/tt;ILcom/byazt/ete/ic;)Lcom/byazt/qal/tt;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    .line 95
    :cond_2
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object p1

    new-instance p2, Lcom/byazt/cc/sp$1;

    invoke-direct {p2, p3, p0}, Lcom/byazt/cc/sp$1;-><init>(Lcom/byazt/im/sp;Lcom/byazt/qal/tt;)V

    invoke-virtual {p1, p2}, Lcom/byazt/ukr/yp;->ve(Lcom/byazt/ee/c;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static c(ZLcom/byazt/ete/ic;Lcom/byazt/dj/tt;ZZ)V
    .locals 0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p0, :cond_1

    const/4 p0, 0x4

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    .line 120
    :goto_0
    invoke-static {p2, p0, p1}, Lcom/byazt/cc/sp;->c(Lcom/byazt/dj/tt;ILcom/byazt/ete/ic;)Lcom/byazt/qal/tt;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    .line 121
    :cond_2
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object p1

    new-instance p2, Lcom/byazt/cc/sp$3;

    invoke-direct {p2, p4, p3, p0}, Lcom/byazt/cc/sp$3;-><init>(ZZLcom/byazt/qal/tt;)V

    invoke-virtual {p1, p2}, Lcom/byazt/ukr/yp;->tt(Lcom/byazt/ee/c;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static tt(Lcom/byazt/ete/ic;Lcom/byazt/im/uj;)V
    .locals 7

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->hj()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "load_material_duration"

    .line 4
    invoke-virtual {p1}, Lcom/byazt/im/uj;->uj()J

    move-result-wide v1

    invoke-virtual {v6, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "load_resource_duration"

    .line 5
    invoke-virtual {p1}, Lcom/byazt/im/uj;->n()J

    move-result-wide v1

    invoke-virtual {v6, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "render_duration"

    .line 6
    invoke-virtual {p1}, Lcom/byazt/im/uj;->a()J

    move-result-wide v1

    invoke-virtual {v6, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "ren_seq"

    .line 7
    invoke-virtual {p1}, Lcom/byazt/im/uj;->tt()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "real_ren_seq"

    .line 8
    invoke-virtual {p1}, Lcom/byazt/im/uj;->ve()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "final_t"

    .line 9
    invoke-virtual {p1}, Lcom/byazt/im/uj;->x()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "cache_ad"

    goto :goto_0

    :cond_2
    const-string v1, "real_time_ad"

    :goto_0
    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "load_t"

    .line 10
    invoke-virtual {p1}, Lcom/byazt/im/uj;->i()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "meta_load_Optimization"

    .line 11
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->gk()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "serial_render"

    .line 12
    invoke-virtual {p1}, Lcom/byazt/im/uj;->da()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 13
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 14
    :goto_1
    invoke-virtual {p1}, Lcom/byazt/im/uj;->sp()J

    move-result-wide v4

    const-string v2, "splash_ad"

    const-string v3, "splash_total_duration"

    move-object v1, p0

    .line 15
    invoke-static/range {v1 .. v6}, Lcom/byazt/ddx/uj;->ve(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public static tt(Lcom/byazt/ete/y;J)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/byazt/ete/y;->ve(J)V

    return-void
.end method

.method public static uj(Lcom/byazt/ete/y;J)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    sub-long/2addr v0, p1

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/byazt/ete/y;->m(J)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public static ve(Lcom/byazt/ete/y;J)V
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/byazt/ete/y;->sl(J)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
