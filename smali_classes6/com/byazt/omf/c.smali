.class public Lcom/byazt/omf/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f,
        0x14
    }
.end annotation


# direct methods
.method private static a(Lorg/json/JSONObject;)Lcom/byazt/ete/rl;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/byazt/ete/rl;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/byazt/ete/rl;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "ah"

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/byazt/ete/rl;->c(I)V

    .line 18
    .line 19
    .line 20
    const-string v1, "am"

    .line 21
    .line 22
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    invoke-virtual {v0, p0}, Lcom/byazt/ete/rl;->tt(I)V

    .line 27
    .line 28
    .line 29
    return-object v0
.end method

.method private static c(Lcom/byazt/ete/ic;)I
    .locals 2

    .line 403
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->id()I

    move-result v0

    const/16 v1, 0xa6

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/byazt/ete/bx;->c(Lcom/byazt/ete/ic;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/16 v0, 0xc8

    if-eqz p0, :cond_2

    .line 404
    invoke-static {}, Lcom/byazt/omf/p;->n()Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const-string p0, "\u7a7f\u5c71\u7532sdk\u6ca1\u6709\u96c6\u6210\u70b9\u64ad/\u76f4\u64adaar\uff0c\u4e0d\u652f\u6301\u76f4\u64ad\u7269\u6599"

    .line 405
    invoke-static {p0}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;)V

    const/16 p0, 0x194

    return p0

    :cond_2
    return v0
.end method

.method public static c(Lcom/byazt/ete/ic;I)I
    .locals 7

    .line 392
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto/16 :goto_2

    .line 393
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->yp()Lcom/byazt/ete/nu;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/omf/c;->c(Lcom/byazt/ete/nu;)I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    return v0

    .line 394
    :cond_1
    invoke-static {p0}, Lcom/byazt/omf/c;->c(Lcom/byazt/ete/ic;)I

    move-result v0

    if-eq v0, v1, :cond_2

    return v0

    .line 395
    :cond_2
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->i()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v2, v6, :cond_5

    if-eq v2, v5, :cond_5

    if-eq v2, v4, :cond_4

    if-eq v2, v3, :cond_3

    goto :goto_0

    .line 396
    :cond_3
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->tp()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 p0, 0x198

    return p0

    .line 397
    :cond_4
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/omf/c;->c(Lcom/byazt/ete/n;)I

    move-result v0

    if-eq v0, v1, :cond_6

    return v0

    .line 398
    :cond_5
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->x()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 p0, 0x195

    return p0

    .line 399
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->id()I

    move-result v2

    if-eq v2, v6, :cond_9

    if-eq v2, v5, :cond_9

    if-eq v2, v4, :cond_9

    if-eq v2, v3, :cond_8

    const/16 v3, 0xf

    if-eq v2, v3, :cond_8

    const/16 v3, 0x10

    if-eq v2, v3, :cond_9

    const/16 v3, 0xa6

    if-eq v2, v3, :cond_7

    goto :goto_1

    .line 400
    :cond_7
    invoke-static {p0, p1}, Lcom/byazt/omf/c;->tt(Lcom/byazt/ete/ic;I)I

    move-result v0

    if-eq v0, v1, :cond_a

    return v0

    .line 401
    :cond_8
    invoke-static {p0}, Lcom/byazt/ete/xd;->da(Lcom/byazt/ete/ic;)I

    move-result v0

    if-eq v0, v1, :cond_a

    return v0

    .line 402
    :cond_9
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->pa()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/byazt/omf/c;->tt(Ljava/util/List;)I

    move-result v0

    if-eq v0, v1, :cond_a

    :cond_a
    :goto_1
    return v0

    :cond_b
    :goto_2
    const/16 p0, 0x191

    return p0
.end method

.method private static c(Lcom/byazt/ete/n;)I
    .locals 0

    if-nez p0, :cond_0

    const/16 p0, 0x196

    return p0

    .line 410
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ete/n;->tt()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x197

    return p0

    :cond_1
    const/16 p0, 0xc8

    return p0
.end method

.method private static c(Lcom/byazt/ete/nu;)I
    .locals 3

    const/16 v0, 0xc8

    if-nez p0, :cond_0

    return v0

    .line 406
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ete/nu;->tt()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/byazt/ete/nu;->uj()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 407
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/ete/nu;->n()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 408
    invoke-virtual {p0}, Lcom/byazt/ete/nu;->n()I

    move-result p0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/16 p0, 0x193

    return p0

    :cond_2
    return v0

    .line 409
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/byazt/ete/nu;->tt()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/16 p0, 0x192

    return p0

    :cond_4
    const/16 p0, 0x1a2

    return p0
.end method

