.class public Lcom/byazt/hz/a;
.super Lcom/byazt/hz/tt;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/zq/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2bd,
        0x22
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/oc/c;

.field public m:Z

.field public nu:Lcom/byazt/oc/uj;

.field public tt:Lcom/byazt/oc/tt;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/hz/tt;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/byazt/hz/a;->m:Z

    .line 6
    .line 7
    return-void
.end method

.method private c(Landroid/content/Context;Lcom/byazt/yl/ve;)Landroid/view/View;
    .locals 3

    .line 8
    iput-object p2, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 9
    iget-object v0, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    invoke-virtual {v0, p2}, Lcom/byazt/iz/tt;->uj(Lcom/byazt/yl/ve;)V

    .line 10
    iget-object p2, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/byazt/yl/ve;->setHasShown(Z)V

    .line 11
    iget-object p2, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    iget-object v0, p0, Lcom/byazt/hz/tt;->i:Lcom/byazt/zq/a;

    invoke-virtual {p2, v0}, Lcom/byazt/yl/ve;->setTTAdatperCallback(Lcom/byazt/zq/a;)V

    .line 12
    iget-object p2, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-virtual {p2}, Lcom/byazt/yl/ve;->canAdReuse()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object p2

    iget-object v0, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    iget-object v1, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-virtual {v2}, Lcom/byazt/ll/tt;->n()I

    move-result v2

    invoke-virtual {p2, v0, v1, v2}, Lcom/byazt/hk/c;->uj(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 13
    iget-object p2, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    iget-object v0, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/byazt/qv/a;->c(Lcom/byazt/yl/ve;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p2, 0x0

    .line 14
    invoke-direct {p0, p2}, Lcom/byazt/hz/a;->c(Z)V

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    const-string v1, "show"

    invoke-static {v0, v1}, Lcom/byazt/eu/uj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u5c55\u793a\u7684\u5e7f\u544a\u7c7b\u578b\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 16
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getAdNetworkPlatformId()I

    move-result v0

    invoke-static {v0}, Lcom/byazt/yl/c;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",slotId\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 17
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",slotType:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getAdNetworkSlotType()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TTMediationSDK"

    .line 18
    invoke-static {v0, p2}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object p2, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-virtual {p2}, Lcom/byazt/yl/ve;->getAdView()Landroid/view/View;

    move-result-object p2

    .line 20
    iget-object v1, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-virtual {v1}, Lcom/byazt/yl/ve;->isCustomAd()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getSubAdType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-virtual {v1}, Lcom/byazt/yl/ve;->isExpressAd()Z

    move-result v1

    if-nez v1, :cond_2

    .line 21
    iget-object v1, p0, Lcom/byazt/hz/a;->nu:Lcom/byazt/oc/uj;

    if-eqz v1, :cond_1

    .line 22
    :try_start_0
    iget-object v2, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-direct {p0, v2}, Lcom/byazt/hz/a;->ve(Lcom/byazt/yl/ve;)Lcom/byazt/oc/ve;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/oc/uj;->c(Lcom/byazt/oc/ve;)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_2

    const-string v1, "--==-- banner\u6df7\u51fa\u81ea\u6e32\u67d3\u4fe1\u606f\u6d41\uff0cgetGMBannerViewFromNativeAd()\u8fd4\u56denull\uff0c\u5c06\u65e0\u6cd5\u5c55\u793a\u8be5\u5e7f\u544a"

    .line 23
    invoke-static {v0, v1}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "--==-- banner\u6df7\u51fa\u81ea\u6e32\u67d3\u4fe1\u606f\u6d41\uff0cgetGMBannerViewFromNativeAd()\u53d1\u751f\u5f02\u5e38\uff0c\u5c06\u65e0\u6cd5\u5c55\u793a\u8be5\u5e7f\u544a\uff0c\u4fe1\u606f\u5982\u4e0b\uff1a"

    .line 24
    invoke-static {v0, v2}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-static {v1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const-string v1, "--==-- banner\u6df7\u51fa\u81ea\u6e32\u67d3\u4fe1\u606f\u6d41\uff0c\u4f46\u672a\u63d0\u4f9bGMNativeToBannerListener\uff0c\u5c06\u65e0\u6cd5\u5c55\u793a\u8be5\u5e7f\u544a"

    .line 26
    invoke-static {v0, v1}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-virtual {v0}, Lcom/byazt/yl/ve;->hasDislike()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 28
    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    check-cast p1, Landroid/app/Activity;

    new-instance v1, Lcom/byazt/hz/a$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p2}, Lcom/byazt/hz/a$1;-><init>(Lcom/byazt/hz/a;Ljava/util/function/Function;Landroid/view/View;)V

    invoke-virtual {v0, p1, v1}, Lcom/byazt/yl/ve;->setDislikeCallback(Landroid/app/Activity;Lcom/byazt/dhf/c;)V

    :cond_3
    return-object p2
.end method

.method public static synthetic c(Lcom/byazt/hz/a;)Lcom/byazt/oc/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/hz/a;->c:Lcom/byazt/oc/c;

    return-object p0
.end method

.method private c(Z)V
    .locals 9

    .line 75
    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/byazt/yl/ve;->canAdReuse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-virtual {v2}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-virtual {v3}, Lcom/byazt/ll/tt;->n()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/hk/c;->uj(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object v1

    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    iget-object v0, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    invoke-virtual {v0}, Lcom/byazt/iz/tt;->zb()Ljava/util/Map;

    move-result-object v4

    iget-object v0, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    .line 78
    invoke-virtual {v0}, Lcom/byazt/iz/tt;->or()Lcom/byazt/yf/sl;

    move-result-object v6

    iget-object v0, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    invoke-virtual {v0}, Lcom/byazt/iz/tt;->pf()Lcom/byazt/nbs/i;

    move-result-object v7

    iget-object v0, p0, Lcom/byazt/hz/tt;->x:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/content/Context;

    move v5, p1

    .line 79
    invoke-virtual/range {v1 .. v8}, Lcom/byazt/hk/c;->c(Ljava/lang/String;Lcom/byazt/ll/tt;Ljava/util/Map;ZLcom/byazt/yf/sl;Lcom/byazt/nbs/i;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private ve(Lcom/byazt/yl/ve;)Lcom/byazt/oc/ve;
    .locals 1

    .line 7
    new-instance v0, Lcom/byazt/hz/a$3;

    invoke-direct {v0, p0, p1}, Lcom/byazt/hz/a$3;-><init>(Lcom/byazt/hz/a;Lcom/byazt/yl/ve;)V

    return-object v0
.end method

.method private ve(Lcom/byazt/pp/c;)V
    .locals 1

    .line 6
    new-instance v0, Lcom/byazt/hz/a$2;

    invoke-direct {v0, p0, p1}, Lcom/byazt/hz/a$2;-><init>(Lcom/byazt/hz/a;Lcom/byazt/pp/c;)V

    invoke-static {v0}, Lcom/byazt/eu/n;->ve(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->onResume()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public declared-synchronized c(Landroid/content/Context;)Landroid/view/View;
    .locals 14

    monitor-enter p0

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-static {v0}, Lcom/byazt/ng/a;->c(Lcom/byazt/ll/tt;)V

    .line 30
    iget-boolean v0, p0, Lcom/byazt/hz/tt;->t:Z

    const v1, 0x9c74

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 31
    iget-object p1, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-static {v3, p1, v2}, Lcom/byazt/ng/a;->c(Ljava/util/List;Lcom/byazt/ll/tt;I)V

    .line 32
    new-instance p1, Lcom/byazt/pp/c;

    invoke-static {v1}, Lcom/byazt/pp/c;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/byazt/hz/a;->ve(Lcom/byazt/pp/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 33
    monitor-exit p0

    return-object v3

    .line 34
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/byazt/hz/tt;->tt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    iget-object p1, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-static {v3, p1, v0}, Lcom/byazt/ng/a;->c(Ljava/util/List;Lcom/byazt/ll/tt;I)V

    .line 36
    new-instance p1, Lcom/byazt/pp/c;

    invoke-static {v0}, Lcom/byazt/pp/c;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/byazt/hz/a;->ve(Lcom/byazt/pp/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 37
    monitor-exit p0

    return-object v3

    .line 38
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/byazt/iz/tt;->c(Z)Ljava/util/List;

    move-result-object v0

    .line 39
    iget-object v5, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    invoke-virtual {v5, v0}, Lcom/byazt/iz/tt;->c(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 40
    :try_start_3
    invoke-virtual {p0}, Lcom/byazt/hz/tt;->tt()Ljava/util/List;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    .line 41
    :try_start_4
    invoke-static {v5}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    move-object v5, v3

    :goto_0
    if-eqz v5, :cond_4

    .line 42
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 43
    invoke-virtual {p0, v0}, Lcom/byazt/hz/tt;->tt(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v6

    .line 44
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v7, v3

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/byazt/nbs/da;

    if-eqz v8, :cond_2

    .line 45
    invoke-virtual {v8}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v9

    .line 46
    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/byazt/yl/ve;

    if-eqz v10, :cond_3

    .line 47
    iget-object v11, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/byazt/yl/ve;->isReady(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v10}, Lcom/byazt/yl/ve;->isHasShown()Z

    move-result v11

    if-nez v11, :cond_3

    .line 48
    invoke-direct {p0, p1, v10}, Lcom/byazt/hz/a;->c(Landroid/content/Context;Lcom/byazt/yl/ve;)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_5

    .line 49
    :cond_3
    invoke-virtual {v8}, Lcom/byazt/nbs/da;->gt()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 50
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object v8

    iget-object v10, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    iget-object v11, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-virtual {v11}, Lcom/byazt/ll/tt;->n()I

    move-result v11

    invoke-virtual {v8, v10, v9, v11}, Lcom/byazt/hk/c;->uj(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 51
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object v8

    iget-object v10, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-virtual {v8, v9, v10, v2}, Lcom/byazt/hk/c;->c(Ljava/lang/String;Lcom/byazt/ll/tt;Z)I

    move-result v8

    const/4 v10, 0x3

    if-ne v8, v10, :cond_2

    .line 52
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object v8

    iget-object v10, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-virtual {v10}, Lcom/byazt/ll/tt;->n()I

    move-result v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/byazt/hk/c;->c(Ljava/lang/String;Lcom/byazt/ll/tt;I)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 53
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 54
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/byazt/ix/sp;

    iget-object v8, v8, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    if-eqz v8, :cond_2

    .line 55
    iget-object v9, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/byazt/yl/ve;->isReady(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8}, Lcom/byazt/yl/ve;->isHasShown()Z

    move-result v9

    if-nez v9, :cond_2

    .line 56
    invoke-virtual {p0, v8}, Lcom/byazt/hz/tt;->tt(Lcom/byazt/yl/ve;)V

    .line 57
    invoke-direct {p0, p1, v8}, Lcom/byazt/hz/a;->c(Landroid/content/Context;Lcom/byazt/yl/ve;)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_5

    goto/16 :goto_1

    :cond_4
    move-object v7, v3

    :cond_5
    if-nez v7, :cond_7

    if-eqz v0, :cond_7

    .line 58
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 59
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/byazt/yl/ve;

    if-eqz v6, :cond_6

    .line 60
    iget-object v8, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/byazt/yl/ve;->isReady(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v6}, Lcom/byazt/yl/ve;->isHasShown()Z

    move-result v8

    if-nez v8, :cond_6

    .line 61
    invoke-direct {p0, p1, v6}, Lcom/byazt/hz/a;->c(Landroid/content/Context;Lcom/byazt/yl/ve;)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_7

    goto :goto_2

    :cond_7
    if-eqz v7, :cond_9

    .line 62
    iput-boolean v4, p0, Lcom/byazt/hz/tt;->t:Z

    .line 63
    iget-object p1, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    invoke-virtual {p1, v4}, Lcom/byazt/iz/tt;->c(Z)Ljava/util/List;

    move-result-object p1

    .line 64
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object v8

    iget-object v10, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    iget-object v11, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-virtual {v11}, Lcom/byazt/ll/tt;->n()I

    move-result v12

    iget-object v13, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    move-object v9, p1

    invoke-virtual/range {v8 .. v13}, Lcom/byazt/hk/c;->c(Ljava/util/List;Ljava/lang/String;Lcom/byazt/ll/tt;ILcom/byazt/yl/ve;)V

    .line 65
    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    if-eqz v0, :cond_8

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    iget-object v1, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-static {}, Lcom/byazt/vy/c;->c()Lcom/byazt/vy/c;

    move-result-object v1

    iget-object v3, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-static {v3, v0, p1}, Lcom/byazt/vy/c;->c(Lcom/byazt/ll/tt;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Lcom/byazt/vy/c;->c(Lcom/byazt/ll/tt;Ljava/util/List;)V

    .line 69
    invoke-virtual {p0, v0}, Lcom/byazt/hz/tt;->c(Ljava/util/List;)V

    .line 70
    :cond_8
    iget-object p1, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    iget-object v0, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-static {p1, v0, v2, v2}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;ZI)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 71
    monitor-exit p0

    return-object v7

    .line 72
    :cond_9
    :try_start_5
    iget-object p1, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-static {v0, p1, v2}, Lcom/byazt/ng/a;->c(Ljava/util/List;Lcom/byazt/ll/tt;I)V

    .line 73
    new-instance p1, Lcom/byazt/pp/c;

    invoke-static {v1}, Lcom/byazt/pp/c;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/byazt/hz/a;->ve(Lcom/byazt/pp/c;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 74
    monitor-exit p0

    return-object v3

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c(Landroid/app/Activity;)Lcom/byazt/nc/sp;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0, p1}, Lcom/byazt/yl/ve;->getDislikeDialog(Landroid/app/Activity;)Lcom/byazt/nc/sp;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/byazt/hz/a;->c:Lcom/byazt/oc/c;

    if-eqz v0, :cond_0

    .line 81
    invoke-interface {v0}, Lcom/byazt/oc/c;->c()V

    :cond_0
    return-void
.end method

.method public c(Landroid/app/Activity;Lcom/byazt/dhf/c;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0, p1, p2}, Lcom/byazt/yl/ve;->setDislikeCallback(Landroid/app/Activity;Lcom/byazt/dhf/c;)V

    :cond_0
    return-void
.end method

.method public c(Landroid/app/Dialog;[Ljava/lang/Integer;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0, p1, p2}, Lcom/byazt/yl/ve;->setDislikeDialog(Landroid/app/Dialog;[Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 11

    .line 82
    iget-object v0, p0, Lcom/byazt/hz/a;->c:Lcom/byazt/oc/c;

    if-eqz v0, :cond_0

    .line 83
    invoke-interface {v0, p1}, Lcom/byazt/oc/c;->c(Landroid/view/View;)V

    .line 84
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 85
    iget-object p1, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-static {p1}, Lcom/byazt/vx/nu;->c(Lcom/byazt/yl/ve;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 86
    invoke-static {}, Lcom/byazt/vx/nu;->tt()Ljava/lang/String;

    move-result-object p1

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const-wide/16 v2, -0x1

    :goto_0
    move-object v7, p1

    move-wide v8, v2

    .line 88
    iget-object p1, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-virtual {p1}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/bg/c;->n(Ljava/lang/String;)V

    .line 89
    iget-object v4, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    iget-object v5, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    const/4 v6, 0x0

    invoke-virtual {v4}, Lcom/byazt/yl/ve;->isClickListenRepeatOnce()Z

    move-result v10

    invoke-static/range {v4 .. v10}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;ILjava/lang/String;JZ)V

    return-void
.end method

.method public c(Lcom/byazt/ft/ve;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0, p1}, Lcom/byazt/yl/ve;->setVideoAdListener(Lcom/byazt/ft/ve;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/ll/tt;Lcom/byazt/oc/tt;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/byazt/hz/tt;->c(Lcom/byazt/ll/tt;)V

    .line 3
    iput-object p0, p0, Lcom/byazt/hz/tt;->i:Lcom/byazt/zq/a;

    .line 4
    iput-object p2, p0, Lcom/byazt/hz/a;->tt:Lcom/byazt/oc/tt;

    .line 5
    invoke-virtual {p0}, Lcom/byazt/hz/tt;->i()Lcom/byazt/om/sp;

    return-void
.end method

.method public c(Lcom/byazt/oc/c;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/byazt/hz/a;->c:Lcom/byazt/oc/c;

    return-void
.end method

.method public c(Lcom/byazt/oc/uj;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/byazt/hz/a;->nu:Lcom/byazt/oc/uj;

    return-void
.end method

.method public c(Lcom/byazt/ocd/ve;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0, p1}, Lcom/byazt/yl/ve;->setDownloadListener(Lcom/byazt/ocd/ve;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/pp/c;)V
    .locals 13
    .param p1    # Lcom/byazt/pp/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 91
    iget-object v2, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-static {v2}, Lcom/byazt/vx/nu;->c(Lcom/byazt/yl/ve;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    invoke-static {}, Lcom/byazt/vx/nu;->tt()Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    :goto_0
    move-object v10, v2

    move-wide v11, v3

    .line 94
    iget-object v5, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    iget-object v6, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v7, p1

    invoke-static/range {v5 .. v12}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Lcom/byazt/pp/c;IILjava/lang/String;J)V

    .line 95
    invoke-direct {p0, p1}, Lcom/byazt/hz/a;->ve(Lcom/byazt/pp/c;)V

    return-void
.end method

.method public f_()Lcom/byazt/pp/ve;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/hz/a;->m:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-super {p0}, Lcom/byazt/hz/tt;->f_()Lcom/byazt/pp/ve;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public n()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getImageMode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public qy()Lcom/byazt/nc/uj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getDislikeInfo()Lcom/byazt/nc/uj;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public rl()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->onPause()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public sp()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/a;->tt:Lcom/byazt/oc/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/oc/tt;->c()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public tt(Landroid/view/View;)V
    .locals 13

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/byazt/hz/a;->m:Z

    .line 4
    iget-object v1, p0, Lcom/byazt/hz/a;->c:Lcom/byazt/oc/c;

    if-eqz v1, :cond_0

    .line 5
    invoke-static {}, Lcom/byazt/hr/u;->c()Lcom/byazt/hr/u;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/hr/u;->sp(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/byazt/hr/u;->c()Lcom/byazt/hr/u;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/hr/u;->tt(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/byazt/hz/a;->c:Lcom/byazt/oc/c;

    invoke-interface {v1, p1}, Lcom/byazt/oc/c;->tt(Landroid/view/View;)V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    if-eqz p1, :cond_1

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    const-string v2, "show_listen"

    invoke-static {v1, v2}, Lcom/byazt/eu/uj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "adSlotId\uff1a"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 10
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\uff0c\u5e7f\u544a\u7c7b\u578b\uff1a"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getAdNetworkPlatformId()I

    move-result v1

    invoke-static {v1}, Lcom/byazt/yl/c;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TTMediationSDK"

    .line 11
    invoke-static {v1, p1}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/byazt/hr/sl;->c()Lcom/byazt/hr/sl;

    move-result-object p1

    iget-object v1, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-virtual {v2}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/byazt/hr/sl;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/byazt/hr/t;->c()Lcom/byazt/hr/t;

    move-result-object p1

    iget-object v1, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-virtual {v2}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/byazt/hr/t;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getAdnName()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-virtual {v2}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/byazt/xx/ve;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_2
    invoke-direct {p0, v0}, Lcom/byazt/hz/a;->c(Z)V

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 18
    iget-object p1, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-static {p1}, Lcom/byazt/vx/nu;->c(Lcom/byazt/yl/ve;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 19
    invoke-static {}, Lcom/byazt/vx/nu;->tt()Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    const-wide/16 v3, -0x1

    :goto_0
    move-object v8, p1

    move-wide v9, v3

    .line 21
    iget-object v5, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    iget-object v6, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    const/4 v7, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/byazt/hz/tt;->gt()I

    move-result v12

    invoke-static/range {v5 .. v12}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;ILjava/lang/String;JZI)V

    .line 22
    iget-object p1, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-virtual {p1}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/bg/c;->sp(Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-virtual {p1}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/bg/c;->ve(Ljava/lang/String;)V

    .line 24
    iget-object p1, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-virtual {p1}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getAdType()I

    move-result v1

    iget-object v2, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-virtual {v2}, Lcom/byazt/yl/ve;->getCpm()D

    move-result-wide v2

    invoke-static {v0, p1, v1, v2, v3}, Lcom/byazt/psp/uj;->c(ILjava/lang/String;ID)V

    .line 25
    iget-object p1, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-static {p1, v0}, Lcom/byazt/oi/ve;->c(Ljava/lang/String;Lcom/byazt/yl/ve;)V

    return-void
.end method

.method public tt(Lcom/byazt/ocd/tt;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0, p1}, Lcom/byazt/yl/ve;->setAdInteractionListener(Lcom/byazt/ocd/tt;)V

    :cond_0
    return-void
.end method

.method public tt(Lcom/byazt/pp/c;)V
    .locals 1
    .param p1    # Lcom/byazt/pp/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/a;->tt:Lcom/byazt/oc/tt;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/byazt/oc/tt;->c(Lcom/byazt/pp/c;)V

    :cond_0
    return-void
.end method

.method public uj(Ljava/lang/String;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p1}, Lcom/byazt/yl/ve;->uploadDislikeEvent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public uj()Z
    .locals 9

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/byazt/hz/tt;->tt()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    move-object v8, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :goto_1
    iget-object v0, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    invoke-virtual {v0}, Lcom/byazt/iz/tt;->sl()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    invoke-virtual {v0}, Lcom/byazt/iz/tt;->yp()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    iget-object v0, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    invoke-virtual {v0}, Lcom/byazt/iz/tt;->t()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    iget-boolean v5, p0, Lcom/byazt/hz/tt;->t:Z

    iget-object v6, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    .line 4
    invoke-virtual {v0}, Lcom/byazt/ll/tt;->n()I

    move-result v7

    .line 5
    invoke-static/range {v1 .. v8}, Lcom/byazt/vx/t;->c(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/byazt/ll/tt;ZLjava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public ve()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/byazt/hz/tt;->t:Z

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object v1

    iget-object v0, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/byazt/iz/tt;->c(Z)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    iget-object v4, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-virtual {v4}, Lcom/byazt/ll/tt;->n()I

    move-result v5

    iget-object v6, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-virtual/range {v1 .. v6}, Lcom/byazt/hk/c;->c(Ljava/util/List;Ljava/lang/String;Lcom/byazt/ll/tt;ILcom/byazt/yl/ve;)V

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/byazt/hz/tt;->ve()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/byazt/hz/a;->c:Lcom/byazt/oc/c;

    .line 5
    iput-object v0, p0, Lcom/byazt/hz/a;->tt:Lcom/byazt/oc/tt;

    return-void
.end method
