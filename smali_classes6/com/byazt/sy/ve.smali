.class public Lcom/byazt/sy/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x210,
        0x36
    }
.end annotation


# direct methods
.method public static c(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;)V
    .locals 1

    .line 11
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 12
    invoke-static {p0, p1, v0}, Lcom/byazt/sy/ve;->c(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;Lorg/json/JSONObject;)V

    const-string p1, "easy_play_start_load"

    .line 13
    invoke-static {p0, p1, v0}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;Lorg/json/JSONObject;)V
    .locals 2

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 2
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_1
    :try_start_0
    const-string v0, "style_id"

    .line 3
    invoke-virtual {p1}, Lcom/byazt/ete/u;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "component_type"

    .line 4
    invoke-virtual {p1}, Lcom/byazt/ete/u;->c()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "render_sequence"

    .line 5
    invoke-virtual {p1}, Lcom/byazt/ete/u;->ve()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "display_area"

    .line 6
    invoke-virtual {p1}, Lcom/byazt/ete/u;->uj()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 7
    invoke-virtual {p1}, Lcom/byazt/ete/u;->tt()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "style_category"

    .line 8
    invoke-static {p0}, Lcom/byazt/ete/p;->uj(Lcom/byazt/ete/ic;)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "exp_id"

    .line 9
    invoke-static {p0}, Lcom/byazt/ete/p;->n(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "group_id"

    .line 10
    invoke-static {p0}, Lcom/byazt/ete/p;->a(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 14
    invoke-static {p0, p1, p2, v0, v1}, Lcom/byazt/sy/ve;->c(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;ZILorg/json/JSONObject;)V

    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;ZI)V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-static {p0, p1, p2, p3, v0}, Lcom/byazt/sy/ve;->c(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;ZILorg/json/JSONObject;)V

    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;ZILjava/lang/String;)V
    .locals 2

    .line 21
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "success"

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 22
    :goto_0
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "error_code"

    .line 23
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz p4, :cond_1

    const-string p2, "error_msg"

    .line 24
    invoke-virtual {v0, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :catch_0
    :cond_1
    invoke-static {p0, p1, v0}, Lcom/byazt/sy/ve;->c(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;Lorg/json/JSONObject;)V

    const-string p1, "easy_play_render_result"

    .line 26
    invoke-static {p0, p1, v0}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;ZILorg/json/JSONObject;)V
    .locals 1

    if-nez p4, :cond_0

    .line 16
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    :try_start_0
    const-string v0, "success"

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 17
    :goto_0
    invoke-virtual {p4, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "error_code"

    .line 18
    invoke-virtual {p4, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :catch_0
    invoke-static {p0, p1, p4}, Lcom/byazt/sy/ve;->c(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;Lorg/json/JSONObject;)V

    const-string p1, "easy_play_load_result"

    .line 20
    invoke-static {p0, p1, p4}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;ZLorg/json/JSONObject;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-static {p0, p1, p2, v0, p3}, Lcom/byazt/sy/ve;->tt(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;ZILorg/json/JSONObject;)V

    return-void
.end method

.method public static c(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;ZLorg/json/JSONObject;Z)V
    .locals 3

    if-nez p3, :cond_0

    .line 28
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    :try_start_0
    const-string v0, "area_type"

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    .line 29
    :goto_0
    invoke-virtual {p3, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 30
    invoke-virtual {p1}, Lcom/byazt/ete/u;->c()I

    move-result p2

    if-eq p2, v2, :cond_2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_4

    :cond_2
    const-string p2, "click_type"

    if-eqz p4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    .line 31
    :goto_1
    invoke-virtual {p3, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :catch_0
    :cond_4
    invoke-static {p0, p1, p3}, Lcom/byazt/sy/ve;->c(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;Lorg/json/JSONObject;)V

    const-string p1, "easy_play_click"

    .line 33
    invoke-static {p0, p1, p3}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private static c(IIIIFF)Z
    .locals 0

    .line 1
    add-int/2addr p2, p0

    add-int/2addr p3, p1

    int-to-float p0, p0

    cmpl-float p0, p4, p0

    if-ltz p0, :cond_0

    int-to-float p0, p2

    cmpg-float p0, p4, p0

    if-gtz p0, :cond_0

    int-to-float p0, p1

    cmpl-float p0, p5, p0

    if-ltz p0, :cond_0

    int-to-float p0, p3

    cmpg-float p0, p5, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Landroid/view/View;Lcom/byazt/sr/ve;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 34
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v2, v1, v0

    const/4 v3, 0x1

    aget v3, v1, v3

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 37
    instance-of p0, p1, Lcom/byazt/ete/gr;

    if-eqz p0, :cond_0

    .line 38
    check-cast p1, Lcom/byazt/ete/gr;

    iget v6, p1, Lcom/byazt/ete/gr;->c:F

    .line 39
    iget v7, p1, Lcom/byazt/ete/gr;->tt:F

    .line 40
    invoke-static/range {v2 .. v7}, Lcom/byazt/sy/ve;->c(IIIIFF)Z

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public static tt(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    invoke-static {p0, p1, v0}, Lcom/byazt/sy/ve;->c(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;Lorg/json/JSONObject;)V

    const-string p1, "easy_play_start_render"

    .line 3
    invoke-static {p0, p1, v0}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static tt(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    invoke-static {p0, p1, p2, v0, v1}, Lcom/byazt/sy/ve;->c(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;ZILjava/lang/String;)V

    return-void
.end method

.method public static tt(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;ZILorg/json/JSONObject;)V
    .locals 1

    if-nez p4, :cond_0

    .line 5
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    :try_start_0
    const-string v0, "success"

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 6
    :goto_0
    invoke-virtual {p4, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "error_code"

    .line 7
    invoke-virtual {p4, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :catch_0
    invoke-static {p0, p1, p4}, Lcom/byazt/sy/ve;->c(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;Lorg/json/JSONObject;)V

    const-string p1, "easy_play_show"

    .line 9
    invoke-static {p0, p1, p4}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static tt(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;ZLorg/json/JSONObject;)V
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-static {p0, p1, p2, p3, v0}, Lcom/byazt/sy/ve;->c(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;ZLorg/json/JSONObject;Z)V

    return-void
.end method
