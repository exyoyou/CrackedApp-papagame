.class public Lcom/byazt/hz/u;
.super Lcom/byazt/hz/tt;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/zq/n;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2bd,
        0x43
    }
.end annotation


# instance fields
.field public c:Z

.field public gt:Z

.field public m:Landroid/view/View;

.field public my:Lcom/byazt/ko/uj;

.field public nu:Lcom/byazt/ko/ve;

.field public rh:Lcom/byazt/ko/tt;

.field public tt:Z


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
    iput-boolean p1, p0, Lcom/byazt/hz/u;->c:Z

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/byazt/hz/u;->tt:Z

    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/byazt/hz/u;->gt:Z

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic c(Lcom/byazt/hz/u;)Lcom/byazt/ko/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/hz/u;->rh:Lcom/byazt/ko/tt;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/hz/u;Landroid/view/ViewGroup;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/hz/u;->tt(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private c(Lcom/byazt/yl/ve;Landroid/view/ViewGroup;)V
    .locals 8

    .line 16
    iput-object p1, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 17
    iget-boolean v0, p0, Lcom/byazt/hz/u;->tt:Z

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p1}, Lcom/byazt/yl/ve;->hideSkipButton()V

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/byazt/hz/tt;->u:Lcom/byazt/zh/tt;

    if-eqz p1, :cond_1

    .line 20
    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-virtual {v0, p1}, Lcom/byazt/yl/ve;->setTTAdAppDownloadListener(Lcom/byazt/zh/tt;)V

    .line 21
    :cond_1
    iget-object p1, p0, Lcom/byazt/hz/tt;->yp:Lcom/byazt/ocd/tt;

    if-eqz p1, :cond_2

    .line 22
    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-virtual {v0, p1}, Lcom/byazt/yl/ve;->setAdInteractionListener(Lcom/byazt/ocd/tt;)V

    .line 23
    :cond_2
    iget-object p1, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-virtual {p1, v0}, Lcom/byazt/iz/tt;->uj(Lcom/byazt/yl/ve;)V

    .line 24
    iget-object p1, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/byazt/yl/ve;->setHasShown(Z)V

    .line 25
    iget-object p1, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    iget-object v0, p0, Lcom/byazt/hz/tt;->i:Lcom/byazt/zq/a;

    invoke-virtual {p1, v0}, Lcom/byazt/yl/ve;->setTTAdatperCallback(Lcom/byazt/zq/a;)V

    .line 26
    iget-object p1, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-virtual {p1}, Lcom/byazt/yl/ve;->canAdReuse()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    iget-object v1, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/byazt/hz/tt;->rh()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/byazt/hk/c;->uj(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 27
    iget-object p1, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    iget-object v0, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/byazt/qv/a;->c(Lcom/byazt/yl/ve;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_3
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object v2

    iget-object p1, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/byazt/iz/tt;->c(Z)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    iget-object v5, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-virtual {p0}, Lcom/byazt/hz/tt;->rh()I

    move-result v6

    iget-object v7, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-virtual/range {v2 .. v7}, Lcom/byazt/hk/c;->c(Ljava/util/List;Ljava/lang/String;Lcom/byazt/ll/tt;ILcom/byazt/yl/ve;)V

    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    const-string v1, "show"

    invoke-static {v0, v1}, Lcom/byazt/eu/uj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u5c55\u793a\u7684\u5e7f\u544a\u7c7b\u578b\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 30
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getAdNetworkPlatformId()I

    move-result v0

    invoke-static {v0}, Lcom/byazt/yl/c;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",slotId\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 31
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",slotType:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getAdNetworkSlotType()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TTMediationSDK"

    .line 32
    invoke-static {v0, p1}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/byazt/hr/u;->c()Lcom/byazt/hr/u;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/byazt/hr/u;->tt(Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/byazt/hr/t;->c()Lcom/byazt/hr/t;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    iget-object v1, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/byazt/hr/t;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object p1, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-virtual {p1, p2}, Lcom/byazt/yl/ve;->showSplashAd(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private tt(Landroid/view/ViewGroup;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-static {v0}, Lcom/byazt/ng/a;->c(Lcom/byazt/ll/tt;)V

    .line 2
    iget-boolean v0, p0, Lcom/byazt/hz/tt;->t:Z

    const/4 v1, 0x0

    const v2, 0x9c74

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-static {v1, p1, v3}, Lcom/byazt/ng/a;->c(Ljava/util/List;Lcom/byazt/ll/tt;I)V

    .line 4
    new-instance p1, Lcom/byazt/pp/c;

    invoke-static {v2}, Lcom/byazt/pp/c;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/byazt/hz/u;->ve(Lcom/byazt/pp/c;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/byazt/hz/tt;->tt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object p1, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-static {v1, p1, v0}, Lcom/byazt/ng/a;->c(Ljava/util/List;Lcom/byazt/ll/tt;I)V

    .line 7
    new-instance p1, Lcom/byazt/pp/c;

    invoke-static {v0}, Lcom/byazt/pp/c;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/byazt/hz/u;->ve(Lcom/byazt/pp/c;)V

    return-void

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/byazt/iz/tt;->c(Z)Ljava/util/List;

    move-result-object v0

    .line 9
    iget-object v5, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    invoke-virtual {v5, v0}, Lcom/byazt/iz/tt;->c(Ljava/util/List;)V

    if-eqz p1, :cond_9

    .line 10
    :try_start_0
    invoke-virtual {p0}, Lcom/byazt/hz/tt;->tt()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    .line 11
    invoke-static {v5}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :goto_0
    if-eqz v1, :cond_4

    .line 12
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 13
    invoke-virtual {p0, v0}, Lcom/byazt/hz/tt;->tt(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v5

    .line 14
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/byazt/nbs/da;

    if-eqz v6, :cond_2

    .line 15
    invoke-virtual {v6}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v7

    .line 16
    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/byazt/yl/ve;

    if-eqz v8, :cond_3

    .line 17
    iget-object v9, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/byazt/yl/ve;->isReady(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v8}, Lcom/byazt/yl/ve;->isHasShown()Z

    move-result v9

    if-nez v9, :cond_3

    .line 18
    invoke-direct {p0, v8, p1}, Lcom/byazt/hz/u;->c(Lcom/byazt/yl/ve;Landroid/view/ViewGroup;)V

    :goto_1
    const/4 v1, 0x1

    const/4 v5, 0x1

    goto/16 :goto_2

    .line 19
    :cond_3
    invoke-virtual {v6}, Lcom/byazt/nbs/da;->gt()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 20
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object v6

    iget-object v8, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/byazt/hz/tt;->rh()I

    move-result v9

    invoke-virtual {v6, v8, v7, v9}, Lcom/byazt/hk/c;->uj(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 21
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object v6

    iget-object v8, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-virtual {v6, v7, v8, v3}, Lcom/byazt/hk/c;->c(Ljava/lang/String;Lcom/byazt/ll/tt;Z)I

    move-result v6

    const/4 v8, 0x3

    if-ne v6, v8, :cond_2

    .line 22
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object v6

    iget-object v8, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-virtual {p0}, Lcom/byazt/hz/tt;->rh()I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/byazt/hk/c;->c(Ljava/lang/String;Lcom/byazt/ll/tt;I)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 23
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 24
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/byazt/ix/sp;

    iget-object v6, v6, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    if-eqz v6, :cond_2

    .line 25
    iget-object v7, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/byazt/yl/ve;->isReady(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Lcom/byazt/yl/ve;->isHasShown()Z

    move-result v7

    if-nez v7, :cond_2

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    const-string v7, "show"

    invoke-static {v5, v7}, Lcom/byazt/eu/uj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "adSlotId\uff1a"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v6}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\uff0c\u5e7f\u544a\u7c7b\u578b\uff1a"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/byazt/yl/ve;->getAdNetworkPlatformId()I

    move-result v5

    invoke-static {v5}, Lcom/byazt/yl/c;->c(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",isReady()\uff1a"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    .line 28
    invoke-virtual {v6, v5}, Lcom/byazt/yl/ve;->isReady(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "TTMediationSDK"

    .line 29
    invoke-static {v5, v1}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0, v6}, Lcom/byazt/hz/tt;->tt(Lcom/byazt/yl/ve;)V

    .line 31
    invoke-direct {p0, v6, p1}, Lcom/byazt/hz/u;->c(Lcom/byazt/yl/ve;Landroid/view/ViewGroup;)V

    goto/16 :goto_1

    :cond_4
    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_2
    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    .line 32
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 33
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/byazt/yl/ve;

    if-eqz v6, :cond_5

    .line 34
    iget-object v7, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/byazt/yl/ve;->isReady(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Lcom/byazt/yl/ve;->isHasShown()Z

    move-result v7

    if-nez v7, :cond_5

    .line 35
    invoke-direct {p0, v6, p1}, Lcom/byazt/hz/u;->c(Lcom/byazt/yl/ve;Landroid/view/ViewGroup;)V

    const/4 v5, 0x1

    :cond_6
    if-eqz v5, :cond_8

    .line 36
    iput-boolean v4, p0, Lcom/byazt/hz/tt;->t:Z

    .line 37
    iget-object p1, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    if-eqz p1, :cond_7

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-virtual {p0, p1}, Lcom/byazt/hz/tt;->c(Ljava/util/List;)V

    .line 41
    :cond_7
    iget-object p1, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    iget-object v0, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-static {p1, v0, v3, v3}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;ZI)V

    return-void

    .line 42
    :cond_8
    iget-object p1, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-static {v0, p1, v3}, Lcom/byazt/ng/a;->c(Ljava/util/List;Lcom/byazt/ll/tt;I)V

    .line 43
    new-instance p1, Lcom/byazt/pp/c;

    invoke-static {v2}, Lcom/byazt/pp/c;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/byazt/hz/u;->ve(Lcom/byazt/pp/c;)V

    return-void

    .line 44
    :cond_9
    iget-object p1, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-static {v0, p1, v3}, Lcom/byazt/ng/a;->c(Ljava/util/List;Lcom/byazt/ll/tt;I)V

    .line 45
    new-instance p1, Lcom/byazt/pp/c;

    invoke-static {v2}, Lcom/byazt/pp/c;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/byazt/hz/u;->ve(Lcom/byazt/pp/c;)V

    return-void
.end method

.method private ve(Lcom/byazt/pp/c;)V
    .locals 1

    .line 4
    new-instance v0, Lcom/byazt/hz/u$3;

    invoke-direct {v0, p0, p1}, Lcom/byazt/hz/u$3;-><init>(Lcom/byazt/hz/u;Lcom/byazt/pp/c;)V

    invoke-static {v0}, Lcom/byazt/eu/n;->ve(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/byazt/hz/u;->my:Lcom/byazt/ko/uj;

    if-eqz v0, :cond_0

    .line 37
    invoke-interface {v0}, Lcom/byazt/ko/uj;->c()V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 3

    .line 44
    iget-object p1, p0, Lcom/byazt/hz/u;->rh:Lcom/byazt/ko/tt;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 45
    invoke-interface {p1, v0}, Lcom/byazt/ko/tt;->c(I)V

    .line 46
    :cond_0
    invoke-static {}, Lcom/byazt/ix/uj;->c()Lcom/byazt/ix/uj;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/hz/tt;->x:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/byazt/hz/tt;->rh()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/byazt/ix/uj;->c(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public c(Landroid/view/ViewGroup;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 13
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/qe/ve;->aw()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 14
    invoke-static {}, Lcom/byazt/vx/nu;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 15
    :cond_0
    new-instance v2, Lcom/byazt/hz/u$2;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/byazt/hz/u$2;-><init>(Lcom/byazt/hz/u;Landroid/view/ViewGroup;Z[Ljava/lang/String;)V

    invoke-static {v2}, Lcom/byazt/eu/n;->ve(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Landroid/view/ViewGroup;Landroid/app/Activity;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0, p1, p2}, Lcom/byazt/yl/ve;->showSplashCardView(Landroid/view/ViewGroup;Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/ko/tt;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/byazt/hz/u;->rh:Lcom/byazt/ko/tt;

    return-void
.end method

.method public c(Lcom/byazt/ko/uj;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/byazt/hz/u;->my:Lcom/byazt/ko/uj;

    return-void
.end method

.method public c(Lcom/byazt/ll/tt;Lcom/byazt/yf/sl;Lcom/byazt/ko/ve;)V
    .locals 1

    .line 3
    invoke-virtual {p0, p1}, Lcom/byazt/hz/tt;->c(Lcom/byazt/ll/tt;)V

    .line 4
    iget-object v0, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    invoke-virtual {v0, p2}, Lcom/byazt/iz/tt;->c(Lcom/byazt/yf/sl;)V

    .line 5
    iput-object p3, p0, Lcom/byazt/hz/u;->nu:Lcom/byazt/ko/ve;

    .line 6
    iput-object p0, p0, Lcom/byazt/hz/tt;->i:Lcom/byazt/zq/a;

    .line 7
    iget-object p2, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    invoke-virtual {p2}, Lcom/byazt/iz/tt;->zb()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1}, Lcom/byazt/ll/tt;->m()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p3, "ad_load_timeout"

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/qe/ve;->pf()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    new-instance p1, Lcom/byazt/hz/u$1;

    invoke-direct {p1, p0}, Lcom/byazt/hz/u$1;-><init>(Lcom/byazt/hz/u;)V

    invoke-static {p1}, Lcom/byazt/yf/da;->c(Lcom/byazt/yf/m;)V

    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/hz/tt;->i()Lcom/byazt/om/sp;

    return-void
.end method

.method public c(Lcom/byazt/pp/c;)V
    .locals 13
    .param p1    # Lcom/byazt/pp/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 39
    iget-object v2, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    invoke-static {v2}, Lcom/byazt/vx/nu;->c(Lcom/byazt/yl/ve;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    invoke-static {}, Lcom/byazt/vx/nu;->tt()Ljava/lang/String;

    move-result-object v2

    .line 41
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

    .line 42
    iget-object v5, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    iget-object v6, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v7, p1

    invoke-static/range {v5 .. v12}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Lcom/byazt/pp/c;IILjava/lang/String;J)V

    .line 43
    invoke-direct {p0, p1}, Lcom/byazt/hz/u;->ve(Lcom/byazt/pp/c;)V

    return-void
.end method

.method public f_()Lcom/byazt/pp/ve;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/hz/u;->gt:Z

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

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/u;->my:Lcom/byazt/ko/uj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/ko/uj;->getActivity()Landroid/app/Activity;

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

.method public gr()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/byazt/hz/u;->tt:Z

    .line 3
    .line 4
    return-void
.end method

.method public gu()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->canAdReuse()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p0}, Lcom/byazt/hz/tt;->rh()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/hk/c;->uj(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iget-object v3, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    .line 42
    .line 43
    iget-object v0, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/byazt/iz/tt;->zb()Ljava/util/Map;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    const/4 v5, 0x1

    .line 50
    iget-object v0, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/byazt/iz/tt;->or()Lcom/byazt/yf/sl;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    iget-object v0, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/byazt/iz/tt;->pf()Lcom/byazt/nbs/i;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    iget-object v0, p0, Lcom/byazt/hz/tt;->x:Ljava/lang/ref/SoftReference;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    move-object v8, v0

    .line 69
    check-cast v8, Landroid/content/Context;

    .line 70
    .line 71
    invoke-virtual/range {v1 .. v8}, Lcom/byazt/hk/c;->c(Ljava/lang/String;Lcom/byazt/ll/tt;Ljava/util/Map;ZLcom/byazt/yf/sl;Lcom/byazt/nbs/i;Landroid/content/Context;)V

    .line 72
    .line 73
    .line 74
    :cond_0
    return-void
.end method

.method public k_()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/u;->my:Lcom/byazt/ko/uj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/ko/uj;->tt()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public l_()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/u;->my:Lcom/byazt/ko/uj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/ko/uj;->ve()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public n()V
    .locals 14

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/byazt/hz/u;->gt:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/byazt/hz/u;->rh:Lcom/byazt/ko/tt;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-interface {v1}, Lcom/byazt/ko/tt;->n()V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-static {}, Lcom/byazt/hr/u;->c()Lcom/byazt/hr/u;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v3, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Lcom/byazt/hr/u;->sp(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    .line 42
    .line 43
    const-string v3, "show_listen"

    .line 44
    .line 45
    invoke-static {v2, v3}, Lcom/byazt/eu/uj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v2, "adSlotId\uff1a"

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget-object v2, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v2, "\uff0c\u5e7f\u544a\u7c7b\u578b\uff1a"

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object v2, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 72
    .line 73
    invoke-virtual {v2}, Lcom/byazt/yl/ve;->getAdNetworkPlatformId()I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    invoke-static {v2}, Lcom/byazt/yl/c;->c(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    const-string v2, "TTMediationSDK"

    .line 89
    .line 90
    invoke-static {v2, v1}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-static {}, Lcom/byazt/hr/sl;->c()Lcom/byazt/hr/sl;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    iget-object v2, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    .line 98
    .line 99
    iget-object v3, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 100
    .line 101
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v1, v2, v3}, Lcom/byazt/hr/sl;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :cond_1
    iget-object v1, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 109
    .line 110
    if-eqz v1, :cond_2

    .line 111
    .line 112
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getAdnName()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    iget-object v2, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    .line 117
    .line 118
    iget-object v3, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 119
    .line 120
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-static {v1, v2, v3}, Lcom/byazt/xx/ve;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :cond_2
    invoke-virtual {p0}, Lcom/byazt/hz/u;->gu()V

    .line 128
    .line 129
    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 131
    .line 132
    .line 133
    move-result-wide v1

    .line 134
    iget-object v3, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 135
    .line 136
    invoke-static {v3}, Lcom/byazt/vx/nu;->c(Lcom/byazt/yl/ve;)Z

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    if-eqz v3, :cond_3

    .line 141
    .line 142
    invoke-static {}, Lcom/byazt/vx/nu;->tt()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 147
    .line 148
    .line 149
    move-result-wide v4

    .line 150
    sub-long/2addr v4, v1

    .line 151
    goto :goto_0

    .line 152
    :cond_3
    const/4 v3, 0x0

    .line 153
    const-wide/16 v4, -0x1

    .line 154
    .line 155
    :goto_0
    move-object v9, v3

    .line 156
    move-wide v10, v4

    .line 157
    iget-object v6, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 158
    .line 159
    iget-object v7, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    .line 160
    .line 161
    const/4 v8, 0x0

    .line 162
    const/4 v12, 0x0

    .line 163
    invoke-virtual {p0}, Lcom/byazt/hz/tt;->gt()I

    .line 164
    .line 165
    .line 166
    move-result v13

    .line 167
    invoke-static/range {v6 .. v13}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;ILjava/lang/String;JZI)V

    .line 168
    .line 169
    .line 170
    iget-object v1, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    .line 171
    .line 172
    invoke-virtual {v1}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-static {v1}, Lcom/byazt/bg/c;->sp(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iget-object v1, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    .line 180
    .line 181
    invoke-virtual {v1}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-static {v1}, Lcom/byazt/bg/c;->ve(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    iget-object v1, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    .line 189
    .line 190
    invoke-virtual {v1}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    iget-object v2, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 195
    .line 196
    invoke-virtual {v2}, Lcom/byazt/yl/ve;->getAdType()I

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    iget-object v3, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 201
    .line 202
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getCpm()D

    .line 203
    .line 204
    .line 205
    move-result-wide v3

    .line 206
    invoke-static {v0, v1, v2, v3, v4}, Lcom/byazt/psp/uj;->c(ILjava/lang/String;ID)V

    .line 207
    .line 208
    .line 209
    iget-object v0, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    .line 210
    .line 211
    iget-object v1, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 212
    .line 213
    invoke-static {v0, v1}, Lcom/byazt/oi/ve;->c(Ljava/lang/String;Lcom/byazt/yl/ve;)V

    .line 214
    .line 215
    .line 216
    return-void
.end method

.method public qy()Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/tt;->x:Ljava/lang/ref/SoftReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/content/Context;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    iget-object v1, p0, Lcom/byazt/hz/u;->m:Landroid/view/View;

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    new-instance v1, Landroid/widget/FrameLayout;

    .line 20
    .line 21
    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 25
    .line 26
    const/4 v2, -0x1

    .line 27
    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, v1}, Lcom/byazt/hz/u;->tt(Landroid/view/ViewGroup;)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/byazt/hz/u;->m:Landroid/view/View;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lcom/byazt/hz/tt;->c(Lcom/byazt/yl/ve;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object v0, p0, Lcom/byazt/hz/u;->m:Landroid/view/View;

    .line 44
    .line 45
    return-object v0
.end method

.method public rl()Z
    .locals 9

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/byazt/hz/tt;->tt()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :goto_0
    move-object v8, v0

    .line 6
    goto :goto_1

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    goto :goto_0

    .line 13
    :goto_1
    iget-object v0, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/byazt/iz/tt;->sl()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v0, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/byazt/iz/tt;->yp()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget-object v0, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/byazt/iz/tt;->t()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    iget-object v4, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    .line 32
    .line 33
    iget-boolean v5, p0, Lcom/byazt/hz/tt;->t:Z

    .line 34
    .line 35
    iget-object v6, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/byazt/ll/tt;->n()I

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    invoke-static/range {v1 .. v8}, Lcom/byazt/vx/t;->c(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/byazt/ll/tt;ZLjava/lang/String;ILjava/util/List;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    return v0
.end method

.method public sp()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/u;->nu:Lcom/byazt/ko/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/ko/ve;->c()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public tt(I)V
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/byazt/hz/u;->rh:Lcom/byazt/ko/tt;

    if-eqz v0, :cond_0

    .line 49
    invoke-interface {v0, p1}, Lcom/byazt/ko/tt;->tt(I)V

    .line 50
    :cond_0
    invoke-static {}, Lcom/byazt/ix/uj;->c()Lcom/byazt/ix/uj;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/hz/tt;->x:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/byazt/hz/tt;->rh()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/byazt/ix/uj;->c(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public tt(Lcom/byazt/pp/c;)V
    .locals 1
    .param p1    # Lcom/byazt/pp/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 46
    iget-object v0, p0, Lcom/byazt/hz/u;->nu:Lcom/byazt/ko/ve;

    if-eqz v0, :cond_0

    .line 47
    invoke-interface {v0, p1}, Lcom/byazt/ko/ve;->c(Lcom/byazt/pp/c;)V

    :cond_0
    return-void
.end method

.method public uj()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/u;->rh:Lcom/byazt/ko/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/ko/tt;->uj()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iget-object v2, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 13
    .line 14
    invoke-static {v2}, Lcom/byazt/vx/nu;->c(Lcom/byazt/yl/ve;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-static {}, Lcom/byazt/vx/nu;->tt()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    sub-long/2addr v3, v0

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v2, 0x0

    .line 31
    const-wide/16 v3, -0x1

    .line 32
    .line 33
    :goto_0
    move-object v8, v2

    .line 34
    move-wide v9, v3

    .line 35
    iget-object v0, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Lcom/byazt/bg/c;->n(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v5, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

    .line 45
    .line 46
    iget-object v6, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    .line 47
    .line 48
    const/4 v7, 0x0

    .line 49
    invoke-virtual {v5}, Lcom/byazt/yl/ve;->isClickListenRepeatOnce()Z

    .line 50
    .line 51
    .line 52
    move-result v11

    .line 53
    invoke-static/range {v5 .. v11}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;ILjava/lang/String;JZ)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public ve()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/tt;->uj:Lcom/byazt/yl/ve;

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

    return-void
.end method
