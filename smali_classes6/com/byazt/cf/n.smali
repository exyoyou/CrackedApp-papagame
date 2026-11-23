.class public abstract Lcom/byazt/cf/n;
.super Lcom/byazt/vvt/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x12,
        0x2e
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/byazt/vvt/tt<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/byazt/iu/tt;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/vvt/tt;-><init>(Lcom/byazt/iu/tt;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/byazt/cf/n;)Lcom/byazt/iu/tt;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/vvt/tt;->c:Lcom/byazt/iu/tt;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/cf/n;Ljava/lang/String;ILjava/lang/String;Lcom/byazt/ete/tt;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/byazt/cf/n;->c(Ljava/lang/String;ILjava/lang/String;Lcom/byazt/ete/tt;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/cf/n;ZLcom/byazt/dj/tt;Ljava/util/List;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/byazt/vvt/tt;->c(ZLcom/byazt/dj/tt;Ljava/util/List;)V

    return-void
.end method

.method private c(Ljava/lang/String;ILjava/lang/String;Lcom/byazt/ete/tt;)V
    .locals 1

    .line 60
    invoke-virtual {p4, p2}, Lcom/byazt/ete/tt;->c(I)V

    .line 61
    invoke-virtual {p4, p3}, Lcom/byazt/ete/tt;->tt(Ljava/lang/String;)V

    .line 62
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string p3, "app_id"

    .line 63
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->rl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "rit"

    .line 64
    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :catch_0
    invoke-virtual {p4, p2}, Lcom/byazt/ete/tt;->c(Lorg/json/JSONObject;)V

    .line 66
    invoke-static {p4}, Lcom/byazt/ete/tt;->c(Lcom/byazt/ete/tt;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/cf/n;Ljava/lang/String;Lcom/byazt/ete/ic;)Z
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/byazt/cf/n;->c(Ljava/lang/String;Lcom/byazt/ete/ic;)Z

    move-result p0

    return p0
.end method

.method private c(Ljava/lang/String;Lcom/byazt/ete/ic;)Z
    .locals 11

    .line 104
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/ogz/sl;->tt(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_1

    return v1

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/cf/n;->c()Z

    move-result v0

    const/4 v2, 0x7

    const/16 v3, 0x8

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    .line 106
    :goto_0
    invoke-static {}, Lcom/byazt/lvl/c;->c()Lcom/byazt/lvl/c;

    move-result-object v4

    invoke-virtual {p0}, Lcom/byazt/cf/n;->c()Z

    move-result v5

    invoke-virtual {v4, v5, p1}, Lcom/byazt/lvl/c;->tt(ZLjava/lang/String;)Lcom/byazt/ete/ic;

    move-result-object v4

    if-nez v4, :cond_3

    return v1

    .line 107
    :cond_3
    invoke-virtual {v4}, Lcom/byazt/ete/ic;->b()J

    move-result-wide v5

    .line 108
    invoke-virtual {v4}, Lcom/byazt/ete/ic;->dz()J

    move-result-wide v7

    add-long/2addr v7, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v9, 0x1

    cmp-long v10, v7, v5

    if-gez v10, :cond_4

    .line 109
    invoke-static {v0}, Lcom/byazt/eti/n;->c(I)Lcom/byazt/eti/n;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/byazt/eti/n;->c(Ljava/lang/String;)V

    return v9

    .line 110
    :cond_4
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->y()Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-virtual {v4}, Lcom/byazt/ete/ic;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 112
    invoke-virtual {p0}, Lcom/byazt/cf/n;->c()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/16 v2, 0x8

    :goto_1
    invoke-static {p2, v2}, Lcom/byazt/omf/c;->c(Lcom/byazt/ete/ic;I)I

    move-result p1

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_6

    return v9

    .line 113
    :cond_6
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->s()Ljava/lang/String;

    move-result-object p1

    .line 114
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 116
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 117
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 118
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    invoke-virtual {v4}, Lcom/byazt/ete/ic;->q_()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 120
    :cond_7
    invoke-virtual {v4}, Lcom/byazt/ete/ic;->q_()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 121
    invoke-virtual {v4, p1}, Lcom/byazt/ete/ic;->gr(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 122
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :goto_3
    return v1
.end method

.method public static synthetic tt(Lcom/byazt/cf/n;)Lcom/byazt/iu/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/vvt/tt;->c:Lcom/byazt/iu/tt;

    return-object p0
.end method

.method private tt(Lcom/byazt/dj/tt;Lcom/byazt/ete/ic;Lcom/byazt/iu/ve;)V
    .locals 2

    .line 2
    invoke-static {p2}, Lcom/byazt/ete/xd;->z(Lcom/byazt/ete/ic;)Lcom/byazt/jzl/uj;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-static {v0, p2}, Lcom/byazt/ete/xd;->c(ILcom/byazt/ete/ic;)Lcom/byazt/jzl/a;

    move-result-object v0

    const-string v1, "material_meta"

    .line 4
    invoke-virtual {v0, v1, p2}, Lcom/byazt/jzl/a;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "ad_slot"

    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/byazt/jzl/a;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    new-instance p1, Lcom/byazt/cf/n$3;

    invoke-direct {p1, p0, p3, p2}, Lcom/byazt/cf/n$3;-><init>(Lcom/byazt/cf/n;Lcom/byazt/iu/ve;Lcom/byazt/ete/ic;)V

    invoke-static {v0, p1}, Lcom/byazt/btt/ve;->c(Lcom/byazt/jzl/a;Lcom/byazt/fk/da$c;)V

    return-void
.end method


# virtual methods
.method public c(ILcom/byazt/dj/tt;Lcom/byazt/ete/ic;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(ILcom/byazt/ete/c;Lcom/byazt/ete/tt;Lcom/byazt/ete/bm;Lcom/byazt/dj/tt;Lcom/byazt/iu/n;Lcom/byazt/iu/sp;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v0, p4

    move-object/from16 v3, p5

    move-object/from16 v6, p7

    .line 20
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/ete/c;->tt()Ljava/util/List;

    move-result-object v1

    const/4 v2, -0x3

    if-eqz v1, :cond_11

    invoke-virtual/range {p2 .. p2}, Lcom/byazt/ete/c;->tt()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_8

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 21
    :cond_1
    iget-object v0, v0, Lcom/byazt/ete/bm;->m:Landroid/os/Bundle;

    :goto_0
    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    const-string v5, "is_preload"

    .line 22
    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    const-string v8, "is_playAgain"

    if-eqz v0, :cond_3

    .line 23
    invoke-virtual {v0, v8, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    const-wide/16 v10, 0x0

    const-string v12, "start_time"

    if-nez v0, :cond_4

    goto :goto_3

    .line 24
    :cond_4
    invoke-virtual {v0, v12, v10, v11}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    :goto_3
    const-string v13, "is_second_page_ad"

    if-eqz v0, :cond_5

    .line 25
    invoke-virtual {v0, v13, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    .line 26
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/ete/c;->tt()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 27
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/ete/c;->tt()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/byazt/ete/ic;

    .line 28
    invoke-virtual/range {p5 .. p5}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v7, v15, v14}, Lcom/byazt/cf/n;->c(Ljava/lang/String;Lcom/byazt/ete/ic;)Z

    move-result v15

    if-eqz v15, :cond_6

    return-void

    .line 29
    :cond_6
    invoke-virtual {v14}, Lcom/byazt/ete/ic;->qt()Z

    move-result v15

    if-nez v15, :cond_8

    if-eqz v6, :cond_7

    const/4 v0, -0x4

    .line 30
    invoke-interface {v6, v0}, Lcom/byazt/iu/sp;->c(I)V

    :cond_7
    return-void

    :cond_8
    move-object/from16 v15, p2

    .line 31
    invoke-virtual {v7, v15}, Lcom/byazt/cf/n;->c(Lcom/byazt/ete/c;)Z

    move-result v16

    if-eqz v16, :cond_a

    if-eqz v6, :cond_9

    .line 32
    invoke-interface {v6, v2}, Lcom/byazt/iu/sp;->c(I)V

    :cond_9
    return-void

    .line 33
    :cond_a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/ete/c;->tt()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v1, :cond_c

    .line 35
    new-instance v1, Lcom/byazt/ete/x$tt$c;

    invoke-direct {v1}, Lcom/byazt/ete/x$tt$c;-><init>()V

    .line 36
    invoke-virtual {v1, v3}, Lcom/byazt/ete/x$tt$c;->c(Lcom/byazt/dj/tt;)Lcom/byazt/ete/x$tt$c;

    move-result-object v1

    .line 37
    invoke-virtual {v1, v14}, Lcom/byazt/ete/x$tt$c;->c(Lcom/byazt/ete/ic;)Lcom/byazt/ete/x$tt$c;

    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lcom/byazt/ete/x$tt$c;->c()Lcom/byazt/ete/x$tt;

    move-result-object v1

    .line 39
    invoke-static/range {p1 .. p1}, Lcom/byazt/ete/x;->c(I)Lcom/byazt/ete/x$ve;

    move-result-object v4

    const-string v15, "mix_ad"

    invoke-virtual {v4, v15, v1}, Lcom/byazt/ete/x$ve;->c(Ljava/lang/String;Lcom/byazt/ete/x$tt;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 40
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/ete/c;->tt()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/byazt/omf/c;->c(Ljava/util/List;)V

    .line 41
    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 42
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/ete/c;->tt()Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    .line 43
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/ete/c;->tt()Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 44
    :goto_5
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/byazt/ete/ic;

    if-eqz v5, :cond_d

    const/16 v15, 0x67

    goto :goto_7

    :cond_d
    const/16 v15, 0x66

    .line 45
    :goto_7
    invoke-virtual {v4, v15}, Lcom/byazt/ete/ic;->lr(I)V

    goto :goto_6

    :cond_e
    if-eqz v5, :cond_10

    .line 46
    iget-object v0, v7, Lcom/byazt/vvt/tt;->c:Lcom/byazt/iu/tt;

    if-eqz v0, :cond_f

    .line 47
    invoke-virtual {v0}, Lcom/byazt/iu/tt;->tt()Lcom/byazt/nhd/n;

    move-result-object v0

    invoke-interface {v0, v3, v14}, Lcom/byazt/nhd/n;->c(Lcom/byazt/dj/tt;Lcom/byazt/ete/ic;)V

    .line 48
    :cond_f
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "src_req_id"

    .line 49
    invoke-virtual {v14}, Lcom/byazt/ete/ic;->xv()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "is_map"

    .line 50
    invoke-virtual {v14}, Lcom/byazt/ete/ic;->rp()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "reward_full_scene_type"

    .line 51
    invoke-static {v14}, Lcom/byazt/fcd/uj;->c(Lcom/byazt/ete/ic;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :catch_0
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v1

    const-string v2, "stats_reward_full_preload"

    invoke-virtual {v1, v14, v2, v0}, Lcom/byazt/ukr/yp;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 53
    :cond_10
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 54
    invoke-virtual {v5, v12, v10, v11}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 55
    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "is_cache"

    const/4 v4, 0x0

    .line 56
    invoke-virtual {v5, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 57
    invoke-virtual {v5, v13, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v6, p7

    .line 58
    invoke-virtual/range {v0 .. v6}, Lcom/byazt/cf/n;->c(ILjava/util/List;Lcom/byazt/dj/tt;Lcom/byazt/iu/n;Landroid/os/Bundle;Lcom/byazt/iu/sp;)V

    return-void

    :cond_11
    :goto_8
    if-eqz v6, :cond_12

    .line 59
    invoke-interface {v6, v2}, Lcom/byazt/iu/sp;->c(I)V

    :cond_12
    return-void
.end method

.method public c(ILjava/util/List;Lcom/byazt/dj/tt;Lcom/byazt/iu/n;Landroid/os/Bundle;Lcom/byazt/iu/sp;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/byazt/ete/ic;",
            ">;",
            "Lcom/byazt/dj/tt;",
            "Lcom/byazt/iu/n<",
            "TT;>;",
            "Landroid/os/Bundle;",
            "Lcom/byazt/iu/sp;",
            ")V"
        }
    .end annotation

    move-object/from16 v12, p2

    move-object/from16 v0, p5

    const-string v1, "is_cache"

    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v1, "is_playAgain"

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v1, "start_time"

    .line 15
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    const-string v1, "is_second_page_ad"

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 17
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/byazt/ete/ic;

    .line 18
    new-instance v13, Lcom/byazt/cf/n$2;

    move-object v0, v13

    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p6

    invoke-direct/range {v0 .. v11}, Lcom/byazt/cf/n$2;-><init>(Lcom/byazt/cf/n;Ljava/util/List;ZLcom/byazt/dj/tt;Lcom/byazt/ete/ic;ZZJLcom/byazt/iu/n;Lcom/byazt/iu/sp;)V

    move-object v0, p0

    move-object/from16 v1, p3

    invoke-virtual {p0, v1, v12, v13}, Lcom/byazt/vvt/tt;->c(Lcom/byazt/dj/tt;Ljava/util/List;Lcom/byazt/vvt/tt$c;)V

    return-void
.end method

.method public c(Lcom/byazt/dj/tt;)V
    .locals 4

    .line 123
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {p1}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/ogz/sl;->tt(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 124
    new-instance v0, Lcom/byazt/ete/bm;

    invoke-direct {v0}, Lcom/byazt/ete/bm;-><init>()V

    const/4 v1, 0x2

    .line 125
    iput v1, v0, Lcom/byazt/ete/bm;->c:I

    .line 126
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v2

    invoke-virtual {p1}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/byazt/ogz/sl;->i(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/byazt/dj/tt;->x()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 127
    :cond_0
    iput v1, v0, Lcom/byazt/ete/bm;->sp:I

    .line 128
    :cond_1
    invoke-static {}, Lcom/byazt/omf/gt;->c()Lcom/byazt/omf/gu;

    move-result-object v1

    invoke-virtual {p0}, Lcom/byazt/cf/n;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x7

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    :goto_0
    new-instance v3, Lcom/byazt/cf/n$4;

    invoke-direct {v3, p0, p1}, Lcom/byazt/cf/n$4;-><init>(Lcom/byazt/cf/n;Lcom/byazt/dj/tt;)V

    invoke-interface {v1, p1, v0, v2, v3}, Lcom/byazt/omf/gu;->tt(Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;ILcom/byazt/omf/gu$tt;)V

    :cond_3
    return-void
.end method

.method public c(Lcom/byazt/dj/tt;ILjava/lang/String;Lcom/byazt/ete/tt;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p1}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/byazt/cf/n;->c(Ljava/lang/String;ILjava/lang/String;Lcom/byazt/ete/tt;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/dj/tt;Lcom/byazt/ete/ic;Lcom/byazt/iu/ve;)V
    .locals 1

    .line 91
    invoke-virtual {p0, p2, p1}, Lcom/byazt/cf/n;->c(Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;)V

    .line 92
    invoke-static {p2}, Lcom/byazt/ex/c;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-static {p2}, Lcom/byazt/ex/c;->tt(Lcom/byazt/ete/ic;)V

    .line 94
    invoke-interface {p3}, Lcom/byazt/iu/ve;->tt()V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 95
    invoke-static {p2, v0}, Lcom/byazt/ete/kp;->ve(Lcom/byazt/ete/ic;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    invoke-interface {p3}, Lcom/byazt/iu/ve;->tt()V

    return-void

    .line 97
    :cond_1
    invoke-static {p2}, Lcom/byazt/aas/rl;->ve(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    invoke-static {p2}, Lcom/byazt/ete/my;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Lcom/byazt/bzd/t;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/cf/n;->tt(Lcom/byazt/dj/tt;Lcom/byazt/ete/ic;Lcom/byazt/iu/ve;)V

    return-void

    .line 100
    :cond_2
    invoke-interface {p3}, Lcom/byazt/iu/ve;->tt()V

    return-void

    .line 101
    :cond_3
    invoke-static {p2}, Lcom/byazt/ete/ic;->ve(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p2}, Lcom/byazt/bzd/t;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 102
    :cond_4
    invoke-interface {p3}, Lcom/byazt/iu/ve;->tt()V

    return-void

    .line 103
    :cond_5
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/cf/n;->tt(Lcom/byazt/dj/tt;Lcom/byazt/ete/ic;Lcom/byazt/iu/ve;)V

    return-void
.end method

.method public c(Lcom/byazt/dj/tt;Ljava/util/List;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/dj/tt;",
            "Ljava/util/List<",
            "Lcom/byazt/ete/ic;",
            ">;TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 88
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/byazt/ete/ic;

    .line 89
    iget-object v0, p0, Lcom/byazt/vvt/tt;->c:Lcom/byazt/iu/tt;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Lcom/byazt/iu/tt;->tt()Lcom/byazt/nhd/n;

    move-result-object v0

    invoke-virtual {p2}, Lcom/byazt/ete/ic;->up()Z

    move-result v1

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/byazt/nhd/n;->c(Lcom/byazt/dj/tt;Lcom/byazt/ete/ic;Ljava/lang/Object;Z)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;)V
    .locals 3

    .line 67
    invoke-virtual {p2}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    .line 68
    :try_start_0
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->te()Lcom/byazt/ete/zb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Lcom/byazt/ete/zb;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    new-instance v1, Lcom/byazt/hy/ve;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/byazt/hy/ve;-><init>(Z)V

    .line 71
    invoke-virtual {p2}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/byazt/hy/ve;->c(Ljava/lang/String;)V

    const/16 p2, 0x8

    .line 72
    invoke-virtual {v1, p2}, Lcom/byazt/hy/ve;->c(I)V

    .line 73
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/byazt/hy/ve;->ve(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->w_()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/byazt/hy/ve;->uj(Ljava/lang/String;)V

    .line 75
    invoke-static {p1}, Lcom/byazt/aas/nb;->m(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/byazt/hy/ve;->tt(Ljava/lang/String;)V

    .line 76
    invoke-static {v0}, Lcom/byazt/xky/tt;->c(Lcom/byazt/ete/zb;)Lcom/byazt/yj/yp;

    move-result-object p2

    invoke-interface {p2, v1}, Lcom/byazt/yj/yp;->to(Lcom/byazt/yj/gr;)Lcom/byazt/yj/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 77
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/byazt/ete/pu;->da(Lcom/byazt/ete/ic;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/byazt/ete/pu;->a(Lcom/byazt/ete/ic;)Lcom/byazt/ete/dz;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 78
    invoke-static {p1}, Lcom/byazt/ete/pu;->a(Lcom/byazt/ete/ic;)Lcom/byazt/ete/dz;

    move-result-object p2

    invoke-virtual {p2}, Lcom/byazt/ete/dz;->i()Ljava/lang/String;

    move-result-object p2

    .line 79
    invoke-static {p1}, Lcom/byazt/ete/pu;->a(Lcom/byazt/ete/ic;)Lcom/byazt/ete/dz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/ete/dz;->da()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-static {p2, v1, v0}, Lcom/byazt/xs/da;->c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/xs/ve;)Lorg/json/JSONObject;

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/cf/n;->c()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 82
    invoke-static {p1}, Lcom/byazt/ete/kp;->gt(Lcom/byazt/ete/ic;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/ete/g;

    .line 83
    invoke-virtual {v1}, Lcom/byazt/ete/g;->uj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/byazt/ete/g;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/byazt/xs/da;->c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/xs/ve;)Lorg/json/JSONObject;

    goto :goto_1

    .line 84
    :cond_2
    invoke-static {p1}, Lcom/byazt/ete/l;->n(Lcom/byazt/ete/ic;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/ete/g;

    .line 85
    invoke-virtual {v1}, Lcom/byazt/ete/g;->uj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/byazt/ete/g;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/byazt/xs/da;->c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/xs/ve;)Lorg/json/JSONObject;

    goto :goto_2

    .line 86
    :cond_3
    invoke-static {p1}, Lcom/byazt/ete/lt;->sl(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 87
    invoke-static {p1}, Lcom/byazt/ete/lt;->sl(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/byazt/ete/lt;->t(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/byazt/xs/da;->c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/xs/ve;)Lorg/json/JSONObject;

    :cond_4
    return-void
.end method

.method public abstract c(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract c()Z
.end method

.method public c(Lcom/byazt/dj/tt;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/dj/tt;",
            "Ljava/util/List<",
            "Lcom/byazt/ete/ic;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 6
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/byazt/ete/ic;

    .line 7
    invoke-virtual {p0}, Lcom/byazt/cf/n;->c()Z

    move-result v1

    invoke-static {p1, p2, v1}, Lcom/byazt/vvt/n;->c(Lcom/byazt/dj/tt;Lcom/byazt/ete/ic;Z)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 8
    :cond_0
    new-instance v0, Lcom/byazt/ddx/c$c;

    invoke-direct {v0}, Lcom/byazt/ddx/c$c;-><init>()V

    invoke-virtual {p2}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/ddx/c$c;->n(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/byazt/cf/n;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "rewarded_video"

    goto :goto_0

    :cond_1
    const-string v1, "fullscreen_interstitial_ad"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/byazt/ddx/c$c;->c(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object v0

    .line 10
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->w_()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/byazt/ddx/c$c;->uj(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object p2

    const-string v0, "get_preload_ad"

    .line 11
    invoke-virtual {p2, v0}, Lcom/byazt/ddx/c$c;->tt(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object p2

    new-instance v0, Lcom/byazt/cf/n$1;

    invoke-direct {v0, p0, p1}, Lcom/byazt/cf/n$1;-><init>(Lcom/byazt/cf/n;Lcom/byazt/dj/tt;)V

    .line 12
    invoke-virtual {p2, v0}, Lcom/byazt/ddx/c$c;->c(Lcom/byazt/ya/c;)V

    const/4 p1, 0x1

    return p1
.end method

.method public abstract c(Lcom/byazt/ete/c;)Z
.end method

.method public abstract tt(Lcom/byazt/dj/tt;Ljava/util/List;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/dj/tt;",
            "Ljava/util/List<",
            "Lcom/byazt/ete/ic;",
            ">;TT;)V"
        }
    .end annotation
.end method
