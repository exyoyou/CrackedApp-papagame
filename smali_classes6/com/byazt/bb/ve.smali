.class public Lcom/byazt/bb/ve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/hl/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x93,
        0x36
    }
.end annotation


# instance fields
.field public a:Z

.field public c:Lcom/byazt/hl/c;

.field public final da:Lcom/byazt/eia/sl;

.field public i:Lcom/byazt/zd/tt;

.field public n:Z

.field public final sl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public sp:Lcom/byazt/pop/ve;

.field public t:Z

.field public tt:Ljava/lang/String;

.field public u:Lcom/byazt/ny/n$c;

.field public uj:Lcom/byazt/ete/nu;

.field public ve:Landroid/content/Context;

.field public x:Ljava/lang/String;

.field public final yp:Z


# direct methods
.method public constructor <init>(Lcom/byazt/hl/c;Lcom/byazt/eia/sl;Ljava/lang/String;Lcom/byazt/ete/nu;Landroid/content/Context;Ljava/util/Map;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/hl/c;",
            "Lcom/byazt/eia/sl;",
            "Ljava/lang/String;",
            "Lcom/byazt/ete/nu;",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/bb/ve;->n:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/byazt/bb/ve;->a:Z

    .line 8
    .line 9
    iput-object p1, p0, Lcom/byazt/bb/ve;->c:Lcom/byazt/hl/c;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/byazt/bb/ve;->tt:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p5, p0, Lcom/byazt/bb/ve;->ve:Landroid/content/Context;

    .line 16
    .line 17
    iput-object p4, p0, Lcom/byazt/bb/ve;->uj:Lcom/byazt/ete/nu;

    .line 18
    .line 19
    iput-object p6, p0, Lcom/byazt/bb/ve;->sl:Ljava/util/Map;

    .line 20
    .line 21
    iput-boolean p7, p0, Lcom/byazt/bb/ve;->yp:Z

    .line 22
    .line 23
    return-void
.end method

.method public static synthetic a(Lcom/byazt/bb/ve;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/bb/ve;->ve:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/bb/ve;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/bb/ve;->ve()Lcom/byazt/ete/ic;

    move-result-object p0

    return-object p0
.end method

.method private c()Lcom/byazt/ete/nu;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/byazt/bb/ve;->uj:Lcom/byazt/ete/nu;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/byazt/ete/nu;

    invoke-direct {v0}, Lcom/byazt/ete/nu;-><init>()V

    :cond_0
    return-object v0
.end method

.method private c(Ljava/util/Map;Landroid/content/Intent;ZLorg/json/JSONObject;)Ljava/lang/Boolean;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Intent;",
            "Z",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 52
    invoke-static {p2}, Lcom/byazt/aas/nb;->ve(Landroid/content/Intent;)V

    .line 53
    invoke-static {p1}, Lcom/byazt/ppf/ve;->tt(Ljava/util/Map;)Z

    move-result v3

    .line 54
    invoke-virtual {p0, p2, v3}, Lcom/byazt/bb/ve;->c(Landroid/content/Intent;Z)V

    .line 55
    new-instance p4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 56
    iget-object v6, p0, Lcom/byazt/bb/ve;->ve:Landroid/content/Context;

    new-instance v7, Lcom/byazt/bb/ve$1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v4, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/byazt/bb/ve$1;-><init>(Lcom/byazt/bb/ve;Ljava/util/concurrent/atomic/AtomicBoolean;ZLjava/util/Map;Z)V

    sget-object p1, Lcom/byazt/omf/p;->x:Ljava/lang/String;

    const-string p3, "internal"

    .line 57
    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    .line 58
    invoke-static {v6, p2, v7, p1}, Lcom/byazt/nr/tt;->c(Landroid/content/Context;Landroid/content/Intent;Lcom/byazt/nr/tt$c;Z)Z

    .line 59
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private c(Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .locals 3

    :try_start_0
    const-string v0, "tag"

    .line 43
    iget-object v1, p0, Lcom/byazt/bb/ve;->x:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 44
    :goto_0
    iget-object v0, p0, Lcom/byazt/bb/ve;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    invoke-interface {v0}, Lcom/byazt/eia/sl;->u()Lcom/byazt/ete/qy;

    move-result-object v0

    iget-object v2, p0, Lcom/byazt/bb/ve;->x:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/byazt/ete/qy;->c(Lcom/byazt/ete/qy;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    invoke-interface {v0}, Lcom/byazt/eia/sl;->u()Lcom/byazt/ete/qy;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/bb/ve;->x:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/byazt/ete/qy;->tt(Lcom/byazt/ete/qy;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 47
    iget-object v1, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    invoke-interface {v1}, Lcom/byazt/eia/sl;->u()Lcom/byazt/ete/qy;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/bb/ve;->x:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/byazt/ete/qy;->ve(Lcom/byazt/ete/qy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v2, v1, p1}, Lcom/byazt/bb/ve;->c(Ljava/util/Map;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1

    .line 49
    :cond_2
    invoke-direct {p0}, Lcom/byazt/bb/ve;->tt()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_1
    :try_start_1
    const-string v2, "convert_type"

    .line 50
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "dpl_result"

    .line 51
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-object v1
.end method

.method private c(I)V
    .locals 8

    .line 60
    invoke-direct {p0}, Lcom/byazt/bb/ve;->ve()Lcom/byazt/ete/ic;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/byazt/bb/ve;->ve()Lcom/byazt/ete/ic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->xl()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 61
    invoke-direct {p0}, Lcom/byazt/bb/ve;->ve()Lcom/byazt/ete/ic;

    move-result-object v2

    iget-object v3, p0, Lcom/byazt/bb/ve;->tt:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 62
    invoke-static {}, Lcom/byazt/omf/p;->x()Z

    move-result v7

    move v6, p1

    .line 63
    invoke-static/range {v2 .. v7}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;IIIZ)V

    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/byazt/bb/ve;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/bb/ve;->c(I)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/bb/ve;Landroid/content/Intent;Z)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/byazt/bb/ve;->tt(Landroid/content/Intent;Z)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/bb/ve;Ljava/util/Map;ZLjava/lang/Throwable;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/bb/ve;->c(Ljava/util/Map;ZLjava/lang/Throwable;)V

    return-void
.end method

.method private c(Ljava/util/Map;ZLjava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 64
    iget-boolean p1, p0, Lcom/byazt/bb/ve;->a:Z

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/byazt/bb/ve;->ve()Lcom/byazt/ete/ic;

    move-result-object p1

    iget-object p2, p0, Lcom/byazt/bb/ve;->tt:Ljava/lang/String;

    const-string v0, "open_fallback_download"

    invoke-static {p1, p2, v0}, Lcom/byazt/ddx/uj;->ve(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_0
    invoke-direct {p0}, Lcom/byazt/bb/ve;->ve()Lcom/byazt/ete/ic;

    move-result-object p1

    iget-object p2, p0, Lcom/byazt/bb/ve;->tt:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/byazt/bb/ve;->n:Z

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    return-void
.end method

.method public static synthetic n(Lcom/byazt/bb/ve;)Lcom/byazt/ny/n$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/bb/ve;->u:Lcom/byazt/ny/n$c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/bb/ve;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/bb/ve;->tt:Ljava/lang/String;

    return-object p0
.end method

.method private tt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    if-nez v0, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {v0}, Lcom/byazt/eia/sl;->z_()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    invoke-interface {v0}, Lcom/byazt/eia/sl;->gt()Lcom/byazt/ete/pf;

    move-result-object v0

    if-nez v0, :cond_2

    return-object p1

    .line 19
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Lcom/byazt/ete/pf;->ve()Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-virtual {v0}, Lcom/byazt/ete/pf;->uj()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {p1}, Lcom/byazt/aas/bx;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "live_short_touch_params"

    .line 22
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "extra_pangle_scheme_params"

    .line 23
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-static {p1, v2}, Lcom/byazt/aas/bx;->c(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {}, Lcom/byazt/omf/tt;->c()Lcom/byazt/it/ve;

    move-result-object v1

    const-string v2, "is_reward_deep_link_to_live"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/byazt/it/c;->put(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_3
    :goto_0
    return-object p1
.end method

.method private tt(Landroid/content/Intent;Z)V
    .locals 8

    .line 9
    iget-object v0, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/byazt/bb/ve;->ve:Landroid/content/Context;

    if-eqz v1, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    .line 10
    :cond_0
    invoke-interface {v0}, Lcom/byazt/eia/sl;->z()Lcom/byazt/ete/n;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    invoke-interface {v0}, Lcom/byazt/eia/sl;->z()Lcom/byazt/ete/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ete/n;->ve()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    move-object v3, v0

    .line 12
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u662f\u5426\u7acb\u5373\u6253\u5f00\u5e94\u7528"

    goto :goto_1

    .line 13
    :cond_2
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u662f\u5426\u7acb\u5373\u6253\u5f00"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v4, v0

    .line 14
    iget-object v0, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    invoke-interface {v0}, Lcom/byazt/eia/sl;->uj()Ljava/lang/String;

    move-result-object v2

    .line 15
    iget-object v1, p0, Lcom/byazt/bb/ve;->ve:Landroid/content/Context;

    const-string v5, "\u7acb\u5373\u6253\u5f00"

    const-string v6, "\u9000\u51fa"

    new-instance v7, Lcom/byazt/bb/ve$3;

    invoke-direct {v7, p0, p1, p2}, Lcom/byazt/bb/ve$3;-><init>(Lcom/byazt/bb/ve;Landroid/content/Intent;Z)V

    invoke-static/range {v1 .. v7}, Lcom/byazt/aas/n;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/aas/n$c;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private tt()Z
    .locals 10

    .line 3
    iget-object v0, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    instance-of v1, v0, Lcom/byazt/ete/ic;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/byazt/eia/sl;->u()Lcom/byazt/ete/qy;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/bb/ve;->x:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/byazt/ete/qy;->ve(Lcom/byazt/ete/qy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v9, Lcom/byazt/szt/c;

    iget-object v1, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    move-object v2, v1

    check-cast v2, Lcom/byazt/ete/ic;

    iget-object v3, p0, Lcom/byazt/bb/ve;->ve:Landroid/content/Context;

    iget-object v4, p0, Lcom/byazt/bb/ve;->tt:Ljava/lang/String;

    invoke-static {v4}, Lcom/byazt/aas/nb;->uj(Ljava/lang/String;)I

    move-result v5

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/byazt/szt/c;-><init>(Lcom/byazt/eia/x;Landroid/content/Context;Ljava/lang/String;ILjava/util/Map;Ljava/util/Map;Lorg/json/JSONObject;)V

    .line 6
    invoke-virtual {v9, v0}, Lcom/byazt/szt/c;->c(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/byazt/bb/ve;->i:Lcom/byazt/zd/tt;

    invoke-virtual {v9, v0}, Lcom/byazt/szt/c;->c(Lcom/byazt/zd/tt;)V

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v9, v0}, Lcom/byazt/szt/c;->c(Ljava/util/Map;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private tt(Ljava/util/Map;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "web_meta"

    const-string v1, "req_id"

    const-string v2, "live_interaction_type"

    const-string v3, "native"

    const-string v4, "open_detail_page"

    const-string v5, "uchain"

    .line 26
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const/4 v7, 0x0

    .line 27
    :try_start_0
    invoke-direct {p0, v6}, Lcom/byazt/bb/ve;->c(Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x1

    if-eqz v8, :cond_0

    .line 28
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_0

    :try_start_1
    const-string p1, "dpa_sub"

    .line 29
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, p1, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    :catch_0
    :try_start_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v5, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    iget-object p1, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    invoke-interface {p1}, Lcom/byazt/eia/sl;->n()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v6, v2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    iget-object p1, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    invoke-interface {p1}, Lcom/byazt/eia/sl;->qy()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, v1, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    iget-object p1, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    invoke-interface {p1}, Lcom/byazt/eia/sl;->s_()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_0
    invoke-virtual {v6, v0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 34
    :catch_1
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object p1

    invoke-virtual {p1, v4, v3, v7, v6}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V

    return v9

    .line 35
    :cond_0
    :try_start_3
    invoke-direct {p0}, Lcom/byazt/bb/ve;->c()Lcom/byazt/ete/nu;

    move-result-object v8

    if-nez v8, :cond_1

    .line 36
    iget-object v8, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    invoke-interface {v8}, Lcom/byazt/eia/sl;->yp()Lcom/byazt/ete/nu;

    move-result-object v8

    :cond_1
    if-eqz v8, :cond_9

    .line 37
    invoke-virtual {v8}, Lcom/byazt/ete/nu;->tt()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    goto/16 :goto_3

    .line 38
    :cond_2
    invoke-virtual {v8}, Lcom/byazt/ete/nu;->tt()Ljava/lang/String;

    move-result-object v10

    .line 39
    invoke-virtual {p0, p1, v10, v6}, Lcom/byazt/bb/ve;->c(Ljava/util/Map;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v12, "dpl_result"

    .line 40
    invoke-virtual {v6, v12, v11}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "url"

    .line 41
    invoke-virtual {v6, v12, v10}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_2
    nop

    :goto_1
    if-eqz v11, :cond_3

    .line 42
    :try_start_5
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_4

    :cond_3
    invoke-virtual {v8}, Lcom/byazt/ete/nu;->n()I

    move-result v8

    if-ne v8, v9, :cond_4

    .line 43
    invoke-direct {p0}, Lcom/byazt/bb/ve;->ve()Lcom/byazt/ete/ic;

    move-result-object v8

    iget-object v10, p0, Lcom/byazt/bb/ve;->tt:Ljava/lang/String;

    const-string v12, "open_fallback_url"

    const/4 v13, 0x0

    invoke-static {v8, v10, v12, v13}, Lcom/byazt/ddx/uj;->x(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_4
    if-eqz v11, :cond_5

    .line 44
    iget-boolean v8, p0, Lcom/byazt/bb/ve;->a:Z

    if-nez v8, :cond_5

    .line 45
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 46
    :try_start_6
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v5, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    iget-object v5, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    invoke-interface {v5}, Lcom/byazt/eia/sl;->n()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v2, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    iget-object v2, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    invoke-interface {v2}, Lcom/byazt/eia/sl;->qy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    iget-object v1, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    invoke-interface {v1}, Lcom/byazt/eia/sl;->s_()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 50
    :catch_3
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v0

    invoke-virtual {v0, v4, v3, v7, v6}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V

    return p1

    .line 51
    :cond_5
    :try_start_7
    iget-boolean v8, p0, Lcom/byazt/bb/ve;->a:Z

    if-eqz v8, :cond_8

    if-eqz v11, :cond_6

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v8, :cond_6

    goto :goto_2

    .line 52
    :cond_6
    :try_start_8
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v5, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    iget-object v5, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    invoke-interface {v5}, Lcom/byazt/eia/sl;->n()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v2, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    iget-object v2, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    invoke-interface {v2}, Lcom/byazt/eia/sl;->qy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    iget-object v1, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    invoke-interface {v1}, Lcom/byazt/eia/sl;->s_()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 56
    :catch_4
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v0

    invoke-virtual {v0, v4, v3, v7, v6}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 57
    iget-object v0, p0, Lcom/byazt/bb/ve;->c:Lcom/byazt/hl/c;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/byazt/hl/c;->c(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_7

    return v9

    :cond_7
    return v7

    .line 58
    :cond_8
    :goto_2
    :try_start_9
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v5, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    iget-object p1, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    invoke-interface {p1}, Lcom/byazt/eia/sl;->n()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v6, v2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    iget-object p1, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    invoke-interface {p1}, Lcom/byazt/eia/sl;->qy()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, v1, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    iget-object p1, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    invoke-interface {p1}, Lcom/byazt/eia/sl;->s_()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v6, v0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 62
    :catch_5
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object p1

    invoke-virtual {p1, v4, v3, v7, v6}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V

    return v7

    :cond_9
    :goto_3
    :try_start_a
    const-string v8, "dpl_null"

    .line 63
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v8, v10}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 64
    :catch_6
    :try_start_b
    iget-object v8, p0, Lcom/byazt/bb/ve;->c:Lcom/byazt/hl/c;

    if-eqz v8, :cond_a

    invoke-interface {v8, p1}, Lcom/byazt/hl/c;->c(Ljava/util/Map;)Z

    move-result p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz p1, :cond_a

    goto :goto_4

    :cond_a
    const/4 v9, 0x0

    .line 65
    :goto_4
    :try_start_c
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v5, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    iget-object p1, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    invoke-interface {p1}, Lcom/byazt/eia/sl;->n()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v6, v2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    iget-object p1, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    invoke-interface {p1}, Lcom/byazt/eia/sl;->qy()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, v1, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    iget-object p1, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    invoke-interface {p1}, Lcom/byazt/eia/sl;->s_()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    .line 69
    :try_start_d
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v5, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    iget-object v5, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    invoke-interface {v5}, Lcom/byazt/eia/sl;->n()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v2, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    iget-object v2, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    invoke-interface {v2}, Lcom/byazt/eia/sl;->qy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    iget-object v1, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    invoke-interface {v1}, Lcom/byazt/eia/sl;->s_()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    .line 73
    :catch_7
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v0

    invoke-virtual {v0, v4, v3, v7, v6}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 74
    throw p1
.end method

.method public static synthetic uj(Lcom/byazt/bb/ve;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/bb/ve;->sl:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method private ve()Lcom/byazt/ete/ic;
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    iget-object v1, p0, Lcom/byazt/bb/ve;->sl:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/byazt/ppf/ve;->c(Ljava/lang/Object;Ljava/util/Map;)Lcom/byazt/ete/ic;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ve(Lcom/byazt/bb/ve;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/bb/ve;->n:Z

    return p0
.end method

.method private ve(Ljava/util/Map;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "web_meta"

    const-string v1, "req_id"

    const-string v2, "live_interaction_type"

    const-string v3, "native"

    const-string v4, "open_detail_page"

    const-string v5, "uchain"

    .line 3
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const/4 v7, 0x0

    .line 4
    :try_start_0
    iget-object v8, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    instance-of v9, v8, Lcom/byazt/eia/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_0

    .line 5
    :try_start_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v5, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    iget-object p1, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    invoke-interface {p1}, Lcom/byazt/eia/sl;->n()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v6, v2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    iget-object p1, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    invoke-interface {p1}, Lcom/byazt/eia/sl;->qy()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, v1, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    iget-object p1, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    invoke-interface {p1}, Lcom/byazt/eia/sl;->s_()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_0
    invoke-virtual {v6, v0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 9
    :catch_0
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object p1

    invoke-virtual {p1, v4, v3, v7, v6}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V

    return v7

    .line 10
    :cond_0
    :try_start_2
    check-cast v8, Lcom/byazt/eia/a;

    invoke-virtual {v8}, Lcom/byazt/eia/a;->x()I

    move-result v8

    const/4 v9, 0x4

    const/4 v10, 0x1

    if-ne v8, v9, :cond_3

    .line 11
    iget-object v8, p0, Lcom/byazt/bb/ve;->c:Lcom/byazt/hl/c;

    if-eqz v8, :cond_1

    invoke-interface {v8, p1}, Lcom/byazt/hl/c;->c(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    .line 12
    iget-object v8, p0, Lcom/byazt/bb/ve;->u:Lcom/byazt/ny/n$c;

    invoke-interface {v8, v10}, Lcom/byazt/ny/n$c;->c(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    :cond_2
    :try_start_3
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v5, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    iget-object v5, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    invoke-interface {v5}, Lcom/byazt/eia/sl;->n()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v2, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    iget-object v2, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    invoke-interface {v2}, Lcom/byazt/eia/sl;->qy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    iget-object v1, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    invoke-interface {v1}, Lcom/byazt/eia/sl;->s_()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_2
    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 17
    :catch_1
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v0

    invoke-virtual {v0, v4, v3, v7, v6}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V

    return p1

    :cond_3
    if-ne v8, v10, :cond_4

    .line 18
    :try_start_4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v5, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    iget-object p1, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    invoke-interface {p1}, Lcom/byazt/eia/sl;->n()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v6, v2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    iget-object p1, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    invoke-interface {p1}, Lcom/byazt/eia/sl;->qy()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, v1, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    iget-object p1, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    invoke-interface {p1}, Lcom/byazt/eia/sl;->s_()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 22
    :cond_4
    :try_start_5
    iget-object v9, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    check-cast v9, Lcom/byazt/eia/a;

    invoke-virtual {v9}, Lcom/byazt/eia/a;->ve()Ljava/lang/String;

    move-result-object v9

    .line 23
    invoke-virtual {p0, p1, v9, v6}, Lcom/byazt/bb/ve;->c(Ljava/util/Map;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 24
    :try_start_6
    iget-object v10, p0, Lcom/byazt/bb/ve;->x:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "dpa_sub"

    .line 25
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "tag"

    .line 26
    iget-object v11, p0, Lcom/byazt/bb/ve;->x:Ljava/lang/String;

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    const-string v10, "convert_type"

    .line 27
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v10, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "dpl_result"

    .line 28
    invoke-virtual {v6, v8, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "url"

    .line 29
    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :catch_2
    nop

    :goto_3
    if-eqz p1, :cond_6

    .line 30
    :try_start_7
    iget-boolean v8, p0, Lcom/byazt/bb/ve;->a:Z

    if-nez v8, :cond_6

    .line 31
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 32
    :try_start_8
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v5, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    iget-object v5, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    invoke-interface {v5}, Lcom/byazt/eia/sl;->n()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v2, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    iget-object v2, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    invoke-interface {v2}, Lcom/byazt/eia/sl;->qy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    iget-object v1, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    invoke-interface {v1}, Lcom/byazt/eia/sl;->s_()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_2

    .line 36
    :cond_6
    :try_start_9
    iget-boolean v8, p0, Lcom/byazt/bb/ve;->a:Z

    if-eqz v8, :cond_8

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz p1, :cond_7

    goto :goto_4

    .line 37
    :cond_7
    :try_start_a
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v5, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    iget-object p1, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    invoke-interface {p1}, Lcom/byazt/eia/sl;->n()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v6, v2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    iget-object p1, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    invoke-interface {p1}, Lcom/byazt/eia/sl;->qy()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, v1, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    iget-object p1, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    invoke-interface {p1}, Lcom/byazt/eia/sl;->s_()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v6, v0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 41
    :catch_3
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object p1

    invoke-virtual {p1, v4, v3, v7, v6}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V

    return v7

    .line 42
    :cond_8
    :goto_4
    :try_start_b
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v5, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    iget-object p1, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    invoke-interface {p1}, Lcom/byazt/eia/sl;->n()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v6, v2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    iget-object p1, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    invoke-interface {p1}, Lcom/byazt/eia/sl;->qy()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, v1, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    iget-object p1, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    invoke-interface {p1}, Lcom/byazt/eia/sl;->s_()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    .line 46
    :try_start_c
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v5, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    iget-object v5, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    invoke-interface {v5}, Lcom/byazt/eia/sl;->n()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v2, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    iget-object v2, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    invoke-interface {v2}, Lcom/byazt/eia/sl;->qy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    iget-object v1, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    invoke-interface {v1}, Lcom/byazt/eia/sl;->s_()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    .line 50
    :catch_4
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v0

    invoke-virtual {v0, v4, v3, v7, v6}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 51
    throw p1
.end method


# virtual methods
.method public c(Ljava/util/Map;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p2}, Lcom/byazt/bb/ve;->tt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 17
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 18
    iget-object p1, p0, Lcom/byazt/bb/ve;->sl:Ljava/util/Map;

    sget-object p2, Lcom/byazt/cr/n;->uj:Lcom/byazt/cr/n;

    invoke-static {p1, p2}, Lcom/byazt/ppf/ve;->c(Ljava/util/Map;Lcom/byazt/cr/c;)V

    return-object v1

    .line 19
    :cond_0
    invoke-static {v1}, Lcom/byazt/ete/nu;->c(Ljava/lang/String;)V

    .line 20
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 21
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v3, "source"

    const-string v4, "DeepLinkConverter"

    .line 24
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "scheme"

    .line 25
    invoke-static {p2}, Lcom/byazt/aas/nb;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-direct {p0}, Lcom/byazt/bb/ve;->ve()Lcom/byazt/ete/ic;

    move-result-object v3

    iget-object v4, p0, Lcom/byazt/bb/ve;->tt:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/byazt/bb/ve;->n:Z

    invoke-static {v3, v4, v0, v5}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 27
    invoke-static {}, Lcom/byazt/aas/nb;->yv()Z

    move-result v0

    :try_start_0
    const-string v3, "is_lp"

    .line 28
    iget-boolean v4, p0, Lcom/byazt/bb/ve;->n:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "can_qry_pkg"

    .line 29
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz v0, :cond_3

    .line 30
    invoke-static {v2}, Lcom/byazt/aas/nb;->c(Landroid/content/Intent;)Z

    move-result p2

    .line 31
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->ek()Z

    move-result v0

    :try_start_1
    const-string v3, "installed"

    .line 32
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "ignore"

    .line 33
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    :goto_1
    const/4 v3, 0x1

    if-nez p2, :cond_2

    if-eqz v0, :cond_1

    goto :goto_2

    .line 34
    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "not installed"

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v3, p2}, Lcom/byazt/bb/ve;->c(Ljava/util/Map;ZLjava/lang/Throwable;)V

    .line 35
    invoke-direct {p0, v3}, Lcom/byazt/bb/ve;->c(I)V

    return-object v1

    .line 36
    :cond_2
    :goto_2
    invoke-direct {p0, p1, v2, v3, p3}, Lcom/byazt/bb/ve;->c(Ljava/util/Map;Landroid/content/Intent;ZLorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_3
    :try_start_2
    const-string v0, "installed_douyin"

    .line 37
    invoke-static {p2}, Lcom/byazt/wu/c;->c(Ljava/lang/String;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p3, v0, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    invoke-direct {p0}, Lcom/byazt/bb/ve;->ve()Lcom/byazt/ete/ic;

    move-result-object p2

    invoke-static {p2}, Lcom/byazt/aas/nb;->p(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 39
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    const-string v0, "installed_other"

    .line 40
    invoke-static {p2}, Lcom/byazt/aas/nb;->ve(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    const-string v0, "pkg"

    .line 41
    invoke-virtual {p3, v0, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    const/4 p2, 0x0

    .line 42
    invoke-direct {p0, p1, v2, p2, p3}, Lcom/byazt/bb/ve;->c(Ljava/util/Map;Landroid/content/Intent;ZLorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/content/Intent;Z)V
    .locals 9

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 68
    iget-object v0, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/byazt/bb/ve;->ve:Landroid/content/Context;

    if-nez v1, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    invoke-interface {v0}, Lcom/byazt/eia/sl;->yp()Lcom/byazt/ete/nu;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {v0}, Lcom/byazt/ete/nu;->ve()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 71
    invoke-virtual {v0}, Lcom/byazt/ete/nu;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    invoke-static {}, Lcom/byazt/omf/tt;->c()Lcom/byazt/it/ve;

    move-result-object v0

    const-string v1, "dpl_reject_by_dialog"

    const/4 v4, 0x0

    .line 73
    invoke-interface {v0, v1, v4}, Lcom/byazt/it/c;->get(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    invoke-direct {p0}, Lcom/byazt/bb/ve;->ve()Lcom/byazt/ete/ic;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/bb/ve;->tt:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcom/byazt/omf/or;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Z)Z

    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/byazt/bb/ve;->da:Lcom/byazt/eia/sl;

    invoke-interface {v0}, Lcom/byazt/eia/sl;->nu()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 76
    :cond_2
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->ve()Lcom/byazt/aas/c;

    move-result-object v7

    if-nez v7, :cond_3

    return-void

    .line 77
    :cond_3
    new-instance v8, Lcom/byazt/bb/ve$2;

    move-object v0, v8

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/byazt/bb/ve$2;-><init>(Lcom/byazt/bb/ve;JLandroid/content/Intent;ZLcom/byazt/aas/c;)V

    invoke-virtual {v7, v8}, Lcom/byazt/aas/c;->c(Lcom/byazt/aas/c$c;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public c(Lcom/byazt/ny/n$c;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/byazt/bb/ve;->u:Lcom/byazt/ny/n$c;

    return-void
.end method

.method public c(Lcom/byazt/pop/ve;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/byazt/bb/ve;->sp:Lcom/byazt/pop/ve;

    return-void
.end method

.method public c(Lcom/byazt/zd/tt;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/byazt/bb/ve;->i:Lcom/byazt/zd/tt;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/byazt/bb/ve;->x:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 10
    iput-boolean p1, p0, Lcom/byazt/bb/ve;->n:Z

    return-void
.end method

.method public c(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 5
    iget-boolean v0, p0, Lcom/byazt/bb/ve;->yp:Z

    if-eqz v0, :cond_1

    .line 6
    invoke-direct {p0, p1}, Lcom/byazt/bb/ve;->ve(Ljava/util/Map;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 7
    iget-object v0, p0, Lcom/byazt/bb/ve;->u:Lcom/byazt/ny/n$c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/byazt/ny/n$c;->c(Z)V

    :cond_0
    return p1

    .line 8
    :cond_1
    invoke-direct {p0, p1}, Lcom/byazt/bb/ve;->tt(Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public tt(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/bb/ve;->a:Z

    return-void
.end method

.method public ve(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/bb/ve;->t:Z

    return-void
.end method
