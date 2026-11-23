.class public Lcom/byazt/nat/ve;
.super Lcom/byazt/nat/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4ac,
        0x36
    }
.end annotation


# instance fields
.field public a:I

.field public sp:Lcom/byazt/un/sp;

.field public x:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/nat/c;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/byazt/nat/ve;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/zo/c;->uj:Landroid/view/View;

    return-object p0
.end method

.method private da()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/nat/ve;->x:Z

    .line 2
    .line 3
    return v0
.end method

.method private i()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/zo/c;->c:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/byazt/nat/ve;->da()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    return v1

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/byazt/zo/c;->c:Lcom/byazt/ete/ic;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/byazt/ete/ic;->ve(Lcom/byazt/ete/ic;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    return v1

    .line 23
    :cond_2
    iget v0, p0, Lcom/byazt/nat/ve;->a:I

    .line 24
    .line 25
    if-nez v0, :cond_3

    .line 26
    .line 27
    iget-object v0, p0, Lcom/byazt/zo/c;->c:Lcom/byazt/ete/ic;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/byazt/aas/nb;->sl(Lcom/byazt/ete/ic;)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iput v0, p0, Lcom/byazt/nat/ve;->a:I

    .line 34
    .line 35
    :cond_3
    invoke-virtual {p0}, Lcom/byazt/nat/ve;->n()Z

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/byazt/nat/ve;->sp()Z

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/byazt/nat/ve;->a()Z

    .line 42
    .line 43
    .line 44
    iget v0, p0, Lcom/byazt/nat/ve;->a:I

    .line 45
    .line 46
    const/4 v2, 0x5

    .line 47
    if-ne v0, v2, :cond_4

    .line 48
    .line 49
    invoke-direct {p0}, Lcom/byazt/nat/ve;->sl()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/byazt/nat/ve;->sp()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/byazt/nat/ve;->n()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_4

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/byazt/nat/ve;->a()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_4

    .line 72
    .line 73
    return v1

    .line 74
    :cond_4
    iget v0, p0, Lcom/byazt/nat/ve;->a:I

    .line 75
    .line 76
    const/4 v3, 0x1

    .line 77
    if-eq v0, v3, :cond_5

    .line 78
    .line 79
    const/4 v4, 0x2

    .line 80
    if-eq v0, v4, :cond_5

    .line 81
    .line 82
    if-eq v0, v2, :cond_5

    .line 83
    .line 84
    return v1

    .line 85
    :cond_5
    return v3
.end method

.method private sl()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/zo/c;->c:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->vp()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/zo/c;->c:Lcom/byazt/ete/ic;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/byazt/ete/ic;->ve(Lcom/byazt/ete/ic;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    return v1

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    return v0
.end method

.method private tt(Landroid/view/View;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/byazt/un/NativeVideoTsView;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const v3, 0x7e06fff9

    .line 16
    .line 17
    .line 18
    if-eq v1, v3, :cond_6

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const v3, 0x7e06fed0

    .line 25
    .line 26
    .line 27
    if-eq v1, v3, :cond_6

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const v3, 0x7e06fff5

    .line 34
    .line 35
    .line 36
    if-eq v1, v3, :cond_6

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    const v3, 0x7e06ff34

    .line 43
    .line 44
    .line 45
    if-eq v1, v3, :cond_6

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    const v3, 0x7e06fee6

    .line 52
    .line 53
    .line 54
    if-ne v1, v3, :cond_2

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    const v3, 0x7e06feaa

    .line 62
    .line 63
    .line 64
    if-ne v1, v3, :cond_3

    .line 65
    .line 66
    return v2

    .line 67
    :cond_3
    instance-of v1, p1, Landroid/view/ViewGroup;

    .line 68
    .line 69
    if-eqz v1, :cond_5

    .line 70
    .line 71
    const/4 v1, 0x0

    .line 72
    :goto_0
    move-object v3, p1

    .line 73
    check-cast v3, Landroid/view/ViewGroup;

    .line 74
    .line 75
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-ge v1, v4, :cond_5

    .line 80
    .line 81
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-direct {p0, v3}, Lcom/byazt/nat/ve;->tt(Landroid/view/View;)Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-eqz v3, :cond_4

    .line 90
    .line 91
    const/4 v0, 0x1

    .line 92
    goto :goto_1

    .line 93
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_5
    :goto_1
    return v0

    .line 97
    :cond_6
    :goto_2
    return v2
.end method

.method private x()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/byazt/nat/ve;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/byazt/zo/c;->uj:Landroid/view/View;

    .line 10
    .line 11
    invoke-direct {p0, v0}, Lcom/byazt/nat/ve;->tt(Landroid/view/View;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return v1

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/byazt/nat/c;->n:Lcom/byazt/nat/tt;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/byazt/nat/tt;->tt()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    return v1

    .line 27
    :cond_2
    const/4 v0, 0x1

    .line 28
    return v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nat/ve;->sp:Lcom/byazt/un/sp;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/un/sp;->tt()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public c(Ljava/util/Map;Lcom/byazt/zo/ve;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/byazt/zo/ve;",
            ")I"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/byazt/zo/c;->c:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->i()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/byazt/nat/c;->tt(I)V

    .line 3
    invoke-virtual {p0}, Lcom/byazt/nat/c;->ve()V

    .line 4
    iget-object v0, p0, Lcom/byazt/nat/c;->n:Lcom/byazt/nat/tt;

    invoke-virtual {v0}, Lcom/byazt/nat/tt;->c()Lcom/byazt/nat/c$c;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/byazt/nat/ve$1;

    invoke-direct {v1, p0, v0}, Lcom/byazt/nat/ve$1;-><init>(Lcom/byazt/nat/ve;Lcom/byazt/nat/c$c;)V

    invoke-static {v1}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lcom/byazt/nat/c;->n:Lcom/byazt/nat/tt;

    invoke-virtual {v0}, Lcom/byazt/nat/tt;->x()Ljava/util/Map;

    move-result-object v2

    .line 7
    iget-object v0, p0, Lcom/byazt/zo/c;->ve:Lcom/byazt/ete/da;

    invoke-virtual {v0}, Lcom/byazt/ete/da;->gr()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "clickEvent"

    :cond_0
    move-object v3, v0

    .line 9
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_1

    return v9

    :cond_1
    const-string v0, "click_from_uchain"

    const/4 v1, 0x1

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "event_type"

    .line 11
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {}, Lcom/byazt/aas/nb;->md()V

    .line 13
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v0, "material_meta"

    .line 14
    iget-object v5, p0, Lcom/byazt/zo/c;->c:Lcom/byazt/ete/ic;

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "click_chain"

    .line 15
    invoke-virtual {v4, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lcom/byazt/zo/c;->ve:Lcom/byazt/ete/da;

    invoke-virtual {v0}, Lcom/byazt/ete/da;->gu()Ljava/lang/String;

    move-result-object v0

    const-string v5, "dpa_tag"

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "context"

    .line 17
    iget-object v5, p0, Lcom/byazt/zo/c;->tt:Landroid/content/Context;

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lcom/byazt/nat/c;->n:Lcom/byazt/nat/tt;

    invoke-virtual {v0}, Lcom/byazt/nat/tt;->i()Ljava/lang/String;

    move-result-object v0

    const-string v5, "event_tag"

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lcom/byazt/nat/c;->n:Lcom/byazt/nat/tt;

    invoke-virtual {v0}, Lcom/byazt/nat/tt;->sp()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v5, "landing_page_source"

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "view"

    .line 20
    iget-object v5, p0, Lcom/byazt/zo/c;->uj:Landroid/view/View;

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lcom/byazt/zo/c;->uj:Landroid/view/View;

    instance-of v5, v0, Landroid/widget/TextView;

    if-eqz v5, :cond_4

    .line 22
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 23
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\u4e0b\u8f7d"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "\u5b89\u88c5"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 24
    :goto_0
    iget-object v5, p0, Lcom/byazt/zo/c;->uj:Landroid/view/View;

    instance-of v5, v5, Landroid/widget/Button;

    if-eqz v5, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_1
    const-string v5, "handle_chain_data"

    .line 25
    invoke-virtual {v4, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object p1, p0, Lcom/byazt/nat/c;->n:Lcom/byazt/nat/tt;

    invoke-virtual {p1}, Lcom/byazt/nat/tt;->a()Lcom/byazt/pop/ve;

    move-result-object p1

    const-string v5, "has_show_dl_factors"

    if-eqz p1, :cond_7

    const-string v6, "download_adapter"

    .line 27
    invoke-virtual {v4, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-interface {p1}, Lcom/byazt/pop/ve;->uj()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, "is_market_covert"

    invoke-virtual {v4, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-interface {p1}, Lcom/byazt/pop/ve;->sp()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-interface {p1}, Lcom/byazt/pop/ve;->a()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_6

    const-string v6, "activity"

    .line 31
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Landroid/app/Activity;

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/byazt/zo/c;->c:Lcom/byazt/ete/ic;

    invoke-static {v7}, Lcom/byazt/ete/gt;->my(Lcom/byazt/ete/ic;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 32
    :try_start_0
    iget-object v7, p0, Lcom/byazt/zo/c;->uj:Landroid/view/View;

    invoke-static {v7}, Lcom/byazt/wz/tt;->c(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 33
    invoke-interface {p1, v7, v1}, Lcom/byazt/pop/ve;->c(Landroid/app/Activity;Z)V

    .line 34
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 35
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v6

    const-string v7, "openMarketInApp"

    invoke-virtual {v6, v7, p1}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    if-eqz v5, :cond_8

    .line 36
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_3

    .line 37
    :cond_7
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_3
    if-nez v0, :cond_a

    .line 38
    iget-object p1, p0, Lcom/byazt/zo/c;->ve:Lcom/byazt/ete/da;

    invoke-virtual {p1}, Lcom/byazt/ete/da;->uj()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_4

    :cond_9
    const/4 p1, 0x0

    goto :goto_5

    :cond_a
    :goto_4
    const/4 p1, 0x1

    :goto_5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "is_click_button"

    invoke-virtual {v4, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-static {}, Lcom/byazt/rv/c;->c()Lcom/byazt/rv/c;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/byazt/zo/c;->c:Lcom/byazt/ete/ic;

    invoke-virtual {v5}, Lcom/byazt/ete/ic;->hashCode()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/byazt/zo/c;->c:Lcom/byazt/ete/ic;

    invoke-virtual {v5}, Lcom/byazt/ete/ic;->qy()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/byazt/rv/c;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 40
    iget-object v0, p0, Lcom/byazt/zo/c;->c:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->lw()Ljava/lang/String;

    move-result-object v0

    const-class v5, Lcom/byazt/un/sp;

    invoke-static {v0, v5}, Lcom/byazt/omf/rl;->ve(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/un/sp;

    iput-object v0, p0, Lcom/byazt/nat/ve;->sp:Lcom/byazt/un/sp;

    const-string v0, "is_express_ad"

    .line 41
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 42
    instance-of v5, v0, Ljava/lang/Boolean;

    if-eqz v5, :cond_b

    .line 43
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/byazt/nat/ve;->x:Z

    .line 44
    :cond_b
    invoke-direct {p0}, Lcom/byazt/nat/ve;->x()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v5, "is_video_lp"

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 46
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v0, "convert_from_downloader"

    invoke-virtual {v4, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/byazt/nat/c;->n:Lcom/byazt/nat/tt;

    invoke-virtual {v0}, Lcom/byazt/nat/tt;->tt()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v5, "convert_from_landing_page"

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/byazt/nat/c;->n:Lcom/byazt/nat/tt;

    invoke-virtual {v0}, Lcom/byazt/nat/tt;->t()Lcom/byazt/zd/tt;

    move-result-object v0

    const-string v5, "pip_controller"

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-direct {p0}, Lcom/byazt/nat/ve;->x()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/byazt/nat/c;->n:Lcom/byazt/nat/tt;

    invoke-virtual {v0}, Lcom/byazt/nat/tt;->uj()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    const-string v0, "open_video_detail_page_direct"

    .line 50
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/byazt/nat/c;->n:Lcom/byazt/nat/tt;

    invoke-virtual {v0}, Lcom/byazt/nat/tt;->da()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "is_from_video_layout"

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "is_open_web_page"

    .line 52
    invoke-virtual {v4, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object p1, p0, Lcom/byazt/zo/c;->ve:Lcom/byazt/ete/da;

    invoke-virtual {p1}, Lcom/byazt/ete/da;->uj()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "is_feed_register_direct_download"

    invoke-virtual {v4, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 55
    iget-object v1, p0, Lcom/byazt/zo/c;->c:Lcom/byazt/ete/ic;

    iget-object p1, p0, Lcom/byazt/nat/c;->n:Lcom/byazt/nat/tt;

    .line 56
    invoke-virtual {p1}, Lcom/byazt/nat/tt;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/byazt/zo/ve;->c()J

    move-result-wide v7

    .line 57
    invoke-static/range {v1 .. v8}, Lcom/byazt/ppf/ve;->c(Lcom/byazt/ete/ic;Ljava/util/Map;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/util/HashMap;J)V

    .line 58
    invoke-virtual {p0}, Lcom/byazt/nat/c;->uj()V

    return v9
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nat/ve;->sp:Lcom/byazt/un/sp;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/un/sp;->c()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public sp()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/zo/c;->c:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-static {v0}, Lcom/byazt/aas/nb;->t(Lcom/byazt/ete/ic;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2, v0}, Lcom/byazt/ogz/sl;->a(I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eq v0, v1, :cond_8

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    const/4 v3, 0x0

    .line 23
    if-eq v0, v2, :cond_5

    .line 24
    .line 25
    const/4 v2, 0x3

    .line 26
    if-eq v0, v2, :cond_4

    .line 27
    .line 28
    const/4 v2, 0x5

    .line 29
    if-eq v0, v2, :cond_1

    .line 30
    .line 31
    return v1

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/byazt/zo/c;->tt:Landroid/content/Context;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/byazt/nr/rh;->uj(Landroid/content/Context;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_3

    .line 39
    .line 40
    iget-object v0, p0, Lcom/byazt/zo/c;->tt:Landroid/content/Context;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/byazt/nr/rh;->a(Landroid/content/Context;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    return v3

    .line 50
    :cond_3
    :goto_0
    return v1

    .line 51
    :cond_4
    return v3

    .line 52
    :cond_5
    iget-object v0, p0, Lcom/byazt/zo/c;->tt:Landroid/content/Context;

    .line 53
    .line 54
    invoke-static {v0}, Lcom/byazt/nr/rh;->n(Landroid/content/Context;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_7

    .line 59
    .line 60
    iget-object v0, p0, Lcom/byazt/zo/c;->tt:Landroid/content/Context;

    .line 61
    .line 62
    invoke-static {v0}, Lcom/byazt/nr/rh;->uj(Landroid/content/Context;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_7

    .line 67
    .line 68
    iget-object v0, p0, Lcom/byazt/zo/c;->tt:Landroid/content/Context;

    .line 69
    .line 70
    invoke-static {v0}, Lcom/byazt/nr/rh;->a(Landroid/content/Context;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_6

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_6
    return v3

    .line 78
    :cond_7
    :goto_1
    return v1

    .line 79
    :cond_8
    iget-object v0, p0, Lcom/byazt/zo/c;->tt:Landroid/content/Context;

    .line 80
    .line 81
    invoke-static {v0}, Lcom/byazt/nr/rh;->uj(Landroid/content/Context;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    return v0
.end method
