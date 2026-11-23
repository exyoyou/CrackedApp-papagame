.class public final Lcom/byazt/iyp/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x399,
        0xd
    }
.end annotation


# direct methods
.method private static c()Landroid/app/Activity;
    .locals 2

    const/4 v0, 0x0

    .line 66
    :try_start_0
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/omf/x;->ve()Lcom/byazt/aas/c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {v1}, Lcom/byazt/aas/c;->c()Ljava/lang/ref/WeakReference;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 68
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    :cond_1
    return-object v0
.end method

.method public static c(Lcom/byazt/dj/tt;ZLjava/lang/String;)V
    .locals 15

    move-object/from16 v0, p2

    .line 1
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/byazt/iyp/ve;->c()F

    move-result v1

    invoke-static {v1, v0}, Lcom/byazt/iyp/x;->c(FLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/byazt/iyp/tt;->c()Landroid/app/Activity;

    move-result-object v1

    .line 4
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 5
    invoke-static {}, Lcom/byazt/iyp/uj;->a()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {v1}, Lcom/byazt/iyp/sl;->c(Landroid/content/Context;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-virtual {v1}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v4, :cond_2

    .line 10
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    move-object v11, v1

    move-object v10, v2

    move-object v8, v4

    goto :goto_0

    :cond_2
    move-object v11, v1

    move-object v10, v2

    move-object v8, v3

    :goto_0
    move-object v9, v5

    goto :goto_1

    :cond_3
    move-object v11, v2

    move-object v8, v3

    move-object v9, v8

    move-object v10, v9

    :goto_1
    if-eqz p0, :cond_4

    .line 12
    invoke-virtual {p0}, Lcom/byazt/dj/tt;->u()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    const-string v1, " "

    :goto_2
    move-object v14, v1

    if-eqz p1, :cond_5

    .line 13
    new-instance v1, Lcom/byazt/iyp/c$c;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v14}, Lcom/byazt/iyp/c$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/byazt/iyp/c;->c(Ljava/lang/String;Lcom/byazt/iyp/c$c;)V

    .line 14
    invoke-static {}, Lcom/byazt/iyp/ve;->n()F

    move-result v1

    invoke-static {v1, v0}, Lcom/byazt/iyp/x;->c(FLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 15
    invoke-static {}, Lcom/byazt/iyp/x;->c()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 16
    invoke-static {}, Lcom/byazt/iyp/ve;->tt()I

    move-result v2

    .line 17
    new-instance v3, Lcom/byazt/iyp/tt$1;

    const-string v4, "stage_feature"

    invoke-direct {v3, v4, v1, v2, v0}, Lcom/byazt/iyp/tt$1;-><init>(Ljava/lang/String;[Ljava/lang/StackTraceElement;ILjava/lang/String;)V

    invoke-static {v3}, Lcom/byazt/bzd/x;->c(Lcom/byazt/bwm/sp;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_5
    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;Ljava/lang/String;)V
    .locals 6

    if-eqz p0, :cond_7

    .line 18
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 19
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/byazt/iyp/ve;->c()F

    move-result v0

    invoke-virtual {p0}, Lcom/byazt/ete/ic;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/byazt/iyp/x;->c(FLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 20
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 21
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/byazt/iyp/c;->c(Ljava/lang/String;)Lcom/byazt/iyp/c$c;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "media_extra"

    const-string v3, " "

    if-eqz v1, :cond_4

    :try_start_1
    const-string v4, "top_page_title"

    .line 22
    iget-object v5, v1, Lcom/byazt/iyp/c$c;->c:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "top_page_name"

    .line 23
    iget-object v5, v1, Lcom/byazt/iyp/c$c;->tt:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "t_name"

    .line 24
    iget-object v5, v1, Lcom/byazt/iyp/c$c;->ve:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "has_window_focus"

    .line 25
    iget-object v5, v1, Lcom/byazt/iyp/c$c;->uj:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "call_chain"

    .line 26
    iget-object v5, v1, Lcom/byazt/iyp/c$c;->n:Lorg/json/JSONArray;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_2
    move-object v5, v3

    :goto_0
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "stack_hash"

    .line 27
    iget-object v5, v1, Lcom/byazt/iyp/c$c;->a:Ljava/lang/String;

    if-eqz v5, :cond_3

    move-object v3, v5

    :cond_3
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    iget-object v1, v1, Lcom/byazt/iyp/c$c;->sp:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "is_hit_chain"

    .line 29
    invoke-static {}, Lcom/byazt/iyp/ve;->n()F

    move-result v2

    invoke-virtual {p0}, Lcom/byazt/ete/ic;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/byazt/iyp/x;->c(FLjava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 30
    invoke-static {v0, v1}, Lcom/byazt/iyp/sl;->c(Lorg/json/JSONObject;Landroid/app/Activity;)V

    .line 31
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->ij()Lcom/byazt/dj/tt;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 32
    invoke-virtual {v1}, Lcom/byazt/dj/tt;->u()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v1}, Lcom/byazt/dj/tt;->u()Ljava/lang/String;

    move-result-object v3

    :cond_5
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    :goto_1
    const-string v1, "app_version"

    .line 33
    invoke-static {}, Lcom/byazt/aas/nb;->da()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "app_no_tab"

    .line 34
    invoke-static {}, Lcom/byazt/iyp/sp;->ve()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "load_feature"

    .line 35
    invoke-static {p0, p1, v1, v0}, Lcom/byazt/ddx/uj;->tt(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_7
    :goto_2
    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 9

    if-nez p0, :cond_0

    return-void

    .line 55
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/byazt/iyp/ve;->c()F

    move-result v0

    invoke-virtual {p0}, Lcom/byazt/ete/ic;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/byazt/iyp/x;->c(FLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 56
    :cond_1
    invoke-static {}, Lcom/byazt/iyp/ve;->n()F

    move-result v0

    invoke-virtual {p0}, Lcom/byazt/ete/ic;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/byazt/iyp/x;->c(FLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    invoke-static {}, Lcom/byazt/iyp/x;->c()[Ljava/lang/StackTraceElement;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    move-object v4, v1

    .line 58
    invoke-static {}, Lcom/byazt/iyp/ve;->tt()I

    move-result v5

    .line 59
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 60
    invoke-static {v6, p2}, Lcom/byazt/iyp/sl;->c(Lorg/json/JSONObject;Landroid/app/Activity;)V

    const-string p2, "rit_scene"

    .line 61
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const-string p3, " "

    :goto_1
    invoke-virtual {v6, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "is_preload"

    .line 62
    invoke-virtual {v6, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p2, "app_version"

    .line 63
    invoke-static {}, Lcom/byazt/aas/nb;->da()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v6, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "is_hit_chain"

    .line 64
    invoke-virtual {v6, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 65
    new-instance p2, Lcom/byazt/iyp/tt$3;

    const-string v3, "stage_feature"

    move-object v2, p2

    move-object v7, p0

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/byazt/iyp/tt$3;-><init>(Ljava/lang/String;[Ljava/lang/StackTraceElement;ILorg/json/JSONObject;Lcom/byazt/ete/ic;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/byazt/bzd/x;->c(Lcom/byazt/bwm/sp;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;Ljava/lang/String;Landroid/view/View;Z)V
    .locals 5

    const-string v0, " "

    if-eqz p0, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 41
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/byazt/iyp/ve;->c()F

    move-result v1

    invoke-virtual {p0}, Lcom/byazt/ete/ic;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/byazt/iyp/x;->c(FLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 42
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    .line 43
    invoke-static {v1, v2}, Lcom/byazt/iyp/sl;->c(Lorg/json/JSONObject;Landroid/app/Activity;)V

    .line 44
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/byazt/iyp/c;->ve(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "stack_hash"

    const-string v4, "call_chain"

    if-eqz v2, :cond_2

    .line 45
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    invoke-static {v2}, Lcom/byazt/iyp/x;->c(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    :goto_0
    invoke-static {}, Lcom/byazt/iyp/ve;->n()F

    move-result v0

    invoke-virtual {p0}, Lcom/byazt/ete/ic;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/byazt/iyp/x;->c(FLjava/lang/String;)Z

    move-result v0

    .line 50
    invoke-static {}, Lcom/byazt/iyp/ve;->tt()I

    move-result v2

    invoke-static {v1, p2, v2, v0}, Lcom/byazt/iyp/t;->c(Lorg/json/JSONObject;Landroid/view/View;IZ)V

    const-string p2, "is_preload"

    .line 51
    invoke-virtual {v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p2, "app_version"

    .line 52
    invoke-static {}, Lcom/byazt/aas/nb;->da()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "is_hit_chain"

    .line 53
    invoke-virtual {v1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p2, "show_feature"

    .line 54
    invoke-static {p0, p1, p2, v1}, Lcom/byazt/ddx/uj;->tt(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_3
    :goto_1
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 4

    .line 36
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 37
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/byazt/iyp/ve;->n()F

    move-result v0

    invoke-static {v0, p0}, Lcom/byazt/iyp/x;->c(FLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 38
    :cond_1
    invoke-static {}, Lcom/byazt/iyp/x;->c()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 39
    invoke-static {}, Lcom/byazt/iyp/ve;->tt()I

    move-result v1

    .line 40
    new-instance v2, Lcom/byazt/iyp/tt$2;

    const-string v3, "stage_feature"

    invoke-direct {v2, v3, v0, v1, p0}, Lcom/byazt/iyp/tt$2;-><init>(Ljava/lang/String;[Ljava/lang/StackTraceElement;ILjava/lang/String;)V

    invoke-static {v2}, Lcom/byazt/bzd/x;->c(Lcom/byazt/bwm/sp;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
