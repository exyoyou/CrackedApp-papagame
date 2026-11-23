.class public abstract Lcom/byazt/vvt/tt;
.super Lcom/byazt/dx/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xd2,
        0xd
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/vvt/tt$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/byazt/dx/c<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/iu/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/iu/tt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/dx/c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/vvt/tt;->c:Lcom/byazt/iu/tt;

    .line 5
    .line 6
    return-void
.end method

.method private c(ILcom/byazt/dj/tt;Ljava/lang/Object;Ljava/util/List;Landroid/os/Bundle;Lcom/byazt/iu/n;)Lcom/byazt/iu/ve;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/byazt/dj/tt;",
            "TV;",
            "Ljava/util/List<",
            "Lcom/byazt/ete/ic;",
            ">;",
            "Landroid/os/Bundle;",
            "Lcom/byazt/iu/n<",
            "TV;>;)",
            "Lcom/byazt/iu/ve;"
        }
    .end annotation

    move-object/from16 v0, p5

    const-string v1, "start_time"

    .line 34
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    const-string v1, "is_cache"

    .line 35
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    const-string v1, "is_second_page_ad"

    const/4 v2, 0x0

    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 37
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/ete/ic;

    .line 38
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->bn()Lcom/byazt/ete/hd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/ete/hd;->tt()V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p4

    .line 39
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/byazt/ete/ic;

    .line 40
    new-instance v0, Lcom/byazt/vvt/tt$2;

    move-object v2, v0

    move-object v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p3

    move v9, p1

    move-object/from16 v12, p6

    invoke-direct/range {v2 .. v13}, Lcom/byazt/vvt/tt$2;-><init>(Lcom/byazt/vvt/tt;ZLcom/byazt/dj/tt;Ljava/util/List;Ljava/lang/Object;Lcom/byazt/ete/ic;IJLcom/byazt/iu/n;Z)V

    return-object v0
.end method

.method public static synthetic c(Lcom/byazt/vvt/tt;ILcom/byazt/dj/tt;Ljava/lang/Object;Ljava/util/List;Landroid/os/Bundle;Lcom/byazt/iu/n;)Lcom/byazt/iu/ve;
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p6}, Lcom/byazt/vvt/tt;->c(ILcom/byazt/dj/tt;Ljava/lang/Object;Ljava/util/List;Landroid/os/Bundle;Lcom/byazt/iu/n;)Lcom/byazt/iu/ve;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public c(ILcom/byazt/dj/tt;Lcom/byazt/ete/ic;)V
    .locals 1

    .line 45
    new-instance p2, Lcom/byazt/vvt/tt$3;

    const-string v0, "preloadResOnMetaCreated"

    invoke-direct {p2, p0, v0, p3, p1}, Lcom/byazt/vvt/tt$3;-><init>(Lcom/byazt/vvt/tt;Ljava/lang/String;Lcom/byazt/ete/ic;I)V

    invoke-static {p2}, Lcom/byazt/bzd/x;->c(Lcom/byazt/bwm/sp;)V

    return-void
.end method

