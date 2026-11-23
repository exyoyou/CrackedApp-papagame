.class public Lcom/byazt/pl/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/pl/uj;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x56,
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

.method private c(Ljava/util/List;Lcom/byazt/nbs/tt;Lcom/byazt/pl/tt;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/nbs/da;",
            ">;",
            "Lcom/byazt/nbs/tt;",
            "Lcom/byazt/pl/tt;",
            ")",
            "Ljava/util/List<",
            "Lcom/byazt/nbs/da;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    .line 74
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    if-nez p2, :cond_1

    return-object v0

    .line 75
    :cond_1
    invoke-virtual {p2}, Lcom/byazt/nbs/tt;->x()Ljava/util/Map;

    move-result-object v1

    const-string v2, "serverBidding_timeout"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 76
    invoke-virtual {p2}, Lcom/byazt/nbs/tt;->x()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 77
    :goto_0
    invoke-virtual {p2}, Lcom/byazt/nbs/tt;->i()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_6

    if-nez v1, :cond_6

    .line 78
    invoke-static {}, Lcom/byazt/ck/uj;->c()Lcom/byazt/ck/uj;

    move-result-object v1

    invoke-virtual {p2}, Lcom/byazt/nbs/tt;->nb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/byazt/nbs/tt;->pf()I

    move-result v3

    const/16 v4, 0x66

    invoke-virtual {v1, v2, v3, v4}, Lcom/byazt/ck/uj;->c(Ljava/lang/String;II)Lcom/byazt/nbs/tt;

    move-result-object v1

    if-nez v1, :cond_3

    return-object v0

    :cond_3
    const-wide/16 v2, 0x0

    if-nez p3, :cond_4

    move-wide v7, v2

    goto :goto_1

    .line 79
    :cond_4
    iget-wide v4, p3, Lcom/byazt/pl/tt;->t:D

    move-wide v7, v4

    :goto_1
    if-nez p3, :cond_5

    goto :goto_2

    .line 80
    :cond_5
    iget-wide v2, p3, Lcom/byazt/pl/tt;->yp:D

    :goto_2
    move-wide v9, v2

    .line 81
    invoke-virtual {v1}, Lcom/byazt/nbs/tt;->nb()Ljava/lang/String;

    move-result-object v6

    move-object v5, v1

    invoke-static/range {v5 .. v10}, Lcom/byazt/psp/ve;->c(Lcom/byazt/nbs/tt;Ljava/lang/String;DD)Ljava/util/List;

    move-result-object p3

    .line 82
    invoke-virtual {p2}, Lcom/byazt/nbs/tt;->x()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v1}, Lcom/byazt/nbs/tt;->x()Ljava/util/Map;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_3

    .line 83
    :cond_6
    invoke-virtual {p2}, Lcom/byazt/nbs/tt;->l()Ljava/util/List;

    move-result-object p3

    :goto_3
    if-eqz p3, :cond_b

    .line 84
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_7

    goto :goto_5

    .line 85
    :cond_7
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 86
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_8
    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/nbs/da;

    .line 87
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/nbs/da;

    if-eqz v0, :cond_9

    if-eqz v2, :cond_9

    .line 88
    invoke-virtual {v0}, Lcom/byazt/nbs/da;->my()I

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v0}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v0}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 89
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    return-object p2

    :cond_b
    :goto_5
    return-object v0
.end method

.method private c(JILcom/byazt/pp/c;Lcom/byazt/ll/tt;Lcom/byazt/pl/uj$c;)V
    .locals 2

    if-eqz p4, :cond_0

    .line 67
    iget p3, p4, Lcom/byazt/pp/c;->c:I

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    const/4 p3, 0x4

    goto :goto_0

    :cond_0
    const/4 p3, 0x5

    .line 68
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Lcom/byazt/eu/uj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "server bidding\u7f51\u7edc\u8bf7\u6c42\u54cd\u5e94\u5931\u8d25......onFail  result:"

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v0, "TTMediationSDK"

    invoke-static {v0, p5}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    new-instance p5, Lcom/byazt/pl/tt;

    invoke-direct {p5}, Lcom/byazt/pl/tt;-><init>()V

    .line 70
    iput p3, p5, Lcom/byazt/pl/tt;->a:I

    .line 71
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iput-wide v0, p5, Lcom/byazt/pl/tt;->sp:J

    .line 72
    iput-object p4, p5, Lcom/byazt/pl/tt;->x:Lcom/byazt/pp/c;

    if-eqz p6, :cond_1

    .line 73
    invoke-interface {p6, p5}, Lcom/byazt/pl/uj$c;->c(Lcom/byazt/pl/tt;)V

    :cond_1
    return-void
