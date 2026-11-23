.class public Lcom/byazt/gp/tt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/gp/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x978,
        0xd
    }
.end annotation


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


# virtual methods
.method public c(Lcom/byazt/iz/tt;Lcom/byazt/yl/ve;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/iz/tt;",
            "Lcom/byazt/yl/ve;",
            "Ljava/util/List<",
            "Lcom/byazt/nbs/da;",
            ">;)Z"
        }
    .end annotation

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/iz/tt;->m()Lcom/byazt/nbs/tt;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/byazt/qv/sp;->c(Lcom/byazt/nbs/tt;Lcom/byazt/yl/ve;)I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/byazt/iz/tt;->nu()Lcom/byazt/iz/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/byazt/iz/c;->a(I)I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/byazt/gp/tt;->c(Lcom/byazt/yl/ve;Ljava/util/List;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public c(Lcom/byazt/yl/ve;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/yl/ve;",
            "Ljava/util/List<",
            "Lcom/byazt/nbs/da;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 4
    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/yl/ve;->isNormalAd()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 6
    :cond_1
    invoke-static {p2}, Lcom/byazt/vx/p;->c(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 7
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 10
    invoke-static {v1}, Lcom/byazt/vx/p;->tt(Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_3

    return v0

    .line 11
    :cond_3
    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/byazt/nbs/da;

    invoke-virtual {p2}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_0
    return v0
.end method
