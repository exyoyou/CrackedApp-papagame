.class public Lcom/byazt/ny/tt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/kkb/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xbc,
        0xd
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/eia/ve;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/eia/ve;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/byazt/eia/ve;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/ny/tt;->c:Lcom/byazt/eia/ve;

    .line 10
    .line 11
    return-void
.end method

.method private c()Z
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/byazt/ny/tt;->c:Lcom/byazt/eia/ve;

    invoke-virtual {v0}, Lcom/byazt/eia/ve;->z()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/nr/rh;->c(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 45
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    :try_start_0
    iget-object v2, p0, Lcom/byazt/ny/tt;->c:Lcom/byazt/eia/ve;

    invoke-virtual {v2}, Lcom/byazt/eia/ve;->z()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 47
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    iget-object v1, p0, Lcom/byazt/ny/tt;->c:Lcom/byazt/eia/ve;

    invoke-virtual {v1}, Lcom/byazt/eia/ve;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_1

    const/high16 v1, 0x10000000

    .line 49
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 50
    :cond_1
    iget-object v1, p0, Lcom/byazt/ny/tt;->c:Lcom/byazt/eia/ve;

    invoke-virtual {v1}, Lcom/byazt/eia/ve;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/byazt/nr/tt;->c(Landroid/content/Context;Landroid/content/Intent;Lcom/byazt/nr/tt$c;)Z

    const/4 v0, 0x1

    return v0

    :catch_0
    return v1
.end method


# virtual methods
.method public c(Ljava/util/Map;Ljava/util/Map;Lcom/byazt/cq/c;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/byazt/cq/c;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/ny/tt;->c:Lcom/byazt/eia/ve;

    invoke-virtual {p3}, Lcom/byazt/cq/c;->ve()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcom/byazt/ppf/ve;->c(Lcom/byazt/eia/c;Lorg/json/JSONObject;Ljava/util/Map;Ljava/util/Map;)V

    .line 2
    iget-object v0, p0, Lcom/byazt/ny/tt;->c:Lcom/byazt/eia/ve;

    invoke-virtual {v0}, Lcom/byazt/eia/ve;->sl()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/ny/tt;->c:Lcom/byazt/eia/ve;

    invoke-virtual {v0}, Lcom/byazt/eia/ve;->t()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p3, p2, v2}, Lcom/byazt/cq/c;->tt(Ljava/util/Map;Lcom/byazt/qb/c;)V

    return v1

    .line 5
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "ext"

    .line 6
    iget-object v4, p0, Lcom/byazt/ny/tt;->c:Lcom/byazt/eia/ve;

    invoke-virtual {v4}, Lcom/byazt/eia/ve;->w_()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "live_interaction_type"

    .line 7
    iget-object v4, p0, Lcom/byazt/ny/tt;->c:Lcom/byazt/eia/ve;

    invoke-virtual {v4}, Lcom/byazt/eia/ve;->n()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "req_id"

    .line 8
    iget-object v4, p0, Lcom/byazt/ny/tt;->c:Lcom/byazt/eia/ve;

    invoke-virtual {v4}, Lcom/byazt/eia/ve;->qy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "uchain"

    .line 9
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 10
    :goto_0
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v3

    const-string v4, "landing_page"

    const-string v5, "native"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 11
    iget-object v0, p0, Lcom/byazt/ny/tt;->c:Lcom/byazt/eia/ve;

    invoke-virtual {v0}, Lcom/byazt/eia/ve;->i()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 12
    invoke-direct {p0}, Lcom/byazt/ny/tt;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    sget-object v0, Lcom/byazt/cr/ve;->ve:Lcom/byazt/cr/ve;

    invoke-static {p2, v0}, Lcom/byazt/ppf/ve;->c(Ljava/util/Map;Lcom/byazt/cr/c;)V

    .line 14
    invoke-virtual {p3, p2}, Lcom/byazt/cq/c;->tt(Ljava/util/Map;)V

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {p3, p2, v2}, Lcom/byazt/cq/c;->tt(Ljava/util/Map;Lcom/byazt/qb/c;)V

    :goto_1
    return p1

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/byazt/ny/tt;->c:Lcom/byazt/eia/ve;

    invoke-virtual {v0}, Lcom/byazt/eia/ve;->u()Lcom/byazt/zd/tt;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 17
    new-instance v0, Lcom/byazt/szt/tt;

    iget-object v2, p0, Lcom/byazt/ny/tt;->c:Lcom/byazt/eia/ve;

    invoke-virtual {v2}, Lcom/byazt/eia/ve;->u()Lcom/byazt/zd/tt;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/byazt/szt/tt;-><init>(Lcom/byazt/zd/tt;)V

    .line 18
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v2}, Lcom/byazt/szt/tt;->c(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 19
    sget-object p1, Lcom/byazt/cr/ve;->ve:Lcom/byazt/cr/ve;

    invoke-static {p2, p1}, Lcom/byazt/ppf/ve;->c(Ljava/util/Map;Lcom/byazt/cr/c;)V

    .line 20
    invoke-virtual {p3, p2}, Lcom/byazt/cq/c;->tt(Ljava/util/Map;)V

    return v1

    .line 21
    :cond_4
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/byazt/ny/tt;->c:Lcom/byazt/eia/ve;

    invoke-virtual {v2}, Lcom/byazt/eia/ve;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/byazt/ny/tt;->c:Lcom/byazt/eia/ve;

    invoke-virtual {v3}, Lcom/byazt/eia/ve;->m()Z

    move-result v3

    iget-object v4, p0, Lcom/byazt/ny/tt;->c:Lcom/byazt/eia/ve;

    invoke-static {v4, p2}, Lcom/byazt/ppf/ve;->c(Ljava/lang/Object;Ljava/util/Map;)Lcom/byazt/ete/ic;

    move-result-object v4

    iget-object v5, p0, Lcom/byazt/ny/tt;->c:Lcom/byazt/eia/ve;

    invoke-virtual {v5}, Lcom/byazt/eia/ve;->nu()Z

    move-result v5

    invoke-static {v3, v4, v5, p2}, Lcom/byazt/ppf/tt;->c(ZLcom/byazt/ete/ic;ZLjava/util/Map;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    iget-object v2, p0, Lcom/byazt/ny/tt;->c:Lcom/byazt/eia/ve;

    invoke-virtual {v2}, Lcom/byazt/eia/ve;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_5

    const/high16 v2, 0x10000000

    .line 23
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_5
    const-string v2, "is_outer_click"

    .line 24
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 25
    iget-object v2, p0, Lcom/byazt/ny/tt;->c:Lcom/byazt/eia/ve;

    invoke-virtual {v2}, Lcom/byazt/eia/ve;->sp()I

    move-result v2

    const-string v3, "get_phone_num_status"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 26
    iget-object v2, p0, Lcom/byazt/ny/tt;->c:Lcom/byazt/eia/ve;

    invoke-virtual {v2}, Lcom/byazt/eia/ve;->yp()Ljava/lang/String;

    move-result-object v2

    const-string v3, "event_tag"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-nez p1, :cond_6

    const-string p1, "UChain_LP"

    const-string v2, "param == null"

    .line 27
    invoke-static {p1, v2}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 29
    :cond_6
    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "context"

    .line 30
    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "landing_page_source"

    .line 31
    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 32
    iget-object v4, p0, Lcom/byazt/ny/tt;->c:Lcom/byazt/eia/ve;

    invoke-static {v4, p2}, Lcom/byazt/ppf/ve;->c(Ljava/lang/Object;Ljava/util/Map;)Lcom/byazt/ete/ic;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/byazt/aas/nb;->c(Ljava/util/Map;Lcom/byazt/ete/ic;)V

    if-eqz v3, :cond_7

    .line 33
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    const/4 v6, 0x1

    :cond_8
    const/4 v4, -0x1

    if-eqz v6, :cond_9

    goto :goto_2

    .line 34
    :cond_9
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 35
    :catch_1
    :goto_2
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 36
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 37
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 38
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_a

    const-string v4, "log_extra"

    .line 39
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 40
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 41
    :cond_b
    invoke-static {p2}, Lcom/byazt/ppf/ve;->tt(Ljava/util/Map;)Z

    move-result p1

    const-string v2, "web_dl_factors"

    .line 42
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 43
    iget-object p1, p0, Lcom/byazt/ny/tt;->c:Lcom/byazt/eia/ve;

    invoke-virtual {p1}, Lcom/byazt/eia/ve;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v2, Lcom/byazt/ny/tt$1;

    invoke-direct {v2, p0, p2, p3}, Lcom/byazt/ny/tt$1;-><init>(Lcom/byazt/ny/tt;Ljava/util/Map;Lcom/byazt/cq/c;)V

    invoke-static {p1, v0, v2}, Lcom/byazt/nr/tt;->c(Landroid/content/Context;Landroid/content/Intent;Lcom/byazt/nr/tt$c;)Z

    return v1
.end method
