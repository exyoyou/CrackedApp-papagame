.class public Lcom/byazt/vis/c;
.super Lcom/byazt/vis/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x712,
        0x14
    }
.end annotation


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public da:I

.field public i:I

.field public n:Lcom/byazt/ete/i;

.field public sl:Ljava/lang/String;

.field public sp:Ljava/lang/String;

.field public t:Lcom/byazt/zd/tt;

.field public u:Z

.field public x:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/byazt/vis/tt;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/byazt/vis/c;->i:I

    .line 3
    iput v0, p0, Lcom/byazt/vis/c;->da:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/byazt/vis/c;->u:Z

    return-void
.end method

.method public constructor <init>(Lcom/byazt/ete/ic;Landroid/content/Context;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/byazt/vis/tt;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/byazt/vis/c;->i:I

    .line 7
    iput v0, p0, Lcom/byazt/vis/c;->da:I

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/byazt/vis/c;->u:Z

    .line 9
    iput-object p1, p0, Lcom/byazt/zo/c;->c:Lcom/byazt/ete/ic;

    .line 10
    iput-object p2, p0, Lcom/byazt/zo/c;->tt:Landroid/content/Context;

    .line 11
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/byazt/vis/c;->a:Ljava/util/Map;

    return-void
.end method

.method private a()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/byazt/omf/tt;->c()Lcom/byazt/it/ve;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "click_to_live_duration"

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    invoke-interface {v0, v1, v2, v3}, Lcom/byazt/it/c;->get(Ljava/lang/String;J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v4

    .line 13
    const-string v6, "click_livead_duration"

    .line 14
    .line 15
    cmp-long v7, v4, v2

    .line 16
    .line 17
    if-nez v7, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/byazt/vis/c;->a:Ljava/util/Map;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-interface {v0, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void

    .line 27
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 28
    .line 29
    .line 30
    move-result-wide v7

    .line 31
    sub-long/2addr v7, v4

    .line 32
    new-instance v4, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v4}, Lcom/byazt/vis/c;->c(Ljava/util/Map;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, v1, v2, v3}, Lcom/byazt/it/c;->get(Ljava/lang/String;J)J

    .line 48
    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public c(Ljava/util/Map;Lcom/byazt/zo/ve;)I
    .locals 11
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

    .line 5
    iget-boolean p2, p0, Lcom/byazt/vis/c;->u:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return v0

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/byazt/vis/c;->t:Lcom/byazt/zd/tt;

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/byazt/zd/tt;->sl()I

    move-result p2

    if-ne p2, v1, :cond_1

    return v0

    .line 7
    :cond_1
    iget-object p2, p0, Lcom/byazt/zo/c;->ve:Lcom/byazt/ete/da;

    if-nez p2, :cond_2

    .line 8
    new-instance p2, Lcom/byazt/ete/da;

    invoke-direct {p2}, Lcom/byazt/ete/da;-><init>()V

    iput-object p2, p0, Lcom/byazt/zo/c;->ve:Lcom/byazt/ete/da;

    :cond_2
    const-string p2, "splash_ad"

    .line 9
    iget-object v2, p0, Lcom/byazt/vis/c;->sp:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "cache_splash_ad"

    iget-object v2, p0, Lcom/byazt/vis/c;->sp:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "splash_ad_landingpage"

    iget-object v2, p0, Lcom/byazt/vis/c;->sp:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 10
    :cond_3
    iget p2, p0, Lcom/byazt/vis/c;->i:I

    if-ne p2, v1, :cond_4

    const/4 p2, 0x1

    goto :goto_0

    :cond_4
    const/4 p2, 0x0

    :goto_0
    iput p2, p0, Lcom/byazt/vis/c;->i:I

    :cond_5
    const-string p2, "convert_res"

    .line 11
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 12
    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_6

    .line 13
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    move v6, p2

    goto :goto_1

    :cond_6
    const/4 v6, 0x0

    .line 14
    :goto_1
    iget-object p2, p0, Lcom/byazt/vis/c;->n:Lcom/byazt/ete/i;

    if-nez p2, :cond_7

    .line 15
    invoke-virtual {p0}, Lcom/byazt/vis/c;->uj()Lcom/byazt/ete/i;

    move-result-object p2

    iput-object p2, p0, Lcom/byazt/vis/c;->n:Lcom/byazt/ete/i;

    :cond_7
    const-string p2, "is_reward_live"

    .line 16
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 17
    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_8

    .line 18
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_2

    :cond_8
    const/4 p2, 0x0

    :goto_2
    if-eqz p2, :cond_9

    .line 19
    invoke-direct {p0}, Lcom/byazt/vis/c;->a()V

    :cond_9
    const-string p2, "reward_browse_banner_from"

    .line 20
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 21
    iget-object p2, p0, Lcom/byazt/vis/c;->a:Ljava/util/Map;

    const-string v2, "refer"

    const-string v3, "banner"

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_a
    iget-object p2, p0, Lcom/byazt/zo/c;->c:Lcom/byazt/ete/ic;

    invoke-static {p2}, Lcom/byazt/ete/h;->c(Lcom/byazt/ete/ic;)Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/byazt/zo/c;->c:Lcom/byazt/ete/ic;

    .line 23
    invoke-static {p2}, Lcom/byazt/aas/nb;->t(Lcom/byazt/ete/ic;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/byazt/dl/uj;->c(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 24
    iget-object p2, p0, Lcom/byazt/zo/c;->c:Lcom/byazt/ete/ic;

    invoke-virtual {p2}, Lcom/byazt/ete/ic;->zo()Lcom/byazt/ete/h;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 25
    iget-object p2, p0, Lcom/byazt/vis/c;->a:Ljava/util/Map;

    iget-object v2, p0, Lcom/byazt/zo/c;->c:Lcom/byazt/ete/ic;

    invoke-virtual {v2}, Lcom/byazt/ete/ic;->zo()Lcom/byazt/ete/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/ete/h;->ve()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "refresh_num"

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    const-string p2, "click_saas_action"

    .line 26
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 27
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_c

    .line 28
    iget-object v3, p0, Lcom/byazt/vis/c;->a:Ljava/util/Map;

    invoke-interface {v3, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    const-string p2, "click_saas_area"

    .line 29
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz v2, :cond_d

    .line 30
    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_d

    .line 31
    iget-object v2, p0, Lcom/byazt/vis/c;->a:Ljava/util/Map;

    invoke-interface {v2, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_d
    invoke-virtual {p0, v1}, Lcom/byazt/vis/c;->c(Z)V

    .line 33
    iget-object p1, p0, Lcom/byazt/zo/c;->ve:Lcom/byazt/ete/da;

    invoke-virtual {p1}, Lcom/byazt/ete/da;->x()Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 v8, 0x1

    goto :goto_3

    :cond_e
    const/4 v1, 0x2

    const/4 v8, 0x2

    :goto_3
    const-string v2, "click"

    .line 34
    iget-object v3, p0, Lcom/byazt/zo/c;->c:Lcom/byazt/ete/ic;

    iget-object v4, p0, Lcom/byazt/vis/c;->n:Lcom/byazt/ete/i;

    iget-object v5, p0, Lcom/byazt/vis/c;->sp:Ljava/lang/String;

    iget-object v7, p0, Lcom/byazt/vis/c;->a:Ljava/util/Map;

    iget-boolean v9, p0, Lcom/byazt/vis/c;->x:Z

    iget-object p1, p0, Lcom/byazt/zo/c;->ve:Lcom/byazt/ete/da;

    invoke-virtual {p1}, Lcom/byazt/ete/da;->c()Z

    move-result v10

    invoke-static/range {v2 .. v10}, Lcom/byazt/ddx/uj;->c(Ljava/lang/String;Lcom/byazt/ete/ic;Lcom/byazt/ete/i;Ljava/lang/String;ZLjava/util/Map;IZZ)V

    return v0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/byazt/vis/c;->i:I

    return-void
.end method

.method public c(Lcom/byazt/ete/i;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/vis/c;->n:Lcom/byazt/ete/i;

    return-void
.end method

.method public c(Lcom/byazt/zd/tt;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/byazt/vis/c;->t:Lcom/byazt/zd/tt;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/vis/c;->sp:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/byazt/vis/c;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 36
    iput-object p1, p0, Lcom/byazt/vis/c;->a:Ljava/util/Map;

    return-void

    .line 37
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/vis/c;->u:Z

    return-void
.end method

.method public n()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/vis/c;->a:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()V
    .locals 1

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/byazt/vis/c;->da:I

    return-void
.end method

.method public tt(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/vis/c;->sl:Ljava/lang/String;

    return-void
.end method

.method public tt(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/vis/c;->x:Z

    return-void
.end method

.method public uj()Lcom/byazt/ete/i;
    .locals 9

    .line 1
    iget v0, p0, Lcom/byazt/vis/c;->i:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    iput v1, p0, Lcom/byazt/vis/c;->i:I

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, -0x1

    .line 10
    :goto_0
    const-string v1, "device_info_new"

    .line 11
    .line 12
    invoke-static {v1}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/byazt/dna/u;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/byazt/zo/c;->tt:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {v2}, Lcom/byazt/aas/pf;->a(Landroid/content/Context;)F

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-interface {v1}, Lcom/byazt/dna/u;->getDisplayDpi()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iget-object v3, p0, Lcom/byazt/zo/c;->tt:Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {v3}, Lcom/byazt/aas/pf;->sp(Landroid/content/Context;)F

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    iget-object v4, p0, Lcom/byazt/zo/c;->ve:Lcom/byazt/ete/da;

    .line 35
    .line 36
    invoke-virtual {v4}, Lcom/byazt/ete/da;->da()Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    iget-object v5, p0, Lcom/byazt/zo/c;->ve:Lcom/byazt/ete/da;

    .line 41
    .line 42
    invoke-virtual {v5}, Lcom/byazt/ete/da;->i()Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    new-instance v6, Lcom/byazt/ete/i$c;

    .line 47
    .line 48
    invoke-direct {v6}, Lcom/byazt/ete/i$c;-><init>()V

    .line 49
    .line 50
    .line 51
    iget-object v7, p0, Lcom/byazt/zo/c;->ve:Lcom/byazt/ete/da;

    .line 52
    .line 53
    invoke-virtual {v7}, Lcom/byazt/ete/da;->nu()F

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    invoke-virtual {v6, v7}, Lcom/byazt/ete/i$c;->a(F)Lcom/byazt/ete/i$c;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    iget-object v7, p0, Lcom/byazt/zo/c;->ve:Lcom/byazt/ete/da;

    .line 62
    .line 63
    invoke-virtual {v7}, Lcom/byazt/ete/da;->rh()F

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    invoke-virtual {v6, v7}, Lcom/byazt/ete/i$c;->n(F)Lcom/byazt/ete/i$c;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    iget-object v7, p0, Lcom/byazt/zo/c;->ve:Lcom/byazt/ete/da;

    .line 72
    .line 73
    invoke-virtual {v7}, Lcom/byazt/ete/da;->my()F

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    invoke-virtual {v6, v7}, Lcom/byazt/ete/i$c;->uj(F)Lcom/byazt/ete/i$c;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    iget-object v7, p0, Lcom/byazt/zo/c;->ve:Lcom/byazt/ete/da;

    .line 82
    .line 83
    invoke-virtual {v7}, Lcom/byazt/ete/da;->gt()F

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    invoke-virtual {v6, v7}, Lcom/byazt/ete/i$c;->ve(F)Lcom/byazt/ete/i$c;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    iget-object v7, p0, Lcom/byazt/zo/c;->ve:Lcom/byazt/ete/da;

    .line 92
    .line 93
    invoke-virtual {v7}, Lcom/byazt/ete/da;->z()J

    .line 94
    .line 95
    .line 96
    move-result-wide v7

    .line 97
    invoke-virtual {v6, v7, v8}, Lcom/byazt/ete/i$c;->tt(J)Lcom/byazt/ete/i$c;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    iget-object v7, p0, Lcom/byazt/zo/c;->ve:Lcom/byazt/ete/da;

    .line 102
    .line 103
    invoke-virtual {v7}, Lcom/byazt/ete/da;->m()J

    .line 104
    .line 105
    .line 106
    move-result-wide v7

    .line 107
    invoke-virtual {v6, v7, v8}, Lcom/byazt/ete/i$c;->c(J)Lcom/byazt/ete/i$c;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    invoke-static {v4}, Lcom/byazt/aas/pf;->c(Landroid/view/View;)[I

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    invoke-virtual {v6, v7}, Lcom/byazt/ete/i$c;->tt([I)Lcom/byazt/ete/i$c;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    invoke-static {v5}, Lcom/byazt/aas/pf;->c(Landroid/view/View;)[I

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    invoke-virtual {v6, v7}, Lcom/byazt/ete/i$c;->c([I)Lcom/byazt/ete/i$c;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    invoke-static {v4}, Lcom/byazt/aas/pf;->ve(Landroid/view/View;)[I

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-virtual {v6, v4}, Lcom/byazt/ete/i$c;->ve([I)Lcom/byazt/ete/i$c;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-static {v5}, Lcom/byazt/aas/pf;->ve(Landroid/view/View;)[I

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    invoke-virtual {v4, v5}, Lcom/byazt/ete/i$c;->uj([I)Lcom/byazt/ete/i$c;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    iget-object v5, p0, Lcom/byazt/zo/c;->ve:Lcom/byazt/ete/da;

    .line 144
    .line 145
    invoke-virtual {v5}, Lcom/byazt/ete/da;->n()I

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    invoke-virtual {v4, v5}, Lcom/byazt/ete/i$c;->uj(I)Lcom/byazt/ete/i$c;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    iget-object v5, p0, Lcom/byazt/zo/c;->ve:Lcom/byazt/ete/da;

    .line 154
    .line 155
    invoke-virtual {v5}, Lcom/byazt/ete/da;->a()I

    .line 156
    .line 157
    .line 158
    move-result v5

    .line 159
    invoke-virtual {v4, v5}, Lcom/byazt/ete/i$c;->n(I)Lcom/byazt/ete/i$c;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    iget-object v5, p0, Lcom/byazt/zo/c;->ve:Lcom/byazt/ete/da;

    .line 164
    .line 165
    invoke-virtual {v5}, Lcom/byazt/ete/da;->sp()I

    .line 166
    .line 167
    .line 168
    move-result v5

    .line 169
    invoke-virtual {v4, v5}, Lcom/byazt/ete/i$c;->a(I)Lcom/byazt/ete/i$c;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    iget-object v5, p0, Lcom/byazt/zo/c;->ve:Lcom/byazt/ete/da;

    .line 174
    .line 175
    invoke-virtual {v5}, Lcom/byazt/ete/da;->u()Landroid/util/SparseArray;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    invoke-virtual {v4, v5}, Lcom/byazt/ete/i$c;->c(Landroid/util/SparseArray;)Lcom/byazt/ete/i$c;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    invoke-virtual {v5}, Lcom/byazt/omf/x;->tt()Z

    .line 188
    .line 189
    .line 190
    move-result v5

    .line 191
    if-eqz v5, :cond_1

    .line 192
    .line 193
    const/4 v5, 0x1

    .line 194
    goto :goto_1

    .line 195
    :cond_1
    const/4 v5, 0x2

    .line 196
    :goto_1
    invoke-virtual {v4, v5}, Lcom/byazt/ete/i$c;->ve(I)Lcom/byazt/ete/i$c;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    iget-object v5, p0, Lcom/byazt/vis/c;->sl:Ljava/lang/String;

    .line 201
    .line 202
    invoke-virtual {v4, v5}, Lcom/byazt/ete/i$c;->c(Ljava/lang/String;)Lcom/byazt/ete/i$c;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    invoke-virtual {v4, v2}, Lcom/byazt/ete/i$c;->c(F)Lcom/byazt/ete/i$c;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    invoke-virtual {v2, v1}, Lcom/byazt/ete/i$c;->tt(I)Lcom/byazt/ete/i$c;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    invoke-virtual {v1, v3}, Lcom/byazt/ete/i$c;->tt(F)Lcom/byazt/ete/i$c;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-virtual {v1, v0}, Lcom/byazt/ete/i$c;->sp(I)Lcom/byazt/ete/i$c;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    iget v1, p0, Lcom/byazt/vis/c;->da:I

    .line 223
    .line 224
    invoke-virtual {v0, v1}, Lcom/byazt/ete/i$c;->x(I)Lcom/byazt/ete/i$c;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    iget-object v1, p0, Lcom/byazt/zo/c;->ve:Lcom/byazt/ete/da;

    .line 229
    .line 230
    invoke-virtual {v1}, Lcom/byazt/ete/da;->qy()I

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    invoke-virtual {v0, v1}, Lcom/byazt/ete/i$c;->i(I)Lcom/byazt/ete/i$c;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    iget-object v1, p0, Lcom/byazt/zo/c;->ve:Lcom/byazt/ete/da;

    .line 239
    .line 240
    invoke-virtual {v1}, Lcom/byazt/ete/da;->rl()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    invoke-virtual {v0, v1}, Lcom/byazt/ete/i$c;->n(Ljava/lang/String;)Lcom/byazt/ete/i$c;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/byazt/zo/c;->ve:Lcom/byazt/ete/da;

    .line 249
    .line 250
    invoke-virtual {v1}, Lcom/byazt/ete/da;->uj()Z

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    invoke-virtual {v0, v1}, Lcom/byazt/ete/i$c;->c(Z)Lcom/byazt/ete/i$c;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    iget-object v1, p0, Lcom/byazt/zo/c;->ve:Lcom/byazt/ete/da;

    .line 259
    .line 260
    invoke-virtual {v1}, Lcom/byazt/ete/da;->tt()B

    .line 261
    .line 262
    .line 263
    move-result v1

    .line 264
    invoke-virtual {v0, v1}, Lcom/byazt/ete/i$c;->tt(B)Lcom/byazt/ete/i$c;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    iget-object v1, p0, Lcom/byazt/zo/c;->ve:Lcom/byazt/ete/da;

    .line 269
    .line 270
    invoke-virtual {v1}, Lcom/byazt/ete/da;->ve()B

    .line 271
    .line 272
    .line 273
    move-result v1

    .line 274
    invoke-virtual {v0, v1}, Lcom/byazt/ete/i$c;->c(B)Lcom/byazt/ete/i$c;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/byazt/zo/c;->c:Lcom/byazt/ete/ic;

    .line 279
    .line 280
    invoke-static {v1}, Lcom/byazt/wz/x;->tt(Lcom/byazt/ete/ic;)I

    .line 281
    .line 282
    .line 283
    move-result v1

    .line 284
    invoke-virtual {v0, v1}, Lcom/byazt/ete/i$c;->c(I)Lcom/byazt/ete/i$c;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-virtual {v0}, Lcom/byazt/ete/i$c;->c()Lcom/byazt/ete/i;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    return-object v0
.end method

.method public ve()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/vis/c;->sl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