.end method

.method private c(JLcom/byazt/ll/tt;Lcom/byazt/nbs/tt;ILcom/byazt/nbs/sp;Lcom/byazt/pl/uj$c;)V
    .locals 15

    move-wide/from16 v0, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p7

    if-eqz p6, :cond_0

    .line 13
    invoke-virtual/range {p6 .. p6}, Lcom/byazt/nbs/sp;->sp()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "0-thread"

    invoke-static {v4, v5, v0, v1}, Lcom/byazt/tjo/a;->c(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 14
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/byazt/eu/uj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "server bidding\u7f51\u7edc\u8bf7\u6c42\u54cd\u8fd4\u56de............."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TTMediationSDK"

    invoke-static {v5, v4}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v6, 0x2

    if-eqz v2, :cond_6

    if-eqz p6, :cond_6

    .line 15
    invoke-virtual/range {p6 .. p6}, Lcom/byazt/nbs/sp;->uj()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lcom/byazt/vx/p;->c(Ljava/util/List;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 16
    invoke-virtual/range {p6 .. p6}, Lcom/byazt/nbs/sp;->uj()Ljava/util/List;

    move-result-object v7

    .line 17
    new-instance v8, Lcom/byazt/pl/tt;

    invoke-direct {v8}, Lcom/byazt/pl/tt;-><init>()V

    .line 18
    invoke-virtual/range {p6 .. p6}, Lcom/byazt/nbs/sp;->c()D

    move-result-wide v9

    iput-wide v9, v8, Lcom/byazt/pl/tt;->t:D

    .line 19
    invoke-virtual/range {p6 .. p6}, Lcom/byazt/nbs/sp;->tt()I

    move-result v9

    iput v9, v8, Lcom/byazt/pl/tt;->u:I

    .line 20
    invoke-virtual/range {p6 .. p6}, Lcom/byazt/nbs/sp;->ve()D

    move-result-wide v9

    iput-wide v9, v8, Lcom/byazt/pl/tt;->yp:D

    .line 21
    invoke-virtual/range {p6 .. p6}, Lcom/byazt/nbs/sp;->sp()Lorg/json/JSONObject;

    move-result-object v9

    iput-object v9, v8, Lcom/byazt/pl/tt;->sl:Lorg/json/JSONObject;

    .line 22
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    iput v9, v8, Lcom/byazt/pl/tt;->i:I

    .line 23
    invoke-virtual/range {p6 .. p6}, Lcom/byazt/nbs/sp;->i()Ljava/util/List;

    move-result-object v9

    iput-object v9, v8, Lcom/byazt/pl/tt;->c:Ljava/util/List;

    .line 24
    invoke-virtual/range {p4 .. p4}, Lcom/byazt/nbs/tt;->i()I

    move-result v9

    iput v9, v8, Lcom/byazt/pl/tt;->da:I

    .line 25
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 26
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "winners : {"

    .line 27
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/byazt/nbs/x;

    if-eqz v11, :cond_1

    .line 29
    invoke-virtual {v11}, Lcom/byazt/nbs/x;->sp()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/byazt/nbs/tt;->a(Ljava/lang/String;)Lcom/byazt/nbs/da;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 30
    invoke-virtual {v12}, Lcom/byazt/nbs/da;->n()Lcom/byazt/nbs/da;

    move-result-object v12

    .line 31
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, " [ AdnName:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/byazt/nbs/da;->z()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ",slotId:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ",loadSort:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/byazt/nbs/da;->yv()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ",showSort:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/byazt/nbs/da;->p()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "] "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v12, v11}, Lcom/byazt/nbs/da;->c(Lcom/byazt/nbs/x;)V

    .line 33
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v7, "}"

    .line 34
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-static {v9}, Lcom/byazt/vx/p;->c(Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 36
    invoke-virtual/range {p6 .. p6}, Lcom/byazt/nbs/sp;->i()Ljava/util/List;

    move-result-object v2

    .line 37
    invoke-static {v2}, Lcom/byazt/vx/p;->c(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    move/from16 v6, p5

    .line 38
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/byazt/eu/uj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "server bidding\u7f51\u7edc\u8bf7\u6c42\u54cd\u5e94\u5931\u8d25......\uff1a\u6570\u636e\u6709\u8fd4\u56de\uff0c\u4f46\u6ca1\u6709\u8fd4\u56dewinner\u6570\u636e......"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, p0

    goto/16 :goto_4

    .line 39
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/byazt/eu/uj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "server bidding\u7f51\u7edc\u8bf7\u6c42\u54cd\u5e94\u6210\u529f......\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v6, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 41
    invoke-interface {v6, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 42
    invoke-virtual/range {p6 .. p6}, Lcom/byazt/nbs/sp;->i()Ljava/util/List;

    move-result-object v7

    move-object v9, p0

    invoke-direct {p0, v7, v2, v8}, Lcom/byazt/pl/a;->c(Ljava/util/List;Lcom/byazt/nbs/tt;Lcom/byazt/pl/tt;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 43
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 44
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/byazt/eu/uj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "server bidding\u7f51\u7edc\u8bf7\u6c42\u54cd\u5e94\u6210\u529f......waterfall+server bidding\u7269\u6599......"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-interface {v6, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x1

    goto :goto_2

    .line 46
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/byazt/eu/uj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "server bidding\u7f51\u7edc\u8bf7\u6c42\u54cd\u5e94\u6210\u529f......server bidding\u7269\u6599......"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    .line 47
    :goto_2
    iput-object v6, v8, Lcom/byazt/pl/tt;->tt:Ljava/util/List;

    move v6, v2

    goto :goto_4

    :cond_6
    move-object v9, p0

    if-eqz p6, :cond_7

    .line 48
    invoke-virtual/range {p6 .. p6}, Lcom/byazt/nbs/sp;->i()Ljava/util/List;

    move-result-object v2

    .line 49
    invoke-static {v2}, Lcom/byazt/vx/p;->c(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_3

    :cond_7
    move/from16 v6, p5

    .line 50
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/byazt/eu/uj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "server bidding\u7f51\u7edc\u8bf7\u6c42\u54cd\u5e94\u5931\u8d25......\u6ca1\u6709\u8fd4\u56deserverBiddingModel\u76f8\u5173\u6570\u636e"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_4
    if-eqz p6, :cond_d

    .line 51
    invoke-virtual/range {p6 .. p6}, Lcom/byazt/nbs/sp;->a()Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    if-nez v8, :cond_8

    .line 53
    new-instance v7, Lcom/byazt/pl/tt;

    invoke-direct {v7}, Lcom/byazt/pl/tt;-><init>()V

    move-object v8, v7

    .line 54
    :cond_8
    iput-object v2, v8, Lcom/byazt/pl/tt;->uj:Ljava/lang/String;

    .line 55
    :cond_9
    invoke-virtual/range {p6 .. p6}, Lcom/byazt/nbs/sp;->x()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/byazt/eu/uj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "server bidding\u53d1\u73b0config\u8fc7\u671f\u4e86\uff0c\u9700\u8981\u91cd\u65b0\u62c9\u53d6\u914d\u7f6e......\uff1a"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v8, :cond_a

    .line 57
    new-instance v8, Lcom/byazt/pl/tt;

    invoke-direct {v8}, Lcom/byazt/pl/tt;-><init>()V

    .line 58
    :cond_a
    iput-boolean v4, v8, Lcom/byazt/pl/tt;->ve:Z

    .line 59
    :cond_b
    invoke-virtual/range {p6 .. p6}, Lcom/byazt/nbs/sp;->n()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/byazt/vx/p;->c(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_d

    if-nez v8, :cond_c

    .line 60
    new-instance v2, Lcom/byazt/pl/tt;

    invoke-direct {v2}, Lcom/byazt/pl/tt;-><init>()V

    move-object v8, v2

    .line 61
    :cond_c
    invoke-virtual/range {p6 .. p6}, Lcom/byazt/nbs/sp;->n()Ljava/util/List;

    move-result-object v2

    iput-object v2, v8, Lcom/byazt/pl/tt;->n:Ljava/util/List;

    :cond_d
    if-nez v8, :cond_e

    .line 62
    new-instance v8, Lcom/byazt/pl/tt;

    invoke-direct {v8}, Lcom/byazt/pl/tt;-><init>()V

    .line 63
    :cond_e
    iput v6, v8, Lcom/byazt/pl/tt;->a:I

    .line 64
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    iput-wide v4, v8, Lcom/byazt/pl/tt;->sp:J

    .line 65
    iget-object v2, v8, Lcom/byazt/pl/tt;->sl:Lorg/json/JSONObject;

    const-string v4, "0-handle_wtf"

    invoke-static {v2, v4, v0, v1}, Lcom/byazt/tjo/a;->c(Lorg/json/JSONObject;Ljava/lang/String;J)V

    if-eqz v3, :cond_f

    .line 66
    invoke-interface {v3, v8}, Lcom/byazt/pl/uj$c;->c(Lcom/byazt/pl/tt;)V

    :cond_f
    return-void
.end method

.method public static synthetic c(Lcom/byazt/pl/a;JILcom/byazt/pp/c;Lcom/byazt/ll/tt;Lcom/byazt/pl/uj$c;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/byazt/pl/a;->c(JILcom/byazt/pp/c;Lcom/byazt/ll/tt;Lcom/byazt/pl/uj$c;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/pl/a;JLcom/byazt/ll/tt;Lcom/byazt/nbs/tt;ILcom/byazt/nbs/sp;Lcom/byazt/pl/uj$c;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p7}, Lcom/byazt/pl/a;->c(JLcom/byazt/ll/tt;Lcom/byazt/nbs/tt;ILcom/byazt/nbs/sp;Lcom/byazt/pl/uj$c;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;JLcom/byazt/ll/tt;Lcom/byazt/nbs/tt;Lcom/byazt/pl/uj$c;)V
    .locals 9
    .param p6    # Lcom/byazt/pl/uj$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 12
    invoke-static {}, Lcom/byazt/ug/c;->c()Lcom/byazt/ug/c;

    move-result-object v0

    new-instance v8, Lcom/byazt/pl/a$2;

    move-object v1, v8

    move-object v2, p0

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/byazt/pl/a$2;-><init>(Lcom/byazt/pl/a;JLcom/byazt/ll/tt;Lcom/byazt/nbs/tt;Lcom/byazt/pl/uj$c;)V

    invoke-virtual {v0, p1, v8}, Lcom/byazt/ug/c;->c(Ljava/lang/String;Lcom/byazt/ug/c$c;)V

    return-void
.end method

.method public c(Ljava/util/Map;Landroid/content/Context;Lcom/byazt/pl/ve;Lcom/byazt/pl/uj$c;)V
    .locals 9
    .param p4    # Lcom/byazt/pl/uj$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byazt/db/c;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/byazt/pl/ve;",
            "Lcom/byazt/pl/uj$c;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 3
    iget-object v1, p3, Lcom/byazt/pl/ve;->c:Lcom/byazt/ll/tt;

    if-eqz v1, :cond_2

    iget-object v1, p3, Lcom/byazt/pl/ve;->uj:Lcom/byazt/nbs/tt;

    if-eqz v1, :cond_2

    iget-object v1, p3, Lcom/byazt/pl/ve;->tt:Ljava/util/List;

    invoke-static {v1}, Lcom/byazt/vx/p;->c(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p3, Lcom/byazt/pl/ve;->c:Lcom/byazt/ll/tt;

    invoke-virtual {v2}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/byazt/eu/uj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u5f00\u542fserver bidding\u7f51\u7edc\u8bf7\u6c42......\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TTMediationSDK"

    invoke-static {v2, v1}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p3, Lcom/byazt/pl/ve;->c:Lcom/byazt/ll/tt;

    invoke-static {v1, v0}, Lcom/byazt/ng/a;->c(Lcom/byazt/ll/tt;Lorg/json/JSONObject;)V

    .line 6
    iget-object v0, p3, Lcom/byazt/pl/ve;->x:Lcom/byazt/iz/tt;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/byazt/iz/tt;->ve()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "st_sb"

    invoke-virtual {v0}, Lcom/byazt/iz/tt;->cu()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/byazt/tjo/a;->c(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 8
    :cond_1
    iget-wide v2, p3, Lcom/byazt/pl/ve;->sp:J

    const/4 v0, 0x4

    .line 9
    filled-new-array {v0}, [I

    move-result-object v5

    .line 10
    invoke-static {}, Lcom/byazt/ug/c;->c()Lcom/byazt/ug/c;

    move-result-object v7

    new-instance v8, Lcom/byazt/pl/a$1;

    move-object v0, v8

    move-object v1, p0

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/byazt/pl/a$1;-><init>(Lcom/byazt/pl/a;JLcom/byazt/pl/ve;[ILcom/byazt/pl/uj$c;)V

    invoke-virtual {v7, p1, p2, p3, v8}, Lcom/byazt/ug/c;->c(Ljava/util/Map;Landroid/content/Context;Lcom/byazt/pl/ve;Lcom/byazt/ug/c$c;)V

    return-void

    .line 11
    :cond_2
    :goto_0
    invoke-interface {p4, v0}, Lcom/byazt/pl/uj$c;->c(Lcom/byazt/pl/tt;)V

    return-void
.end method
