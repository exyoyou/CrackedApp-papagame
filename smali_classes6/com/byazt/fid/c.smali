.class public Lcom/byazt/fid/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x9c8,
        0x14
    }
.end annotation


# direct methods
.method public static c(Lcom/byazt/iz/tt;Lcom/byazt/nbs/da;I)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    if-eqz v0, :cond_5

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/iz/tt;->gu()Lcom/byazt/ll/tt;

    move-result-object v1

    if-eqz v1, :cond_5

    if-nez v14, :cond_0

    goto/16 :goto_3

    .line 33
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/iz/tt;->gu()Lcom/byazt/ll/tt;

    move-result-object v15

    .line 34
    invoke-virtual {v15}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v13

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13}, Lcom/byazt/eu/uj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "----------\u603b\u8d85\u65f6\u540e\u5c1d\u8bd5\u4ece\u590d\u7528\u6c60\u4e2d\u67e5\u627e\u5e7f\u544a\uff1aid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   loadSort:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/byazt/nbs/da;->yv()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  showSort:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/byazt/nbs/da;->p()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "   adnName:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/byazt/nbs/da;->z()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v12, "TTMediationSDK"

    invoke-static {v12, v1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v10

    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/nbs/da;->gt()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 38
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object v1

    invoke-virtual {v15}, Lcom/byazt/ll/tt;->n()I

    move-result v5

    invoke-virtual {v1, v13, v10, v5}, Lcom/byazt/hk/c;->uj(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 39
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object v1

    const/4 v11, 0x1

    invoke-virtual {v1, v10, v15, v11}, Lcom/byazt/hk/c;->c(Ljava/lang/String;Lcom/byazt/ll/tt;Z)I

    move-result v1

    const/4 v9, 0x3

    if-ne v1, v9, :cond_5

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13}, Lcom/byazt/eu/uj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "----------\u53ef\u590d\u7528\uff1aid:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/byazt/nbs/da;->yv()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/byazt/nbs/da;->p()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/byazt/nbs/da;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object v1

    move/from16 v8, p2

    invoke-virtual {v1, v13, v10, v14, v8}, Lcom/byazt/hk/c;->c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/nbs/da;I)V

    .line 42
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object v1

    invoke-virtual {v15}, Lcom/byazt/ll/tt;->n()I

    move-result v2

    invoke-virtual {v1, v10, v15, v2}, Lcom/byazt/hk/c;->c(Ljava/lang/String;Lcom/byazt/ll/tt;I)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 43
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v6, 0x0

    .line 44
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/ix/sp;

    iget-object v1, v1, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    invoke-virtual {v15}, Lcom/byazt/ll/tt;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/yl/ve;->getMediationRitReqType(Ljava/lang/String;)I

    move-result v5

    .line 45
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/byazt/hk/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/iz/tt;->yv()Z

    move-result v1

    xor-int/lit8 v4, v1, 0x1

    const/16 v16, 0x4

    const/16 v17, 0x3

    const/16 v18, 0x0

    const-wide/16 v19, -0x1

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/iz/tt;->n()Z

    move-result v21

    const/16 v22, 0x1

    .line 48
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual/range {p0 .. p0}, Lcom/byazt/iz/tt;->cu()J

    move-result-wide v23

    sub-long v23, v1, v23

    move-object/from16 v1, p1

    move-object v2, v15

    move/from16 v25, v5

    move/from16 v5, v16

    move/from16 v6, p2

    move-object/from16 v16, v7

    move/from16 v7, v17

    move/from16 v8, v25

    move-object/from16 v9, v18

    move-object/from16 v26, v10

    move-wide/from16 v10, v19

    move-object/from16 v27, v12

    move/from16 v12, v21

    move-object/from16 v28, v13

    move/from16 v13, v22

    move-object/from16 v17, v15

    move-wide/from16 v14, v23

    .line 49
    invoke-static/range {v1 .. v15}, Lcom/byazt/ng/a;->c(Lcom/byazt/nbs/da;Lcom/byazt/ll/tt;Ljava/lang/String;ZIIIILcom/byazt/pp/c;JZZJ)V

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/iz/tt;->ve()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual/range {p0 .. p1}, Lcom/byazt/iz/tt;->c(Lcom/byazt/nbs/da;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/byazt/iz/tt;->cu()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/byazt/tjo/a;->c(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/ix/sp;

    .line 53
    iget-object v4, v3, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/byazt/yl/ve;->setMediationRitReqType(I)V

    .line 54
    iget-object v4, v3, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    move/from16 v6, v25

    invoke-virtual {v4, v6}, Lcom/byazt/yl/ve;->setMediationRitReqTypeSrc(I)V

    .line 55
    iget-object v4, v3, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    invoke-virtual/range {p0 .. p0}, Lcom/byazt/iz/tt;->n()Z

    move-result v7

    invoke-virtual {v4, v7}, Lcom/byazt/yl/ve;->setTimeoutFill(Z)V

    .line 56
    iget-object v4, v3, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Lcom/byazt/yl/ve;->setIsCallback(Z)V

    .line 57
    iget-object v4, v3, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    move-object/from16 v7, v26

    move-object/from16 v15, v28

    invoke-static {v15, v4, v7}, Lcom/byazt/fid/c;->c(Ljava/lang/String;Lcom/byazt/yl/ve;Ljava/lang/String;)V

    .line 58
    iget-object v3, v3, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object/from16 v3, v16

    move-object/from16 v15, v28

    const/4 v12, 0x0

    const/4 v14, 0x1

    .line 59
    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/ix/sp;

    iget-object v2, v2, Lcom/byazt/ix/sp;->c:Lcom/byazt/yl/ve;

    const/4 v3, 0x0

    const-string v4, "adn cache\u547d\u4e2d"

    const-wide/16 v5, 0x0

    .line 60
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, -0x1

    move-object/from16 v7, v17

    move/from16 v8, p2

    move-wide/from16 v12, v18

    move-object/from16 v16, v15

    move-wide/from16 v14, v20

    .line 61
    invoke-static/range {v2 .. v15}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;ILjava/lang/String;JLcom/byazt/ll/tt;IIILjava/lang/String;JJ)V

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/iz/tt;->ve()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual/range {p0 .. p1}, Lcom/byazt/iz/tt;->tt(Lcom/byazt/nbs/da;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/byazt/iz/tt;->cu()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/byazt/tjo/a;->c(Lorg/json/JSONObject;Ljava/lang/String;J)V

    const/4 v2, 0x1

    .line 63
    invoke-static {v0, v1, v2}, Lcom/byazt/qv/c;->c(Lcom/byazt/iz/tt;Ljava/util/List;Z)V

    const/4 v2, 0x0

    .line 64
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/yl/ve;

    .line 65
    invoke-virtual {v2}, Lcom/byazt/yl/ve;->isPAd()Z

    move-result v3

    const-string v4, ",CPM="

    const-string v5, ",showSort="

    const-string v6, ",loadSort="

    const-string v7, ",\u5e7f\u544a\u7c7b\u578b\uff1a"

    const-string v8, ",slotId\uff1a"

    if-eqz v3, :cond_4

    .line 66
    invoke-virtual {v0, v1}, Lcom/byazt/iz/tt;->tt(Ljava/util/List;)V

    .line 67
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/yl/ve;

    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v16 .. v16}, Lcom/byazt/eu/uj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\u590d\u7528\u6c60\u56de\u6eaf\u6210\u529f...........\u56de\u6eaf\u5230\u4e86P\u5c42\u5e7f\u544a_\u5f53\u524dP\u5c42\u5e7f\u544a\u7f13\u5b58\u6c60\u6570\u91cf\uff1a"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/iz/tt;->sl()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v2}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v2}, Lcom/byazt/yl/ve;->getAdNetWorkName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v2}, Lcom/byazt/yl/ve;->getLoadSort()I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v2}, Lcom/byazt/yl/ve;->getShowSort()I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/byazt/yl/ve;->getCpm()D

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v27

    .line 74
    invoke-static {v3, v2}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    move-object/from16 v3, v27

    .line 75
    invoke-virtual {v2}, Lcom/byazt/yl/ve;->isNormalAd()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 76
    invoke-virtual {v0, v1}, Lcom/byazt/iz/tt;->tt(Ljava/util/List;)V

    .line 77
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/yl/ve;

    .line 78
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v16 .. v16}, Lcom/byazt/eu/uj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\u590d\u7528\u6c60\u56de\u6eaf\u6210\u529f...........\u56de\u6eaf\u5230\u4e86\u666e\u901a\u5c42\u5e7f\u544a_\u5f53\u524d\u666e\u901a\u5e7f\u544a\u7f13\u5b58\u6c60\u6570\u91cf\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/iz/tt;->t()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v2}, Lcom/byazt/yl/ve;->getAdNetWorkName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v2}, Lcom/byazt/yl/ve;->getLoadSort()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/byazt/yl/ve;->getShowSort()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/byazt/yl/ve;->getCpm()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-static {v3, v2}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method private static c(Ljava/lang/String;Lcom/byazt/yl/ve;Ljava/lang/String;)V
    .locals 2

    .line 83
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/byazt/hk/c;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/nbs/da;

    move-result-object p0

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/byazt/nbs/da;->yv()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/byazt/yl/ve;->setLoadSort(I)V

    .line 85
    invoke-virtual {p0}, Lcom/byazt/nbs/da;->p()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/byazt/yl/ve;->setShowSort(I)V

    .line 86
    invoke-virtual {p0}, Lcom/byazt/nbs/da;->yp()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/byazt/yl/ve;->setExchangeRate(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/byazt/nbs/da;->gu()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/byazt/yl/ve;->setDiscount(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/byazt/nbs/da;->my()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/byazt/yl/ve;->setAdNetworkSlotType(I)V

    .line 89
    invoke-virtual {p0}, Lcom/byazt/nbs/da;->gr()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/byazt/yl/ve;->setCpm(D)V

    .line 90
    invoke-virtual {p0}, Lcom/byazt/nbs/da;->a()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/byazt/yl/ve;->setSubAdType(I)V

    :cond_0
    return-void
.end method

.method public static c(Lcom/byazt/iz/tt;Ljava/util/List;Ljava/util/Map;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/iz/tt;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/byazt/nbs/da;",
            ">;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_c

    .line 7
    invoke-virtual {p0}, Lcom/byazt/iz/tt;->gu()Lcom/byazt/ll/tt;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/iz/tt;->gu()Lcom/byazt/ll/tt;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_c

    .line 10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_2

    :cond_1
    if-eqz p2, :cond_c

    .line 11
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_2

    .line 12
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, "TTMediationSDK"

    if-eqz v2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_3

    .line 14
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_3

    .line 15
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/byazt/nbs/da;

    if-eqz v6, :cond_4

    .line 16
    invoke-virtual {v6}, Lcom/byazt/nbs/da;->uj()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {}, Lcom/byazt/hr/sl;->c()Lcom/byazt/hr/sl;

    move-result-object v7

    invoke-virtual {v6}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Lcom/byazt/hr/sl;->ve(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 17
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/byazt/eu/uj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "adn \u8bf7\u6c42\u89e6\u53d1\u6b21\u6570\u62e6\u622a............"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_5
    invoke-virtual {v6}, Lcom/byazt/nbs/da;->uj()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {}, Lcom/byazt/hr/t;->c()Lcom/byazt/hr/t;

    move-result-object v7

    invoke-virtual {v6}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Lcom/byazt/hr/t;->ve(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 19
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/byazt/eu/uj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "adn \u8bf7\u6c42\u89e6\u53d1\u65f6\u95f4\u95f4\u9694\u62e6\u622a............"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :cond_6
    invoke-static {}, Lcom/byazt/hr/yp;->c()Lcom/byazt/hr/yp;

    move-result-object v7

    invoke-virtual {v6}, Lcom/byazt/nbs/da;->nu()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Lcom/byazt/hr/yp;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 21
    invoke-static {}, Lcom/byazt/hr/yp;->c()Lcom/byazt/hr/yp;

    move-result-object v7

    invoke-virtual {v6}, Lcom/byazt/nbs/da;->z()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v1, v8, v9}, Lcom/byazt/hr/yp;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/pp/c;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 22
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/byazt/eu/uj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "adn rit_level \u8bf7\u6c42\u89e6\u53d1\u4e86\u9519\u8bef\u7801\u62e6\u622a............"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 23
    :cond_7
    invoke-static {}, Lcom/byazt/hr/ve;->c()Lcom/byazt/hr/ve;

    move-result-object v7

    invoke-virtual {v6}, Lcom/byazt/nbs/da;->z()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/byazt/hr/ve;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/pp/c;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 24
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/byazt/eu/uj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "adn \u8bf7\u6c42\u89e6\u53d1\u4e86\u9519\u8bef\u7801\u62e6\u622a............"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 25
    :cond_8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {p0, v6, v7}, Lcom/byazt/fid/c;->c(Lcom/byazt/iz/tt;Lcom/byazt/nbs/da;I)V

    .line 26
    invoke-virtual {p0}, Lcom/byazt/iz/tt;->my()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 27
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/byazt/eu/uj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u56de\u6eaf\u5230\u4e86\u6ee1\u8db3\u6570\u91cf\u7684\u5e7f\u544a.......\u6709\u5e7f\u544a\u56de\u8c03\u6210\u529f"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 28
    :cond_9
    invoke-virtual {p0}, Lcom/byazt/iz/tt;->sl()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_b

    .line 29
    invoke-virtual {p0}, Lcom/byazt/iz/tt;->t()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_b

    .line 30
    invoke-virtual {p0}, Lcom/byazt/iz/tt;->yp()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p0

    if-lez p0, :cond_a

    goto :goto_1

    :cond_a
    return v0

    .line 31
    :cond_b
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/byazt/eu/uj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u56de\u6eaf\u5230\u4e86\u5e7f\u544a.......\u6709\u5e7f\u544a\u56de\u8c03\u6210\u529f"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_c
    :goto_2
    return v0
.end method

.method public static c(Lcom/byazt/nbs/tt;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/nbs/tt;->pf()I

    move-result p0

    .line 2
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/qe/ve;->os()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    const/4 v2, 0x1

    if-eqz p0, :cond_3

    .line 4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v2, :cond_2

    return v2

    :cond_2
    return v0

    :cond_3
    const-string p0, "-1"

    .line 5
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_4

    .line 6
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v2, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public static tt(Lcom/byazt/nbs/tt;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/nbs/tt;->pf()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/byazt/qe/ve;->oz()Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    return v0

    .line 20
    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Ljava/lang/Integer;

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    if-eqz p0, :cond_3

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-ne p0, v2, :cond_2

    .line 38
    .line 39
    return v2

    .line 40
    :cond_2
    return v0

    .line 41
    :cond_3
    const-string p0, "-1"

    .line 42
    .line 43
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    check-cast p0, Ljava/lang/Integer;

    .line 48
    .line 49
    if-eqz p0, :cond_4

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-ne p0, v2, :cond_4

    .line 56
    .line 57
    return v2

    .line 58
    :cond_4
    return v0
.end method
