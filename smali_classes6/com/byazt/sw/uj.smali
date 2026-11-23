.class public Lcom/byazt/sw/uj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x364,
        0xf
    }
.end annotation


# static fields
.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/byazt/oce/c;",
            "Lcom/byazt/afw/nu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/byazt/sw/uj;->c:Ljava/util/Map;

    .line 11
    .line 12
    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;Lcom/byazt/jzl/a;J)I
    .locals 7

    .line 34
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->xx()I

    move-result p0

    .line 35
    invoke-static {p0}, Lcom/byazt/bzd/sl;->c(I)Lcom/byazt/fk/c;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p0, :cond_7

    .line 36
    invoke-virtual {p1}, Lcom/byazt/jzl/a;->isPreloadAll()Z

    move-result p0

    .line 37
    invoke-virtual {p1}, Lcom/byazt/jzl/a;->getPreloadSize()I

    move-result v0

    .line 38
    invoke-virtual {p1}, Lcom/byazt/jzl/a;->getVideoSize()J

    move-result-wide v3

    if-eqz p0, :cond_0

    long-to-int v0, v3

    .line 39
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/jzl/a;->getPitayaCacheSize()I

    move-result p0

    if-lez p0, :cond_1

    move v0, p0

    :cond_1
    int-to-long p0, v0

    const/4 v5, 0x0

    cmp-long v6, p2, p0

    if-ltz v6, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    cmp-long p1, p2, v3

    if-ltz p1, :cond_3

    const/4 v5, 0x1

    :cond_3
    const-wide/16 v3, 0x0

    cmp-long p1, p2, v3

    if-eqz p1, :cond_6

    if-eqz v5, :cond_4

    const/4 v1, 0x4

    goto :goto_1

    :cond_4
    if-eqz p0, :cond_5

    if-eqz v0, :cond_5

    const/4 v1, 0x5

    goto :goto_1

    :cond_5
    const/4 v1, 0x1

    :cond_6
    :goto_1
    return v1

    :cond_7
    if-ne p0, v2, :cond_9

    .line 40
    invoke-interface {v0, p1}, Lcom/byazt/fk/c;->isVideoCached(Lcom/byazt/fk/u;)Z

    move-result p0

    if-eqz p0, :cond_8

    return v2

    :cond_8
    return v1

    :cond_9
    const/4 p0, 0x3

    return p0
.end method