.method public static c(Lorg/json/JSONObject;Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;J)Landroid/util/Pair;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/byazt/dj/tt;",
            "Lcom/byazt/ete/bm;",
            "J)",
            "Landroid/util/Pair<",
            "Lcom/byazt/ete/c;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    .line 1
    :cond_0
    :try_start_0
    new-instance v3, Lcom/byazt/ete/c;

    invoke-direct {v3}, Lcom/byazt/ete/c;-><init>()V

    const-string v4, "request_id"

    .line 2
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/byazt/ete/c;->c(Ljava/lang/String;)V

    const-string v4, "ret"

    .line 3
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/byazt/ete/c;->c(I)V

    const-string v4, "message"

    .line 4
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/byazt/ete/c;->tt(Ljava/lang/String;)V

    const-string v4, "auction_price"

    .line 5
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "client_ipv4"

    const-string v6, ""

    .line 6
    invoke-virtual {p0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/byazt/aas/my;->c(Ljava/lang/String;)V

    const-string v5, "need_get_materials"

    .line 7
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 8
    invoke-virtual {v3}, Lcom/byazt/ete/c;->c()I

    move-result v6

    if-eqz v6, :cond_1

    return-object v2

    :cond_1
    const-string v6, "creatives"

    .line 9
    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 10
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 11
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_6

    .line 12
    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v10, p2

    .line 13
    invoke-static {v9, v1, v10, v8}, Lcom/byazt/omf/c;->c(Lorg/json/JSONObject;Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;I)Lcom/byazt/ete/ic;

    move-result-object v9

    if-eqz v1, :cond_2

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/dj/tt;->gt()I

    move-result v11

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    :goto_1
    invoke-static {v9, v11}, Lcom/byazt/omf/c;->c(Lcom/byazt/ete/ic;I)I

    move-result v11

    .line 15
    invoke-virtual {v9}, Lcom/byazt/ete/ic;->r()Z

    move-result v12

    .line 16
    invoke-virtual {v9}, Lcom/byazt/ete/ic;->y()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0xc8

    if-eq v11, v14, :cond_5

    if-nez v5, :cond_3

    if-eqz v12, :cond_4

    .line 17
    :cond_3
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    goto :goto_2

    .line 18
    :cond_4
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide/from16 v11, p3

    goto :goto_0

    .line 19
    :cond_5
    :goto_2
    invoke-virtual {v9, v4}, Lcom/byazt/ete/ic;->eo(Ljava/lang/String;)V

    move-wide/from16 v11, p3

    .line 20
    invoke-virtual {v9, v11, v12}, Lcom/byazt/ete/ic;->ve(J)V

    .line 21
    invoke-virtual {v9, v5}, Lcom/byazt/ete/ic;->x(Z)V

    .line 22
    invoke-virtual {v3, v9}, Lcom/byazt/ete/c;->c(Lcom/byazt/ete/ic;)V

    goto :goto_0

    .line 23
    :cond_6
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v3, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 24
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public static c(Lorg/json/JSONObject;)Lcom/byazt/ete/ic;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 25
    :try_start_0
    invoke-static {p0, v0, v0, v1}, Lcom/byazt/omf/c;->c(Lorg/json/JSONObject;Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;I)Lcom/byazt/ete/ic;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static c(Lorg/json/JSONObject;Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;I)Lcom/byazt/ete/ic;
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "req_id"

    const/4 v5, 0x0

    if-nez v1, :cond_0

    return-object v5

    :cond_0
    const/4 v6, 0x1

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    const-string v0, "settings_open"

    .line 26
    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 27
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/byazt/ogz/sl;->ve(I)V

    .line 28
    :cond_1
    new-instance v7, Lcom/byazt/ete/ic;

    invoke-direct {v7}, Lcom/byazt/ete/ic;-><init>()V

    const-string v0, "s_sig_ts"

    .line 29
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->or(Ljava/lang/String;)V

    const-string v0, "ad_rec_stamp"

    const-wide/16 v8, 0x0

    .line 30
    invoke-virtual {v1, v0, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/byazt/ete/ic;->sl(J)V

    const-string v0, "interaction_type"

    .line 31
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->nb(I)V

    const-string v0, "target_url"

    .line 32
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->nu(Ljava/lang/String;)V

    const-string v0, "use_sdk_player"

    const/4 v8, 0x0

    .line 33
    invoke-virtual {v1, v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->z(I)V

    const-string v0, "use_media_video_player"

    .line 34
    invoke-virtual {v1, v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->yp(I)V

    const-string v0, "landing_scroll_percentage"

    const/4 v9, -0x1

    .line 35
    invoke-virtual {v1, v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->bx(I)V

    const-string v0, "gecko_id"

    .line 36
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->rh(Ljava/lang/String;)V

    const-string v10, "is_cache"

    .line 37
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->da(Z)V

    const-string v0, "cache_type"

    const/16 v11, 0x64

    .line 38
    invoke-virtual {v1, v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->lr(I)V

    .line 39
    invoke-static {v7, v1}, Lcom/byazt/dbo/ve;->c(Lcom/byazt/ete/ic;Lorg/json/JSONObject;)V

    const-string v0, "set_click_type"

    .line 40
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 41
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v12, "cta"

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    .line 42
    invoke-virtual {v0, v12, v13, v14}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v11

    invoke-virtual {v7, v11, v12}, Lcom/byazt/ete/ic;->tt(D)V

    const-string v11, "other"

    .line 43
    invoke-virtual {v0, v11, v13, v14}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v11

    invoke-virtual {v7, v11, v12}, Lcom/byazt/ete/ic;->c(D)V

    :cond_2
    const-string v0, "feed_video_finish_type"

    .line 44
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->u(I)V

    const-string v0, "extension"

    .line 45
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 46
    invoke-virtual {v7, v11}, Lcom/byazt/ete/ic;->uj(Lorg/json/JSONObject;)V

    const-string v12, "overlay"

    .line 47
    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    invoke-virtual {v7, v13}, Lcom/byazt/ete/ic;->n(Lorg/json/JSONObject;)V

    const-string v13, "ad_id"

    .line 48
    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Lcom/byazt/ete/ic;->gu(Ljava/lang/String;)V

    const-string v14, "get_phone_num_status"

    .line 49
    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v7, v14}, Lcom/byazt/ete/ic;->uj(I)V

    const-string v14, "source"

    .line 50
    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Lcom/byazt/ete/ic;->m(Ljava/lang/String;)V

    const-string v14, "package_name"

    .line 51
    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Lcom/byazt/ete/ic;->d(Ljava/lang/String;)V

    const-string v14, "play_bar_show_time"

    const/16 v15, -0xc8

    .line 52
    invoke-virtual {v1, v14, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    invoke-virtual {v7, v14}, Lcom/byazt/ete/ic;->zm(I)V

    const-string v14, "icon"

    .line 53
    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "screenshot"

    .line 54
    invoke-virtual {v1, v15, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v15

    invoke-virtual {v7, v15}, Lcom/byazt/ete/ic;->i(Z)V

    const-string v15, "play_bar_style"

    .line 55
    invoke-virtual {v1, v15, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    invoke-virtual {v7, v15}, Lcom/byazt/ete/ic;->qy(I)V

    const-string v15, "market_url"

    const-string v5, ""

    .line 56
    invoke-virtual {v1, v15, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Lcom/byazt/ete/ic;->h(Ljava/lang/String;)V

    const-string v15, "video_adaptation"

    .line 57
    invoke-virtual {v1, v15, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    invoke-virtual {v7, v15}, Lcom/byazt/ete/ic;->gt(I)V

    const-string v15, "feed_video_opentype"

    .line 58
    invoke-virtual {v1, v15, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    invoke-virtual {v7, v15}, Lcom/byazt/ete/ic;->rh(I)V

    const-string v15, "feed_reward_type"

    .line 59
    invoke-virtual {v1, v15, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    invoke-virtual {v7, v15}, Lcom/byazt/ete/ic;->my(I)V

    const-string v15, "session_params"

    .line 60
    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    invoke-virtual {v7, v15}, Lcom/byazt/ete/ic;->a(Lorg/json/JSONObject;)V

    const-string v15, "cache_control"

    .line 61
    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    invoke-virtual {v7, v15}, Lcom/byazt/ete/ic;->sp(Lorg/json/JSONObject;)V

    const-string v15, "auction_price"

    .line 62
    invoke-virtual {v1, v15, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Lcom/byazt/ete/ic;->eo(Ljava/lang/String;)V

    const-string v15, "no_default_ttdsp_price"

    .line 63
    invoke-virtual {v1, v15, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    invoke-virtual {v7, v15}, Lcom/byazt/ete/ic;->pu(I)V

    const-string v15, "meta_hashcode"

    .line 64
    invoke-virtual {v1, v15, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    move-object/from16 v16, v10

    if-eqz v15, :cond_3

    move v10, v15

    goto :goto_0

    .line 65
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    long-to-int v10, v9

    :goto_0
    invoke-virtual {v7, v10}, Lcom/byazt/ete/ic;->a(I)V

    const-string v9, "width"

    const-string v10, "height"

    const-string v15, "url"

    if-eqz v14, :cond_4

    .line 66
    new-instance v6, Lcom/byazt/ete/zb;

    invoke-direct {v6}, Lcom/byazt/ete/zb;-><init>()V

    .line 67
    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/byazt/ete/zb;->c(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v14, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/byazt/ete/zb;->tt(I)V

    .line 69
    invoke-virtual {v14, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/byazt/ete/zb;->c(I)V

    .line 70
    invoke-virtual {v7, v6}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/zb;)V

    :cond_4
    const-string v6, "image"

    .line 71
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_5

    const/4 v8, 0x0

    .line 72
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v8, v14, :cond_5

    .line 73
    new-instance v14, Lcom/byazt/ete/zb;

    invoke-direct {v14}, Lcom/byazt/ete/zb;-><init>()V

    move-object/from16 v17, v11

    .line 74
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    move-object/from16 v18, v6

    .line 75
    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Lcom/byazt/ete/zb;->c(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v14, v6}, Lcom/byazt/ete/zb;->tt(I)V

    .line 77
    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v14, v6}, Lcom/byazt/ete/zb;->c(I)V

    const-string v6, "duration"

    .line 78
    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    int-to-double v9, v6

    invoke-virtual {v14, v9, v10}, Lcom/byazt/ete/zb;->c(D)V

    const-string v6, "image_preview"

    .line 79
    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v14, v6}, Lcom/byazt/ete/zb;->c(Z)V

    const-string v6, "image_key"

    .line 80
    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Lcom/byazt/ete/zb;->tt(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v7, v14}, Lcom/byazt/ete/ic;->tt(Lcom/byazt/ete/zb;)V

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v11, v17

    move-object/from16 v6, v18

    move-object/from16 v9, v19

    move-object/from16 v10, v20

    goto :goto_1

    :cond_5
    move-object/from16 v17, v11

    const-string v6, "show_url"

    .line 82
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_6

    const/4 v8, 0x0

    .line 83
    :goto_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_6

    .line 84
    invoke-virtual {v7}, Lcom/byazt/ete/ic;->pr()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_6
    const-string v6, "click_url"

    .line 85
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_7

    const/4 v8, 0x0

    .line 86
    :goto_3
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_7

    .line 87
    invoke-virtual {v7}, Lcom/byazt/ete/ic;->gl()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 88
    :cond_7
    new-instance v6, Lcom/byazt/ete/p;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/byazt/ete/p;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v7, v6}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/p;)V

    .line 89
    new-instance v0, Lcom/byazt/ete/lr;

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/byazt/ete/lr;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/lr;)V

    .line 90
    new-instance v0, Lcom/byazt/ete/md;

    const-string v6, "effects"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/byazt/ete/md;-><init>(Lorg/json/JSONArray;)V

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/md;)V

    const-string v0, "intercept_flag"

    const/4 v6, 0x0

    .line 91
    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->gu(I)V

    const-string v0, "web_inspector"

    .line 92
    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->gr(I)V

    const-string v0, "phone_num"

    .line 93
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->my(Ljava/lang/String;)V

    const-string v0, "title"

    .line 94
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->gt(Ljava/lang/String;)V

    const-string v0, "download_num"

    .line 95
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/byazt/ete/ic;->uj(J)V

    const-string v0, "description"

    .line 96
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->rl(Ljava/lang/String;)V

    const-string v0, "button_text"

    .line 97
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->qy(Ljava/lang/String;)V

    const-string v0, "ad_logo"

    const/4 v6, 0x1

    .line 98
    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->rl(I)V

    const-string v0, "isDirectDownload"

    const/4 v6, 0x0

    .line 99
    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->ve(Z)V

    const-string v0, "ext"

    .line 100
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->gr(Ljava/lang/String;)V

    .line 102
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 103
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->zm(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->i(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->yv(Ljava/lang/String;)V

    const-string v0, "global_did"

    const-wide/16 v8, -0x1

    .line 108
    invoke-virtual {v6, v0, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/byazt/aas/DeviceUtils;->c(J)V

    const-string v0, "app_id"

    .line 109
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 110
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_8
    const/4 v0, 0x0

    .line 111
    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 112
    invoke-static {}, Lcom/byazt/vxy/c;->ve()Ljava/lang/String;

    move-result-object v0

    .line 113
    :cond_9
    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->qp(Ljava/lang/String;)V

    const-string v6, "adslot"

    .line 114
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 115
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/byazt/aas/md;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/dj/tt;

    move-result-object v0

    .line 116
    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->c(Lcom/byazt/dj/tt;)V

    goto :goto_5

    .line 117
    :cond_a
    invoke-virtual {v7, v2}, Lcom/byazt/ete/ic;->c(Lcom/byazt/dj/tt;)V

    :goto_5
    const-string v0, "price"

    .line 118
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->t(Ljava/lang/String;)V

    const-string v0, "image_mode"

    .line 119
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->ic(I)V

    const-string v0, "orientation"

    const/4 v2, 0x1

    .line 120
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->lt(I)V

    const-string v0, "aspect_ratio"

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    .line 121
    invoke-virtual {v1, v0, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    double-to-float v0, v8

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->c(F)V

    const-string v0, "aspect_margin"

    const-wide v8, 0x3fb1eb8520000000L    # 0.07000000029802322

    .line 122
    invoke-virtual {v1, v0, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    double-to-float v0, v8

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->tt(F)V

    const-string v0, "corner_radius"

    const-wide/16 v8, 0x0

    .line 123
    invoke-virtual {v1, v0, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v10

    double-to-float v0, v10

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->ve(F)V

    const-string v0, "app"

    .line 124
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "download_sdk_conf"

    .line 125
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 126
    invoke-static {v0}, Lcom/byazt/omf/c;->tt(Lorg/json/JSONObject;)Lcom/byazt/ete/n;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/n;)V

    .line 127
    invoke-static {v2}, Lcom/byazt/omf/c;->a(Lorg/json/JSONObject;)Lcom/byazt/ete/rl;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/rl;)V

    const-string v0, "parse_material_ts"

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v1, v0, v10, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Lcom/byazt/ete/ic;->tt(J)V

    const-string v0, "deep_link"

    .line 129
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 130
    new-instance v2, Lcom/byazt/ete/nu;

    invoke-direct {v2, v0}, Lcom/byazt/ete/nu;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v7, v2}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/nu;)V

    .line 131
    :cond_b
    new-instance v0, Lcom/byazt/ete/kp;

    invoke-direct {v0, v1}, Lcom/byazt/ete/kp;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/kp;)V

    .line 132
    new-instance v0, Lcom/byazt/ete/pu;

    .line 133
    invoke-static {v7}, Lcom/byazt/aas/nb;->t(Lcom/byazt/ete/ic;)I

    move-result v2

    .line 134
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lcom/byazt/ete/pu;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Lcom/byazt/ete/bm;)V

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/pu;)V

    .line 135
    new-instance v0, Lcom/byazt/ete/lo;

    invoke-direct {v0, v1}, Lcom/byazt/ete/lo;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/lo;)V

    .line 136
    new-instance v0, Lcom/byazt/ete/my;

    invoke-direct {v0, v1}, Lcom/byazt/ete/my;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/my;)V

    .line 137
    new-instance v0, Lcom/byazt/ete/oz;

    invoke-direct {v0, v1}, Lcom/byazt/ete/oz;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/oz;)V

    .line 138
    new-instance v0, Lcom/byazt/vo/tt;

    invoke-static {}, Lcom/byazt/tl/uj;->c()Lcom/byazt/vo/ve;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/byazt/vo/tt;-><init>(Lorg/json/JSONObject;Lcom/byazt/vo/ve;)V

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->c(Lcom/byazt/vo/tt;)V

    .line 139
    new-instance v0, Lcom/byazt/ete/l;

    invoke-direct {v0, v1}, Lcom/byazt/ete/l;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/l;)V

    .line 140
    new-instance v0, Lcom/byazt/ete/qp;

    invoke-direct {v0, v1}, Lcom/byazt/ete/qp;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/qp;)V

    .line 141
    new-instance v0, Lcom/byazt/ete/to;

    invoke-direct {v0, v1}, Lcom/byazt/ete/to;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/to;)V

    .line 142
    new-instance v0, Lcom/byazt/ete/lt;

    invoke-direct {v0, v1}, Lcom/byazt/ete/lt;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/lt;)V

    .line 143
    new-instance v0, Lcom/byazt/ete/or;

    invoke-direct {v0, v1}, Lcom/byazt/ete/or;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/or;)V

    const-string v0, "count_down"

    .line 144
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->hd(I)V

    const-string v0, "expiration_time"

    .line 145
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Lcom/byazt/ete/ic;->n(J)V

    const-string v0, "client_expiration_time"

    .line 146
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Lcom/byazt/ete/ic;->a(J)V

    const-string v0, "_child_metas"

    .line 147
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->sv(Ljava/lang/String;)V

    const-string v0, "src_req_id"

    .line 148
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->md(Ljava/lang/String;)V

    const-string v0, "video_encode_type"

    const/4 v2, 0x0

    .line 149
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->or(I)V

    const-string v0, "player_type"

    .line 150
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->q(I)V

    const-string v0, "video_voice_control"

    const/4 v2, -0x1

    .line 151
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->cu(I)V

    const-string v0, "if_show_win"

    const/4 v2, 0x1

    .line 152
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->qp(I)V

    .line 153
    invoke-static {}, Lcom/byazt/omf/p;->n()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {v7}, Lcom/byazt/ete/ic;->xx()I

    move-result v0

    if-ne v0, v2, :cond_c

    const/4 v2, 0x0

    .line 154
    invoke-virtual {v7, v2}, Lcom/byazt/ete/ic;->or(I)V

    .line 155
    invoke-virtual {v7, v2}, Lcom/byazt/ete/ic;->q(I)V

    :cond_c
    const-string v0, "download_conf"

    .line 156
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 157
    new-instance v2, Lcom/byazt/ete/gt;

    invoke-direct {v2, v0}, Lcom/byazt/ete/gt;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v7, v2}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/gt;)V

    :cond_d
    const-string v0, "self_reward_callback"

    .line 158
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 159
    new-instance v2, Lcom/byazt/ete/tx;

    invoke-direct {v2, v0}, Lcom/byazt/ete/tx;-><init>(Lorg/json/JSONObject;)V

    .line 160
    invoke-virtual {v7, v2}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/tx;)V

    .line 161
    invoke-virtual {v2}, Lcom/byazt/ete/tx;->c()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 162
    invoke-static/range {p0 .. p0}, Lcom/byazt/omf/c;->x(Lorg/json/JSONObject;)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->pf(I)V

    :cond_e
    const-string v0, "if_both_open"

    .line 163
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->l(I)V

    const-string v0, "if_double_deeplink"

    .line 164
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->lo(I)V

    const-string v0, "app_manage"

    .line 165
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 166
    invoke-static {v0}, Lcom/byazt/omf/c;->n(Lorg/json/JSONObject;)Lcom/byazt/ete/a;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/a;)V

    .line 167
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->z(Ljava/lang/String;)V

    :cond_f
    const-string v0, "easy_dl_dialog"

    .line 168
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 169
    invoke-static {v0}, Lcom/byazt/omf/c;->ve(Lorg/json/JSONObject;)Lcom/byazt/ete/zm;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/zm;)V

    :cond_10
    const-string v0, "easy_pl_material"

    .line 170
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 171
    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->x(Lorg/json/JSONObject;)V

    .line 172
    invoke-static {v0}, Lcom/byazt/omf/c;->uj(Lorg/json/JSONObject;)Lcom/byazt/ete/yv;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/yv;)V

    :cond_11
    const-string v0, "lp_down_rule"

    const-string v2, "0"

    .line 173
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->zb(I)V

    const-string v0, "micro_app_type"

    const/4 v6, -0x1

    .line 174
    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->c(I)V

    const-string v0, "app_manage_type"

    .line 175
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    .line 177
    invoke-virtual {v7, v2}, Lcom/byazt/ete/ic;->eo(I)V

    :goto_6
    const/4 v2, 0x0

    goto :goto_7

    :cond_12
    const-string v2, "2"

    .line 178
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 179
    invoke-virtual {v7, v3}, Lcom/byazt/ete/ic;->eo(I)V

    goto :goto_6

    :cond_13
    const/4 v2, 0x0

    .line 180
    invoke-virtual {v7, v2}, Lcom/byazt/ete/ic;->eo(I)V

    :goto_7
    const-string v0, "media_ext"

    .line 181
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 182
    invoke-static {v0}, Lcom/byazt/omf/c;->sp(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->c(Ljava/util/Map;)V

    const-string v0, "if_block_lp"

    .line 183
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->m(I)V

    const-string v0, "cache_sort"

    const/4 v2, 0x1

    .line 184
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->yv(I)V

    const-string v0, "if_sp_cache"

    .line 185
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->p(I)V

    const-string v0, "splash_timeout_stage"

    .line 186
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->md(I)V

    const-string v0, "page_render_type"

    const/4 v6, 0x0

    .line 187
    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->sl(I)V

    .line 188
    invoke-virtual {v7}, Lcom/byazt/ete/ic;->tx()I

    move-result v0

    if-ne v0, v2, :cond_14

    const-string v0, "ugeno"

    .line 189
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 190
    invoke-static {v0, v7}, Lcom/byazt/omf/c;->c(Lorg/json/JSONObject;Lcom/byazt/ete/ic;)Lcom/byazt/seg/c;

    move-result-object v0

    .line 191
    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->c(Lcom/byazt/seg/c;)V

    .line 192
    invoke-static {}, Lcom/byazt/xs/sp;->c()Lcom/byazt/xs/sp;

    move-result-object v2

    invoke-virtual {v0}, Lcom/byazt/seg/c;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/byazt/seg/c;->tt()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v6, v10}, Lcom/byazt/xs/sp;->tt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    const/4 v2, 0x0

    .line 193
    invoke-static {v0, v2}, Lcom/byazt/hy/tt;->c(Lcom/byazt/seg/c;Lcom/byazt/hy/tt$tt;)V

    :cond_14
    const-string v0, "native_lp_tpl_id"

    .line 194
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->da(I)V

    const-string v0, "native_lp_data"

    .line 195
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->n(Ljava/lang/String;)V

    const-string v0, "native_lp_ugen_url"

    .line 196
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->a(Ljava/lang/String;)V

    const-string v0, "native_lp_ugen_md5"

    .line 197
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->sp(Ljava/lang/String;)V

    const-string v0, "native_lp_is_preload"

    .line 198
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->a(Z)V

    const-string v0, "download_url"

    .line 199
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->uj(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v7}, Lcom/byazt/ete/ic;->tk()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "native_lp_content"

    .line 201
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 202
    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->tt(Lorg/json/JSONObject;)V

    goto :goto_8

    .line 203
    :cond_15
    invoke-virtual {v7}, Lcom/byazt/ete/ic;->lo()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/byazt/omf/c$1;

    invoke-direct {v2, v7}, Lcom/byazt/omf/c$1;-><init>(Lcom/byazt/ete/ic;)V

    invoke-static {v0, v2}, Lcom/byazt/hy/tt;->c(Ljava/lang/String;Lcom/byazt/hy/tt$c;)V

    :cond_16
    :goto_8
    const-string v0, "promotion_type"

    .line 204
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->t(I)V

    const-string v0, "dylite_info"

    .line 205
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "coupon"

    if-eqz v0, :cond_1c

    .line 206
    new-instance v6, Lcom/byazt/lo/c;

    invoke-direct {v6}, Lcom/byazt/lo/c;-><init>()V

    const-string v10, "product_infos"

    .line 207
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    if-eqz v10, :cond_17

    .line 208
    invoke-virtual {v6, v10}, Lcom/byazt/lo/c;->c(Lorg/json/JSONArray;)V

    .line 209
    :cond_17
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    if-eqz v10, :cond_18

    .line 210
    invoke-virtual {v6, v10}, Lcom/byazt/lo/c;->c(Lorg/json/JSONObject;)V

    :cond_18
    const-string v10, "render_config"

    .line 211
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    if-eqz v10, :cond_19

    .line 212
    invoke-virtual {v6, v10}, Lcom/byazt/lo/c;->tt(Lorg/json/JSONObject;)V

    :cond_19
    const-string v10, "live_room_data"

    .line 213
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    if-eqz v10, :cond_1a

    .line 214
    invoke-virtual {v6, v10}, Lcom/byazt/lo/c;->ve(Lorg/json/JSONObject;)V

    :cond_1a
    const-string v10, "ec_mall_conf"

    .line 215
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 216
    invoke-virtual {v6, v0}, Lcom/byazt/lo/c;->uj(Lorg/json/JSONObject;)V

    .line 217
    :cond_1b
    invoke-virtual {v7, v6}, Lcom/byazt/ete/ic;->c(Lcom/byazt/lo/c;)V

    :cond_1c
    const-string v0, "splash_control"

    .line 218
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 219
    invoke-virtual {v7}, Lcom/byazt/ete/ic;->by()I

    move-result v6

    invoke-static {v0, v6}, Lcom/byazt/omf/c;->c(Lorg/json/JSONObject;I)Lcom/byazt/ete/s;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/s;)V

    :cond_1d
    const-string v0, "ad_info"

    .line 220
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->zb(Ljava/lang/String;)V

    const-string v0, "close_on_dislike"

    const/4 v6, 0x0

    .line 221
    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->yp(Z)V

    const-string v0, "adx_name"

    .line 222
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->cu(Ljava/lang/String;)V

    const-string v0, "endcard_close_time"

    .line 223
    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->kp(I)V

    const-string v0, "proportion_watching"

    const/16 v10, 0x64

    .line 224
    invoke-virtual {v1, v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->b(I)V

    const-string v0, "video_skip_result"

    const/4 v10, 0x3

    .line 225
    invoke-virtual {v1, v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->os(I)V

    const-string v0, "is_ec_mall"

    .line 226
    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_1e

    const/4 v0, 0x1

    goto :goto_9

    :cond_1e
    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->z(Z)V

    .line 227
    new-instance v0, Lcom/byazt/ete/bx;

    invoke-direct {v0, v1}, Lcom/byazt/ete/bx;-><init>(Lorg/json/JSONObject;)V

    .line 228
    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/bx;)V

    .line 229
    invoke-virtual {v0}, Lcom/byazt/ete/bx;->c()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 230
    invoke-static {}, Lcom/byazt/omf/p;->n()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, -0x2

    .line 231
    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->q(I)V

    goto :goto_a

    :cond_1f
    const/4 v6, 0x0

    .line 232
    invoke-virtual {v7, v6}, Lcom/byazt/ete/ic;->q(I)V

    .line 233
    :cond_20
    :goto_a
    new-instance v0, Lcom/byazt/ete/xd;

    invoke-direct {v0, v1}, Lcom/byazt/ete/xd;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/xd;)V

    .line 234
    new-instance v0, Lcom/byazt/ete/qy;

    const/4 v6, 0x1

    invoke-direct {v0, v1, v6}, Lcom/byazt/ete/qy;-><init>(Lorg/json/JSONObject;Z)V

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/qy;)V

    .line 235
    new-instance v0, Lcom/byazt/ete/cu;

    invoke-direct {v0, v1}, Lcom/byazt/ete/cu;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/cu;)V

    .line 236
    invoke-static {v7, v1}, Lcom/byazt/omf/c;->c(Lcom/byazt/ete/ic;Lorg/json/JSONObject;)V

    const-string v0, "skip_control"

    .line 237
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v6, "position"

    if-eqz v0, :cond_21

    .line 238
    new-instance v10, Lcom/byazt/ete/iu;

    invoke-direct {v10}, Lcom/byazt/ete/iu;-><init>()V

    .line 239
    invoke-virtual {v0, v6, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/byazt/ete/iu;->c(I)V

    const-string v11, "left_or_right_margin"

    const/16 v12, 0x10

    .line 240
    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/byazt/ete/iu;->tt(I)V

    const-string v11, "top_or_bottom_margin"

    const/16 v12, 0x1e

    .line 241
    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/byazt/ete/iu;->ve(I)V

    const-string v11, "skip_style"

    const/4 v12, 0x1

    .line 242
    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/byazt/ete/iu;->uj(I)V

    const-string v11, "hide_native_skip_logo"

    const/4 v12, 0x0

    .line 243
    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/byazt/ete/iu;->n(I)V

    .line 244
    invoke-virtual {v7, v10}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/iu;)V

    :cond_21
    const-string v0, "shake_value"

    const/16 v10, 0xd

    .line 245
    invoke-virtual {v1, v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->to(I)V

    const-string v0, "deep_shake_value"

    .line 246
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->oz(I)V

    const-string v0, "rotation_angle"

    const/16 v10, 0x32

    .line 247
    invoke-virtual {v1, v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->tk(I)V

    const-string v0, "dynamic_join_type"

    const/4 v10, 0x0

    .line 248
    invoke-virtual {v1, v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->sv(I)V

    const-string v0, "dynamic_join_duration"

    .line 249
    invoke-virtual {v1, v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->aw(I)V

    const-string v0, "calculation_method"

    .line 250
    invoke-virtual {v1, v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->h(I)V

    const-string v0, "splash_compliance_bar"

    .line 251
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 252
    new-instance v11, Lcom/byazt/ete/r;

    invoke-direct {v11}, Lcom/byazt/ete/r;-><init>()V

    const-string v12, "show_type"

    .line 253
    invoke-virtual {v0, v12, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/byazt/ete/r;->c(I)V

    const-string v10, "blank"

    const/16 v12, 0x5a

    .line 254
    invoke-virtual {v0, v10, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v11, v10}, Lcom/byazt/ete/r;->tt(I)V

    const-string v10, "half_blank"

    .line 255
    invoke-virtual {v0, v10, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/byazt/ete/r;->ve(I)V

    .line 256
    invoke-virtual {v7, v11}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/r;)V

    :cond_22
    const-string v0, "show_poll_time"

    const/high16 v10, -0x80000000

    .line 257
    invoke-virtual {v1, v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->kk(I)V

    const-string v0, "adm"

    .line 258
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->u(Ljava/lang/String;)V

    move-object/from16 v10, v16

    .line 259
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->sp(Z)V

    const-string v0, "log_ext"

    .line 260
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->da(Ljava/lang/String;)V

    const-string v0, "cache_ext"

    .line 261
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->x(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_23

    invoke-virtual {v7}, Lcom/byazt/ete/ic;->oz()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 264
    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->i(Ljava/lang/String;)V

    :cond_23
    const-string v0, "cache_time"

    .line 265
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Lcom/byazt/ete/ic;->c(J)V

    const-string v0, "material_key"

    .line 266
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->sl(Ljava/lang/String;)V

    const-string v0, "need_get_materials"

    .line 267
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->x(Z)V

    const-string v0, "s_send_ts"

    .line 268
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Lcom/byazt/ete/ic;->ve(J)V

    const-string v0, "wc_miniapp_info"

    .line 269
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/ete/hq;->c(Lorg/json/JSONObject;)Lcom/byazt/ete/hq;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/hq;)V

    const-string v0, "live_room_id"

    .line 270
    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->pf(Ljava/lang/String;)V

    const-string v0, "ad_type"

    const/4 v4, 0x0

    .line 271
    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->tx(I)V

    const-string v0, "live_interaction_type"

    const/4 v4, 0x1

    .line 272
    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->v(I)V

    const-string v0, "ec_schema"

    .line 273
    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->yp(Ljava/lang/String;)V

    const-string v0, "draw_video_playcount"

    .line 274
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->nu(I)V

    const-string v0, "dynamic_join_coupon_style"

    .line 275
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 276
    new-instance v3, Lcom/byazt/ete/z;

    invoke-direct {v3}, Lcom/byazt/ete/z;-><init>()V

    const-string v4, "style_type"

    .line 277
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/byazt/ete/z;->c(I)V

    const-string v4, "image_url"

    .line 278
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/byazt/ete/z;->c(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/byazt/ete/z;->tt(I)V

    const-string v4, "image_height"

    .line 280
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/byazt/ete/z;->c(D)V

    const-string v4, "image_gif_url"

    .line 281
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/byazt/ete/z;->tt(Ljava/lang/String;)V

    const-string v4, "image_scale_rate"

    .line 282
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/byazt/ete/z;->tt(D)V

    const-string v4, "image_gif_aspect_ratio"

    .line 283
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/byazt/ete/z;->ve(D)V

    .line 284
    invoke-virtual {v7, v3}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/z;)V

    :cond_24
    const-string v0, "ecom_live_params"

    .line 285
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->bx(Ljava/lang/String;)V

    const-string v0, "group_info"

    .line 286
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->ve(Lorg/json/JSONObject;)V

    .line 287
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/ete/yp;->c(Lorg/json/JSONObject;)Lcom/byazt/ete/yp;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/yp;)V

    const-string v0, "live_info"

    .line 288
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/ete/sv;->c(Lorg/json/JSONObject;)Lcom/byazt/ete/sv;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/sv;)V

    const-string v0, "saas_info"

    .line 289
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/ete/q;->c(Lorg/json/JSONObject;)Lcom/byazt/ete/q;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/q;)V

    const-string v0, "saas_on_click_material"

    .line 290
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/ete/kk;->c(Lorg/json/JSONObject;)Lcom/byazt/ete/kk;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/kk;)V

    const-string v0, "live_sdk_status_while_first_click"

    const/16 v2, -0x3e9

    .line 291
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->iu(I)V

    const-string v0, "video_config"

    .line 292
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 293
    new-instance v2, Lcom/byazt/ete/j;

    invoke-direct {v2}, Lcom/byazt/ete/j;-><init>()V

    const-string v3, "video_adapter_type"

    const/4 v4, 0x1

    .line 294
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/byazt/ete/j;->c(I)V

    const-string v3, "video_mute_type"

    .line 295
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/byazt/ete/j;->tt(I)V

    .line 296
    invoke-virtual {v7, v2}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/j;)V

    :cond_25
    const-string v0, "click_trigger_config"

    .line 297
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 298
    new-instance v2, Lcom/byazt/ete/sl;

    invoke-direct {v2}, Lcom/byazt/ete/sl;-><init>()V

    const-string v3, "click_trigger_type"

    .line 299
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/byazt/ete/sl;->c(I)V

    const-string v3, "shake_start_time"

    .line 300
    invoke-virtual {v0, v3, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/byazt/ete/sl;->c(F)V

    const-string v3, "shake_end_time"

    const-wide/high16 v4, 0x41e0000000000000L    # 2.147483648E9

    .line 301
    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-float v0, v3

    invoke-virtual {v2, v0}, Lcom/byazt/ete/sl;->tt(F)V

    .line 302
    invoke-virtual {v7, v2}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/sl;)V

    :cond_26
    const-string v0, "calculation_method_twist"

    .line 303
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->d(I)V

    const-string v0, "dynamic_configs"

    .line 304
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->nb(Ljava/lang/String;)V

    const-string v0, "gnd_prefetch_timing"

    .line 305
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->r(I)V

    const-string v0, "gnd_prefetch_cache_key"

    .line 306
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->aw(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v7}, Lcom/byazt/ete/ic;->yt()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_27

    .line 308
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 309
    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->c(Ljava/util/Map;)V

    .line 310
    :cond_27
    invoke-virtual {v7}, Lcom/byazt/ete/ic;->mk()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_28

    const-string v3, "ad_token"

    .line 311
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    invoke-static {}, Lcom/byazt/omf/uj;->c()Lcom/byazt/omf/uj;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/byazt/omf/uj;->tt(Ljava/lang/String;)V

    :cond_28
    if-eqz v17, :cond_29

    .line 313
    invoke-static {v7}, Lcom/byazt/ete/p;->c(Lcom/byazt/ete/ic;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 314
    invoke-static {v7}, Lcom/byazt/ete/p;->uj(Lcom/byazt/ete/ic;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "style_category"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29
    const-string v0, "applist_info"

    .line 315
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->u(Lorg/json/JSONObject;)V

    const-string v0, "click_freq"

    .line 316
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->s(I)V

    const-string v0, "if_lpua_package"

    .line 317
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->y(I)V

    const-string v0, "twist_config"

    .line 318
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->i(Lorg/json/JSONObject;)V

    const-string v0, "shake_interact_conf"

    .line 319
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->da(Lorg/json/JSONObject;)V

    const-string v0, "twist_interact_conf"

    .line 320
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->sl(Lorg/json/JSONObject;)V

    .line 321
    invoke-static/range {p0 .. p0}, Lcom/byazt/ete/h;->c(Lorg/json/JSONObject;)Lcom/byazt/ete/h;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/h;)V

    const-string v0, "sdk_derive_info"

    .line 322
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->c(Lorg/json/JSONObject;)V

    const-string v0, "disable_video_join"

    .line 323
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->n(I)V

    const-string v0, "disable_top_bar"

    .line 324
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->x(I)V

    const-string v0, "disable_rtn_button"

    .line 325
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->i(I)V

    const-string v0, "web_monitor_rate"

    const/4 v2, 0x0

    .line 326
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->tt(I)V

    const-string v0, "disable_slide_return"

    .line 327
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->sp(I)V

    const-string v0, "is_height_resize"

    const/4 v3, 0x1

    .line 328
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->j(I)V

    const-string v0, "disable_safe_area"

    .line 329
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->tt(Z)V

    const-string v0, "haptic"

    .line 330
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_2a

    const/4 v8, 0x0

    .line 331
    :goto_b
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v8, v2, :cond_2a

    .line 332
    new-instance v2, Lcom/byazt/ete/eo;

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/byazt/ete/eo;-><init>(Lorg/json/JSONObject;)V

    .line 333
    invoke-virtual {v7, v2}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/eo;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_2a
    const-string v0, "fix_click_sequence"

    .line 334
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->ve(I)V

    const-string v0, "_meta_life_record"

    .line 335
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->t(Lorg/json/JSONObject;)V

    if-lez p3, :cond_2b

    move/from16 v0, p3

    goto :goto_c

    :cond_2b
    const-string v0, "_ad_index"

    const/4 v2, 0x1

    .line 336
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    :goto_c
    invoke-virtual {v7, v0}, Lcom/byazt/ete/ic;->bm(I)V

    return-object v7
.end method

.method private static c(Lorg/json/JSONObject;I)Lcom/byazt/ete/s;
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 363
    :cond_0
    new-instance v0, Lcom/byazt/ete/s;

    invoke-direct {v0}, Lcom/byazt/ete/s;-><init>()V

    const-string v1, "splash_clickarea"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 364
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    cmpl-double v1, v4, v2

    if-eqz v1, :cond_1

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    cmpl-double v1, v4, v6

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-wide v2, v4

    :goto_0
    double-to-int v1, v2

    .line 365
    invoke-virtual {v0, v1}, Lcom/byazt/ete/s;->c(I)V

    const-string v1, "splash_style_id"

    const/4 v2, 0x0

    .line 366
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/ete/s;->sp(I)V

    const-string v1, "splash_clicktext"

    const-string v3, ""

    .line 367
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/ete/s;->c(Ljava/lang/String;)V

    const-string v1, "area_height"

    const/16 v3, 0x32

    .line 368
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/ete/s;->tt(I)V

    const-string v1, "area_width"

    const/16 v3, 0xec

    .line 369
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/ete/s;->ve(I)V

    const/4 v1, 0x2

    const-string v3, "area_blank_height"

    if-ne p1, v1, :cond_2

    const/16 v1, 0x20

    .line 370
    invoke-virtual {p0, v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/ete/s;->uj(I)V

    goto :goto_1

    :cond_2
    const/16 v1, 0x52

    .line 371
    invoke-virtual {p0, v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/ete/s;->uj(I)V

    :goto_1
    const-string v1, "half_blank_height"

    const/16 v3, 0x38

    .line 372
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/ete/s;->n(I)V

    const-string v1, "btn_background_dest_color"

    const-string v3, "#008DEA"

    .line 373
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/ete/s;->tt(Ljava/lang/String;)V

    const-string v1, "top_splash_clicktext"

    .line 374
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/ete/s;->ve(Ljava/lang/String;)V

    const-string v1, "text_config"

    .line 375
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/ete/s;->c(Lorg/json/JSONObject;)V

    const-string v1, "top_text_config"

    .line 376
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/ete/s;->tt(Lorg/json/JSONObject;)V

    const-string v1, "sliding_distance"

    const/4 v3, 0x5

    .line 377
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/ete/s;->x(I)V

    const-string v1, "slide_area"

    .line 378
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/byazt/ete/s;->c(Lorg/json/JSONObject;I)V

    const-string p1, "splash_load_time_optimization"

    .line 379
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/byazt/ete/s;->a(I)V

    const-string p1, "mock_interact"

    .line 380
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_3

    :try_start_0
    const-string p1, "enable_ratio"

    const-wide/16 v3, 0x0

    .line 381
    invoke-virtual {p0, p1, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    double-to-float p1, v5

    invoke-virtual {v0, p1}, Lcom/byazt/ete/s;->c(F)V

    const-string p1, "backup_add"

    .line 382
    invoke-virtual {p0, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/byazt/ete/s;->i(I)V

    const-string p1, "slide_direction"

    .line 383
    invoke-virtual {p0, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/byazt/ete/s;->da(I)V

    const-string p1, "slide_threshold"

    const/16 v1, 0x37

    .line 384
    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/byazt/ete/s;->sl(I)V

    const-string p1, "view_height_dynamic"

    .line 385
    invoke-virtual {p0, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/byazt/ete/s;->t(I)V

    const-string p1, "view_height_percent"

    .line 386
    invoke-virtual {p0, p1, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-float p1, v3

    invoke-virtual {v0, p1}, Lcom/byazt/ete/s;->tt(F)V

    const-string p1, "view_post"

    const/16 v1, 0x64

    .line 387
    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/byazt/ete/s;->u(I)V

    const-string p1, "ignore_up"

    .line 388
    invoke-virtual {p0, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/byazt/ete/s;->yp(I)V

    const-string p1, "long_press_duration"

    .line 389
    invoke-virtual {p0, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/byazt/ete/s;->z(I)V

    const-string p1, "long_press_threshold"

    const/16 v1, 0xa

    .line 390
    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/byazt/ete/s;->m(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p0, "SplashControl"

    const-string p1, "interact parse error"

    .line 391
    invoke-static {p0, p1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-object v0
.end method

.method private static c(Lorg/json/JSONObject;Lcom/byazt/ete/ic;)Lcom/byazt/seg/c;
    .locals 1

    .line 337
    new-instance p1, Lcom/byazt/seg/c;

    invoke-direct {p1}, Lcom/byazt/seg/c;-><init>()V

    const-string v0, "id"

    .line 338
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/byazt/seg/c;->c(Ljava/lang/String;)V

    const-string v0, "md5"

    .line 339
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/byazt/seg/c;->tt(Ljava/lang/String;)V

    const-string v0, "url"

    .line 340
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/byazt/seg/c;->ve(Ljava/lang/String;)V

    const-string v0, "scene"

    .line 341
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/byazt/seg/c;->c(I)V

    return-object p1
.end method

.method private static c(Lcom/byazt/ete/ic;Lorg/json/JSONObject;)V
    .locals 3

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 342
    :cond_0
    invoke-static {p0}, Lcom/byazt/ete/bx;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/byazt/ete/to;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 343
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->yp()Lcom/byazt/ete/nu;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v1, "reward_live_deep_link_params"

    .line 344
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 345
    new-instance v2, Lcom/byazt/ete/pf;

    invoke-direct {v2}, Lcom/byazt/ete/pf;-><init>()V

    if-eqz v1, :cond_3

    const-string v0, "reward_live_deep_link_user_id"

    .line 346
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/byazt/ete/pf;->c(Ljava/lang/String;)V

    const-string v0, "reward_live_deep_link_request_id"

    .line 347
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/byazt/ete/pf;->n(Ljava/lang/String;)V

    const-string v0, "reward_live_deep_link_room_id"

    .line 348
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/byazt/ete/pf;->tt(Ljava/lang/String;)V

    const-string v0, "reawrd_live_short_touch_params"

    .line 349
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/byazt/ete/pf;->ve(Ljava/lang/String;)V

    const-string v0, "reawrd_live_extra_pangle_scheme_params"

    .line 350
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/byazt/ete/pf;->uj(Ljava/lang/String;)V

    const-string v0, "reward_live_last_time"

    .line 351
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/byazt/ete/pf;->c(J)V

    .line 352
    invoke-virtual {p0, v2}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/pf;)V

    goto :goto_0

    .line 353
    :cond_3
    invoke-virtual {v0}, Lcom/byazt/ete/nu;->tt()Ljava/lang/String;

    move-result-object v0

    .line 354
    invoke-static {v0}, Lcom/byazt/aas/bx;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 355
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_4

    goto :goto_1

    :cond_4
    const-string v1, "user_id"

    .line 356
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/byazt/ete/pf;->c(Ljava/lang/String;)V

    const-string v1, "request_id"

    .line 357
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/byazt/ete/pf;->n(Ljava/lang/String;)V

    const-string v1, "room_id"

    .line 358
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/byazt/ete/pf;->tt(Ljava/lang/String;)V

    const-string v1, "live_short_touch_params"

    .line 359
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/byazt/ete/pf;->ve(Ljava/lang/String;)V

    const-string v1, "extra_pangle_scheme_params"

    .line 360
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/byazt/ete/pf;->uj(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0, v2}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/pf;)V

    :goto_0
    const-string v0, "not_valid_download_url"

    const/4 v1, 0x0

    .line 362
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/byazt/ete/ic;->u(Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method public static c(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/ete/ic;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 411
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_1

    .line 412
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 413
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 414
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/ete/ic;

    .line 415
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->yg()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 416
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 417
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/byazt/ete/ic;->sv(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static n(Lorg/json/JSONObject;)Lcom/byazt/ete/a;
    .locals 7

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/byazt/ete/a;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/byazt/ete/a;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "developer_name"

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/byazt/ete/a;->uj(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v1, "app_version"

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/byazt/ete/a;->tt(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "permissions"

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const/4 v2, 0x0

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-lez v3, :cond_2

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/byazt/ete/a;->tt(Lorg/json/JSONArray;)V

    .line 44
    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-ge v3, v4, :cond_2

    .line 52
    .line 53
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    if-eqz v4, :cond_1

    .line 58
    .line 59
    const-string v5, "permission_name"

    .line 60
    .line 61
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    const-string v6, "permission_desc"

    .line 66
    .line 67
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v0, v5, v4}, Lcom/byazt/ete/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    const-string v1, "permissions_url"

    .line 78
    .line 79
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Lcom/byazt/ete/a;->c(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const-string v1, "score"

    .line 87
    .line 88
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    int-to-float v1, v1

    .line 93
    invoke-virtual {v0, v1}, Lcom/byazt/ete/a;->c(F)V

    .line 94
    .line 95
    .line 96
    const-string v1, "creative_tags"

    .line 97
    .line 98
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Lcom/byazt/ete/a;->c(Lorg/json/JSONArray;)V

    .line 103
    .line 104
    .line 105
    const-string v1, "privacy_policy_url"

    .line 106
    .line 107
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Lcom/byazt/ete/a;->n(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const-string v1, "desc_url"

    .line 115
    .line 116
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Lcom/byazt/ete/a;->a(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    const-string v1, "reg_number"

    .line 124
    .line 125
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v0, v1}, Lcom/byazt/ete/a;->sp(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const-string v1, "reg_url"

    .line 133
    .line 134
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v0, v1}, Lcom/byazt/ete/a;->x(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    const-string v1, "app_name"

    .line 142
    .line 143
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {v0, v1}, Lcom/byazt/ete/a;->da(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    const-string v1, "package_name"

    .line 151
    .line 152
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    invoke-virtual {v0, p0}, Lcom/byazt/ete/a;->i(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    return-object v0
.end method

.method private static sp(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    return-object v0
.end method

.method private static tt(Lcom/byazt/ete/ic;I)I
    .locals 2

    const/4 v0, 0x3

    const/16 v1, 0xc8

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p0}, Lcom/byazt/ete/bx;->c(Lcom/byazt/ete/ic;)Z

    move-result p1

    if-nez p1, :cond_1

    const/16 p0, 0x1a0

    return p0

    .line 10
    :cond_1
    invoke-static {p0}, Lcom/byazt/ete/bx;->sp(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x1a1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private static tt(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/ete/zb;",
            ">;)I"
        }
    .end annotation

    if-nez p0, :cond_0

    const/16 p0, 0x199

    return p0

    .line 12
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    const/16 p0, 0x19a

    return p0

    .line 13
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/ete/zb;

    if-nez v0, :cond_3

    const/16 p0, 0x19b

    return p0

    .line 14
    :cond_3
    invoke-virtual {v0}, Lcom/byazt/ete/zb;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p0, 0x19c

    return p0

    :cond_4
    const/16 p0, 0xc8

    return p0
.end method

.method public static tt(Lorg/json/JSONObject;)Lcom/byazt/ete/n;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Lcom/byazt/ete/n;

    invoke-direct {v0}, Lcom/byazt/ete/n;-><init>()V

    const-string v1, "app_name"

    .line 2
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/ete/n;->ve(Ljava/lang/String;)V

    const-string v1, "package_name"

    .line 3
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/ete/n;->uj(Ljava/lang/String;)V

    const-string v1, "download_url"

    .line 4
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/ete/n;->tt(Ljava/lang/String;)V

    const-string v1, "score"

    const/4 v2, 0x4

    .line 5
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/ete/n;->c(I)V

    const-string v1, "comment_num"

    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/ete/n;->tt(I)V

    const-string v1, "app_size"

    .line 7
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/ete/n;->ve(I)V

    const-string v1, "quick_app_url"

    const-string v2, ""

    .line 8
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/byazt/ete/n;->c(Ljava/lang/String;)V

    return-object v0
.end method

.method public static uj(Lorg/json/JSONObject;)Lcom/byazt/ete/yv;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/byazt/ete/yv;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/byazt/ete/yv;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "bg_url"

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/byazt/ete/yv;->uj(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v1, "title"

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/byazt/ete/yv;->ve(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "reward_image_url"

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/byazt/ete/yv;->c(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v1, "reward_title"

    .line 38
    .line 39
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Lcom/byazt/ete/yv;->tt(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v1, "subtitle"

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {v0, p0}, Lcom/byazt/ete/yv;->n(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object v0
.end method

.method public static ve(Lorg/json/JSONObject;)Lcom/byazt/ete/zm;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/byazt/ete/zm;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/byazt/ete/zm;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "ugen_dialog_md5"

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/byazt/ete/zm;->ve(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v1, "ugen_dialog_url"

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/byazt/ete/zm;->tt(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "dialog_style"

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {v0, p0}, Lcom/byazt/ete/zm;->c(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-object v0
.end method

.method private static x(Lorg/json/JSONObject;)I
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/byazt/ppf/ve;->c(Lorg/json/JSONObject;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "download"

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x4

    .line 12
    if-eqz v0, :cond_4

    .line 13
    .line 14
    const-string v0, "app"

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v2, "package_name"

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :cond_1
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {v2, v0}, Lcom/byazt/hu/u;->n(Landroid/content/Context;Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    return v1

    .line 51
    :cond_2
    const-string v0, "market_url"

    .line 52
    .line 53
    const-string v1, ""

    .line 54
    .line 55
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    const/4 v1, 0x2

    .line 64
    if-eqz v0, :cond_4

    .line 65
    .line 66
    invoke-static {p0}, Lcom/byazt/bzd/tt;->c(Lorg/json/JSONObject;)Z

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    if-eqz p0, :cond_3

    .line 71
    .line 72
    return v1

    .line 73
    :cond_3
    const/4 p0, 0x1

    .line 74
    return p0

    .line 75
    :cond_4
    return v1
.end method
