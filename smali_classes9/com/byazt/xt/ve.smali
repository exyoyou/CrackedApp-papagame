.class public Lcom/byazt/xt/ve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/db/tt;
.implements Lcom/byazt/xt/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x28f,
        0x36
    }
.end annotation


# instance fields
.field public volatile a:J

.field public c:Lcom/byazt/dv/tt;

.field public n:Lcom/byazt/db/c;

.field public sp:J

.field public tt:Lcom/byazt/iz/tt;

.field public uj:Lcom/byazt/ll/tt;

.field public ve:Lcom/byazt/nbs/i;

.field public x:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/byazt/xt/ve;->n:Lcom/byazt/db/c;

    .line 6
    .line 7
    const-wide/16 v0, -0x1

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/byazt/xt/ve;->a:J

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic c(Lcom/byazt/xt/ve;)Lcom/byazt/dv/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    return-object p0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 165
    invoke-static {}, Lcom/byazt/px/tt;->c()Lcom/byazt/px/tt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/px/tt;->c(Ljava/lang/String;)Lcom/byazt/ly/uj;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 166
    invoke-interface {p1}, Lcom/byazt/ly/uj;->getNetworkSdkVersion()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private c(Ljava/util/List;)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/yl/ve;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/byazt/yl/ve;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-static/range {p1 .. p1}, Lcom/byazt/vx/p;->c(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v2, p1

    .line 4
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    .line 5
    :goto_0
    iget-object v3, v0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    if-eqz v3, :cond_4

    invoke-static/range {p1 .. p1}, Lcom/byazt/vx/p;->tt(Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-virtual {v3}, Lcom/byazt/dv/tt;->c()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-virtual {v3}, Lcom/byazt/dv/tt;->gr()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/yl/ve;

    .line 7
    iget-object v4, v0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-virtual {v4}, Lcom/byazt/dv/tt;->x()Lcom/byazt/nbs/da;

    move-result-object v4

    iget-object v5, v0, Lcom/byazt/xt/ve;->uj:Lcom/byazt/ll/tt;

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Lcom/byazt/vx/md;->c(Lcom/byazt/yl/ve;Lcom/byazt/nbs/da;Lcom/byazt/ll/tt;Z)V

    .line 8
    iget-object v4, v0, Lcom/byazt/xt/ve;->uj:Lcom/byazt/ll/tt;

    invoke-virtual {v4}, Lcom/byazt/ll/tt;->hd()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v8, v4, v6

    if-lez v8, :cond_2

    .line 9
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getCpm()D

    move-result-wide v6

    cmpl-double v8, v4, v6

    if-lez v8, :cond_2

    .line 10
    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getCpm()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v15

    .line 12
    invoke-virtual {v3}, Lcom/byazt/yl/ve;->getLevelTag()Ljava/lang/String;

    move-result-object v16

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 14
    iget-object v6, v0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-virtual {v6}, Lcom/byazt/dv/tt;->x()Lcom/byazt/nbs/da;

    move-result-object v6

    invoke-static {v6}, Lcom/byazt/vx/nu;->c(Lcom/byazt/nbs/da;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 15
    invoke-static {}, Lcom/byazt/vx/nu;->tt()Ljava/lang/String;

    move-result-object v6

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    move-object/from16 v17, v6

    move-wide/from16 v18, v7

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    move-object/from16 v17, v4

    move-wide/from16 v18, v5

    .line 17
    :goto_2
    new-instance v6, Lcom/byazt/pp/c;

    const v4, 0xc3b4

    invoke-static {v4}, Lcom/byazt/pp/c;->c(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v4, v5}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    .line 18
    iget-object v4, v0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-virtual {v4}, Lcom/byazt/dv/tt;->pf()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "is_dex_adapter"

    invoke-virtual {v6, v5, v4}, Lcom/byazt/pp/c;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    iget-object v7, v0, Lcom/byazt/xt/ve;->uj:Lcom/byazt/ll/tt;

    iget-object v4, v0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-virtual {v4}, Lcom/byazt/dv/tt;->x()Lcom/byazt/nbs/da;

    move-result-object v8

    iget-object v4, v0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-virtual {v4}, Lcom/byazt/dv/tt;->ve()I

    move-result v9

    iget-object v4, v0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    .line 20
    invoke-virtual {v4}, Lcom/byazt/dv/tt;->sp()I

    move-result v10

    iget-object v4, v0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-virtual {v4}, Lcom/byazt/dv/tt;->a()I

    move-result v11

    iget-object v4, v0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-virtual {v4}, Lcom/byazt/dv/tt;->u()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/byazt/xt/ve;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-wide v13, v0, Lcom/byazt/xt/ve;->sp:J

    .line 21
    invoke-static/range {v6 .. v19}, Lcom/byazt/ng/a;->c(Lcom/byazt/pp/c;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;IIILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 22
    iget-object v4, v0, Lcom/byazt/xt/ve;->tt:Lcom/byazt/iz/tt;

    if-eqz v4, :cond_2

    .line 23
    invoke-virtual {v4}, Lcom/byazt/iz/tt;->ve()Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, v0, Lcom/byazt/xt/ve;->tt:Lcom/byazt/iz/tt;

    invoke-virtual {v5, v3}, Lcom/byazt/iz/tt;->ve(Lcom/byazt/yl/ve;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Lcom/byazt/xt/ve;->tt:Lcom/byazt/iz/tt;

    invoke-virtual {v5}, Lcom/byazt/iz/tt;->cu()J

    move-result-wide v5

    invoke-static {v4, v3, v5, v6}, Lcom/byazt/tjo/a;->c(Lorg/json/JSONObject;Ljava/lang/String;J)V

    goto/16 :goto_1

    :cond_4
    return-object v1
.end method

.method private c()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Lcom/byazt/dv/tt;->i()V

    :cond_0
    return-void
.end method

.method private c(ILcom/byazt/yl/ve;ILjava/lang/String;J)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v15, p2

    .line 113
    iget-object v1, v0, Lcom/byazt/xt/ve;->uj:Lcom/byazt/ll/tt;

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/byazt/dv/tt;->x()Lcom/byazt/nbs/da;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 114
    :cond_0
    iget-object v1, v0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-virtual {v1}, Lcom/byazt/dv/tt;->x()Lcom/byazt/nbs/da;

    move-result-object v13

    const/16 v1, 0x4e20

    move/from16 v2, p1

    if-ne v2, v1, :cond_1

    const-string v1, "load success"

    goto :goto_0

    :cond_1
    const-string v1, "\u8bf7\u6c42\u6210\u529f\uff0c\u4f46\u65e0\u5e7f\u544a\u53ef\u7528"

    :goto_0
    move-object v3, v1

    .line 115
    iget-object v1, v0, Lcom/byazt/xt/ve;->ve:Lcom/byazt/nbs/i;

    if-eqz v1, :cond_2

    iget-boolean v1, v1, Lcom/byazt/nbs/i;->a:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    const/4 v9, 0x0

    .line 116
    :goto_1
    iget-object v1, v0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-virtual {v1}, Lcom/byazt/dv/tt;->gu()Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz v15, :cond_4

    .line 117
    iget-wide v4, v0, Lcom/byazt/xt/ve;->a:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_3

    .line 118
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/byazt/xt/ve;->a:J

    sub-long/2addr v4, v6

    move-wide/from16 v16, v4

    goto :goto_2

    :cond_3
    move-wide/from16 v16, v6

    .line 119
    :goto_2
    iget-wide v4, v0, Lcom/byazt/xt/ve;->sp:J

    iget-object v6, v0, Lcom/byazt/xt/ve;->uj:Lcom/byazt/ll/tt;

    iget-object v1, v0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-virtual {v1}, Lcom/byazt/dv/tt;->ve()I

    move-result v7

    move-object/from16 v1, p2

    move/from16 v2, p1

    move/from16 v8, p3

    move-object/from16 v10, p4

    move-wide/from16 v11, p5

    move-object/from16 p1, v13

    move-wide/from16 v13, v16

    invoke-static/range {v1 .. v14}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;ILjava/lang/String;JLcom/byazt/ll/tt;IIILjava/lang/String;JJ)V

    .line 120
    iget-object v1, v0, Lcom/byazt/xt/ve;->tt:Lcom/byazt/iz/tt;

    if-eqz v1, :cond_5

    .line 121
    invoke-virtual {v1}, Lcom/byazt/iz/tt;->ve()Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, v0, Lcom/byazt/xt/ve;->tt:Lcom/byazt/iz/tt;

    invoke-virtual {v2, v15}, Lcom/byazt/iz/tt;->tt(Lcom/byazt/yl/ve;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/byazt/xt/ve;->tt:Lcom/byazt/iz/tt;

    invoke-virtual {v3}, Lcom/byazt/iz/tt;->cu()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/byazt/tjo/a;->c(Lorg/json/JSONObject;Ljava/lang/String;J)V

    goto :goto_3

    :cond_4
    move-object/from16 p1, v13

    .line 122
    :cond_5
    :goto_3
    sget-boolean v1, Lcom/byazt/yl/tt;->tt:Z

    const-string v2, "] AdType["

    const-string v3, "AdNetWorkName["

    const-string v4, "fill"

    const-string v5, "TTMediationSDK"

    if-eqz v1, :cond_6

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/byazt/xt/ve;->uj:Lcom/byazt/ll/tt;

    invoke-virtual {v6}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/byazt/eu/uj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/nbs/da;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] AdUnitId["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/byazt/xt/ve;->uj:Lcom/byazt/ll/tt;

    .line 125
    invoke-virtual {v2}, Lcom/byazt/ll/tt;->my()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/byazt/nbs/da;->a()I

    move-result v3

    move-object/from16 v6, p1

    invoke-static {v2, v3, v6}, Lcom/byazt/yl/c;->c(IILcom/byazt/nbs/da;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] \u8bf7\u6c42\u6210\u529f (loadSort="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v6}, Lcom/byazt/nbs/da;->yv()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",showSort="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/byazt/nbs/da;->p()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-static {v5, v1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    move-object/from16 v6, p1

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/byazt/xt/ve;->uj:Lcom/byazt/ll/tt;

    invoke-virtual {v7}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/byazt/eu/uj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v6}, Lcom/byazt/nbs/da;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/byazt/xt/ve;->uj:Lcom/byazt/ll/tt;

    invoke-virtual {v2}, Lcom/byazt/ll/tt;->my()I

    move-result v2

    invoke-virtual {v6}, Lcom/byazt/nbs/da;->a()I

    move-result v3

    invoke-static {v2, v3, v6}, Lcom/byazt/yl/c;->c(IILcom/byazt/nbs/da;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] \u8bf7\u6c42\u6210\u529f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-static {v5, v1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_4
    return-void
.end method

.method private c(Lcom/byazt/dv/tt;Lcom/byazt/iz/tt;Lcom/byazt/pp/c;Ljava/lang/String;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-eqz p1, :cond_4

    if-eqz v1, :cond_4

    .line 85
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/dv/tt;->x()Lcom/byazt/nbs/da;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 86
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/dv/tt;->x()Lcom/byazt/nbs/da;

    move-result-object v2

    .line 87
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 88
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object v3

    invoke-virtual {v2}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/byazt/hk/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    goto :goto_0

    :cond_1
    move-object/from16 v5, p4

    .line 89
    :goto_0
    invoke-virtual {v2}, Lcom/byazt/nbs/da;->zb()Z

    move-result v3

    if-nez v3, :cond_3

    .line 90
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/dv/tt;->sp()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    const/4 v3, 0x3

    const/4 v7, 0x3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 91
    :goto_1
    iget-object v4, v0, Lcom/byazt/xt/ve;->uj:Lcom/byazt/ll/tt;

    invoke-virtual/range {p1 .. p1}, Lcom/byazt/dv/tt;->n()Z

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/byazt/dv/tt;->ve()I

    move-result v8

    .line 92
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/dv/tt;->sp()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/byazt/dv/tt;->a()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/byazt/dv/tt;->uj()J

    move-result-wide v12

    .line 93
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/iz/tt;->pf()Lcom/byazt/nbs/i;

    move-result-object v3

    iget-boolean v14, v3, Lcom/byazt/nbs/i;->n:Z

    const/4 v15, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    invoke-virtual/range {p2 .. p2}, Lcom/byazt/iz/tt;->cu()J

    move-result-wide v18

    sub-long v16, v16, v18

    move-object v3, v2

    move-object/from16 v11, p3

    .line 94
    invoke-static/range {v3 .. v17}, Lcom/byazt/ng/a;->c(Lcom/byazt/nbs/da;Lcom/byazt/ll/tt;Ljava/lang/String;ZIIIILcom/byazt/pp/c;JZZJ)V

    .line 95
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/iz/tt;->ve()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2}, Lcom/byazt/iz/tt;->c(Lcom/byazt/nbs/da;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/byazt/iz/tt;->cu()J

    move-result-wide v4

    invoke-static {v3, v2, v4, v5}, Lcom/byazt/tjo/a;->c(Lorg/json/JSONObject;Ljava/lang/String;J)V

    return-void

    .line 96
    :cond_3
    invoke-virtual {v2}, Lcom/byazt/nbs/da;->d()Lcom/byazt/nbs/x;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 97
    iget-object v3, v0, Lcom/byazt/xt/ve;->uj:Lcom/byazt/ll/tt;

    invoke-static {v2, v3, v5}, Lcom/byazt/ng/a;->c(Lcom/byazt/nbs/da;Lcom/byazt/ll/tt;Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/iz/tt;->ve()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2}, Lcom/byazt/iz/tt;->c(Lcom/byazt/nbs/da;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/byazt/iz/tt;->cu()J

    move-result-wide v4

    invoke-static {v3, v2, v4, v5}, Lcom/byazt/tjo/a;->c(Lorg/json/JSONObject;Ljava/lang/String;J)V

    :cond_4
    :goto_2
    return-void
.end method

.method private c(Lcom/byazt/iz/tt;)V
    .locals 8

    .line 131
    iget-object v0, p0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    iget-object v1, p0, Lcom/byazt/xt/ve;->uj:Lcom/byazt/ll/tt;

    invoke-static {v1, v0}, Lcom/byazt/qv/ve;->c(Lcom/byazt/ll/tt;Lcom/byazt/dv/tt;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/dv/tt;->c(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-virtual {p1}, Lcom/byazt/iz/tt;->m()Lcom/byazt/nbs/tt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/nbs/tt;->nb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/dv/tt;->tt(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-virtual {v0}, Lcom/byazt/dv/tt;->da()Z

    move-result v0

    const-string v1, ""

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-virtual {v0}, Lcom/byazt/dv/tt;->sl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-static {v0, p0}, Lcom/byazt/sp/uj;->c(Lcom/byazt/dv/tt;Lcom/byazt/db/tt;)Lcom/byazt/db/c;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/xt/ve;->n:Lcom/byazt/db/c;

    goto/16 :goto_1

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-virtual {v0}, Lcom/byazt/dv/tt;->x()Lcom/byazt/nbs/da;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/oi/ve;->c(Lcom/byazt/nbs/da;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 137
    new-instance v0, Lcom/byazt/sp/ve;

    invoke-direct {v0, p0}, Lcom/byazt/sp/ve;-><init>(Lcom/byazt/db/tt;)V

    iput-object v0, p0, Lcom/byazt/xt/ve;->n:Lcom/byazt/db/c;

    goto/16 :goto_1

    .line 138
    :cond_1
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/byazt/dv/tt;->u()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, v1

    :goto_0
    invoke-static {v0, v3}, Lcom/byazt/sx/tt;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-virtual {v0}, Lcom/byazt/dv/tt;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/px/c;->c(Ljava/lang/String;)Lcom/byazt/id/c;

    move-result-object v0

    if-nez v0, :cond_3

    .line 140
    invoke-virtual {p1}, Lcom/byazt/iz/tt;->z()Lcom/byazt/yl/ve;

    move-result-object v0

    iget-object v3, p0, Lcom/byazt/xt/ve;->uj:Lcom/byazt/ll/tt;

    iget-object v4, p0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-virtual {v4}, Lcom/byazt/dv/tt;->x()Lcom/byazt/nbs/da;

    move-result-object v4

    new-instance v5, Lcom/byazt/pp/c;

    const v6, 0xbf76

    const-string v7, "\u521b\u5efa\u81ea\u5b9a\u4e49\u5e7f\u544a\u5bf9\u8c61 configuration is null"

    invoke-direct {v5, v6, v7}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    invoke-static {v1, v0, v3, v4, v5}, Lcom/byazt/ng/a;->c(Ljava/lang/String;Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;Lcom/byazt/pp/c;)V

    goto/16 :goto_1

    .line 141
    :cond_3
    invoke-static {}, Lcom/byazt/ck/ve;->c()Lcom/byazt/ck/ve;

    move-result-object v0

    iget-object v3, p0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-virtual {v3}, Lcom/byazt/dv/tt;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/byazt/ck/ve;->c(Ljava/lang/String;)Lcom/byazt/nbs/c;

    move-result-object v0

    const v3, 0xbf75

    if-nez v0, :cond_4

    .line 142
    new-instance v0, Lcom/byazt/pp/c;

    const-string v4, "\u521b\u5efa\u81ea\u5b9a\u4e49\u5e7f\u544a\u5bf9\u8c61 adNetworkConfValue is null"

    invoke-direct {v0, v3, v4}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    invoke-static {v1, v2, v2, v2, v0}, Lcom/byazt/ng/a;->c(Ljava/lang/String;Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;Lcom/byazt/pp/c;)V

    goto :goto_1

    .line 143
    :cond_4
    invoke-virtual {v0}, Lcom/byazt/nbs/c;->uj()Lcom/byazt/ih/tt;

    move-result-object v4

    if-nez v4, :cond_5

    .line 144
    new-instance v0, Lcom/byazt/pp/c;

    const-string v4, "\u521b\u5efa\u81ea\u5b9a\u4e49\u5e7f\u544a\u5bf9\u8c61 getGMCustomConfig is null"

    invoke-direct {v0, v3, v4}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    invoke-static {v1, v2, v2, v2, v0}, Lcom/byazt/ng/a;->c(Ljava/lang/String;Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;Lcom/byazt/pp/c;)V

    goto :goto_1

    .line 145
    :cond_5
    invoke-virtual {v0}, Lcom/byazt/nbs/c;->uj()Lcom/byazt/ih/tt;

    move-result-object v0

    iget-object v4, p0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-virtual {v4}, Lcom/byazt/dv/tt;->yv()I

    move-result v4

    iget-object v5, p0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-virtual {v5}, Lcom/byazt/dv/tt;->z()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/byazt/ih/tt;->c(II)Lcom/byazt/ih/c;

    move-result-object v0

    if-nez v0, :cond_6

    .line 146
    new-instance v0, Lcom/byazt/pp/c;

    const-string v4, "\u521b\u5efa\u81ea\u5b9a\u4e49\u5e7f\u544a\u5bf9\u8c61 adConfig is null"

    invoke-direct {v0, v3, v4}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    invoke-static {v1, v2, v2, v2, v0}, Lcom/byazt/ng/a;->c(Ljava/lang/String;Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;Lcom/byazt/pp/c;)V

    goto :goto_1

    .line 147
    :cond_6
    invoke-static {v0}, Lcom/byazt/qv/ve;->c(Lcom/byazt/ih/c;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 148
    invoke-virtual {v0}, Lcom/byazt/ih/c;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-static {v0, v3, p0}, Lcom/byazt/sp/uj;->c(Ljava/lang/String;Lcom/byazt/dv/tt;Lcom/byazt/db/tt;)Lcom/byazt/db/c;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/xt/ve;->n:Lcom/byazt/db/c;

    goto :goto_1

    .line 149
    :cond_7
    new-instance v4, Lcom/byazt/pp/c;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u521b\u5efa\u81ea\u5b9a\u4e49\u5e7f\u544a\u5bf9\u8c61 check className false className is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/byazt/ih/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v3, v0}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    invoke-static {v1, v2, v2, v2, v4}, Lcom/byazt/ng/a;->c(Ljava/lang/String;Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;Lcom/byazt/pp/c;)V

    .line 150
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/byazt/xt/ve;->n:Lcom/byazt/db/c;

    if-eqz v0, :cond_b

    .line 151
    iget-object v1, p0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-virtual {v1}, Lcom/byazt/dv/tt;->u()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/byazt/db/c;->getSdkVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/byazt/dv/tt;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-virtual {v1}, Lcom/byazt/dv/tt;->da()Z

    move-result v1

    if-nez v1, :cond_9

    .line 153
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object v1

    iget-object v3, p0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-virtual {v3}, Lcom/byazt/dv/tt;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/byazt/hk/c;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_9
    iget-object v1, p0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-direct {p0, v1, p1, v2, v0}, Lcom/byazt/xt/ve;->c(Lcom/byazt/dv/tt;Lcom/byazt/iz/tt;Lcom/byazt/pp/c;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/byazt/xt/ve;->n:Lcom/byazt/db/c;

    invoke-virtual {p1}, Lcom/byazt/iz/tt;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    iget-object v3, p0, Lcom/byazt/xt/ve;->uj:Lcom/byazt/ll/tt;

    invoke-virtual {p1}, Lcom/byazt/iz/tt;->zb()Ljava/util/Map;

    move-result-object p1

    invoke-static {v2, v3, p1}, Lcom/byazt/qv/ve;->c(Lcom/byazt/dv/tt;Lcom/byazt/ll/tt;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/byazt/db/c;->adnStartLoad(Landroid/content/Context;Lcom/byazt/dv/tt;Lcom/byazt/ll/tt;Ljava/util/Map;)V

    .line 156
    iget-object p1, p0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-virtual {p1}, Lcom/byazt/dv/tt;->da()Z

    move-result p1

    if-nez p1, :cond_a

    .line 157
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-virtual {v0}, Lcom/byazt/dv/tt;->tt()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    .line 158
    invoke-virtual {v1}, Lcom/byazt/dv/tt;->t()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-virtual {v2}, Lcom/byazt/dv/tt;->x()Lcom/byazt/nbs/da;

    move-result-object v2

    iget-object v3, p0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-virtual {v3}, Lcom/byazt/dv/tt;->ve()I

    move-result v3

    .line 159
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/byazt/hk/c;->c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/nbs/da;I)V

    :cond_a
    return-void

    .line 160
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "**********\u3010\u91cd\u8981\u3011"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-virtual {v2}, Lcom/byazt/dv/tt;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u521b\u5efa\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5adapter\u662f\u5426\u63a5\u5165 **********"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TTMediationSDK"

    invoke-static {v2, v0}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-virtual {v0}, Lcom/byazt/dv/tt;->x()Lcom/byazt/nbs/da;

    move-result-object v0

    iget-object v2, p0, Lcom/byazt/xt/ve;->uj:Lcom/byazt/ll/tt;

    iget-object v3, p0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-virtual {v3}, Lcom/byazt/dv/tt;->sp()I

    move-result v3

    iget-object v4, p0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-virtual {v4}, Lcom/byazt/dv/tt;->a()I

    move-result v4

    invoke-static {v0, v2, v3, v4}, Lcom/byazt/ng/a;->c(Lcom/byazt/nbs/da;Lcom/byazt/ll/tt;II)V

    .line 162
    new-instance v0, Lcom/byazt/pp/c;

    const-string v2, "create adn loader fail"

    invoke-direct {v0, v2}, Lcom/byazt/pp/c;-><init>(Ljava/lang/String;)V

    .line 163
    iget-object v3, p0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-direct {p0, v3, p1, v0, v1}, Lcom/byazt/xt/ve;->c(Lcom/byazt/dv/tt;Lcom/byazt/iz/tt;Lcom/byazt/pp/c;Ljava/lang/String;)V

    .line 164
    new-instance p1, Lcom/byazt/pp/c;

    invoke-direct {p1, v2}, Lcom/byazt/pp/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/byazt/xt/ve;->notifyLoadFail(Lcom/byazt/pp/c;)V

    return-void
.end method

.method private c(Lcom/byazt/pp/c;)V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Lcom/byazt/dv/tt;->x()Lcom/byazt/nbs/da;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/byazt/dv/tt;->c(Lcom/byazt/pp/c;Lcom/byazt/nbs/da;)V

    :cond_0
    return-void
.end method

.method private c(Lcom/byazt/pp/c;Z)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/byazt/xt/ve;->x:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/byazt/xt/ve;->sp:J

    .line 25
    iget-object v1, v0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/byazt/dv/tt;->x()Lcom/byazt/nbs/da;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 27
    iget-object v3, v0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-virtual {v3}, Lcom/byazt/dv/tt;->x()Lcom/byazt/nbs/da;

    move-result-object v3

    invoke-static {v3}, Lcom/byazt/vx/nu;->c(Lcom/byazt/nbs/da;)Z

    move-result v3

    const/4 v13, 0x0

    if-eqz v3, :cond_0

    .line 28
    invoke-static {}, Lcom/byazt/vx/nu;->tt()Ljava/lang/String;

    move-result-object v3

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    move-object v12, v3

    move-wide/from16 v16, v4

    goto :goto_0

    :cond_0
    const-wide/16 v1, -0x1

    move-wide/from16 v16, v1

    move-object v12, v13

    .line 30
    :goto_0
    iget-object v1, v0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-virtual {v1}, Lcom/byazt/dv/tt;->gu()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    .line 31
    iget-object v1, v0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-virtual {v1}, Lcom/byazt/dv/tt;->pf()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_dex_adapter"

    invoke-virtual {v15, v2, v1}, Lcom/byazt/pp/c;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    iget-object v2, v0, Lcom/byazt/xt/ve;->uj:Lcom/byazt/ll/tt;

    iget-object v1, v0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-virtual {v1}, Lcom/byazt/dv/tt;->x()Lcom/byazt/nbs/da;

    move-result-object v3

    iget-object v1, v0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-virtual {v1}, Lcom/byazt/dv/tt;->ve()I

    move-result v4

    iget-object v1, v0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    .line 33
    invoke-virtual {v1}, Lcom/byazt/dv/tt;->sp()I

    move-result v5

    iget-object v1, v0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-virtual {v1}, Lcom/byazt/dv/tt;->a()I

    move-result v6

    iget-object v1, v0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-virtual {v1}, Lcom/byazt/dv/tt;->u()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/byazt/xt/ve;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-wide v8, v0, Lcom/byazt/xt/ve;->sp:J

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v1, p1

    move-object v15, v13

    move-wide/from16 v13, v16

    .line 34
    invoke-static/range {v1 .. v14}, Lcom/byazt/ng/a;->c(Lcom/byazt/pp/c;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;IIILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1

    :cond_1
    move-object v15, v13

    .line 35
    iget-object v2, v0, Lcom/byazt/xt/ve;->uj:Lcom/byazt/ll/tt;

    iget-object v1, v0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-virtual {v1}, Lcom/byazt/dv/tt;->x()Lcom/byazt/nbs/da;

    move-result-object v3

    iget-object v1, v0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-virtual {v1}, Lcom/byazt/dv/tt;->ve()I

    move-result v4

    iget-object v1, v0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    .line 36
    invoke-virtual {v1}, Lcom/byazt/dv/tt;->sp()I

    move-result v5

    iget-object v1, v0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-virtual {v1}, Lcom/byazt/dv/tt;->a()I

    move-result v6

    iget-object v1, v0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-virtual {v1}, Lcom/byazt/dv/tt;->u()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/byazt/xt/ve;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-wide v8, v0, Lcom/byazt/xt/ve;->sp:J

    move-object/from16 v1, p1

    .line 37
    invoke-static/range {v1 .. v9}, Lcom/byazt/ng/a;->c(Lcom/byazt/pp/c;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;IIILjava/lang/String;J)V

    .line 38
    :goto_1
    iget-object v1, v0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-virtual {v1}, Lcom/byazt/dv/tt;->x()Lcom/byazt/nbs/da;

    move-result-object v1

    .line 39
    iget-object v2, v0, Lcom/byazt/xt/ve;->tt:Lcom/byazt/iz/tt;

    if-eqz v2, :cond_2

    .line 40
    invoke-virtual {v2}, Lcom/byazt/iz/tt;->ve()Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, v0, Lcom/byazt/xt/ve;->tt:Lcom/byazt/iz/tt;

    invoke-virtual {v3, v1}, Lcom/byazt/iz/tt;->ve(Lcom/byazt/nbs/da;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/byazt/xt/ve;->tt:Lcom/byazt/iz/tt;

    invoke-virtual {v4}, Lcom/byazt/iz/tt;->cu()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/byazt/tjo/a;->c(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 41
    :cond_2
    iput-object v15, v0, Lcom/byazt/xt/ve;->tt:Lcom/byazt/iz/tt;

    move-object/from16 v2, p1

    move-object v3, v15

    if-eqz v2, :cond_b

    .line 42
    iget-object v4, v0, Lcom/byazt/xt/ve;->uj:Lcom/byazt/ll/tt;

    if-eqz v4, :cond_6

    .line 43
    sget-boolean v4, Lcom/byazt/yl/tt;->tt:Z

    const-string v5, ",msg="

    const-string v6, "] AdType["

    const-string v7, "AdNetWorkName["

    const-string v8, "fill_fail"

    const-string v9, ""

    const-string v10, "TTMediationSDK"

    if-eqz v4, :cond_4

    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v0, Lcom/byazt/xt/ve;->uj:Lcom/byazt/ll/tt;

    if-nez v11, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v11}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v9

    :goto_2
    invoke-static {v9, v8}, Lcom/byazt/eu/uj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v1}, Lcom/byazt/nbs/da;->z()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] AdUnitId["

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/byazt/xt/ve;->uj:Lcom/byazt/ll/tt;

    .line 46
    invoke-virtual {v6}, Lcom/byazt/ll/tt;->my()I

    move-result v6

    invoke-virtual {v1}, Lcom/byazt/nbs/da;->a()I

    move-result v7

    invoke-static {v6, v7, v1}, Lcom/byazt/yl/c;->c(IILcom/byazt/nbs/da;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] \u8bf7\u6c42\u5931\u8d25 (loadSort="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v1}, Lcom/byazt/nbs/da;->yv()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",showSort="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/byazt/nbs/da;->p()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "),error="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lcom/byazt/pp/c;->ve:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/byazt/pp/c;->uj:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-static {v10, v1}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 49
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v0, Lcom/byazt/xt/ve;->uj:Lcom/byazt/ll/tt;

    if-nez v11, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v11}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v9

    :goto_3
    invoke-static {v9, v8}, Lcom/byazt/eu/uj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v1}, Lcom/byazt/nbs/da;->z()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/byazt/xt/ve;->uj:Lcom/byazt/ll/tt;

    invoke-virtual {v6}, Lcom/byazt/ll/tt;->my()I

    move-result v6

    invoke-virtual {v1}, Lcom/byazt/nbs/da;->a()I

    move-result v7

    invoke-static {v6, v7, v1}, Lcom/byazt/yl/c;->c(IILcom/byazt/nbs/da;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] \u8bf7\u6c42\u5931\u8d25 error="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lcom/byazt/pp/c;->ve:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/byazt/pp/c;->uj:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-static {v10, v1}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_6
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v2, Lcom/byazt/pp/c;->ve:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 53
    iget-object v4, v2, Lcom/byazt/pp/c;->uj:Ljava/lang/String;

    .line 54
    iget-object v5, v0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-virtual {v5}, Lcom/byazt/dv/tt;->x()Lcom/byazt/nbs/da;

    move-result-object v5

    invoke-virtual {v5}, Lcom/byazt/nbs/da;->z()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/byazt/lg/c;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 55
    invoke-static {}, Lcom/byazt/hr/yp;->c()Lcom/byazt/hr/yp;

    move-result-object v5

    iget-object v6, v0, Lcom/byazt/xt/ve;->uj:Lcom/byazt/ll/tt;

    if-nez v6, :cond_7

    move-object v13, v3

    goto :goto_5

    :cond_7
    invoke-virtual {v6}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v13

    :goto_5
    iget-object v6, v0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-virtual {v6}, Lcom/byazt/dv/tt;->x()Lcom/byazt/nbs/da;

    move-result-object v6

    invoke-virtual {v6}, Lcom/byazt/nbs/da;->nu()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v13, v6}, Lcom/byazt/hr/yp;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 56
    invoke-static {}, Lcom/byazt/hr/yp;->c()Lcom/byazt/hr/yp;

    move-result-object v5

    iget-object v6, v0, Lcom/byazt/xt/ve;->uj:Lcom/byazt/ll/tt;

    if-nez v6, :cond_8

    move-object v13, v3

    goto :goto_6

    :cond_8
    invoke-virtual {v6}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v13

    :goto_6
    iget-object v3, v0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-virtual {v3}, Lcom/byazt/dv/tt;->x()Lcom/byazt/nbs/da;

    move-result-object v3

    invoke-virtual {v3}, Lcom/byazt/nbs/da;->z()Ljava/lang/String;

    move-result-object v3

    iget-object v6, v0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    .line 57
    invoke-virtual {v6}, Lcom/byazt/dv/tt;->x()Lcom/byazt/nbs/da;

    move-result-object v6

    invoke-virtual {v6}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    .line 58
    invoke-virtual {v7}, Lcom/byazt/dv/tt;->x()Lcom/byazt/nbs/da;

    move-result-object v7

    invoke-virtual {v7}, Lcom/byazt/nbs/da;->z()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1, v4}, Lcom/byazt/lg/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-virtual {v5, v13, v3, v6, v1}, Lcom/byazt/hr/yp;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 60
    :cond_9
    invoke-static {}, Lcom/byazt/hr/ve;->c()Lcom/byazt/hr/ve;

    move-result-object v3

    iget-object v5, v0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-virtual {v5}, Lcom/byazt/dv/tt;->x()Lcom/byazt/nbs/da;

    move-result-object v5

    invoke-virtual {v5}, Lcom/byazt/nbs/da;->z()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    .line 61
    invoke-virtual {v6}, Lcom/byazt/dv/tt;->x()Lcom/byazt/nbs/da;

    move-result-object v6

    invoke-virtual {v6}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    .line 62
    invoke-virtual {v7}, Lcom/byazt/dv/tt;->x()Lcom/byazt/nbs/da;

    move-result-object v7

    invoke-virtual {v7}, Lcom/byazt/nbs/da;->z()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1, v4}, Lcom/byazt/lg/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-virtual {v3, v5, v6, v1}, Lcom/byazt/hr/ve;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_a
    move-object v2, v15

    .line 64
    :cond_b
    :goto_7
    invoke-direct/range {p0 .. p1}, Lcom/byazt/xt/ve;->c(Lcom/byazt/pp/c;)V

    return-void
.end method

.method private c(Lcom/byazt/yl/ve;)V
    .locals 6

    .line 99
    iget-object v0, p0, Lcom/byazt/xt/ve;->uj:Lcom/byazt/ll/tt;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/byazt/dv/tt;->x()Lcom/byazt/nbs/da;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-virtual {v0}, Lcom/byazt/dv/tt;->x()Lcom/byazt/nbs/da;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-virtual {v1}, Lcom/byazt/dv/tt;->gu()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/byazt/xt/ve;->uj:Lcom/byazt/ll/tt;

    iget-object v2, p0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-virtual {v2}, Lcom/byazt/dv/tt;->x()Lcom/byazt/nbs/da;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/byazt/ng/a;->c(Lcom/byazt/ll/tt;Lcom/byazt/yl/ve;Lcom/byazt/nbs/da;)V

    .line 103
    :cond_1
    sget-boolean p1, Lcom/byazt/yl/tt;->tt:Z

    const-string v1, "] AdType["

    const-string v2, "AdNetWorkName["

    const-string v3, "fill"

    const-string v4, "TTMediationSDK"

    if-eqz p1, :cond_2

    .line 104
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/byazt/xt/ve;->uj:Lcom/byazt/ll/tt;

    invoke-virtual {v5}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/byazt/eu/uj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v0}, Lcom/byazt/nbs/da;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] AdUnitId["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/byazt/xt/ve;->uj:Lcom/byazt/ll/tt;

    .line 106
    invoke-virtual {v1}, Lcom/byazt/ll/tt;->my()I

    move-result v1

    invoke-virtual {v0}, Lcom/byazt/nbs/da;->a()I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/byazt/yl/c;->c(IILcom/byazt/nbs/da;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] \u89c6\u9891\u7f13\u5b58\u6210\u529f (loadSort="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0}, Lcom/byazt/nbs/da;->yv()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",showSort="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/byazt/nbs/da;->p()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 108
    invoke-static {v4, p1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 109
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/byazt/xt/ve;->uj:Lcom/byazt/ll/tt;

    invoke-virtual {v5}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/byazt/eu/uj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0}, Lcom/byazt/nbs/da;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/byazt/xt/ve;->uj:Lcom/byazt/ll/tt;

    .line 111
    invoke-virtual {v1}, Lcom/byazt/ll/tt;->my()I

    move-result v1

    invoke-virtual {v0}, Lcom/byazt/nbs/da;->a()I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/byazt/yl/c;->c(IILcom/byazt/nbs/da;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] \u89c6\u9891\u7f13\u5b58\u6210\u529f "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 112
    invoke-static {v4, p1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private c(Ljava/lang/Runnable;)V
    .locals 0

    .line 69
    invoke-static {p1}, Lcom/byazt/eu/n;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/xt/ve;)Lcom/byazt/ll/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xt/ve;->uj:Lcom/byazt/ll/tt;

    return-object p0
.end method

.method private tt(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/yl/ve;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/byazt/dv/tt;->x()Lcom/byazt/nbs/da;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/byazt/dv/tt;->c(Ljava/util/List;Lcom/byazt/nbs/da;)V

    .line 4
    :cond_0
    new-instance p1, Lcom/byazt/xt/ve$2;

    invoke-direct {p1, p0}, Lcom/byazt/xt/ve$2;-><init>(Lcom/byazt/xt/ve;)V

    invoke-direct {p0, p1}, Lcom/byazt/xt/ve;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic ve(Lcom/byazt/xt/ve;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/xt/ve;->c()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/xt/c$c;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 70
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/xt/ve;->x:J

    .line 71
    invoke-interface {p1}, Lcom/byazt/xt/c$c;->c()Lcom/byazt/dv/tt;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    .line 72
    invoke-interface {p1}, Lcom/byazt/xt/c$c;->tt()Lcom/byazt/iz/tt;

    move-result-object p1

    .line 73
    invoke-virtual {p1}, Lcom/byazt/iz/tt;->gu()Lcom/byazt/ll/tt;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/xt/ve;->uj:Lcom/byazt/ll/tt;

    .line 74
    invoke-virtual {p1}, Lcom/byazt/iz/tt;->pf()Lcom/byazt/nbs/i;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/xt/ve;->ve:Lcom/byazt/nbs/i;

    .line 75
    iput-object p1, p0, Lcom/byazt/xt/ve;->tt:Lcom/byazt/iz/tt;

    .line 76
    invoke-virtual {p1}, Lcom/byazt/iz/tt;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_1

    .line 77
    new-instance v0, Lcom/byazt/pp/c;

    const-string v2, "request adn context is null"

    invoke-direct {v0, v2}, Lcom/byazt/pp/c;-><init>(Ljava/lang/String;)V

    .line 78
    iget-object v2, p0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/byazt/xt/ve;->c(Lcom/byazt/dv/tt;Lcom/byazt/iz/tt;Lcom/byazt/pp/c;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0, v0}, Lcom/byazt/xt/ve;->notifyLoadFail(Lcom/byazt/pp/c;)V

    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    if-eqz v0, :cond_2

    .line 81
    invoke-direct {p0, p1}, Lcom/byazt/xt/ve;->c(Lcom/byazt/iz/tt;)V

    return-void

    .line 82
    :cond_2
    new-instance v0, Lcom/byazt/pp/c;

    const-string v2, "request adn waterfall request is null"

    invoke-direct {v0, v2}, Lcom/byazt/pp/c;-><init>(Ljava/lang/String;)V

    .line 83
    iget-object v2, p0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/byazt/xt/ve;->c(Lcom/byazt/dv/tt;Lcom/byazt/iz/tt;Lcom/byazt/pp/c;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0, v0}, Lcom/byazt/xt/ve;->notifyLoadFail(Lcom/byazt/pp/c;)V

    return-void
.end method

.method public nativeDislikeClick(Lcom/byazt/yl/ve;Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getAdType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x5

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/byazt/xt/ve;->uj:Lcom/byazt/ll/tt;

    .line 11
    .line 12
    invoke-static {p1, v0, p2}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public notifyLoadFail(Lcom/byazt/pp/c;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/byazt/xt/ve;->c(Lcom/byazt/pp/c;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public notifyLoadSuccess(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/yl/ve;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    if-nez v8, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-wide v0, v7, Lcom/byazt/xt/ve;->a:J

    .line 9
    .line 10
    const-wide/16 v2, -0x1

    .line 11
    .line 12
    cmp-long v4, v0, v2

    .line 13
    .line 14
    if-nez v4, :cond_1

    .line 15
    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    iput-wide v0, v7, Lcom/byazt/xt/ve;->a:J

    .line 21
    .line 22
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    iget-wide v4, v7, Lcom/byazt/xt/ve;->x:J

    .line 27
    .line 28
    sub-long/2addr v0, v4

    .line 29
    iput-wide v0, v7, Lcom/byazt/xt/ve;->sp:J

    .line 30
    .line 31
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lcom/byazt/yl/ve;

    .line 46
    .line 47
    iget-object v4, v7, Lcom/byazt/xt/ve;->uj:Lcom/byazt/ll/tt;

    .line 48
    .line 49
    iget-object v5, v7, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    .line 50
    .line 51
    iget-object v6, v7, Lcom/byazt/xt/ve;->ve:Lcom/byazt/nbs/i;

    .line 52
    .line 53
    if-eqz v5, :cond_2

    .line 54
    .line 55
    invoke-virtual {v5}, Lcom/byazt/dv/tt;->u()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    invoke-direct {v7, v9}, Lcom/byazt/xt/ve;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    const-string v9, ""

    .line 65
    .line 66
    :goto_1
    invoke-static {v1, v4, v5, v6, v9}, Lcom/byazt/qv/ve;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Lcom/byazt/dv/tt;Lcom/byazt/nbs/i;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/byazt/xt/ve;->c(Ljava/util/List;)Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    const/4 v10, 0x0

    .line 79
    if-eqz v0, :cond_d

    .line 80
    .line 81
    iget-object v0, v7, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    .line 82
    .line 83
    const/4 v11, 0x0

    .line 84
    if-eqz v0, :cond_a

    .line 85
    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 87
    .line 88
    .line 89
    move-result-wide v0

    .line 90
    iget-object v4, v7, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    .line 91
    .line 92
    invoke-virtual {v4}, Lcom/byazt/dv/tt;->x()Lcom/byazt/nbs/da;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-static {v4}, Lcom/byazt/vx/nu;->c(Lcom/byazt/nbs/da;)Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-eqz v4, :cond_4

    .line 101
    .line 102
    invoke-static {}, Lcom/byazt/vx/nu;->tt()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 107
    .line 108
    .line 109
    move-result-wide v3

    .line 110
    sub-long/2addr v3, v0

    .line 111
    move-object v12, v2

    .line 112
    move-wide v13, v3

    .line 113
    goto :goto_2

    .line 114
    :cond_4
    move-wide v13, v2

    .line 115
    move-object v12, v11

    .line 116
    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-lez v0, :cond_5

    .line 121
    .line 122
    const/16 v0, 0x4e20

    .line 123
    .line 124
    const/16 v15, 0x4e20

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_5
    const v0, 0xc8321

    .line 128
    .line 129
    .line 130
    const v15, 0xc8321

    .line 131
    .line 132
    .line 133
    :goto_3
    iget-object v0, v7, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/byazt/dv/tt;->c()Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-nez v0, :cond_7

    .line 140
    .line 141
    iget-object v0, v7, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/byazt/dv/tt;->gr()Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_6

    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_6
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    move-object v2, v0

    .line 159
    check-cast v2, Lcom/byazt/yl/ve;

    .line 160
    .line 161
    move-object/from16 v0, p0

    .line 162
    .line 163
    move v1, v15

    .line 164
    move-object v4, v12

    .line 165
    move-wide v5, v13

    .line 166
    invoke-direct/range {v0 .. v6}, Lcom/byazt/xt/ve;->c(ILcom/byazt/yl/ve;ILjava/lang/String;J)V

    .line 167
    .line 168
    .line 169
    goto :goto_6

    .line 170
    :cond_7
    :goto_4
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 171
    .line 172
    .line 173
    move-result-object v16

    .line 174
    :cond_8
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_9

    .line 179
    .line 180
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    move-object v2, v0

    .line 185
    check-cast v2, Lcom/byazt/yl/ve;

    .line 186
    .line 187
    if-eqz v2, :cond_8

    .line 188
    .line 189
    const/4 v3, 0x1

    .line 190
    move-object/from16 v0, p0

    .line 191
    .line 192
    move v1, v15

    .line 193
    move-object v4, v12

    .line 194
    move-wide v5, v13

    .line 195
    invoke-direct/range {v0 .. v6}, Lcom/byazt/xt/ve;->c(ILcom/byazt/yl/ve;ILjava/lang/String;J)V

    .line 196
    .line 197
    .line 198
    goto :goto_5

    .line 199
    :cond_9
    :goto_6
    iget-object v0, v7, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    .line 200
    .line 201
    invoke-virtual {v0}, Lcom/byazt/dv/tt;->gu()Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-eqz v0, :cond_a

    .line 206
    .line 207
    invoke-static/range {p1 .. p1}, Lcom/byazt/vx/p;->tt(Ljava/util/List;)Z

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    if-nez v0, :cond_a

    .line 212
    .line 213
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    check-cast v0, Lcom/byazt/yl/ve;

    .line 218
    .line 219
    iget-object v1, v7, Lcom/byazt/xt/ve;->uj:Lcom/byazt/ll/tt;

    .line 220
    .line 221
    iget-object v2, v7, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    .line 222
    .line 223
    invoke-virtual {v2}, Lcom/byazt/dv/tt;->x()Lcom/byazt/nbs/da;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    iget-wide v3, v7, Lcom/byazt/xt/ve;->sp:J

    .line 228
    .line 229
    invoke-static {v0, v1, v2, v3, v4}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;J)V

    .line 230
    .line 231
    .line 232
    iget-object v0, v7, Lcom/byazt/xt/ve;->tt:Lcom/byazt/iz/tt;

    .line 233
    .line 234
    if-eqz v0, :cond_a

    .line 235
    .line 236
    invoke-virtual {v0}, Lcom/byazt/iz/tt;->ve()Lorg/json/JSONObject;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    iget-object v1, v7, Lcom/byazt/xt/ve;->tt:Lcom/byazt/iz/tt;

    .line 241
    .line 242
    iget-object v2, v7, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    .line 243
    .line 244
    invoke-virtual {v2}, Lcom/byazt/dv/tt;->x()Lcom/byazt/nbs/da;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    invoke-virtual {v1, v2}, Lcom/byazt/iz/tt;->tt(Lcom/byazt/nbs/da;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    iget-object v2, v7, Lcom/byazt/xt/ve;->tt:Lcom/byazt/iz/tt;

    .line 253
    .line 254
    invoke-virtual {v2}, Lcom/byazt/iz/tt;->cu()J

    .line 255
    .line 256
    .line 257
    move-result-wide v2

    .line 258
    invoke-static {v0, v1, v2, v3}, Lcom/byazt/tjo/a;->c(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 259
    .line 260
    .line 261
    :cond_a
    iput-object v11, v7, Lcom/byazt/xt/ve;->tt:Lcom/byazt/iz/tt;

    .line 262
    .line 263
    invoke-direct {v7, v9}, Lcom/byazt/xt/ve;->tt(Ljava/util/List;)V

    .line 264
    .line 265
    .line 266
    iget-object v0, v7, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    .line 267
    .line 268
    invoke-virtual {v0}, Lcom/byazt/dv/tt;->x()Lcom/byazt/nbs/da;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    if-eqz v0, :cond_e

    .line 273
    .line 274
    iget-object v0, v7, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    .line 275
    .line 276
    invoke-virtual {v0}, Lcom/byazt/dv/tt;->x()Lcom/byazt/nbs/da;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-virtual {v0}, Lcom/byazt/nbs/da;->u()I

    .line 281
    .line 282
    .line 283
    move-result v0

    .line 284
    const/16 v1, 0xa

    .line 285
    .line 286
    if-ne v0, v1, :cond_b

    .line 287
    .line 288
    iget-object v0, v7, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    .line 289
    .line 290
    invoke-virtual {v0}, Lcom/byazt/dv/tt;->x()Lcom/byazt/nbs/da;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    invoke-virtual {v0}, Lcom/byazt/nbs/da;->a()I

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    const/4 v1, 0x1

    .line 299
    if-eq v0, v1, :cond_c

    .line 300
    .line 301
    :cond_b
    iget-object v0, v7, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    .line 302
    .line 303
    invoke-virtual {v0}, Lcom/byazt/dv/tt;->x()Lcom/byazt/nbs/da;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    invoke-virtual {v0}, Lcom/byazt/nbs/da;->u()I

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    const/4 v1, 0x7

    .line 312
    if-ne v0, v1, :cond_e

    .line 313
    .line 314
    iget-object v0, v7, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    .line 315
    .line 316
    invoke-virtual {v0}, Lcom/byazt/dv/tt;->x()Lcom/byazt/nbs/da;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    invoke-virtual {v0}, Lcom/byazt/nbs/da;->a()I

    .line 321
    .line 322
    .line 323
    move-result v0

    .line 324
    const/16 v1, 0x8

    .line 325
    .line 326
    if-ne v0, v1, :cond_e

    .line 327
    .line 328
    :cond_c
    invoke-virtual {v7, v9, v11}, Lcom/byazt/xt/ve;->notifyVideoCache(Ljava/util/List;Lcom/byazt/pp/c;)V

    .line 329
    .line 330
    .line 331
    return-void

    .line 332
    :cond_d
    new-instance v0, Lcom/byazt/pp/c;

    .line 333
    .line 334
    const v1, 0xc3b4

    .line 335
    .line 336
    .line 337
    invoke-static {v1}, Lcom/byazt/pp/c;->c(I)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v2

    .line 341
    invoke-direct {v0, v1, v2}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    .line 342
    .line 343
    .line 344
    invoke-direct {v7, v0, v10}, Lcom/byazt/xt/ve;->c(Lcom/byazt/pp/c;Z)V

    .line 345
    .line 346
    .line 347
    :cond_e
    return-void
.end method

.method public notifyVideoCache(Ljava/util/List;Lcom/byazt/pp/c;)V
    .locals 6
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

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/byazt/yl/ve;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-virtual {v1, v2}, Lcom/byazt/yl/ve;->setCacheSuccess(Z)V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lcom/byazt/xt/ve;->uj:Lcom/byazt/ll/tt;

    .line 26
    .line 27
    iget-object v3, p0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    .line 28
    .line 29
    iget-object v4, p0, Lcom/byazt/xt/ve;->ve:Lcom/byazt/nbs/i;

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/byazt/dv/tt;->u()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-direct {p0, v5}, Lcom/byazt/xt/ve;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const-string v5, ""

    .line 43
    .line 44
    :goto_1
    invoke-static {v1, v2, v3, v4, v5}, Lcom/byazt/qv/ve;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Lcom/byazt/dv/tt;Lcom/byazt/nbs/i;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, v1}, Lcom/byazt/xt/ve;->c(Lcom/byazt/yl/ve;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    if-eqz p2, :cond_3

    .line 52
    .line 53
    iget p2, p2, Lcom/byazt/pp/c;->c:I

    .line 54
    .line 55
    const/16 v0, 0x753a

    .line 56
    .line 57
    if-ne p2, v0, :cond_3

    .line 58
    .line 59
    invoke-static {}, Lcom/byazt/lg/c;->c()Z

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    if-eqz p2, :cond_3

    .line 64
    .line 65
    new-instance p2, Lcom/byazt/xt/ve$1;

    .line 66
    .line 67
    invoke-direct {p2, p0, p1}, Lcom/byazt/xt/ve$1;-><init>(Lcom/byazt/xt/ve;Ljava/util/List;)V

    .line 68
    .line 69
    .line 70
    const-wide/16 v0, 0x3e8

    .line 71
    .line 72
    invoke-static {p2, v0, v1}, Lcom/byazt/eu/n;->c(Ljava/lang/Runnable;J)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_3
    iget-object p2, p0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    .line 77
    .line 78
    if-eqz p2, :cond_5

    .line 79
    .line 80
    invoke-virtual {p2}, Lcom/byazt/dv/tt;->gu()Z

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    if-eqz p2, :cond_5

    .line 85
    .line 86
    invoke-static {p1}, Lcom/byazt/vx/p;->tt(Ljava/util/List;)Z

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    if-nez p2, :cond_4

    .line 91
    .line 92
    const/4 p2, 0x0

    .line 93
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Lcom/byazt/yl/ve;

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_4
    const/4 p1, 0x0

    .line 101
    :goto_2
    iget-object p2, p0, Lcom/byazt/xt/ve;->uj:Lcom/byazt/ll/tt;

    .line 102
    .line 103
    iget-object v0, p0, Lcom/byazt/xt/ve;->c:Lcom/byazt/dv/tt;

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/byazt/dv/tt;->x()Lcom/byazt/nbs/da;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-static {p1, p2, v0}, Lcom/byazt/ng/a;->c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;)V

    .line 110
    .line 111
    .line 112
    :cond_5
    invoke-direct {p0}, Lcom/byazt/xt/ve;->c()V

    .line 113
    .line 114
    .line 115
    return-void
.end method
