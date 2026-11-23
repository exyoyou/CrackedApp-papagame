.class public Lcom/byazt/vx/yv;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3c2,
        0x1f3
    }
.end annotation


# direct methods
.method public static c()Lorg/json/JSONObject;
    .locals 5

    const-string v0, "init_time"

    const/4 v1, 0x0

    .line 37
    :try_start_0
    invoke-static {}, Lcom/byazt/vx/yv;->ve()Lcom/byazt/it/ve;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    const-string v3, ""

    .line 38
    invoke-interface {v2, v0, v3}, Lcom/byazt/it/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 39
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 40
    invoke-interface {v2, v0}, Lcom/byazt/it/c;->remove(Ljava/lang/String;)V

    .line 41
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    :cond_1
    return-object v1
.end method

.method public static c(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    const/4 v0, 0x0

    .line 25
    :try_start_0
    invoke-static {}, Lcom/byazt/vx/yv;->ve()Lcom/byazt/it/ve;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v2, ""

    .line 26
    invoke-interface {v1, p0, v2}, Lcom/byazt/it/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 27
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 28
    invoke-interface {v1, p0}, Lcom/byazt/it/c;->remove(Ljava/lang/String;)V

    .line 29
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_1
    return-object v0
.end method

.method public static c(I)V
    .locals 2

    .line 61
    :try_start_0
    invoke-static {}, Lcom/byazt/vx/yv;->ve()Lcom/byazt/it/ve;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "init_count"

    .line 62
    invoke-interface {v0, v1, p0}, Lcom/byazt/it/c;->put(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static c(II)V
    .locals 7

    const-string v0, "force_clean_cnt"

    const-string v1, "clean_invalid_cnt"

    const-string v2, "low_m_cnt"

    .line 42
    :try_start_0
    invoke-static {}, Lcom/byazt/vx/yv;->ve()Lcom/byazt/it/ve;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x0

    .line 43
    invoke-interface {v3, v2, v4}, Lcom/byazt/it/c;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 44
    invoke-interface {v3, v1, v4}, Lcom/byazt/it/c;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 45
    invoke-interface {v3, v0, v4}, Lcom/byazt/it/c;->getInt(Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v6, p0

    add-int/2addr v4, p1

    .line 46
    invoke-interface {v3, v2, v5}, Lcom/byazt/it/c;->put(Ljava/lang/String;I)V

    .line 47
    invoke-interface {v3, v1, v6}, Lcom/byazt/it/c;->put(Ljava/lang/String;I)V

    .line 48
    invoke-interface {v3, v0, v4}, Lcom/byazt/it/c;->put(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static c(Ljava/lang/String;J)V
    .locals 4

    const-string v0, "init_time"

    .line 30
    :try_start_0
    invoke-static {}, Lcom/byazt/vx/yv;->ve()Lcom/byazt/it/ve;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v2, ""

    .line 31
    invoke-interface {v1, v0, v2}, Lcom/byazt/it/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 33
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    .line 34
    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 35
    :goto_0
    invoke-virtual {v2, p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 36
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, v0, p0}, Lcom/byazt/it/c;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static c(Ljava/lang/String;ZJLjava/lang/String;)V
    .locals 10

    const-string v0, "avg_req_duration"

    const-string v1, "error_code"

    const-string v2, "success"

    const-string v3, "fail"

    .line 1
    :try_start_0
    invoke-static {}, Lcom/byazt/vx/yv;->ve()Lcom/byazt/it/ve;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    const-string v5, ""

    .line 2
    invoke-interface {v4, p0, v5}, Lcom/byazt/it/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    .line 5
    :cond_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v6

    :goto_0
    const-string v6, "times"

    const/4 v7, 0x1

    const/4 v8, -0x1

    if-eqz p1, :cond_5

    .line 6
    :try_start_1
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_2

    .line 7
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 8
    invoke-virtual {v5, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    :cond_2
    invoke-virtual {p1, v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p4

    if-ne p4, v8, :cond_3

    goto :goto_1

    :cond_3
    add-int/2addr v7, p4

    .line 10
    :goto_1
    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-wide/16 v1, 0x2710

    cmp-long p4, p2, v1

    if-gtz p4, :cond_a

    .line 11
    invoke-virtual {p1, v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p4

    int-to-long v1, p4

    const-wide/16 v8, -0x1

    cmp-long p4, v1, v8

    if-nez p4, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 p4, v7, -0x1

    int-to-long v8, p4

    mul-long v1, v1, v8

    add-long/2addr v1, p2

    int-to-long p2, v7

    .line 12
    div-long p2, v1, p2

    .line 13
    :goto_2
    invoke-virtual {p1, v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_5

    .line 14
    :cond_5
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_6

    .line 15
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 16
    invoke-virtual {v5, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    :cond_6
    invoke-virtual {p1, v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v8, :cond_7

    const/4 p2, 0x1

    goto :goto_3

    :cond_7
    add-int/2addr p2, v7

    .line 18
    :goto_3
    invoke-virtual {p1, v6, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 19
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-nez p2, :cond_8

    .line 20
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 21
    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    :cond_8
    invoke-virtual {p2, p4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v8, :cond_9

    goto :goto_4

    :cond_9
    add-int/2addr v7, p1

    .line 23
    :goto_4
    invoke-virtual {p2, p4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 24
    :cond_a
    :goto_5
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v4, p0, p1}, Lcom/byazt/it/c;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-void
.end method

.method public static c(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "force_clean_cnt"

    const-string v1, "clean_invalid_cnt"

    const-string v2, "low_m_cnt"

    .line 49
    :try_start_0
    invoke-static {}, Lcom/byazt/vx/yv;->ve()Lcom/byazt/it/ve;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x0

    .line 50
    invoke-interface {v3, v2, v4}, Lcom/byazt/it/c;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 51
    invoke-interface {v3, v1, v4}, Lcom/byazt/it/c;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 52
    invoke-interface {v3, v0, v4}, Lcom/byazt/it/c;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 53
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 54
    invoke-virtual {v8, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "invalid_cnt"

    .line 55
    invoke-virtual {v8, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "force_cnt"

    .line 56
    invoke-virtual {v8, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "low_m_clean"

    .line 57
    invoke-interface {p0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-interface {v3, v2, v4}, Lcom/byazt/it/c;->put(Ljava/lang/String;I)V

    .line 59
    invoke-interface {v3, v1, v4}, Lcom/byazt/it/c;->put(Ljava/lang/String;I)V

    .line 60
    invoke-interface {v3, v0, v4}, Lcom/byazt/it/c;->put(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static tt()I
    .locals 3

    const/4 v0, 0x0

    .line 18
    :try_start_0
    invoke-static {}, Lcom/byazt/vx/yv;->ve()Lcom/byazt/it/ve;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    const-string v2, "init_count"

    .line 19
    invoke-interface {v1, v2, v0}, Lcom/byazt/it/c;->get(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return v0
.end method

.method public static tt(Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "gdt"

    const-string v1, "ks"

    const-string v2, ""

    :try_start_0
    const-string v3, "cb_test"

    .line 1
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 2
    invoke-static {v4}, Lcom/byazt/eu/c;->c(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v5, v3, v6}, Lcom/byazt/nys/tt;->tt(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 3
    invoke-interface {v5, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4
    invoke-interface {v5, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 5
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 6
    invoke-static {v4, v3, v6}, Lcom/byazt/nys/tt;->tt(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 7
    invoke-interface {v5, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-interface {v5, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 9
    :cond_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 10
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 11
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 12
    invoke-virtual {v2, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    :cond_2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 14
    invoke-virtual {v2, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    const-string v0, "cb_stacktrace"

    .line 15
    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 17
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static ve()Lcom/byazt/it/ve;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const-string v1, "gm_evt_upload_info"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/byazt/vif/uj;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/it/ve;

    .line 11
    .line 12
    .line 13
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :catchall_0
    :cond_0
    return-object v0
.end method
