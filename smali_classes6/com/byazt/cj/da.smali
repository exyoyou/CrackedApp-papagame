.class public Lcom/byazt/cj/da;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/kkb/ve;


# annotations
.annotation runtime Lcom/byazt/ls/tt;
.end annotation

.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x37,
        0x48
    }
.end annotation


# instance fields
.field public a:Z
    .annotation runtime Lcom/byazt/ls/c;
        c = "convert_from_landing_page"
    .end annotation
.end field

.field public c:Lcom/byazt/ete/ic;
    .annotation runtime Lcom/byazt/ls/c;
        c = "material_meta"
    .end annotation
.end field

.field public da:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "event_tag"
    .end annotation
.end field

.field public i:Z
    .annotation runtime Lcom/byazt/ls/c;
        c = "is_from_video_layout"
    .end annotation
.end field

.field public n:Z
    .annotation runtime Lcom/byazt/ls/c;
        c = "is_open_web_page"
    .end annotation
.end field

.field public sp:Lcom/byazt/zd/tt;
    .annotation runtime Lcom/byazt/ls/c;
        c = "pip_controller"
    .end annotation
.end field

.field public tt:Landroid/content/Context;
    .annotation runtime Lcom/byazt/ls/c;
        c = "context"
    .end annotation
.end field

.field public uj:I
    .annotation runtime Lcom/byazt/ls/c;
        c = "interaction_type"
    .end annotation
.end field

.field public ve:Ljava/lang/String;
    .annotation runtime Lcom/byazt/ls/c;
        c = "url"
    .end annotation
.end field

.field public x:Z
    .annotation runtime Lcom/byazt/ls/c;
        c = "open_video_detail_page_direct"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c()Z
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/byazt/cj/da;->ve:Ljava/lang/String;

    invoke-static {v0}, Lcom/byazt/nr/rh;->c(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 44
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    :try_start_0
    iget-object v2, p0, Lcom/byazt/cj/da;->ve:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 46
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    iget-object v1, p0, Lcom/byazt/cj/da;->tt:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_1

    const/high16 v1, 0x10000000

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 49
    :cond_1
    iget-object v1, p0, Lcom/byazt/cj/da;->tt:Landroid/content/Context;

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
    iget-boolean v0, p0, Lcom/byazt/cj/da;->n:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/byazt/cj/da;->a:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p3, p2, v2}, Lcom/byazt/cq/c;->c(Ljava/util/Map;Lcom/byazt/qb/c;)V

    return v1

    .line 4
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "ext"

    .line 5
    iget-object v4, p0, Lcom/byazt/cj/da;->c:Lcom/byazt/ete/ic;

    invoke-virtual {v4}, Lcom/byazt/ete/ic;->w_()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "live_interaction_type"

    .line 6
    iget-object v4, p0, Lcom/byazt/cj/da;->c:Lcom/byazt/ete/ic;

    invoke-virtual {v4}, Lcom/byazt/ete/ic;->n()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "req_id"

    .line 7
    iget-object v4, p0, Lcom/byazt/cj/da;->c:Lcom/byazt/ete/ic;

    invoke-virtual {v4}, Lcom/byazt/ete/ic;->qy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "uchain"

    .line 8
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 9
    :goto_0
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v3

    const-string v4, "landing_page"

    const-string v5, "native"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 10
    iget v0, p0, Lcom/byazt/cj/da;->uj:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 11
    invoke-direct {p0}, Lcom/byazt/cj/da;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {p3, p2}, Lcom/byazt/cq/c;->c(Ljava/util/Map;)V

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {p3, p2, v2}, Lcom/byazt/cq/c;->c(Ljava/util/Map;Lcom/byazt/qb/c;)V

    :goto_1
    return p1

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/byazt/cj/da;->sp:Lcom/byazt/zd/tt;

    if-eqz v0, :cond_4

    .line 15
    new-instance v2, Lcom/byazt/szt/tt;

    invoke-direct {v2, v0}, Lcom/byazt/szt/tt;-><init>(Lcom/byazt/zd/tt;)V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v0}, Lcom/byazt/szt/tt;->c(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17
    invoke-virtual {p3, p2}, Lcom/byazt/cq/c;->c(Ljava/util/Map;)V

    return v1

    .line 18
    :cond_4
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/byazt/cj/da;->tt:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/byazt/cj/da;->x:Z

    iget-object v4, p0, Lcom/byazt/cj/da;->c:Lcom/byazt/ete/ic;

    iget-boolean v5, p0, Lcom/byazt/cj/da;->i:Z

    invoke-static {v3, v4, v5, p2}, Lcom/byazt/ppf/tt;->c(ZLcom/byazt/ete/ic;ZLjava/util/Map;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 19
    iget-object v2, p0, Lcom/byazt/cj/da;->tt:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_5

    const/high16 v2, 0x10000000

    .line 20
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_5
    const-string v2, "is_outer_click"

    .line 21
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "event_tag"

    .line 22
    iget-object v3, p0, Lcom/byazt/cj/da;->da:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    iget-object v2, p0, Lcom/byazt/cj/da;->c:Lcom/byazt/ete/ic;

    if-eqz v2, :cond_6

    const-string v3, "get_phone_num_status"

    .line 24
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->sp()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_6
    if-nez p1, :cond_7

    const-string p1, "UChain_LP"

    const-string v2, "param == null"

    .line 25
    invoke-static {p1, v2}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 27
    :cond_7
    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "context"

    .line 28
    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "activity_type"

    .line 29
    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "landing_page_source"

    .line 30
    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 31
    iget-object v4, p0, Lcom/byazt/cj/da;->c:Lcom/byazt/ete/ic;

    invoke-static {p1, v4}, Lcom/byazt/aas/nb;->c(Ljava/util/Map;Lcom/byazt/ete/ic;)V

    if-eqz v3, :cond_8

    .line 32
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    const/4 v6, 0x1

    :cond_9
    const/4 v4, -0x1

    if-eqz v6, :cond_a

    goto :goto_2

    .line 33
    :cond_a
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 34
    :catch_1
    :goto_2
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 35
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 36
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 37
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_b

    const-string v4, "log_extra"

    .line 38
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 39
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 40
    :cond_c
    invoke-static {p2}, Lcom/byazt/ppf/ve;->tt(Ljava/util/Map;)Z

    move-result p1

    const-string v2, "web_dl_factors"

    .line 41
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 42
    iget-object p1, p0, Lcom/byazt/cj/da;->tt:Landroid/content/Context;

    new-instance v2, Lcom/byazt/cj/da$1;

    invoke-direct {v2, p0, p3, p2}, Lcom/byazt/cj/da$1;-><init>(Lcom/byazt/cj/da;Lcom/byazt/cq/c;Ljava/util/Map;)V

    invoke-static {p1, v0, v2}, Lcom/byazt/nr/tt;->c(Landroid/content/Context;Landroid/content/Intent;Lcom/byazt/nr/tt$c;)Z

    return v1
.end method
