.class public Lcom/byazt/omf/or;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f,
        0x243
    }
.end annotation


# direct methods
.method private static c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/ete/ic;ILjava/lang/Object;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 9

    .line 14
    invoke-static {p2}, Lcom/byazt/ete/my;->n(Lcom/byazt/ete/ic;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 15
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTSevenScreenWebPageActivity;

    goto :goto_1

    .line 16
    :cond_0
    invoke-static {p2}, Lcom/byazt/ete/my;->a(Lcom/byazt/ete/ic;)Z

    move-result v0

    const-class v2, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/byazt/ete/ic;->or()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    move-object v0, v2

    goto :goto_1

    .line 17
    :cond_1
    invoke-static {p2}, Lcom/byazt/xs/da;->a(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTNativePageActivity;

    goto :goto_1

    .line 19
    :cond_2
    instance-of v0, p4, Lcom/byazt/nc/i;

    if-nez v0, :cond_4

    .line 20
    invoke-static {p2}, Lcom/byazt/ete/ic;->ve(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 21
    invoke-static {p4}, Lcom/byazt/omf/or;->c(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 22
    invoke-static {p2}, Lcom/byazt/aas/nb;->sp(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    .line 23
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->or()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 24
    :cond_4
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTWebPageActivity;

    .line 25
    :goto_1
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz v1, :cond_5

    .line 26
    invoke-static {p0, p2, p4, p6, v8}, Lcom/byazt/omf/or;->c(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/Object;ZLandroid/content/Intent;)V

    :cond_5
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p5

    move-object v7, v8

    .line 27
    invoke-static/range {v2 .. v7}, Lcom/byazt/omf/or;->c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/ete/ic;ILjava/lang/String;Landroid/content/Intent;)V

    return-object v8
.end method

.method private static c(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/Object;ZLandroid/content/Intent;)V
    .locals 3

    const-string v0, "multi_process_data"

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 28
    instance-of v2, p2, Lcom/byazt/ua/c$c;

    if-eqz v2, :cond_0

    .line 29
    move-object v1, p2

    check-cast v1, Lcom/byazt/ua/c$c;

    invoke-interface {v1}, Lcom/byazt/ua/c$c;->getVideoModel()Lcom/byazt/ua/c;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    .line 30
    invoke-virtual {v1}, Lcom/byazt/ua/c;->c()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    :cond_1
    instance-of v2, p2, Lcom/byazt/ouz/tt;

    if-eqz v2, :cond_2

    .line 32
    check-cast p2, Lcom/byazt/ouz/tt;

    invoke-virtual {p2}, Lcom/byazt/ouz/tt;->getVideoModel()Lcom/byazt/ua/c;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 33
    invoke-virtual {v1}, Lcom/byazt/ua/c;->c()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    if-eqz v1, :cond_3

    const-string p2, "video_is_auto_play"

    .line 34
    iget-boolean v2, v1, Lcom/byazt/ua/c;->uj:Z

    invoke-virtual {p4, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 35
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "videoDataModel="

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/byazt/ua/c;->c()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "videoDataModel"

    invoke-static {v2, p2}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-nez v1, :cond_4

    if-eqz p3, :cond_7

    :cond_4
    if-eqz v1, :cond_5

    .line 36
    :try_start_0
    iget-wide p2, v1, Lcom/byazt/ua/c;->sp:J

    long-to-float p2, p2

    iget-wide v0, v1, Lcom/byazt/ua/c;->n:J

    long-to-float p3, v0

    div-float/2addr p2, p3

    const/high16 p3, 0x42c80000    # 100.0f

    mul-float p2, p2, p3

    float-to-int p2, p2

    goto :goto_0

    .line 37
    :cond_5
    new-instance p2, Lcom/byazt/ua/c;

    invoke-direct {p2}, Lcom/byazt/ua/c;-><init>()V

    const-wide/16 v1, 0x64

    .line 38
    iput-wide v1, p2, Lcom/byazt/ua/c;->sp:J

    const/4 p3, 0x1

    .line 39
    iput-boolean p3, p2, Lcom/byazt/ua/c;->c:Z

    .line 40
    invoke-static {p1}, Lcom/byazt/aas/nb;->gr(Lcom/byazt/ete/ic;)Z

    move-result p3

    iput-boolean p3, p2, Lcom/byazt/ua/c;->uj:Z

    .line 41
    invoke-virtual {p2}, Lcom/byazt/ua/c;->c()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p2, 0x64

    .line 42
    :goto_0
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->ri()I

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoScrollWebPageActivity;

    if-nez p3, :cond_6

    .line 43
    :try_start_1
    new-instance p1, Landroid/content/ComponentName;

    invoke-direct {p1, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p4, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-void

    .line 44
    :cond_6
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->ri()I

    move-result p3

    if-lez p3, :cond_7

    .line 45
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->ri()I

    move-result p3

    if-le p2, p3, :cond_7

    invoke-static {p1}, Lcom/byazt/aas/nb;->gr(Lcom/byazt/ete/ic;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 46
    new-instance p1, Landroid/content/ComponentName;

    invoke-direct {p1, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p4, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_7
    return-void
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/ete/ic;ILjava/lang/String;Landroid/content/Intent;)V
    .locals 2

    .line 47
    new-instance v0, Lcom/byazt/yzg/ve;

    invoke-direct {v0, p0, p2}, Lcom/byazt/yzg/ve;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;)V

    const/4 v1, 0x0

    .line 48
    invoke-virtual {v0, v1}, Lcom/byazt/yzg/ve;->uj(Z)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 49
    invoke-virtual {p2, v1}, Lcom/byazt/ete/ic;->ve(Z)V

    :cond_0
    const-string v0, "url"

    .line 50
    invoke-virtual {p5, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->ve()Ljava/lang/String;

    move-result-object p1

    const-string v0, "gecko_id"

    invoke-virtual {p5, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "title"

    .line 52
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->v_()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "sdk_version"

    .line 53
    sget v0, Lcom/byazt/omf/p;->uj:I

    invoke-virtual {p5, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "ad_id"

    .line 54
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "log_extra"

    .line 55
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->w_()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->te()Lcom/byazt/ete/zb;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->te()Lcom/byazt/ete/zb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/ete/zb;->c()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v0, "icon_url"

    .line 57
    invoke-virtual {p5, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "event_tag"

    .line 58
    invoke-virtual {p5, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "landing_page_source"

    .line 59
    invoke-virtual {p5, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "is_outer_click"

    .line 60
    invoke-virtual {p5, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "get_phone_num_status"

    .line 61
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->sp()I

    move-result p3

    invoke-virtual {p5, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    instance-of p0, p0, Landroid/app/Activity;

    if-nez p0, :cond_2

    const/high16 p0, 0x10000000

    .line 63
    invoke-virtual {p5, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 64
    :cond_2
    invoke-static {p5, p2}, Lcom/byazt/aas/nb;->c(Landroid/content/Intent;Lcom/byazt/ete/ic;)V

    return-void
.end method

.method public static c(Landroid/content/Context;Lcom/byazt/ete/ic;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 65
    :try_start_0
    new-instance v6, Landroid/content/Intent;

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTNativePageActivity;

    invoke-direct {v6, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "is_replace_dialog"

    const/4 v1, 0x1

    .line 66
    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, v6

    .line 67
    invoke-static/range {v0 .. v5}, Lcom/byazt/omf/or;->c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/ete/ic;ILjava/lang/String;Landroid/content/Intent;)V

    .line 68
    invoke-static {p1}, Lcom/byazt/ete/ic;->ve(Lcom/byazt/ete/ic;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "multi_process_data"

    .line 69
    invoke-virtual {v6, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/4 p1, 0x0

    .line 70
    invoke-static {p0, v6, p1}, Lcom/byazt/nr/tt;->c(Landroid/content/Context;Landroid/content/Intent;Lcom/byazt/nr/tt$c;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/ete/ic;ILjava/lang/String;Z)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    .line 9
    :try_start_0
    invoke-static/range {v0 .. v6}, Lcom/byazt/omf/or;->c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/ete/ic;ILjava/lang/Object;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "web_dl_factors"

    .line 10
    invoke-virtual {p1, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p2, 0x0

    .line 11
    invoke-static {p0, p1, p2}, Lcom/byazt/nr/tt;->c(Landroid/content/Context;Landroid/content/Intent;Lcom/byazt/nr/tt$c;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/ete/ic;Ljava/lang/String;Z)Z
    .locals 6

    .line 7
    invoke-static {p3}, Lcom/byazt/aas/nb;->uj(Ljava/lang/String;)I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/byazt/omf/or;->c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/ete/ic;ILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static c(Lcom/byazt/ete/ic;Ljava/lang/String;Z)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->x()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-static {v1, p0, p1, p2}, Lcom/byazt/omf/or;->c(Ljava/lang/String;Lcom/byazt/ete/ic;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static c(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 12
    :cond_0
    instance-of v1, p0, Lcom/byazt/ua/c$c;

    if-nez v1, :cond_1

    return v0

    .line 13
    :cond_1
    :try_start_0
    check-cast p0, Lcom/byazt/ua/c$c;

    invoke-interface {p0}, Lcom/byazt/ua/c$c;->getHasUseCustomizeVideo()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    return v0
.end method

.method public static c(Ljava/lang/String;Lcom/byazt/ete/ic;Ljava/lang/String;Z)Z
    .locals 6

    .line 4
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 5
    invoke-static {p2}, Lcom/byazt/aas/nb;->uj(Ljava/lang/String;)I

    move-result v3

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    .line 6
    invoke-static/range {v0 .. v5}, Lcom/byazt/omf/or;->c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/ete/ic;ILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method
