.class public Lcom/byazt/atv/sp;
.super Lcom/byazt/atv/n;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/atv/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x86,
        0x5b
    }
.end annotation


# instance fields
.field public gu:Lcom/byazt/kdw/tt;

.field public qy:Lcom/byazt/ouz/sl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/atv/tt;Landroid/view/ViewGroup;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/byazt/atv/n;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/atv/tt;Landroid/view/ViewGroup;)V

    .line 2
    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Lcom/byazt/atv/n;->a:Lcom/byazt/ete/ic;

    .line 13
    .line 14
    iget-object p4, p0, Lcom/byazt/atv/n;->c:Lcom/byazt/sz/z;

    .line 15
    .line 16
    invoke-virtual {p3}, Lcom/byazt/atv/tt;->qp()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-static {p2, p4, v0, p1}, Lcom/byazt/atv/uj;->c(Lcom/byazt/ete/ic;Lcom/byazt/sz/z;ILjava/util/concurrent/atomic/AtomicBoolean;)V

    .line 21
    .line 22
    .line 23
    iget-object p2, p0, Lcom/byazt/atv/n;->a:Lcom/byazt/ete/ic;

    .line 24
    .line 25
    iget-object p4, p0, Lcom/byazt/atv/n;->c:Lcom/byazt/sz/z;

    .line 26
    .line 27
    invoke-virtual {p3}, Lcom/byazt/atv/tt;->qp()I

    .line 28
    .line 29
    .line 30
    move-result p3

    .line 31
    invoke-static {p2, p4, p3, p1}, Lcom/byazt/atv/uj;->tt(Lcom/byazt/ete/ic;Lcom/byazt/sz/z;ILjava/util/concurrent/atomic/AtomicBoolean;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/byazt/atv/sp;Lcom/byazt/xj/ve;Ljava/lang/String;Lcom/byazt/pm/a$c;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/atv/sp;->tt(Lcom/byazt/xj/ve;Ljava/lang/String;Lcom/byazt/pm/a$c;)V

    return-void
.end method

.method private rh()V
    .locals 4

    .line 1
    new-instance v0, Lcom/byazt/sz/yp;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/sz/yp;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/byazt/atv/n;->a:Lcom/byazt/ete/ic;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->ge()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-string v3, "shake_value"

    .line 24
    .line 25
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/byazt/atv/n;->a:Lcom/byazt/ete/ic;

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->e()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const-string v3, "calculation_method"

    .line 39
    .line 40
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lcom/byazt/atv/n;->a:Lcom/byazt/ete/ic;

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->br()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const-string v3, "rotation_angle"

    .line 54
    .line 55
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    iget-object v2, p0, Lcom/byazt/atv/n;->a:Lcom/byazt/ete/ic;

    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->pe()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    const-string v3, "calculation_method_twist"

    .line 69
    .line 70
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    iget-object v2, p0, Lcom/byazt/atv/n;->a:Lcom/byazt/ete/ic;

    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->lv()Lorg/json/JSONObject;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    const-string v3, "twist_config"

    .line 80
    .line 81
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    iget-object v2, p0, Lcom/byazt/atv/n;->a:Lcom/byazt/ete/ic;

    .line 85
    .line 86
    invoke-static {v2}, Lcom/byazt/jlk/tt;->n(Lcom/byazt/ete/ic;)Ljava/util/Map;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    const-string v3, "image_info"

    .line 91
    .line 92
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    const-string v2, "cache_dir"

    .line 96
    .line 97
    invoke-static {}, Lcom/byazt/bzd/sl;->n()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    iget-object v2, p0, Lcom/byazt/atv/n;->a:Lcom/byazt/ete/ic;

    .line 105
    .line 106
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->cy()Lorg/json/JSONObject;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    const-string v3, "shake_interact_conf"

    .line 111
    .line 112
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    iget-object v2, p0, Lcom/byazt/atv/n;->a:Lcom/byazt/ete/ic;

    .line 116
    .line 117
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->yx()Lorg/json/JSONObject;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    const-string v3, "twist_interact_conf"

    .line 122
    .line 123
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    :cond_0
    invoke-virtual {v0, v1}, Lcom/byazt/sz/yp;->c(Ljava/util/Map;)V

    .line 127
    .line 128
    .line 129
    iget-object v1, p0, Lcom/byazt/atv/n;->tt:Landroid/content/Context;

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Lcom/byazt/sz/yp;->c(Landroid/content/Context;)V

    .line 132
    .line 133
    .line 134
    iget-object v1, p0, Lcom/byazt/atv/n;->uj:Lorg/json/JSONObject;

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Lcom/byazt/sz/yp;->c(Lorg/json/JSONObject;)V

    .line 137
    .line 138
    .line 139
    iget-object v1, p0, Lcom/byazt/atv/n;->n:Lorg/json/JSONObject;

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Lcom/byazt/sz/yp;->tt(Lorg/json/JSONObject;)V

    .line 142
    .line 143
    .line 144
    iget-object v1, p0, Lcom/byazt/atv/n;->c:Lcom/byazt/sz/z;

    .line 145
    .line 146
    const-string v2, "ad"

    .line 147
    .line 148
    invoke-virtual {v1, v2, v0}, Lcom/byazt/sz/z;->c(Ljava/lang/String;Lcom/byazt/sz/yp;)V

    .line 149
    .line 150
    .line 151
    return-void
.end method

.method public static tt(Ljava/lang/String;)B
    .locals 7

    .line 83
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 84
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "longTap"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "twist"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "slide"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v6, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "shake"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v6, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "tap"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v6, 0x0

    :goto_0
    packed-switch v6, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v1, 0x5

    goto :goto_1

    :pswitch_1
    const/4 v1, 0x4

    goto :goto_1

    :pswitch_2
    const/4 v1, 0x2

    goto :goto_1

    :pswitch_3
    const/4 v1, 0x3

    goto :goto_1

    :pswitch_4
    const/4 v1, 0x1

    :goto_1
    return v1

    :sswitch_data_0
    .sparse-switch
        0x1bfa3 -> :sswitch_4
        0x6854f06 -> :sswitch_3
        0x6873db1 -> :sswitch_2
        0x69a5727 -> :sswitch_1
        0x14c91f87 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private tt(Lcom/byazt/xj/ve;Ljava/lang/String;Lcom/byazt/pm/a$c;)V
    .locals 21

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    .line 25
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/pm/a$c;->tt()Ljava/lang/String;

    move-result-object v12

    .line 26
    invoke-virtual/range {p3 .. p3}, Lcom/byazt/pm/a$c;->ve()Ljava/util/Map;

    move-result-object v1

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/atv/n;->tt()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 28
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "ugen_click_event_params"

    .line 29
    iget-object v4, v7, Lcom/byazt/atv/n;->yp:Lcom/byazt/ete/da;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-direct {v7, v0}, Lcom/byazt/atv/sp;->ve(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "convert_action_type"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "v3_trigger_name"

    .line 31
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {}, Lcom/byazt/qdk/c;->c()Lcom/byazt/qdk/c;

    move-result-object v13

    iget-object v15, v7, Lcom/byazt/atv/n;->a:Lcom/byazt/ete/ic;

    iget-object v3, v7, Lcom/byazt/atv/n;->tt:Landroid/content/Context;

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/atv/sp;->sl()Lorg/json/JSONObject;

    move-result-object v18

    iget-object v4, v7, Lcom/byazt/atv/n;->u:Lcom/byazt/qdk/tt;

    move-object/from16 v14, p3

    move-object/from16 v16, v3

    move-object/from16 v17, p1

    move-object/from16 v19, v4

    move-object/from16 v20, v2

    .line 34
    invoke-virtual/range {v13 .. v20}, Lcom/byazt/qdk/c;->c(Lcom/byazt/pm/a$c;Lcom/byazt/ete/ic;Landroid/content/Context;Lcom/byazt/xj/ve;Lorg/json/JSONObject;Lcom/byazt/qdk/tt;Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 35
    :cond_0
    sget-object v2, Lcom/byazt/kdw/c;->c:Ljava/util/HashSet;

    invoke-virtual {v2, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    iget-object v8, v7, Lcom/byazt/atv/sp;->qy:Lcom/byazt/ouz/sl;

    iget-object v9, v7, Lcom/byazt/atv/sp;->gu:Lcom/byazt/kdw/tt;

    iget-object v10, v7, Lcom/byazt/atv/n;->a:Lcom/byazt/ete/ic;

    iget-object v11, v7, Lcom/byazt/atv/n;->tt:Landroid/content/Context;

    iget-object v14, v7, Lcom/byazt/atv/n;->rh:Lcom/byazt/sy/sp;

    move-object/from16 v13, p3

    move-object/from16 v15, p1

    invoke-static/range {v8 .. v15}, Lcom/byazt/kdw/c;->c(Lcom/byazt/ouz/sl;Lcom/byazt/kdw/tt;Lcom/byazt/ete/ic;Landroid/content/Context;Ljava/lang/String;Lcom/byazt/pm/a$c;Lcom/byazt/sy/sp;Lcom/byazt/xj/ve;)V

    return-void

    :cond_1
    const-string v2, "uchain"

    .line 37
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "material_meta"

    .line 39
    iget-object v2, v7, Lcom/byazt/atv/n;->a:Lcom/byazt/ete/ic;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "context"

    .line 40
    iget-object v2, v7, Lcom/byazt/atv/n;->tt:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v1, v7, Lcom/byazt/atv/n;->a:Lcom/byazt/ete/ic;

    invoke-static {v1}, Lcom/byazt/aas/nb;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "event_tag"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v1, v7, Lcom/byazt/atv/n;->a:Lcom/byazt/ete/ic;

    move-object/from16 v2, p3

    invoke-static {v1, v0, v2}, Lcom/byazt/ppf/ve;->c(Lcom/byazt/ete/ic;Ljava/util/HashMap;Lcom/byazt/pm/a$c;)V

    return-void

    .line 43
    :cond_2
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v6, 0x9

    const/16 v8, 0x8

    const/4 v9, 0x7

    const/4 v10, 0x6

    const/4 v11, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x1

    const/4 v15, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/16 v17, 0x0

    sparse-switch v2, :sswitch_data_0

    :goto_0
    const/4 v2, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "dislike"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/16 v2, 0xe

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "openAppPolicy"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/16 v2, 0xd

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "muteVideo"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const/16 v2, 0xc

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "convert"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    const/16 v2, 0xb

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "videoControl"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    const/16 v2, 0xa

    goto/16 :goto_1

    :sswitch_5
    const-string v2, "dismissScene"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    :cond_8
    const/16 v2, 0x9

    goto/16 :goto_1

    :sswitch_6
    const-string v2, "openAppFunction"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_0

    :cond_9
    const/16 v2, 0x8

    goto/16 :goto_1

    :sswitch_7
    const-string v2, "close"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_0

    :cond_a
    const/4 v2, 0x7

    goto :goto_1

    :sswitch_8
    const-string v2, "skip"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_0

    :cond_b
    const/4 v2, 0x6

    goto :goto_1

    :sswitch_9
    const-string v2, "pauseVideo"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_0

    :cond_c
    const/4 v2, 0x5

    goto :goto_1

    :sswitch_a
    const-string v2, "resumeVideo"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto/16 :goto_0

    :cond_d
    const/4 v2, 0x4

    goto :goto_1

    :sswitch_b
    const-string v2, "openPrivacy"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto/16 :goto_0

    :cond_e
    const/4 v2, 0x3

    goto :goto_1

    :sswitch_c
    const-string v2, "renderScene"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto/16 :goto_0

    :cond_f
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_d
    const-string v2, "openCommonUrl"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto/16 :goto_0

    :cond_10
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_e
    const-string v2, "openAppPermission"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto/16 :goto_0

    :cond_11
    const/4 v2, 0x0

    :goto_1
    const-string v12, "scene"

    const-string v5, ""

    packed-switch v2, :pswitch_data_0

    const/4 v3, 0x0

    goto/16 :goto_2

    :pswitch_0
    const/16 v3, 0x9

    goto/16 :goto_2

    :pswitch_1
    const/4 v3, 0x5

    goto/16 :goto_2

    :pswitch_2
    const/4 v3, 0x2

    goto/16 :goto_2

    :pswitch_3
    const/4 v3, 0x4

    goto/16 :goto_2

    :pswitch_4
    if-eqz v1, :cond_12

    .line 44
    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/byazt/atv/n;->c(Ljava/lang/String;)V

    :cond_12
    return-void

    :pswitch_5
    const/16 v3, 0xc

    goto :goto_2

    :pswitch_6
    const/16 v3, 0x8

    goto :goto_2

    :pswitch_7
    const/4 v3, 0x6

    goto :goto_2

    .line 45
    :pswitch_8
    iget-object v0, v7, Lcom/byazt/atv/sp;->qy:Lcom/byazt/ouz/sl;

    if-eqz v0, :cond_13

    .line 46
    invoke-interface {v0, v4}, Lcom/byazt/ouz/sl;->c(I)V

    :cond_13
    return-void

    .line 47
    :pswitch_9
    iget-object v0, v7, Lcom/byazt/atv/sp;->qy:Lcom/byazt/ouz/sl;

    if-eqz v0, :cond_14

    .line 48
    invoke-interface {v0, v3}, Lcom/byazt/ouz/sl;->c(I)V

    :cond_14
    return-void

    :pswitch_a
    const/4 v3, 0x7

    goto :goto_2

    :pswitch_b
    if-eqz v1, :cond_15

    .line 49
    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "ugen_id"

    .line 50
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "ugen_md5"

    .line 51
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "ugen_url"

    .line 52
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "displayAreaAndroid"

    .line 53
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "render_sequence"

    .line 54
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    move-object v5, v8

    move-object v6, v9

    .line 55
    invoke-virtual/range {v0 .. v6}, Lcom/byazt/atv/n;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    return-void

    :pswitch_c
    const/16 v3, 0xd

    goto :goto_2

    :pswitch_d
    const/16 v3, 0xa

    .line 56
    :goto_2
    :pswitch_e
    new-instance v2, Lcom/byazt/ete/gr$c;

    invoke-direct {v2}, Lcom/byazt/ete/gr$c;-><init>()V

    iget-object v4, v7, Lcom/byazt/atv/n;->yp:Lcom/byazt/ete/da;

    .line 57
    invoke-virtual {v4}, Lcom/byazt/ete/da;->nu()F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/byazt/ete/gr$c;->uj(F)Lcom/byazt/ete/gr$c;

    move-result-object v2

    iget-object v4, v7, Lcom/byazt/atv/n;->yp:Lcom/byazt/ete/da;

    .line 58
    invoke-virtual {v4}, Lcom/byazt/ete/da;->rh()F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/byazt/ete/gr$c;->ve(F)Lcom/byazt/ete/gr$c;

    move-result-object v2

    iget-object v4, v7, Lcom/byazt/atv/n;->yp:Lcom/byazt/ete/da;

    .line 59
    invoke-virtual {v4}, Lcom/byazt/ete/da;->my()F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/byazt/ete/gr$c;->tt(F)Lcom/byazt/ete/gr$c;

    move-result-object v2

    iget-object v4, v7, Lcom/byazt/atv/n;->yp:Lcom/byazt/ete/da;

    .line 60
    invoke-virtual {v4}, Lcom/byazt/ete/da;->gt()F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/byazt/ete/gr$c;->c(F)Lcom/byazt/ete/gr$c;

    move-result-object v2

    .line 61
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/xj/ve;->eo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/byazt/ete/gr$c;->c(Ljava/lang/String;)Lcom/byazt/ete/gr$c;

    move-result-object v2

    iget-object v4, v7, Lcom/byazt/atv/n;->yp:Lcom/byazt/ete/da;

    .line 62
    invoke-virtual {v4}, Lcom/byazt/ete/da;->z()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lcom/byazt/ete/gr$c;->tt(J)Lcom/byazt/ete/gr$c;

    move-result-object v2

    iget-object v4, v7, Lcom/byazt/atv/n;->yp:Lcom/byazt/ete/da;

    .line 63
    invoke-virtual {v4}, Lcom/byazt/ete/da;->m()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lcom/byazt/ete/gr$c;->c(J)Lcom/byazt/ete/gr$c;

    move-result-object v2

    .line 64
    invoke-static/range {p2 .. p2}, Lcom/byazt/atv/sp;->tt(Ljava/lang/String;)B

    move-result v4

    invoke-virtual {v2, v4}, Lcom/byazt/ete/gr$c;->c(B)Lcom/byazt/ete/gr$c;

    move-result-object v2

    .line 65
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 66
    invoke-direct {v7, v0}, Lcom/byazt/atv/sp;->ve(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_16

    :try_start_0
    const-string v6, "convertActionType"

    .line 67
    invoke-virtual {v4, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_16
    :try_start_1
    const-string v0, "webUrl"

    .line 68
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v6, "webTitle"

    .line 69
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 70
    invoke-static {v0, v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/byazt/atv/sp;->sl()Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/byazt/wj/tt;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v1, v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/byazt/atv/sp;->sl()Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/byazt/wj/tt;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "openCommonWebUrl"

    .line 72
    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "openCommonWebTitle"

    .line 73
    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 74
    :catch_0
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/xj/ve;->i()Landroid/view/View;

    move-result-object v0

    .line 75
    :try_start_2
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_17

    .line 76
    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 77
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "\u4e0b\u8f7d"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "is_compliant_download"

    .line 78
    invoke-virtual {v4, v1, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    nop

    .line 79
    :cond_17
    :goto_3
    invoke-virtual {v2, v4}, Lcom/byazt/ete/gr$c;->c(Lorg/json/JSONObject;)Lcom/byazt/ete/gr$c;

    .line 80
    invoke-virtual {v2}, Lcom/byazt/ete/gr$c;->c()Lcom/byazt/ete/gr;

    move-result-object v1

    .line 81
    iget-object v2, v7, Lcom/byazt/atv/n;->i:Lcom/byazt/xl/x;

    if-eqz v2, :cond_18

    .line 82
    invoke-interface {v2, v0, v3, v1, v15}, Lcom/byazt/xl/x;->c(Landroid/view/View;ILcom/byazt/sr/ve;I)V

    :cond_18
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6ca7475a -> :sswitch_e
        -0x62cc3ba6 -> :sswitch_d
        -0x61b38b6a -> :sswitch_c
        -0x1e7a3222 -> :sswitch_b
        -0x5398fb2 -> :sswitch_a
        -0x353b7db -> :sswitch_9
        0x35e57f -> :sswitch_8
        0x5a5ddf8 -> :sswitch_7
        0x117f306f -> :sswitch_6
        0x19187c22 -> :sswitch_5
        0x2ff1f862 -> :sswitch_4
        0x38b81db3 -> :sswitch_3
        0x44a639e2 -> :sswitch_2
        0x49c19b89 -> :sswitch_1
        0x63a33d25 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_e
    .end packed-switch
.end method

.method private ve(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 10
    .line 11
    .line 12
    const-string v0, "shake"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    const-string v0, "twist"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v1, 0x2

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const/4 v1, 0x1

    .line 32
    :goto_0
    return v1
.end method


# virtual methods
.method public a()Lcom/byazt/xj/ve;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/atv/n;->ve:Lcom/byazt/xj/ve;

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
    const-string v1, "VideoV3"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/byazt/xj/ve;->n(Ljava/lang/String;)Lcom/byazt/xj/ve;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public c()Lorg/json/JSONObject;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/byazt/atv/n;->sp:Lcom/byazt/atv/tt;

    invoke-virtual {v0}, Lcom/byazt/xl/u;->n()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "xTemplate"

    .line 4
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/byazt/kdw/tt;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/byazt/atv/sp;->gu:Lcom/byazt/kdw/tt;

    return-void
.end method

.method public c(Lcom/byazt/ouz/sl;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/byazt/atv/sp;->qy:Lcom/byazt/ouz/sl;

    return-void
.end method

.method public c(Lcom/byazt/xj/ve;Ljava/lang/String;Lcom/byazt/pm/a$c;)V
    .locals 2

    if-nez p3, :cond_0

    return-void

    :cond_0
    const-string v0, "shake"

    .line 5
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "twist"

    .line 6
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/atv/sp;->tt(Lcom/byazt/xj/ve;Ljava/lang/String;Lcom/byazt/pm/a$c;)V

    return-void

    .line 8
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/byazt/atv/n;->z:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/byazt/atv/n;->z:Ljava/lang/ref/WeakReference;

    new-instance v1, Lcom/byazt/atv/sp$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/byazt/atv/sp$1;-><init>(Lcom/byazt/atv/sp;Lcom/byazt/xj/ve;Ljava/lang/String;Lcom/byazt/pm/a$c;)V

    invoke-static {v0, v1}, Lcom/byazt/aas/or;->c(Ljava/lang/ref/WeakReference;Lcom/byazt/hkv/ve;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public c(Ljava/lang/CharSequence;IIZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/byazt/atv/n;->ve:Lcom/byazt/xj/ve;

    if-nez v0, :cond_0

    return-void

    .line 11
    :cond_0
    new-instance v0, Lcom/byazt/pm/a$c;

    invoke-direct {v0}, Lcom/byazt/pm/a$c;-><init>()V

    const-string v1, "custom"

    .line 12
    invoke-virtual {v0, v1}, Lcom/byazt/pm/a$c;->c(Ljava/lang/String;)V

    const-string v1, "emit"

    .line 13
    invoke-virtual {v0, v1}, Lcom/byazt/pm/a$c;->tt(Ljava/lang/String;)V

    .line 14
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_1

    .line 15
    invoke-interface {v1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    const-string p2, "name"

    .line 16
    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {v0, v1}, Lcom/byazt/pm/a$c;->c(Ljava/util/Map;)V

    .line 18
    iget-object p1, p0, Lcom/byazt/atv/n;->ve:Lcom/byazt/xj/ve;

    const-string p2, "jsb"

    invoke-static {p1, p2, v0}, Lcom/byazt/vd/c$c;->c(Lcom/byazt/xj/ve;Ljava/lang/String;Lcom/byazt/pm/a$c;)Lcom/byazt/vd/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/vd/c;->c()V

    return-void
.end method

.method public sl()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/atv/n;->sp:Lcom/byazt/atv/tt;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/xl/u;->n()Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public tt(Lcom/byazt/xl/sp;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/byazt/atv/sp;->rh()V

    .line 2
    iget-object v0, p0, Lcom/byazt/atv/n;->c:Lcom/byazt/sz/z;

    invoke-virtual {v0, p0}, Lcom/byazt/sz/z;->c(Lcom/byazt/sz/rh;)V

    .line 3
    iget-object v0, p0, Lcom/byazt/atv/n;->c:Lcom/byazt/sz/z;

    invoke-virtual {v0, p0}, Lcom/byazt/sz/z;->c(Lcom/byazt/sz/gt;)V

    .line 4
    iget-object v0, p0, Lcom/byazt/atv/n;->a:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/pu;->sp(Lcom/byazt/ete/ic;)Lcom/byazt/ete/ma;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    invoke-virtual {v0}, Lcom/byazt/ete/ma;->n()Lorg/json/JSONObject;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/byazt/atv/n;->c:Lcom/byazt/sz/z;

    iget-object v2, p0, Lcom/byazt/atv/n;->uj:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/byazt/atv/n;->n:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3, v0}, Lcom/byazt/sz/z;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/byazt/xj/ve;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/atv/n;->ve:Lcom/byazt/xj/ve;

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/byazt/atv/n;->c:Lcom/byazt/sz/z;

    iget-object v1, p0, Lcom/byazt/atv/n;->uj:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/byazt/atv/n;->n:Lorg/json/JSONObject;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/sz/z;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/byazt/xj/ve;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/atv/n;->ve:Lcom/byazt/xj/ve;

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/byazt/atv/n;->c:Lcom/byazt/sz/z;

    invoke-virtual {v0}, Lcom/byazt/sz/z;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 10
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/byazt/atv/n;->c:Lcom/byazt/sz/z;

    invoke-virtual {v2}, Lcom/byazt/sz/z;->tt()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v2, "component_not_exist"

    .line 11
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    iget-object v1, p0, Lcom/byazt/atv/n;->sp:Lcom/byazt/atv/tt;

    invoke-virtual {v1}, Lcom/byazt/atv/tt;->or()Lcom/byazt/sz/qy;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/byazt/sz/qy;->c(Lorg/json/JSONObject;)V

    const-string v0, "ugen unknown component"

    const/16 v1, 0x8a

    .line 13
    invoke-interface {p1, v1, v0}, Lcom/byazt/xl/sp;->c(ILjava/lang/String;)V

    return-void

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/byazt/atv/n;->c:Lcom/byazt/sz/z;

    invoke-virtual {v0}, Lcom/byazt/sz/z;->ve()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ugen root disable"

    const/16 v1, 0x8e

    .line 15
    invoke-interface {p1, v1, v0}, Lcom/byazt/xl/sp;->c(ILjava/lang/String;)V

    return-void

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/byazt/atv/n;->ve:Lcom/byazt/xj/ve;

    if-eqz v0, :cond_4

    .line 17
    iget-object v0, p0, Lcom/byazt/atv/n;->rl:Lcom/byazt/qmz/c;

    if-nez v0, :cond_3

    .line 18
    new-instance v0, Lcom/byazt/qmz/c;

    iget-object v1, p0, Lcom/byazt/atv/n;->sp:Lcom/byazt/atv/tt;

    invoke-virtual {v1}, Lcom/byazt/xl/u;->n()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/byazt/qmz/c;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/byazt/atv/n;->rl:Lcom/byazt/qmz/c;

    .line 19
    :cond_3
    iget-object v0, p0, Lcom/byazt/atv/n;->rl:Lcom/byazt/qmz/c;

    iget-object v1, p0, Lcom/byazt/atv/n;->c:Lcom/byazt/sz/z;

    iget-object v2, p0, Lcom/byazt/atv/n;->ve:Lcom/byazt/xj/ve;

    invoke-virtual {v0, v1, v2}, Lcom/byazt/qmz/c;->c(Lcom/byazt/sz/z;Lcom/byazt/xj/ve;)V

    .line 20
    :cond_4
    iget-object v0, p0, Lcom/byazt/atv/n;->sp:Lcom/byazt/atv/tt;

    invoke-virtual {v0}, Lcom/byazt/atv/tt;->or()Lcom/byazt/sz/qy;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/sz/qy;->tt()V

    .line 21
    iget-object v0, p0, Lcom/byazt/atv/n;->sp:Lcom/byazt/atv/tt;

    invoke-virtual {v0}, Lcom/byazt/atv/tt;->or()Lcom/byazt/sz/qy;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/sz/qy;->ve()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    nop

    if-eqz p1, :cond_5

    const/16 v0, 0x8d

    const-string v1, "ugen other fail"

    .line 22
    invoke-interface {p1, v0, v1}, Lcom/byazt/xl/sp;->c(ILjava/lang/String;)V

    :cond_5
    return-void

    :catch_0
    nop

    if-eqz p1, :cond_6

    const/16 v0, 0x8c

    const-string v1, "ugen no class def found error"

    .line 23
    invoke-interface {p1, v0, v1}, Lcom/byazt/xl/sp;->c(ILjava/lang/String;)V

    :cond_6
    return-void

    :catch_1
    nop

    if-eqz p1, :cond_7

    const/16 v0, 0x8b

    const-string v1, "ugen yoga so load fail"

    .line 24
    invoke-interface {p1, v0, v1}, Lcom/byazt/xl/sp;->c(ILjava/lang/String;)V

    :cond_7
    return-void
.end method
