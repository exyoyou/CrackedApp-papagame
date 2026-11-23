.class public Lcom/byazt/om/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/om/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x22a,
        0x47
    }
.end annotation


# instance fields
.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/byazt/om/x;->c:I

    .line 6
    .line 7
    return-void
.end method

.method private c(Ljava/lang/String;I)D
    .locals 5

    .line 70
    invoke-static {}, Lcom/byazt/ck/uj;->c()Lcom/byazt/ck/uj;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, p1, p2, v1}, Lcom/byazt/ck/uj;->c(Ljava/lang/String;II)Lcom/byazt/nbs/tt;

    move-result-object p1

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    .line 71
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/nbs/tt;->l()Ljava/util/List;

    move-result-object p1

    .line 72
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/byazt/nbs/da;

    .line 73
    invoke-virtual {p2}, Lcom/byazt/nbs/da;->pf()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/byazt/nbs/da;->gr()D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_1

    .line 74
    invoke-virtual {p2}, Lcom/byazt/nbs/da;->gr()D

    move-result-wide v0

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method private c(Lcom/byazt/ll/tt;Ljava/lang/String;Lcom/byazt/nbs/tt;Lcom/byazt/iz/tt;)V
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v11, p1

    move-object/from16 v9, p2

    move-object/from16 v5, p4

    .line 25
    invoke-static {}, Lcom/byazt/ix/uj;->c()Lcom/byazt/ix/uj;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/byazt/ix/uj;->tt(Ljava/lang/String;)Lcom/byazt/ll/tt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0}, Lcom/byazt/ll/tt;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/byazt/ll/tt;->c(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0}, Lcom/byazt/ll/tt;->ve()I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/byazt/ll/tt;->tt(I)V

    .line 28
    :cond_0
    invoke-static {}, Lcom/byazt/ix/uj;->c()Lcom/byazt/ix/uj;

    move-result-object v0

    invoke-virtual {v0, v9, v11}, Lcom/byazt/ix/uj;->c(Ljava/lang/String;Lcom/byazt/ll/tt;)V

    .line 29
    invoke-virtual/range {p4 .. p4}, Lcom/byazt/iz/tt;->gu()Lcom/byazt/ll/tt;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Lcom/byazt/nbs/tt;->lo()Ljava/lang/String;

    move-result-object v13

    .line 30
    invoke-virtual/range {p4 .. p4}, Lcom/byazt/iz/tt;->yv()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/lit8 v14, v0, 0x1

    invoke-virtual/range {p4 .. p4}, Lcom/byazt/iz/tt;->pf()Lcom/byazt/nbs/i;

    move-result-object v0

    iget-object v15, v0, Lcom/byazt/nbs/i;->c:Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 31
    invoke-static/range {v12 .. v17}, Lcom/byazt/ng/a;->c(Lcom/byazt/ll/tt;Ljava/lang/String;ZLjava/lang/String;ILjava/util/Map;)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 32
    invoke-static {v5, v0, v2}, Lcom/byazt/qv/c;->c(Lcom/byazt/iz/tt;Ljava/util/List;Z)V

    .line 33
    invoke-static {}, Lcom/byazt/ix/uj;->c()Lcom/byazt/ix/uj;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/byazt/ix/uj;->ve(Ljava/lang/String;)Lcom/byazt/ix/tt;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 34
    invoke-interface {v3}, Lcom/byazt/ix/tt;->uj()Lcom/byazt/iz/tt;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Lcom/byazt/ix/tt;->uj()Lcom/byazt/iz/tt;

    move-result-object v4

    invoke-virtual {v4}, Lcom/byazt/iz/tt;->pf()Lcom/byazt/nbs/i;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v0

    :goto_0
    invoke-virtual {v5, v4}, Lcom/byazt/iz/tt;->c(Lcom/byazt/nbs/i;)V

    .line 35
    invoke-interface {v3}, Lcom/byazt/ix/tt;->e_()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/byazt/iz/tt;->c(Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 36
    :cond_2
    invoke-static {}, Lcom/byazt/ix/uj;->c()Lcom/byazt/ix/uj;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ll/tt;->n()I

    move-result v4

    invoke-virtual {v3, v9, v4}, Lcom/byazt/ix/uj;->tt(Ljava/lang/String;I)I

    move-result v10

    const/4 v3, 0x2

    if-ne v10, v3, :cond_3

    .line 37
    iput v1, v6, Lcom/byazt/om/x;->c:I

    .line 38
    invoke-virtual {v5, v1}, Lcom/byazt/iz/tt;->c(I)V

    .line 39
    invoke-virtual/range {p4 .. p4}, Lcom/byazt/iz/tt;->x()V

    return-void

    :cond_3
    const/4 v1, 0x4

    const/4 v3, 0x3

    const-string v4, "TTMediationSDK"

    if-eq v10, v3, :cond_5

    if-ne v10, v1, :cond_4

    goto :goto_1

    :cond_4
    const-string v0, "--==-- \u9884\u7f13\u5b58reqType\u9519\u8bef\uff1areqType = "

    .line 40
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 41
    :cond_5
    :goto_1
    invoke-static/range {p2 .. p2}, Lcom/byazt/ix/uj;->n(Ljava/lang/String;)J

    move-result-wide v7

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v7

    const-wide/16 v14, -0x1

    cmp-long v16, v7, v14

    if-eqz v16, :cond_6

    .line 43
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/nbs/tt;->sp()J

    move-result-wide v7

    cmp-long v14, v12, v7

    if-gez v14, :cond_6

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--==-- \u9884\u7f13\u5b58\u8865\u5145\u8bf7\u6c42\u65e0\u9700\u53d1\u8d77\uff0c\u65f6\u95f4\u95f4\u9694\u4e0d\u591f\uff0cinterval\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", config interval: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/nbs/tt;->sp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {v4, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iput v3, v6, Lcom/byazt/om/x;->c:I

    .line 48
    invoke-virtual {v5, v3}, Lcom/byazt/iz/tt;->c(I)V

    .line 49
    invoke-virtual/range {p4 .. p4}, Lcom/byazt/iz/tt;->x()V

    return-void

    .line 50
    :cond_6
    invoke-virtual {v5, v2}, Lcom/byazt/iz/tt;->c(Z)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 51
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_7

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/yl/ve;

    :cond_7
    move-object v12, v0

    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/ll/tt;->my()I

    move-result v0

    invoke-direct {v6, v9, v0}, Lcom/byazt/om/x;->c(Ljava/lang/String;I)D

    move-result-wide v7

    if-eqz v12, :cond_8

    .line 53
    invoke-virtual {v12}, Lcom/byazt/yl/ve;->isPAd()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v12}, Lcom/byazt/yl/ve;->getCpm()D

    move-result-wide v2

    cmpg-double v0, v2, v7

    if-gez v0, :cond_8

    .line 54
    invoke-static {}, Lcom/byazt/ix/uj;->c()Lcom/byazt/ix/uj;

    move-result-object v13

    invoke-virtual/range {p4 .. p4}, Lcom/byazt/iz/tt;->getContext()Landroid/content/Context;

    move-result-object v14

    new-instance v15, Lcom/byazt/om/x$1;

    move-object v0, v15

    move-object/from16 v1, p0

    move v2, v10

    move-wide v3, v7

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/byazt/om/x$1;-><init>(Lcom/byazt/om/x;IDLcom/byazt/iz/tt;)V

    move-object v7, v13

    move-object v8, v14

    move-object/from16 v9, p2

    move-object/from16 v11, p1

    move-object v13, v15

    invoke-virtual/range {v7 .. v13}, Lcom/byazt/ix/uj;->c(Landroid/content/Context;Ljava/lang/String;ILcom/byazt/ll/tt;Lcom/byazt/yl/ve;Lcom/byazt/ix/uj$ve;)V

    return-void

    :cond_8
    const-string v0, "--==-- \u9884\u7f13\u5b58\u8865\u5145\u8bf7\u6c42\u65e0\u9700\u53d1\u8d77\uff0c\u5df2\u7ecf\u547d\u4e2d\u6700\u4f18"

    .line 55
    invoke-static {v4, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iput v1, v6, Lcom/byazt/om/x;->c:I

    .line 57
    invoke-virtual {v5, v1}, Lcom/byazt/iz/tt;->c(I)V

    .line 58
    invoke-virtual/range {p4 .. p4}, Lcom/byazt/iz/tt;->x()V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/om/x;Ljava/lang/String;ZILjava/util/List;IDLcom/byazt/iz/tt;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/byazt/om/x;->c(Ljava/lang/String;ZILjava/util/List;IDLcom/byazt/iz/tt;)V

    return-void
.end method

.method private c(Ljava/lang/String;ZILjava/util/List;IDLcom/byazt/iz/tt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/util/List<",
            "Lcom/byazt/yl/ve;",
            ">;ID",
            "Lcom/byazt/iz/tt;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_1

    const/16 p1, 0x2713

    if-ne p3, p1, :cond_0

    const/16 p1, 0x9

    .line 59
    iput p1, p0, Lcom/byazt/om/x;->c:I

    goto :goto_1

    :cond_0
    const/16 p1, 0x2766

    if-ne p3, p1, :cond_5

    const/16 p1, 0x8

    .line 60
    iput p1, p0, Lcom/byazt/om/x;->c:I

    goto :goto_1

    :cond_1
    const/4 p1, 0x4

    if-ne p5, p1, :cond_4

    if-eqz p4, :cond_2

    .line 61
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    const/4 p1, 0x0

    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/yl/ve;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 62
    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getCpm()D

    move-result-wide p1

    cmpl-double p3, p1, p6

    if-ltz p3, :cond_3

    const/4 p1, 0x6

    .line 63
    iput p1, p0, Lcom/byazt/om/x;->c:I

    goto :goto_1

    :cond_3
    const/4 p1, 0x7

    .line 64
    iput p1, p0, Lcom/byazt/om/x;->c:I

    goto :goto_1

    :cond_4
    const/4 p1, 0x3

    if-ne p5, p1, :cond_5

    const/4 p1, 0x5

    .line 65
    iput p1, p0, Lcom/byazt/om/x;->c:I

    .line 66
    :cond_5
    :goto_1
    iget p1, p0, Lcom/byazt/om/x;->c:I

    invoke-virtual {p8, p1}, Lcom/byazt/iz/tt;->c(I)V

    .line 67
    invoke-virtual {p8, p4}, Lcom/byazt/iz/tt;->tt(Ljava/util/List;)V

    const-string p1, "TTMediationSDK"

    const-string p2, "--==-- \u9884\u7f13\u5b58\u8865\u5145\u8bf7\u6c42\u7ed3\u675f\uff0c\u5bf9\u5916\u7ed9\u51fa\u56de\u8c03"

    .line 68
    invoke-static {p1, p2}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p8}, Lcom/byazt/iz/tt;->x()V

    return-void
.end method

.method private c(Ljava/lang/String;Lcom/byazt/ll/tt;Lcom/byazt/iz/tt;)Z
    .locals 3

    .line 12
    invoke-virtual {p3}, Lcom/byazt/iz/tt;->m()Lcom/byazt/nbs/tt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0}, Lcom/byazt/nbs/tt;->lo()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    invoke-static {}, Lcom/byazt/ix/uj;->c()Lcom/byazt/ix/uj;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lcom/byazt/ix/uj;->c(Ljava/lang/String;Lcom/byazt/ll/tt;Ljava/lang/String;)Z

    move-result p2

    const-string v0, "TTMediationSDK"

    if-eqz p2, :cond_3

    .line 15
    invoke-static {}, Lcom/byazt/ix/uj;->c()Lcom/byazt/ix/uj;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/byazt/ix/uj;->uj(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 16
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 17
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/ix/sp;

    .line 18
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 19
    iget-object v1, v1, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-virtual {p3, v2}, Lcom/byazt/iz/tt;->tt(Ljava/util/List;)V

    goto :goto_1

    .line 21
    :cond_1
    invoke-virtual {p3}, Lcom/byazt/iz/tt;->sl()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p2

    if-gtz p2, :cond_2

    invoke-virtual {p3}, Lcom/byazt/iz/tt;->yp()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p2

    if-gtz p2, :cond_2

    .line 22
    invoke-virtual {p3}, Lcom/byazt/iz/tt;->t()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 23
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/byazt/eu/uj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "--==-- hit cache!!! -----"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 24
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/byazt/eu/uj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "--==-- not hit cache!!! -----"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public c(Lcom/byazt/om/c$c;)V
    .locals 5

    .line 2
    invoke-interface {p1}, Lcom/byazt/om/c$c;->c()Lcom/byazt/iz/tt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/iz/tt;->m()Lcom/byazt/nbs/tt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/nbs/tt;->nb()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-interface {p1}, Lcom/byazt/om/c$c;->c()Lcom/byazt/iz/tt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/iz/tt;->gu()Lcom/byazt/ll/tt;

    move-result-object v1

    .line 4
    invoke-interface {p1}, Lcom/byazt/om/c$c;->c()Lcom/byazt/iz/tt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/iz/tt;->yv()Z

    move-result v2

    .line 5
    invoke-static {}, Lcom/byazt/ix/uj;->c()Lcom/byazt/ix/uj;

    move-result-object v3

    invoke-virtual {v1}, Lcom/byazt/ll/tt;->n()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lcom/byazt/ix/uj;->ve(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6
    invoke-static {}, Lcom/byazt/ix/uj;->c()Lcom/byazt/ix/uj;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/byazt/ix/uj;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v2, :cond_1

    if-nez v3, :cond_1

    .line 7
    invoke-interface {p1}, Lcom/byazt/om/c$c;->c()Lcom/byazt/iz/tt;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/byazt/om/x;->c(Ljava/lang/String;Lcom/byazt/ll/tt;Lcom/byazt/iz/tt;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    invoke-interface {p1}, Lcom/byazt/om/c$c;->c()Lcom/byazt/iz/tt;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/byazt/iz/tt;->uj(Z)V

    .line 9
    invoke-interface {p1}, Lcom/byazt/om/c$c;->c()Lcom/byazt/iz/tt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/iz/tt;->m()Lcom/byazt/nbs/tt;

    move-result-object v2

    invoke-interface {p1}, Lcom/byazt/om/c$c;->c()Lcom/byazt/iz/tt;

    move-result-object p1

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/byazt/om/x;->c(Lcom/byazt/ll/tt;Ljava/lang/String;Lcom/byazt/nbs/tt;Lcom/byazt/iz/tt;)V

    return-void

    .line 10
    :cond_1
    invoke-static {}, Lcom/byazt/ix/uj;->c()Lcom/byazt/ix/uj;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/byazt/ix/uj;->c(Ljava/lang/String;Lcom/byazt/ll/tt;)V

    .line 11
    :cond_2
    invoke-interface {p1}, Lcom/byazt/om/c$c;->c()Lcom/byazt/iz/tt;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/byazt/om/c$c;->c(Lcom/byazt/iz/tt;)V

    return-void
.end method

.method public tt(Lcom/byazt/om/c$c;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Lcom/byazt/om/c$c;->c(Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method