.method public static synthetic c(Lcom/byazt/jzl/a;)J
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/byazt/sw/uj;->ve(Lcom/byazt/jzl/a;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .line 41
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Lcom/byazt/ete/ic;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/byazt/sw/uj;->tt(Lcom/byazt/ete/ic;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/byazt/oce/c;)Ljava/lang/String;
    .locals 2

    const-string v0, "empty"

    if-nez p0, :cond_0

    return-object v0

    .line 44
    :cond_0
    sget-object v1, Lcom/byazt/sw/uj;->c:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/byazt/afw/nu;

    if-nez p0, :cond_1

    return-object v0

    .line 45
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/afw/nu;->tt()Ljava/lang/String;

    move-result-object p0

    .line 46
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    return-object p0
.end method

.method public static c(Lcom/byazt/jzl/a;Ljava/lang/String;IILcom/byazt/ete/ic;J)Lorg/json/JSONObject;
    .locals 5

    .line 6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 7
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "session_id"

    .line 8
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    if-lez p2, :cond_1

    const-string p1, "play_type"

    .line 9
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    :cond_1
    invoke-static {p4}, Lcom/byazt/bzd/t;->c(Lcom/byazt/ete/ic;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "is_audio"

    const/4 p2, 0x1

    .line 11
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    if-eqz p0, :cond_5

    .line 12
    invoke-static {p4}, Lcom/byazt/ex/c;->c(Lcom/byazt/ete/ic;)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "codec"

    if-eqz p1, :cond_3

    .line 13
    :try_start_1
    invoke-virtual {p4}, Lcom/byazt/ete/ic;->aw()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p0, 0x0

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {p0}, Lcom/byazt/jzl/a;->isH265()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 15
    invoke-virtual {p0}, Lcom/byazt/jzl/a;->getVideoH265()Lcom/byazt/fk/n;

    move-result-object p0

    const-string p1, "h265"

    .line 16
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 17
    :cond_4
    invoke-virtual {p0}, Lcom/byazt/jzl/a;->getVideoH264()Lcom/byazt/fk/n;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_5

    const-string p1, "video_resolution"

    .line 18
    invoke-interface {p0}, Lcom/byazt/fk/n;->getResolution()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "video_size"

    .line 19
    invoke-interface {p0}, Lcom/byazt/fk/n;->getSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    invoke-interface {p0}, Lcom/byazt/fk/n;->getVideo_url()Ljava/lang/String;

    move-result-object p1

    const-string p2, "video_url"

    .line 21
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    invoke-static {p1}, Lcom/byazt/aas/nb;->z(Ljava/lang/String;)Z

    move-result p1

    const-string p2, "is_expired"

    .line 23
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 24
    invoke-static {p4}, Lcom/byazt/aas/nb;->z(Lcom/byazt/ete/ic;)D

    move-result-wide p1

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double p1, p1, v3

    sub-double/2addr v1, p1

    const-string p1, "send_duration"

    .line 26
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p1, "start_duration"

    .line 27
    invoke-virtual {v0, p1, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "player_type"

    .line 28
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "play_speed_ratio"

    .line 29
    invoke-interface {p0}, Lcom/byazt/fk/n;->getPlay_speed_ratio()F

    move-result p2

    float-to-double p2, p2

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 30
    invoke-interface {p0}, Lcom/byazt/fk/n;->getStart()D

    move-result-wide p1

    const-wide/16 p5, 0x0

    cmpl-double p3, p1, p5

    if-lez p3, :cond_5

    const-string p1, "start"

    .line 31
    invoke-interface {p0}, Lcom/byazt/fk/n;->getStart()D

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_5
    if-eqz p4, :cond_6

    const-string p0, "dynamic_join_type"

    .line 32
    invoke-virtual {p4}, Lcom/byazt/ete/ic;->il()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_6
    return-object v0
.end method

.method public static c(Lcom/byazt/afw/tt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/afw/tt<",
            "Lcom/byazt/afw/t;",
            ">;)V"
        }
    .end annotation

    const-string v0, "load_video_start"

    .line 33
    invoke-static {p0, v0}, Lcom/byazt/sw/uj;->tt(Lcom/byazt/afw/tt;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/afw/tt;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lcom/byazt/sw/uj;->tt(Lcom/byazt/afw/tt;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/afw/tt;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 4
    invoke-static {p0, p1, p2}, Lcom/byazt/sw/uj;->tt(Lcom/byazt/afw/tt;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/ete/ic;Lcom/byazt/jzl/a;Lcom/byazt/afw/nu$c;)V
    .locals 0

    .line 5
    invoke-static {p0, p1, p2}, Lcom/byazt/sw/uj;->tt(Lcom/byazt/ete/ic;Lcom/byazt/jzl/a;Lcom/byazt/afw/nu$c;)V

    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;Lcom/byazt/oce/c;Lcom/byazt/jzl/a;ZLjava/lang/String;)V
    .locals 8

    .line 42
    invoke-static {}, Lcom/byazt/sw/ve;->c()Lcom/byazt/sw/ve;

    move-result-object v0

    new-instance v7, Lcom/byazt/sw/uj$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/byazt/sw/uj$1;-><init>(Lcom/byazt/ete/ic;Lcom/byazt/oce/c;Lcom/byazt/jzl/a;Ljava/lang/String;Z)V

    invoke-virtual {v0, v7}, Lcom/byazt/sw/ve;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c(Lcom/byazt/oce/c;Lcom/byazt/afw/nu$c;)V
    .locals 2

    .line 43
    invoke-static {}, Lcom/byazt/sw/ve;->c()Lcom/byazt/sw/ve;

    move-result-object v0

    new-instance v1, Lcom/byazt/sw/uj$4;

    invoke-direct {v1, p0, p1}, Lcom/byazt/sw/uj$4;-><init>(Lcom/byazt/oce/c;Lcom/byazt/afw/nu$c;)V

    invoke-virtual {v0, v1}, Lcom/byazt/sw/ve;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c(Lcom/byazt/oce/c;Lcom/byazt/afw/nu$c;I)V
    .locals 2

    .line 47
    invoke-static {}, Lcom/byazt/sw/ve;->c()Lcom/byazt/sw/ve;

    move-result-object v0

    new-instance v1, Lcom/byazt/sw/uj$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/byazt/sw/uj$5;-><init>(Lcom/byazt/oce/c;Lcom/byazt/afw/nu$c;I)V

    invoke-virtual {v0, v1}, Lcom/byazt/sw/ve;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c(Lcom/byazt/oce/c;Lcom/byazt/afw/nu$c;Ljava/lang/String;IZ)V
    .locals 8

    .line 48
    invoke-static {}, Lcom/byazt/sw/ve;->c()Lcom/byazt/sw/ve;

    move-result-object v0

    new-instance v7, Lcom/byazt/sw/uj$7;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move-object v5, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/byazt/sw/uj$7;-><init>(Lcom/byazt/oce/c;Lcom/byazt/afw/nu$c;ILjava/lang/String;Z)V

    invoke-virtual {v0, v7}, Lcom/byazt/sw/ve;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c(Lcom/byazt/oce/c;Lcom/byazt/afw/nu$c;Ljava/util/Map;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/oce/c;",
            "Lcom/byazt/afw/nu$c;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 49
    invoke-static {}, Lcom/byazt/sw/ve;->c()Lcom/byazt/sw/ve;

    move-result-object v0

    new-instance v1, Lcom/byazt/sw/uj$9;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/byazt/sw/uj$9;-><init>(Lcom/byazt/oce/c;Lcom/byazt/afw/nu$c;ILjava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/byazt/sw/ve;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c(Lorg/json/JSONObject;Ljava/lang/Object;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 50
    :try_start_0
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 51
    check-cast p1, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    nop

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 52
    :try_start_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 53
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 55
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 56
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method public static n(Lcom/byazt/oce/c;Lcom/byazt/afw/nu$c;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/sw/ve;->c()Lcom/byazt/sw/ve;

    move-result-object v0

    new-instance v1, Lcom/byazt/sw/uj$11;

    invoke-direct {v1, p0, p1}, Lcom/byazt/sw/uj$11;-><init>(Lcom/byazt/oce/c;Lcom/byazt/afw/nu$c;)V

    invoke-virtual {v0, v1}, Lcom/byazt/sw/ve;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static n(Lcom/byazt/afw/tt;)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 2
    invoke-virtual {p0}, Lcom/byazt/afw/tt;->n()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3
    invoke-virtual {p0}, Lcom/byazt/afw/tt;->c()Lcom/byazt/ete/ic;

    move-result-object p0

    if-nez p0, :cond_0

    return v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->ij()Lcom/byazt/dj/tt;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/dj/tt;->qy()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 7
    :cond_2
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v2, p0, :cond_6

    .line 9
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "name"

    .line 10
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "content_did"

    .line 11
    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const-string v8, "content_utmsource"

    .line 12
    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const-string v8, "content_sdk_version"

    .line 13
    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_5

    const/4 v5, 0x1

    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    if-eqz v3, :cond_7

    if-eqz v4, :cond_7

    if-eqz v5, :cond_7

    return v6

    :cond_7
    return v0

    :catch_0
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_8
    return v0
.end method

.method public static declared-synchronized tt(Lcom/byazt/oce/c;)Lcom/byazt/jzl/a;
    .locals 3

    const-class v0, Lcom/byazt/sw/uj;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 16
    monitor-exit v0

    return-object v1

    .line 17
    :cond_0
    :try_start_0
    sget-object v2, Lcom/byazt/sw/uj;->c:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/byazt/afw/nu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    .line 18
    monitor-exit v0

    return-object v1

    .line 19
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/byazt/afw/nu;->uj()Lcom/byazt/jzl/a;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static tt(Lcom/byazt/ete/ic;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    return-object p1

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/byazt/aas/nb;->x(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    .line 5
    :cond_1
    invoke-static {p0}, Lcom/byazt/aas/nb;->i(Lcom/byazt/ete/ic;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, -0x1

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p0, "feed_break"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string p0, "feed_play"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string p0, "feed_over"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-object p1

    :pswitch_0
    const-string p0, "play_break"

    return-object p0

    :pswitch_1
    const-string p0, "play"

    return-object p0

    :pswitch_2
    const-string p0, "play_over"

    return-object p0

    :cond_5
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x61fc1d2b -> :sswitch_2
        -0x61fbcecb -> :sswitch_1
        0x21bf731e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic tt(Lcom/byazt/jzl/a;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/byazt/sw/uj;->uj(Lcom/byazt/jzl/a;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic tt()Ljava/util/Map;
    .locals 1

    .line 2
    sget-object v0, Lcom/byazt/sw/uj;->c:Ljava/util/Map;

    return-object v0
.end method

.method public static tt(Lcom/byazt/afw/tt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/afw/tt<",
            "Lcom/byazt/afw/u;",
            ">;)V"
        }
    .end annotation

    const-string v0, "load_video_success"

    .line 3
    invoke-static {p0, v0}, Lcom/byazt/sw/uj;->tt(Lcom/byazt/afw/tt;Ljava/lang/String;)V

    return-void
.end method

.method private static tt(Lcom/byazt/afw/tt;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-static {p0, p1, v0}, Lcom/byazt/sw/uj;->tt(Lcom/byazt/afw/tt;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private static tt(Lcom/byazt/afw/tt;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 9
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/afw/tt;->n()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/byazt/afw/tt;->tt()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p0}, Lcom/byazt/sw/uj;->n(Lcom/byazt/afw/tt;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 11
    invoke-virtual {p0}, Lcom/byazt/afw/tt;->tt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "draw_ad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "embeded_ad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "stream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 12
    :pswitch_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "customer_"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 13
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/byazt/afw/tt;->c()Lcom/byazt/ete/ic;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/byazt/sw/tt;->c(Ljava/lang/String;Lcom/byazt/ete/ic;)V

    .line 14
    invoke-virtual {p0}, Lcom/byazt/afw/tt;->c()Lcom/byazt/ete/ic;

    move-result-object v0

    invoke-virtual {p0}, Lcom/byazt/afw/tt;->tt()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/byazt/sw/uj$2;

    invoke-direct {v2, p0}, Lcom/byazt/sw/uj$2;-><init>(Lcom/byazt/afw/tt;)V

    invoke-static {v0, v1, p1, p2, v2}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/byazt/ya/c;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x352ab080 -> :sswitch_2
        -0x2a77c376 -> :sswitch_1
        0x72060cfe -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static tt(Lcom/byazt/ete/ic;Lcom/byazt/jzl/a;Lcom/byazt/afw/nu$c;)V
    .locals 2

    .line 15
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v0

    new-instance v1, Lcom/byazt/sw/uj$3;

    invoke-direct {v1, p1, p2, p0}, Lcom/byazt/sw/uj$3;-><init>(Lcom/byazt/jzl/a;Lcom/byazt/afw/nu$c;Lcom/byazt/ete/ic;)V

    const-string p0, "pangle_video_play_state"

    invoke-virtual {v0, v1, p0}, Lcom/byazt/ukr/yp;->tt(Lcom/byazt/ee/c;Ljava/lang/String;)V

    return-void
.end method

.method public static tt(Lcom/byazt/oce/c;Lcom/byazt/afw/nu$c;)V
    .locals 2

    .line 7
    invoke-static {}, Lcom/byazt/sw/ve;->c()Lcom/byazt/sw/ve;

    move-result-object v0

    new-instance v1, Lcom/byazt/sw/uj$6;

    invoke-direct {v1, p0, p1}, Lcom/byazt/sw/uj$6;-><init>(Lcom/byazt/oce/c;Lcom/byazt/afw/nu$c;)V

    invoke-virtual {v0, v1}, Lcom/byazt/sw/ve;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static uj(Lcom/byazt/jzl/a;)Ljava/lang/String;
    .locals 2

    .line 3
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/byazt/jzl/a;->getCacheParentDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/byazt/jzl/a;->getFileNameKey()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static uj(Lcom/byazt/afw/tt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/afw/tt<",
            "Lcom/byazt/afw/da;",
            ">;)V"
        }
    .end annotation

    const-string v0, "load_video_cancel"

    .line 1
    invoke-static {p0, v0}, Lcom/byazt/sw/uj;->tt(Lcom/byazt/afw/tt;Ljava/lang/String;)V

    return-void
.end method

.method public static uj(Lcom/byazt/oce/c;Lcom/byazt/afw/nu$c;)V
    .locals 2

    .line 2
    invoke-static {}, Lcom/byazt/sw/ve;->c()Lcom/byazt/sw/ve;

    move-result-object v0

    new-instance v1, Lcom/byazt/sw/uj$10;

    invoke-direct {v1, p0, p1}, Lcom/byazt/sw/uj$10;-><init>(Lcom/byazt/oce/c;Lcom/byazt/afw/nu$c;)V

    invoke-virtual {v0, v1}, Lcom/byazt/sw/ve;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static ve(Lcom/byazt/jzl/a;)J
    .locals 4

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/jzl/a;->isH265()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/byazt/jzl/a;->getVideoH265()Lcom/byazt/fk/n;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/byazt/jzl/a;->getVideoH264()Lcom/byazt/fk/n;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    .line 4
    invoke-interface {p0}, Lcom/byazt/fk/n;->getVideo_duration()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    :cond_2
    return-wide v0
.end method

.method public static ve(Lcom/byazt/afw/tt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/afw/tt<",
            "Lcom/byazt/afw/sl;",
            ">;)V"
        }
    .end annotation

    const-string v0, "load_video_error"

    .line 1
    invoke-static {p0, v0}, Lcom/byazt/sw/uj;->tt(Lcom/byazt/afw/tt;Ljava/lang/String;)V

    return-void
.end method

.method public static ve(Lcom/byazt/oce/c;Lcom/byazt/afw/nu$c;)V
    .locals 2

    .line 2
    invoke-static {}, Lcom/byazt/sw/ve;->c()Lcom/byazt/sw/ve;

    move-result-object v0

    new-instance v1, Lcom/byazt/sw/uj$8;

    invoke-direct {v1, p0, p1}, Lcom/byazt/sw/uj$8;-><init>(Lcom/byazt/oce/c;Lcom/byazt/afw/nu$c;)V

    invoke-virtual {v0, v1}, Lcom/byazt/sw/ve;->c(Ljava/lang/Runnable;)V

    return-void
.end method
