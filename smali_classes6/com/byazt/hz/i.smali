.class public Lcom/byazt/hz/i;
.super Lcom/byazt/hz/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2bd,
        0x2a
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/me/uj;

.field public m:Lcom/byazt/om/c$c;

.field public nu:Z

.field public tt:Lcom/byazt/zh/ve;


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
    iput-boolean p1, p0, Lcom/byazt/hz/i;->nu:Z

    .line 6
    .line 7
    return-void
.end method

.method private c(Ljava/util/List;I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/yl/ve;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/byazt/yl/ve;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 30
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_1

    .line 31
    :cond_0
    invoke-direct {p0, p1}, Lcom/byazt/hz/i;->ve(Ljava/util/List;)V

    .line 32
    invoke-direct {p0}, Lcom/byazt/hz/i;->uj()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 36
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, p2, :cond_2

    .line 37
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/yl/ve;

    .line 38
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-static {}, Lcom/byazt/eu/tt;->tt()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, ""

    const-string v5, "TTMediationSDK"

    .line 40
    invoke-static {v5, v4}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    const-string v7, "show"

    invoke-static {v6, v7}, Lcom/byazt/eu/uj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\u8fd4\u56de\u7ed9\u5f00\u53d1\u8005\u6700\u7ec8\u5e7f\u544a\uff1aslotId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",slotType:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getAdNetworkSlotType()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",cpm="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getCpm()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ",\u5e7f\u544a\u7c7b\u578b\uff1a"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getAdNetworkPlatformId()I

    move-result v6

    invoke-static {v6}, Lcom/byazt/yl/c;->c(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",ImageMode="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getImageMode()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",showSort="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getShowSort()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",isExpressAd="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/byazt/yl/ve;->isExpressAd()Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 45
    invoke-static {v5, v4}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_1
    new-instance v4, Lcom/byazt/hz/i$2;

    invoke-direct {v4, p0, v0}, Lcom/byazt/hz/i$2;-><init>(Lcom/byazt/hz/i;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lcom/byazt/yl/ve;->setCallBack(Lcom/byazt/yl/ve$c;)V

    .line 47
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 48
    :cond_2
    invoke-static {}, Lcom/byazt/vy/c;->c()Lcom/byazt/vy/c;

    move-result-object p2

    iget-object v0, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-static {v0, v1, p1}, Lcom/byazt/vy/c;->c(Lcom/byazt/ll/tt;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/byazt/vy/c;->c(Lcom/byazt/ll/tt;Ljava/util/List;)V

    .line 49
    invoke-virtual {p0, v1}, Lcom/byazt/hz/tt;->c(Ljava/util/List;)V

    return-object v1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/hz/i;Lcom/byazt/yl/ve;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/hz/i;->ve(Lcom/byazt/yl/ve;)V

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/byazt/yl/ve;",
            ">;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/byazt/hz/i;->tt(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/byazt/hk/c;->c(Ljava/lang/String;Lcom/byazt/ll/tt;Z)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 59
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-virtual {v1}, Lcom/byazt/ll/tt;->n()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/byazt/hk/c;->c(Ljava/lang/String;Lcom/byazt/ll/tt;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 60
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 61
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/ix/sp;

    if-eqz v0, :cond_0

    .line 62
    iget-object v1, v0, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/byazt/yl/ve;->isHasShown()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    iget-object v2, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/byazt/yl/ve;->isReady(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, v0, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, v0, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    invoke-virtual {p0, v0}, Lcom/byazt/hz/tt;->tt(Lcom/byazt/yl/ve;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private c(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/byazt/yl/ve;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/byazt/yl/ve;",
            ">;",
            "Lcom/byazt/yl/ve;",
            ")V"
        }
    .end annotation

    .line 55
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/yl/ve;

    if-ne v1, p2, :cond_0

    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic c(Lcom/byazt/hz/i;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/byazt/hz/i;->nu:Z

    return p0
.end method

.method public static synthetic c(Lcom/byazt/hz/i;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/hz/i;->nu:Z

    return p1
.end method

.method private tt(Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/byazt/yl/ve;",
            ">;)Z"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 7
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/yl/ve;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private uj()V
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/byazt/hz/tt;->tt()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-lez v1, :cond_2

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/byazt/nbs/da;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    iget-object v4, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v5, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    .line 42
    .line 43
    invoke-virtual {v5}, Lcom/byazt/ll/tt;->n()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    invoke-virtual {v3, v4, v2, v5}, Lcom/byazt/hk/c;->uj(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_0

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/byazt/nbs/da;->my()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    const/16 v4, 0x64

    .line 58
    .line 59
    if-ne v3, v4, :cond_1

    .line 60
    .line 61
    iget-object v1, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/byazt/iz/tt;->sl()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-direct {p0, v2, v1}, Lcom/byazt/hz/i;->c(Ljava/lang/String;Ljava/util/List;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {v1}, Lcom/byazt/nbs/da;->my()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_0

    .line 76
    .line 77
    iget-object v1, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/byazt/iz/tt;->t()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-direct {p0, v2, v1}, Lcom/byazt/hz/i;->c(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    return-void

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method private ve(Lcom/byazt/yl/ve;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-virtual {v0}, Lcom/byazt/ll/tt;->tk()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getAdNetworkPlatformId()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    instance-of p1, p1, Lcom/byazt/zm/tt;

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/byazt/hz/tt;->sp:Lcom/byazt/nbs/tt;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/byazt/nbs/tt;->z()Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    invoke-static {}, Lcom/byazt/ix/uj;->c()Lcom/byazt/ix/uj;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/hz/tt;->x:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-virtual {v2}, Lcom/byazt/ll/tt;->n()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/byazt/ix/uj;->tt(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method private ve(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/yl/ve;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/yl/ve;

    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->isHasShown()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/byazt/yl/ve;->isReady(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/ll/tt;Lcom/byazt/me/uj;)V
    .locals 0
    .param p2    # Lcom/byazt/me/uj;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-virtual {p0, p1}, Lcom/byazt/hz/tt;->c(Lcom/byazt/ll/tt;)V

    .line 5
    iput-object p2, p0, Lcom/byazt/hz/i;->c:Lcom/byazt/me/uj;

    .line 6
    invoke-virtual {p0}, Lcom/byazt/hz/tt;->i()Lcom/byazt/om/sp;

    return-void
.end method

.method public c(Lcom/byazt/ll/tt;Lcom/byazt/zh/ve;)V
    .locals 2

    .line 25
    invoke-virtual {p0, p1}, Lcom/byazt/hz/tt;->c(Lcom/byazt/ll/tt;)V

    .line 26
    iput-object p2, p0, Lcom/byazt/hz/i;->tt:Lcom/byazt/zh/ve;

    .line 27
    iget-object p1, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    invoke-virtual {p1}, Lcom/byazt/iz/tt;->m()Lcom/byazt/nbs/tt;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    invoke-virtual {p1}, Lcom/byazt/iz/tt;->m()Lcom/byazt/nbs/tt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/nbs/tt;->z()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/hz/tt;->i()Lcom/byazt/om/sp;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/hz/i;->m:Lcom/byazt/om/c$c;

    return-void

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 29
    new-instance p1, Lcom/byazt/pp/c;

    const/16 v0, 0x271e

    invoke-static {v0}, Lcom/byazt/pp/c;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/byazt/zh/ve;->c(Lcom/byazt/pp/c;)V

    :cond_2
    return-void
.end method

.method public c(Lcom/byazt/yl/ve;Z)V
    .locals 9

    if-eqz p1, :cond_0

    .line 50
    invoke-virtual {p1}, Lcom/byazt/yl/ve;->canAdReuse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    invoke-virtual {v3}, Lcom/byazt/ll/tt;->n()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/hk/c;->uj(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object v1

    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    iget-object p1, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    invoke-virtual {p1}, Lcom/byazt/iz/tt;->zb()Ljava/util/Map;

    move-result-object v4

    iget-object p1, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    .line 53
    invoke-virtual {p1}, Lcom/byazt/iz/tt;->or()Lcom/byazt/yf/sl;

    move-result-object v6

    iget-object p1, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    invoke-virtual {p1}, Lcom/byazt/iz/tt;->pf()Lcom/byazt/nbs/i;

    move-result-object v7

    iget-object p1, p0, Lcom/byazt/hz/tt;->x:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Landroid/content/Context;

    move v5, p2

    .line 54
    invoke-virtual/range {v1 .. v8}, Lcom/byazt/hk/c;->c(Ljava/lang/String;Lcom/byazt/ll/tt;Ljava/util/Map;ZLcom/byazt/yf/sl;Lcom/byazt/nbs/i;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 14
    iget v0, p0, Lcom/byazt/hz/tt;->sl:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/byazt/hz/i;->tt:Lcom/byazt/zh/ve;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 15
    iput v1, p0, Lcom/byazt/hz/tt;->sl:I

    .line 16
    invoke-interface {v0, p1}, Lcom/byazt/zh/ve;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Lcom/byazt/me/uj;)V
    .locals 2

    .line 17
    iget v0, p0, Lcom/byazt/hz/tt;->sl:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-eqz p2, :cond_0

    .line 18
    new-instance p1, Lcom/byazt/pp/c;

    const/16 v0, 0x271f

    invoke-static {v0}, Lcom/byazt/pp/c;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/byazt/me/uj;->c(Lcom/byazt/pp/c;)V

    :cond_0
    return-void

    .line 19
    :cond_1
    iget-boolean v0, p0, Lcom/byazt/hz/tt;->da:Z

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    .line 20
    new-instance p1, Lcom/byazt/pp/c;

    const v0, 0x9c6f

    invoke-static {v0}, Lcom/byazt/pp/c;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/byazt/me/uj;->c(Lcom/byazt/pp/c;)V

    :cond_2
    return-void

    .line 21
    :cond_3
    iput-boolean v1, p0, Lcom/byazt/hz/tt;->da:Z

    .line 22
    iput-object p2, p0, Lcom/byazt/hz/i;->c:Lcom/byazt/me/uj;

    .line 23
    iget-object p2, p0, Lcom/byazt/hz/i;->m:Lcom/byazt/om/c$c;

    if-eqz p2, :cond_4

    .line 24
    invoke-interface {p2, p1}, Lcom/byazt/om/c$c;->c(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public c(Ljava/util/List;Lcom/byazt/pp/c;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/byazt/pp/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/yl/ve;",
            ">;",
            "Lcom/byazt/pp/c;",
            ")V"
        }
    .end annotation

    .line 7
    invoke-super {p0, p1, p2}, Lcom/byazt/hz/tt;->c(Ljava/util/List;Lcom/byazt/pp/c;)V

    .line 8
    iget-object p2, p0, Lcom/byazt/hz/i;->c:Lcom/byazt/me/uj;

    instance-of p2, p2, Lcom/byazt/me/sp;

    if-eqz p2, :cond_0

    .line 9
    invoke-static {p1}, Lcom/byazt/vx/p;->c(Ljava/util/List;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 10
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/yl/ve;

    .line 12
    new-instance v1, Lcom/byazt/hz/i$1;

    invoke-direct {v1, p0}, Lcom/byazt/hz/i$1;-><init>(Lcom/byazt/hz/i;)V

    invoke-virtual {v0, v1}, Lcom/byazt/yl/ve;->setCallBack(Lcom/byazt/yl/ve$c;)V

    .line 13
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public sp()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/i;->c:Lcom/byazt/me/uj;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Lcom/byazt/iz/tt;->c(Z)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v2, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/byazt/ll/tt;->gr()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-direct {p0, v0, v2}, Lcom/byazt/hz/i;->c(Ljava/util/List;I)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-eqz v2, :cond_4

    .line 23
    .line 24
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-lez v3, :cond_4

    .line 29
    .line 30
    invoke-static {}, Lcom/byazt/eu/tt;->tt()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v4, "\u8fd4\u56de\u7ed9\u5916\u90e8\u5f00\u53d1\u8005\u7684\u5e7f\u544a\u6570\u91cf\uff1asumList.size="

    .line 39
    .line 40
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    const-string v4, "TTMediationSDK"

    .line 55
    .line 56
    invoke-static {v4, v3}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_0
    new-instance v6, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 60
    .line 61
    invoke-direct {v6, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_3

    .line 73
    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Lcom/byazt/yl/ve;

    .line 79
    .line 80
    if-eqz v3, :cond_1

    .line 81
    .line 82
    invoke-virtual {v3, v1}, Lcom/byazt/yl/ve;->setHasShown(Z)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->canAdReuse()Z

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-eqz v4, :cond_2

    .line 90
    .line 91
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    iget-object v5, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    iget-object v8, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    .line 102
    .line 103
    invoke-virtual {v8}, Lcom/byazt/ll/tt;->n()I

    .line 104
    .line 105
    .line 106
    move-result v8

    .line 107
    invoke-virtual {v4, v5, v7, v8}, Lcom/byazt/hk/c;->uj(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    if-eqz v4, :cond_2

    .line 112
    .line 113
    iget-object v4, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    invoke-static {v3, v4, v5}, Lcom/byazt/qv/a;->c(Lcom/byazt/yl/ve;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-direct {p0, v6, v3}, Lcom/byazt/hz/i;->c(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/byazt/yl/ve;)V

    .line 123
    .line 124
    .line 125
    :cond_2
    iget-object v4, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    .line 126
    .line 127
    invoke-virtual {v4}, Lcom/byazt/iz/tt;->sl()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-direct {p0, v4, v3}, Lcom/byazt/hz/i;->c(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/byazt/yl/ve;)V

    .line 132
    .line 133
    .line 134
    iget-object v4, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    .line 135
    .line 136
    invoke-virtual {v4}, Lcom/byazt/iz/tt;->t()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-direct {p0, v4, v3}, Lcom/byazt/hz/i;->c(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/byazt/yl/ve;)V

    .line 141
    .line 142
    .line 143
    iget-object v4, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    .line 144
    .line 145
    invoke-virtual {v4}, Lcom/byazt/iz/tt;->u()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-direct {p0, v4, v3}, Lcom/byazt/hz/i;->c(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/byazt/yl/ve;)V

    .line 150
    .line 151
    .line 152
    iget-object v4, p0, Lcom/byazt/hz/tt;->ve:Lcom/byazt/iz/tt;

    .line 153
    .line 154
    invoke-virtual {v4}, Lcom/byazt/iz/tt;->yp()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    invoke-direct {p0, v4, v3}, Lcom/byazt/hz/i;->c(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/byazt/yl/ve;)V

    .line 159
    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_3
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    iget-object v7, p0, Lcom/byazt/hz/tt;->n:Ljava/lang/String;

    .line 167
    .line 168
    iget-object v8, p0, Lcom/byazt/hz/tt;->a:Lcom/byazt/ll/tt;

    .line 169
    .line 170
    invoke-virtual {v8}, Lcom/byazt/ll/tt;->n()I

    .line 171
    .line 172
    .line 173
    move-result v9

    .line 174
    const/4 v10, 0x0

    .line 175
    invoke-virtual/range {v5 .. v10}, Lcom/byazt/hk/c;->c(Ljava/util/List;Ljava/lang/String;Lcom/byazt/ll/tt;ILcom/byazt/yl/ve;)V

    .line 176
    .line 177
    .line 178
    iget-object v0, p0, Lcom/byazt/hz/i;->c:Lcom/byazt/me/uj;

    .line 179
    .line 180
    invoke-interface {v0, v2}, Lcom/byazt/me/uj;->c(Ljava/util/List;)V

    .line 181
    .line 182
    .line 183
    :cond_4
    return-void
.end method

.method public tt(Lcom/byazt/pp/c;)V
    .locals 2
    .param p1    # Lcom/byazt/pp/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/i;->c:Lcom/byazt/me/uj;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/byazt/me/uj;->c(Lcom/byazt/pp/c;)V

    .line 3
    iget v0, p0, Lcom/byazt/hz/tt;->sl:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/byazt/hz/i;->tt:Lcom/byazt/zh/ve;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 4
    iput v1, p0, Lcom/byazt/hz/tt;->sl:I

    .line 5
    invoke-interface {v0, p1}, Lcom/byazt/zh/ve;->c(Lcom/byazt/pp/c;)V

    :cond_0
    return-void
.end method

.method public ve()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/byazt/hz/i;->c:Lcom/byazt/me/uj;

    return-void
.end method