.method public c(ILcom/byazt/ete/c;Lcom/byazt/ete/tt;Lcom/byazt/ete/bm;Lcom/byazt/dj/tt;Lcom/byazt/iu/n;Lcom/byazt/iu/sp;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/byazt/ete/c;",
            "Lcom/byazt/ete/tt;",
            "Lcom/byazt/ete/bm;",
            "Lcom/byazt/dj/tt;",
            "Lcom/byazt/iu/n<",
            "TV;>;",
            "Lcom/byazt/iu/sp;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-virtual {p2}, Lcom/byazt/ete/c;->tt()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_9

    invoke-virtual {p2}, Lcom/byazt/ete/c;->tt()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    goto/16 :goto_3

    .line 6
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-virtual {p2}, Lcom/byazt/ete/c;->tt()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-le p3, v0, :cond_2

    .line 8
    new-instance p3, Lcom/byazt/ete/x$tt$c;

    invoke-direct {p3}, Lcom/byazt/ete/x$tt$c;-><init>()V

    .line 9
    invoke-virtual {p3, p5}, Lcom/byazt/ete/x$tt$c;->c(Lcom/byazt/dj/tt;)Lcom/byazt/ete/x$tt$c;

    move-result-object p3

    .line 10
    invoke-virtual {p2}, Lcom/byazt/ete/c;->tt()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/ete/ic;

    invoke-virtual {p3, v3}, Lcom/byazt/ete/x$tt$c;->c(Lcom/byazt/ete/ic;)Lcom/byazt/ete/x$tt$c;

    move-result-object p3

    .line 11
    invoke-virtual {p3}, Lcom/byazt/ete/x$tt$c;->c()Lcom/byazt/ete/x$tt;

    move-result-object p3

    .line 12
    invoke-static {p1}, Lcom/byazt/ete/x;->c(I)Lcom/byazt/ete/x$ve;

    move-result-object v3

    const-string v4, "mix_ad"

    invoke-virtual {v3, v4, p3}, Lcom/byazt/ete/x$ve;->c(Ljava/lang/String;Lcom/byazt/ete/x$tt;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 13
    invoke-virtual {p2}, Lcom/byazt/ete/c;->tt()Ljava/util/List;

    move-result-object p3

    invoke-static {p3}, Lcom/byazt/omf/c;->c(Ljava/util/List;)V

    .line 14
    invoke-virtual {p2}, Lcom/byazt/ete/c;->tt()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p2}, Lcom/byazt/ete/c;->tt()Ljava/util/List;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 16
    :cond_2
    invoke-virtual {p2}, Lcom/byazt/ete/c;->tt()Ljava/util/List;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/byazt/ete/ic;

    .line 18
    invoke-virtual {p3}, Lcom/byazt/ete/ic;->qt()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 19
    invoke-virtual {p3}, Lcom/byazt/ete/ic;->uv()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gtz v7, :cond_4

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0xa037a0

    add-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {p3, v3, v4}, Lcom/byazt/ete/ic;->n(J)V

    :cond_4
    const/16 v3, 0x66

    .line 21
    invoke-virtual {p3, v3}, Lcom/byazt/ete/ic;->lr(I)V

    .line 22
    invoke-virtual {p0, p1, p5, p3}, Lcom/byazt/vvt/tt;->c(ILcom/byazt/dj/tt;Lcom/byazt/ete/ic;)V

    goto :goto_1

    .line 23
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_7

    if-eqz p7, :cond_6

    const/4 p1, -0x4

    .line 24
    invoke-interface {p7, p1}, Lcom/byazt/iu/sp;->c(I)V

    :cond_6
    return-void

    .line 25
    :cond_7
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 26
    iget-wide p2, p4, Lcom/byazt/ete/bm;->i:J

    const-string v3, "start_time"

    invoke-virtual {v5, v3, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 27
    iget p2, p4, Lcom/byazt/ete/bm;->nu:I

    if-lez p2, :cond_8

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    :goto_2
    const-string p2, "is_second_page_ad"

    invoke-virtual {v5, p2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object v0, p0

    move v1, p1

    move-object v3, p5

    move-object v4, p6

    move-object v6, p7

    .line 28
    invoke-virtual/range {v0 .. v6}, Lcom/byazt/vvt/tt;->c(ILjava/util/List;Lcom/byazt/dj/tt;Lcom/byazt/iu/n;Landroid/os/Bundle;Lcom/byazt/iu/sp;)V

    return-void

    :cond_9
    :goto_3
    if-eqz p7, :cond_a

    const/4 p1, -0x3

    .line 29
    invoke-interface {p7, p1}, Lcom/byazt/iu/sp;->c(I)V

    :cond_a
    return-void
.end method

.method public c(ILjava/util/List;Lcom/byazt/dj/tt;Lcom/byazt/iu/n;Landroid/os/Bundle;Lcom/byazt/iu/sp;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/byazt/ete/ic;",
            ">;",
            "Lcom/byazt/dj/tt;",
            "Lcom/byazt/iu/n<",
            "TV;>;",
            "Landroid/os/Bundle;",
            "Lcom/byazt/iu/sp;",
            ")V"
        }
    .end annotation

    const-string v0, "is_cache"

    const/4 v1, 0x0

    move-object v7, p5

    .line 30
    invoke-virtual {p5, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 31
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/ete/ic;

    .line 32
    invoke-virtual {v2, v0}, Lcom/byazt/ete/ic;->da(Z)V

    goto :goto_0

    .line 33
    :cond_0
    new-instance v0, Lcom/byazt/vvt/tt$1;

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    move-object v5, p3

    move-object v6, p2

    move-object v7, p5

    move-object v8, p4

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lcom/byazt/vvt/tt$1;-><init>(Lcom/byazt/vvt/tt;ILcom/byazt/dj/tt;Ljava/util/List;Landroid/os/Bundle;Lcom/byazt/iu/n;Lcom/byazt/iu/sp;)V

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    invoke-virtual {p0, p3, p2, v0}, Lcom/byazt/vvt/tt;->c(Lcom/byazt/dj/tt;Ljava/util/List;Lcom/byazt/vvt/tt$c;)V

    return-void
.end method

.method public c(Lcom/byazt/dj/tt;ILjava/lang/String;Lcom/byazt/ete/tt;)V
    .locals 0

    .line 3
    invoke-virtual {p4, p2}, Lcom/byazt/ete/tt;->c(I)V

    .line 4
    invoke-static {p4}, Lcom/byazt/ete/tt;->c(Lcom/byazt/ete/tt;)V

    return-void
.end method

.method public abstract c(Lcom/byazt/dj/tt;Ljava/util/List;Lcom/byazt/vvt/tt$c;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/dj/tt;",
            "Ljava/util/List<",
            "Lcom/byazt/ete/ic;",
            ">;",
            "Lcom/byazt/vvt/tt$c<",
            "TV;>;)V"
        }
    .end annotation
.end method

.method public abstract c(Lcom/byazt/dj/tt;Ljava/util/List;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/dj/tt;",
            "Ljava/util/List<",
            "Lcom/byazt/ete/ic;",
            ">;TV;)V"
        }
    .end annotation
.end method

.method public c(ZLcom/byazt/dj/tt;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/byazt/dj/tt;",
            "Ljava/util/List<",
            "Lcom/byazt/ete/ic;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 41
    iget-object p1, p0, Lcom/byazt/vvt/tt;->c:Lcom/byazt/iu/tt;

    if-eqz p1, :cond_1

    .line 42
    invoke-virtual {p1}, Lcom/byazt/iu/tt;->tt()Lcom/byazt/nhd/n;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/byazt/nhd/n;->tt(Lcom/byazt/dj/tt;Ljava/util/List;)V

    return-void

    .line 43
    :cond_0
    iget-object p1, p0, Lcom/byazt/vvt/tt;->c:Lcom/byazt/iu/tt;

    if-eqz p1, :cond_1

    .line 44
    invoke-virtual {p1}, Lcom/byazt/iu/tt;->tt()Lcom/byazt/nhd/n;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/byazt/nhd/n;->c(Lcom/byazt/dj/tt;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public c(Lcom/byazt/dj/tt;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/dj/tt;",
            "Ljava/util/List<",
            "Lcom/byazt/ete/ic;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const/4 p1, 0x1

    return p1
.end method
