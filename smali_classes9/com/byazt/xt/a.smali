.class public Lcom/byazt/xt/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/xt/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x28f,
        0x22
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

.method private c(Lcom/byazt/iz/tt;Lcom/byazt/dv/tt;Lcom/byazt/ll/tt;Ljava/lang/String;Lcom/byazt/nbs/da;I)Z
    .locals 26

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v15, p5

    .line 18
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v3

    move/from16 v14, p6

    invoke-virtual {v2, v3, v1, v15, v14}, Lcom/byazt/hk/c;->c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/nbs/da;I)V

    .line 19
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lcom/byazt/ll/tt;->n()I

    move-result v3

    move-object/from16 v13, p3

    invoke-virtual {v2, v1, v13, v3}, Lcom/byazt/hk/c;->c(Ljava/lang/String;Lcom/byazt/ll/tt;I)Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x0

    if-eqz v11, :cond_2

    .line 20
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    goto/16 :goto_1

    .line 21
    :cond_0
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/ix/sp;

    iget-object v2, v2, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    invoke-virtual/range {p3 .. p3}, Lcom/byazt/ll/tt;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/byazt/yl/ve;->getMediationRitReqType(Ljava/lang/String;)I

    move-result v10

    .line 22
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/byazt/hk/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/iz/tt;->yv()Z

    move-result v2

    const/16 v18, 0x1

    xor-int/lit8 v5, v2, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x3

    const/16 v16, 0x0

    const-wide/16 v19, -0x1

    const/16 v17, 0x0

    const/16 v21, 0x0

    .line 24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lcom/byazt/iz/tt;->cu()J

    move-result-wide v22

    sub-long v22, v2, v22

    move-object/from16 v2, p5

    move-object/from16 v3, p3

    move/from16 v7, p6

    move v9, v10

    move/from16 v24, v10

    move-object/from16 v10, v16

    move-object/from16 v25, v11

    move-wide/from16 v11, v19

    move/from16 v13, v17

    move/from16 v14, v21

    move-object v1, v15

    move-wide/from16 v15, v22

    .line 25
    invoke-static/range {v2 .. v16}, Lcom/byazt/ng/a;->c(Lcom/byazt/nbs/da;Lcom/byazt/ll/tt;Ljava/lang/String;ZIIIILcom/byazt/pp/c;JZZJ)V

    .line 26
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/iz/tt;->ve()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1}, Lcom/byazt/iz/tt;->c(Lcom/byazt/nbs/da;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/byazt/iz/tt;->cu()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/byazt/tjo/a;->c(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 27
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 28
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/byazt/ix/sp;

    .line 29
    iget-object v5, v4, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/byazt/yl/ve;->setMediationRitReqType(I)V

    .line 30
    iget-object v5, v4, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    move/from16 v6, v24

    invoke-virtual {v5, v6}, Lcom/byazt/yl/ve;->setMediationRitReqTypeSrc(I)V

    .line 31
    iget-object v5, v4, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/byazt/yl/ve;->setTimeoutFill(Z)V

    .line 32
    iget-object v5, v4, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    invoke-virtual {v5, v7}, Lcom/byazt/yl/ve;->setIsCallback(Z)V

    .line 33
    iget-object v5, v4, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    invoke-virtual/range {p3 .. p3}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v8

    move-object v14, v1

    move-object/from16 v1, p4

    invoke-static {v5, v8, v1}, Lcom/byazt/qv/a;->c(Lcom/byazt/yl/ve;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v4, v4, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v14

    goto :goto_0

    :cond_1
    move-object v14, v1

    move-object/from16 v4, v25

    const/4 v7, 0x0

    .line 35
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/ix/sp;

    iget-object v4, v1, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    const/4 v5, 0x0

    const-string v6, "adn cache\u547d\u4e2d"

    const-wide/16 v7, 0x0

    .line 36
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x2

    const/4 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v19, -0x1

    move-object/from16 v9, p3

    move/from16 v10, p6

    move-object v1, v14

    move-wide v14, v15

    move-wide/from16 v16, v19

    .line 37
    invoke-static/range {v4 .. v17}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;ILjava/lang/String;JLcom/byazt/ll/tt;IIILjava/lang/String;JJ)V

    .line 38
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/iz/tt;->ve()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v1}, Lcom/byazt/iz/tt;->tt(Lcom/byazt/nbs/da;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/byazt/iz/tt;->cu()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lcom/byazt/tjo/a;->c(Lorg/json/JSONObject;Ljava/lang/String;J)V

    move-object/from16 v0, p2

    .line 39
    invoke-virtual {v0, v2, v1}, Lcom/byazt/dv/tt;->c(Ljava/util/List;Lcom/byazt/nbs/da;)V

    return v18

    :cond_2
    :goto_1
    const/4 v7, 0x0

    return v7
.end method


# virtual methods
.method public c(Lcom/byazt/xt/c$c;)V
    .locals 8

    .line 1
    invoke-interface {p1}, Lcom/byazt/xt/c$c;->c()Lcom/byazt/dv/tt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/dv/tt;->x()Lcom/byazt/nbs/da;

    move-result-object v6

    .line 2
    invoke-interface {p1}, Lcom/byazt/xt/c$c;->tt()Lcom/byazt/iz/tt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/iz/tt;->gu()Lcom/byazt/ll/tt;

    move-result-object v4

    if-eqz v6, :cond_1

    .line 3
    invoke-virtual {v6}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v5

    .line 4
    invoke-virtual {v6}, Lcom/byazt/nbs/da;->gt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object v0

    invoke-virtual {v4}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lcom/byazt/ll/tt;->n()I

    move-result v2

    invoke-virtual {v0, v1, v5, v2}, Lcom/byazt/hk/c;->uj(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--==-- \u5e7f\u544a\u590d\u7528\uff0c\u6a21\u5f0f\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object v1

    invoke-virtual {v4}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/byazt/ll/tt;->n()I

    move-result v3

    invoke-virtual {v1, v2, v5, v3}, Lcom/byazt/hk/c;->n(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    .line 8
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v5, v4, v1}, Lcom/byazt/hk/c;->c(Ljava/lang/String;Lcom/byazt/ll/tt;Z)I

    move-result v0

    .line 10
    invoke-interface {p1}, Lcom/byazt/xt/c$c;->c()Lcom/byazt/dv/tt;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/byazt/dv/tt;->ve(I)V

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-ne v0, v1, :cond_0

    .line 11
    invoke-interface {p1}, Lcom/byazt/xt/c$c;->c()Lcom/byazt/dv/tt;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/byazt/dv/tt;->c(I)V

    .line 12
    invoke-interface {p1}, Lcom/byazt/xt/c$c;->tt()Lcom/byazt/iz/tt;

    move-result-object v2

    invoke-interface {p1}, Lcom/byazt/xt/c$c;->c()Lcom/byazt/dv/tt;

    move-result-object v3

    const/4 v7, 0x2

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/byazt/xt/a;->c(Lcom/byazt/iz/tt;Lcom/byazt/dv/tt;Lcom/byazt/ll/tt;Ljava/lang/String;Lcom/byazt/nbs/da;I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_0
    if-ne v0, v2, :cond_1

    .line 13
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object v0

    invoke-virtual {v4}, Lcom/byazt/ll/tt;->n()I

    move-result v1

    invoke-virtual {v0, v5, v4, v1}, Lcom/byazt/hk/c;->c(Ljava/lang/String;Lcom/byazt/ll/tt;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/ix/sp;

    iget-object v0, v0, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    invoke-virtual {v4}, Lcom/byazt/ll/tt;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/yl/ve;->getMediationRitReqType(Ljava/lang/String;)I

    move-result v0

    .line 16
    invoke-interface {p1}, Lcom/byazt/xt/c$c;->c()Lcom/byazt/dv/tt;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/byazt/dv/tt;->tt(I)V

    .line 17
    :cond_1
    invoke-interface {p1, p0}, Lcom/byazt/xt/c$c;->c(Lcom/byazt/xt/c;)V

    return-void
.end method
