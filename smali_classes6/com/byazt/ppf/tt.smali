.class public Lcom/byazt/ppf/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x28a,
        0xd
    }
.end annotation


# direct methods
.method private static c(Ljava/lang/Class;ZLcom/byazt/ete/ic;Ljava/util/Map;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Z",
            "Lcom/byazt/ete/ic;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Class;"
        }
    .end annotation

    .line 9
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    return-object p0

    :cond_1
    if-eqz p3, :cond_2

    .line 10
    :try_start_0
    new-instance p1, Lcom/byazt/ua/c;

    invoke-direct {p1}, Lcom/byazt/ua/c;-><init>()V

    const-wide/16 v0, 0x64

    .line 11
    iput-wide v0, p1, Lcom/byazt/ua/c;->sp:J

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p1, Lcom/byazt/ua/c;->c:Z

    .line 13
    invoke-static {p2}, Lcom/byazt/aas/nb;->gr(Lcom/byazt/ete/ic;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/byazt/ua/c;->uj:Z

    const-string v0, "multi_process_data"

    .line 14
    invoke-virtual {p1}, Lcom/byazt/ua/c;->c()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_2
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->ri()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class p3, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoScrollWebPageActivity;

    if-nez p1, :cond_3

    return-object p3

    .line 16
    :cond_3
    :try_start_1
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->ri()I

    move-result p1

    if-lez p1, :cond_4

    .line 17
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->ri()I

    move-result p1

    const/16 v0, 0x64

    if-le v0, p1, :cond_4

    invoke-static {p2}, Lcom/byazt/aas/nb;->gr(Lcom/byazt/ete/ic;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_4

    return-object p3

    :catchall_0
    :cond_4
    return-object p0
.end method

.method public static c(ZLcom/byazt/ete/ic;ZLjava/util/Map;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/byazt/ete/ic;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/byazt/ete/my;->n(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    const-class p0, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTSevenScreenWebPageActivity;

    return-object p0

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/byazt/ete/my;->a(Lcom/byazt/ete/ic;)Z

    move-result v0

    const-class v1, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTVideoWebPageActivity;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->or()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 4
    :cond_1
    invoke-static {p1}, Lcom/byazt/ete/ic;->ve(Lcom/byazt/ete/ic;)Z

    move-result v0

    const-class v2, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTNativePageActivity;

    const-class v3, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTWebPageActivity;

    if-eqz v0, :cond_4

    if-nez p0, :cond_4

    invoke-static {p1}, Lcom/byazt/aas/nb;->sp(Lcom/byazt/ete/ic;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 5
    invoke-static {p1}, Lcom/byazt/xs/da;->a(Lcom/byazt/ete/ic;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v2

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->or()Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v3

    .line 7
    :cond_3
    invoke-static {v1, p2, p1, p3}, Lcom/byazt/ppf/tt;->c(Ljava/lang/Class;ZLcom/byazt/ete/ic;Ljava/util/Map;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 8
    :cond_4
    invoke-static {p1}, Lcom/byazt/xs/da;->a(Lcom/byazt/ete/ic;)Z

    move-result p0

    if-eqz p0, :cond_5

    return-object v2

    :cond_5
    return-object v3
.end method
