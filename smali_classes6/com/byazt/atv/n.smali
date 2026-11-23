.class public Lcom/byazt/atv/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/sz/gt;
.implements Lcom/byazt/sz/rh;
.implements Lcom/byazt/kn/uj;
.implements Lcom/byazt/xl/uj;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x86,
        0x2e
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/byazt/sz/gt;",
        "Lcom/byazt/sz/rh;",
        "Lcom/byazt/kn/uj;",
        "Lcom/byazt/xl/uj<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/ete/ic;

.field public c:Lcom/byazt/sz/z;

.field public da:Lcom/byazt/sy/x;

.field public gr:Ljava/lang/String;

.field public gt:Lcom/byazt/nr/zm;

.field public gu:Ljava/lang/String;

.field public i:Lcom/byazt/xl/x;

.field public m:Lcom/byazt/xj/ve;

.field public md:Z

.field public my:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public n:Lorg/json/JSONObject;

.field public nu:Lcom/byazt/xj/ve;

.field public final p:Lcom/byazt/xyr/sp;

.field public qy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/xj/ve<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field public rh:Lcom/byazt/sy/sp;

.field public rl:Lcom/byazt/qmz/c;

.field public sl:Lcom/byazt/xl/yp;

.field public sp:Lcom/byazt/atv/tt;

.field public t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/sz/x;",
            ">;"
        }
    .end annotation
.end field

.field public tt:Landroid/content/Context;

.field public u:Lcom/byazt/qdk/tt;

.field public uj:Lorg/json/JSONObject;

.field public ve:Lcom/byazt/xj/ve;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/xj/ve<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public x:Lcom/byazt/atv/UGTimerContainer;

.field public yp:Lcom/byazt/ete/da;

.field public yv:Lcom/byazt/sy/c;

.field public z:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field public zm:Lcom/byazt/ma/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/atv/tt;Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/atv/n;->t:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Lcom/byazt/ete/da;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/byazt/ete/da;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/byazt/atv/n;->yp:Lcom/byazt/ete/da;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/byazt/atv/n;->md:Z

    .line 20
    .line 21
    iput-object p1, p0, Lcom/byazt/atv/n;->tt:Landroid/content/Context;

    .line 22
    .line 23
    new-instance v1, Lcom/byazt/sz/z;

    .line 24
    .line 25
    invoke-direct {v1, p1}, Lcom/byazt/sz/z;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/byazt/atv/n;->c:Lcom/byazt/sz/z;

    .line 29
    .line 30
    iput-object p2, p0, Lcom/byazt/atv/n;->a:Lcom/byazt/ete/ic;

    .line 31
    .line 32
    iput-object p3, p0, Lcom/byazt/atv/n;->sp:Lcom/byazt/atv/tt;

    .line 33
    .line 34
    new-instance p3, Lcom/byazt/xyr/sp;

    .line 35
    .line 36
    invoke-direct {p3, p2}, Lcom/byazt/xyr/sp;-><init>(Lcom/byazt/ete/ic;)V

    .line 37
    .line 38
    .line 39
    iput-object p3, p0, Lcom/byazt/atv/n;->p:Lcom/byazt/xyr/sp;

    .line 40
    .line 41
    new-instance v1, Lcom/byazt/atv/UGTimerContainer;

    .line 42
    .line 43
    invoke-direct {v1, p1, p3}, Lcom/byazt/atv/UGTimerContainer;-><init>(Landroid/content/Context;Lcom/byazt/xyr/sp;)V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lcom/byazt/atv/n;->x:Lcom/byazt/atv/UGTimerContainer;

    .line 47
    .line 48
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 49
    .line 50
    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lcom/byazt/atv/n;->z:Ljava/lang/ref/WeakReference;

    .line 54
    .line 55
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    .line 57
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Lcom/byazt/atv/n;->my:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/byazt/atv/n;->c()Lorg/json/JSONObject;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iput-object p1, p0, Lcom/byazt/atv/n;->uj:Lorg/json/JSONObject;

    .line 67
    .line 68
    if-eqz p2, :cond_0

    .line 69
    .line 70
    if-eqz p1, :cond_0

    .line 71
    .line 72
    const-string p3, "event_template"

    .line 73
    .line 74
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-eqz p1, :cond_0

    .line 79
    .line 80
    const/4 p3, 0x1

    .line 81
    iput-boolean p3, p0, Lcom/byazt/atv/n;->md:Z

    .line 82
    .line 83
    sget-object p3, Lcom/byazt/bh/tt;->c:Lcom/byazt/bh/tt;

    .line 84
    .line 85
    invoke-virtual {p3, p1}, Lcom/byazt/bh/tt;->c(Lorg/json/JSONObject;)V

    .line 86
    .line 87
    .line 88
    :cond_0
    invoke-static {p2}, Lcom/byazt/ic/c;->uj(Lcom/byazt/ete/ic;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_1

    .line 93
    .line 94
    new-instance p1, Lcom/byazt/atv/n$1;

    .line 95
    .line 96
    invoke-direct {p1, p0}, Lcom/byazt/atv/n$1;-><init>(Lcom/byazt/atv/n;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, p1}, Lcom/byazt/atv/n;->c(Lcom/byazt/sz/x;)V

    .line 100
    .line 101
    .line 102
    :cond_1
    iget-object p1, p0, Lcom/byazt/atv/n;->c:Lcom/byazt/sz/z;

    .line 103
    .line 104
    new-instance p2, Lcom/byazt/atv/n$2;

    .line 105
    .line 106
    invoke-direct {p2, p0}, Lcom/byazt/atv/n$2;-><init>(Lcom/byazt/atv/n;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, p2}, Lcom/byazt/sz/z;->c(Lcom/byazt/sz/x;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public static synthetic c(Lcom/byazt/atv/n;)I
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/byazt/atv/n;->rh()I

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/byazt/atv/n;Lcom/byazt/sz/m;Lcom/byazt/sz/rh$tt;Lcom/byazt/sz/rh$c;IZ)V
    .locals 0

    .line 3
    invoke-direct/range {p0 .. p5}, Lcom/byazt/atv/n;->c(Lcom/byazt/sz/m;Lcom/byazt/sz/rh$tt;Lcom/byazt/sz/rh$c;IZ)V

    return-void
.end method

.method private c(Lcom/byazt/sz/m;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 95
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/sz/m;->ve()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "type"

    .line 96
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "uchain"

    .line 97
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    .line 98
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 99
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_1

    .line 100
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 101
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 102
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 103
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/byazt/atv/n;->sl()Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/byazt/wj/tt;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    .line 104
    :try_start_0
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    goto :goto_0

    :cond_1
    const-string p1, "true"

    .line 105
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 106
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 107
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string p1, "material_meta"

    .line 108
    iget-object v0, p0, Lcom/byazt/atv/n;->a:Lcom/byazt/ete/ic;

    invoke-virtual {v4, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string p1, "ugen_event_params"

    .line 110
    invoke-virtual {v6, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object p1, p0, Lcom/byazt/atv/n;->a:Lcom/byazt/ete/ic;

    invoke-static {p1}, Lcom/byazt/aas/nb;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v5

    .line 112
    invoke-static {}, Lcom/byazt/aas/nb;->md()V

    .line 113
    iget-object v1, p0, Lcom/byazt/atv/n;->a:Lcom/byazt/ete/ic;

    const-wide/16 v7, -0x1

    invoke-static/range {v1 .. v8}, Lcom/byazt/ppf/ve;->c(Lcom/byazt/ete/ic;Ljava/util/Map;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/util/HashMap;J)V

    :cond_2
    return-void
.end method

.method private c(Lcom/byazt/sz/m;Lcom/byazt/sz/rh$tt;Lcom/byazt/sz/rh$c;IZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    const-string v3, "ugen_id"

    if-nez p1, :cond_0

    return-void

    .line 126
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/sz/m;->c()Lcom/byazt/xj/ve;

    move-result-object v12

    if-nez v12, :cond_1

    return-void

    .line 127
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/sz/m;->ve()Lorg/json/JSONObject;

    move-result-object v13

    const-string v4, "nodeId"

    .line 128
    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/byazt/atv/n;->sl()Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/byazt/wj/tt;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v14

    const-string v4, "type"

    .line 129
    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/byazt/atv/n;->sl()Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/byazt/wj/tt;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v15

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/atv/n;->tt()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 131
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    const-string v4, "ugen_click_event_params"

    .line 132
    iget-object v5, v0, Lcom/byazt/atv/n;->yp:Lcom/byazt/ete/da;

    invoke-interface {v11, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "convert_action_type"

    .line 133
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v11, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-static {}, Lcom/byazt/qdk/c;->c()Lcom/byazt/qdk/c;

    move-result-object v4

    iget-object v6, v0, Lcom/byazt/atv/n;->a:Lcom/byazt/ete/ic;

    iget-object v7, v0, Lcom/byazt/atv/n;->tt:Landroid/content/Context;

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/atv/n;->sl()Lorg/json/JSONObject;

    move-result-object v9

    iget-object v10, v0, Lcom/byazt/atv/n;->u:Lcom/byazt/qdk/tt;

    move-object/from16 v5, p1

    move-object v8, v12

    .line 136
    invoke-virtual/range {v4 .. v11}, Lcom/byazt/qdk/c;->c(Lcom/byazt/sz/m;Lcom/byazt/ete/ic;Landroid/content/Context;Lcom/byazt/xj/ve;Lorg/json/JSONObject;Lcom/byazt/qdk/tt;Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-void

    :cond_2
    const-string v4, "clickEvent"

    .line 137
    invoke-static {v15, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eqz v4, :cond_3

    const-string v4, "subConvertLinkTag"

    .line 138
    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "dpaPosition"

    .line 139
    invoke-virtual {v13, v7, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x2

    goto/16 :goto_2

    :cond_3
    const-string v4, "muteVideo"

    .line 140
    invoke-static {v15, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v7, ""

    if-eqz v4, :cond_4

    const-string v4, "muteSrc"

    .line 141
    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/byazt/atv/n;->gu:Ljava/lang/String;

    const-string v4, "unmuteSrc"

    .line 142
    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/byazt/atv/n;->gr:Ljava/lang/String;

    const/4 v8, 0x5

    :goto_0
    move-object v4, v7

    const/4 v7, -0x1

    goto/16 :goto_2

    :cond_4
    const-string v4, "dislike"

    .line 143
    invoke-static {v15, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v8, 0x3

    goto :goto_0

    :cond_5
    const-string v4, "skip"

    .line 144
    invoke-static {v15, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v8, 0x6

    goto :goto_0

    :cond_6
    const-string v4, "openPolicy"

    .line 145
    invoke-static {v15, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v8, 0x7

    goto :goto_0

    :cond_7
    const-string v4, "openAppPolicy"

    .line 146
    invoke-static {v15, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v8, 0x9

    goto :goto_0

    :cond_8
    const-string v4, "openAppPermission"

    .line 147
    invoke-static {v15, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/16 v8, 0xa

    goto :goto_0

    :cond_9
    const-string v4, "close"

    .line 148
    invoke-static {v15, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    const/16 v8, 0x8

    if-eqz v4, :cond_a

    goto :goto_0

    :cond_a
    const-string v4, "openAppFunctionDesc"

    .line 149
    invoke-static {v15, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/16 v8, 0xc

    goto :goto_0

    :cond_b
    const-string v4, "videoControl"

    .line 150
    invoke-static {v15, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_18

    const-string v4, "pauseVideo"

    invoke-static {v15, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    goto/16 :goto_1

    :cond_c
    const-string v4, "openCommonUrl"

    .line 151
    invoke-static {v15, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    const/16 v8, 0xd

    goto :goto_0

    :cond_d
    const-string v4, "onDismiss"

    .line 152
    invoke-static {v15, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 153
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/sz/m;->c()Lcom/byazt/xj/ve;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/byazt/sz/m;->c()Lcom/byazt/xj/ve;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/xj/ve;->tt(Lcom/byazt/xj/ve;)Lcom/byazt/xj/ve;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/byazt/xj/ve;->uj(Ljava/lang/String;)Lcom/byazt/xj/ve;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 154
    invoke-virtual {v1, v8}, Lcom/byazt/xj/ve;->tt(I)V

    :cond_e
    return-void

    :cond_f
    const-string v4, "onShow"

    .line 155
    invoke-static {v15, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 156
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/sz/m;->c()Lcom/byazt/xj/ve;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/byazt/sz/m;->c()Lcom/byazt/xj/ve;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/xj/ve;->tt(Lcom/byazt/xj/ve;)Lcom/byazt/xj/ve;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/byazt/xj/ve;->uj(Ljava/lang/String;)Lcom/byazt/xj/ve;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 157
    invoke-virtual {v1, v5}, Lcom/byazt/xj/ve;->tt(I)V

    :cond_10
    return-void

    :cond_11
    const-string v4, "haptic"

    .line 158
    invoke-static {v15, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 159
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/sz/m;->ve()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/byazt/atv/n;->ve(Lorg/json/JSONObject;)V

    return-void

    :cond_12
    const-string v4, "closeWidget"

    .line 160
    invoke-static {v15, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 161
    iget-object v1, v0, Lcom/byazt/atv/n;->rh:Lcom/byazt/sy/sp;

    if-eqz v1, :cond_13

    .line 162
    invoke-interface {v1}, Lcom/byazt/sy/sp;->n()V

    :cond_13
    return-void

    :cond_14
    const-string v4, "dismiss"

    .line 163
    invoke-static {v15, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 164
    invoke-virtual {v12, v8}, Lcom/byazt/xj/ve;->tt(I)V

    return-void

    :cond_15
    const-string v4, "renderScene"

    .line 165
    invoke-static {v15, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 166
    invoke-direct {v0, v13}, Lcom/byazt/atv/n;->uj(Lorg/json/JSONObject;)V

    return-void

    :cond_16
    const-string v4, "dismissScene"

    .line 167
    invoke-static {v15, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 168
    invoke-direct {v0, v13}, Lcom/byazt/atv/n;->n(Lorg/json/JSONObject;)V

    return-void

    :cond_17
    move-object v4, v7

    const/4 v7, -0x1

    const/4 v8, 0x0

    goto :goto_2

    :cond_18
    :goto_1
    const/4 v8, 0x4

    goto/16 :goto_0

    .line 169
    :goto_2
    new-instance v9, Lcom/byazt/ete/gr$c;

    invoke-direct {v9}, Lcom/byazt/ete/gr$c;-><init>()V

    iget-object v10, v0, Lcom/byazt/atv/n;->yp:Lcom/byazt/ete/da;

    .line 170
    invoke-virtual {v10}, Lcom/byazt/ete/da;->nu()F

    move-result v10

    invoke-virtual {v9, v10}, Lcom/byazt/ete/gr$c;->uj(F)Lcom/byazt/ete/gr$c;

    move-result-object v9

    iget-object v10, v0, Lcom/byazt/atv/n;->yp:Lcom/byazt/ete/da;

    .line 171
    invoke-virtual {v10}, Lcom/byazt/ete/da;->rh()F

    move-result v10

    invoke-virtual {v9, v10}, Lcom/byazt/ete/gr$c;->ve(F)Lcom/byazt/ete/gr$c;

    move-result-object v9

    iget-object v10, v0, Lcom/byazt/atv/n;->yp:Lcom/byazt/ete/da;

    .line 172
    invoke-virtual {v10}, Lcom/byazt/ete/da;->my()F

    move-result v10

    invoke-virtual {v9, v10}, Lcom/byazt/ete/gr$c;->tt(F)Lcom/byazt/ete/gr$c;

    move-result-object v9

    iget-object v10, v0, Lcom/byazt/atv/n;->yp:Lcom/byazt/ete/da;

    .line 173
    invoke-virtual {v10}, Lcom/byazt/ete/da;->gt()F

    move-result v10

    invoke-virtual {v9, v10}, Lcom/byazt/ete/gr$c;->c(F)Lcom/byazt/ete/gr$c;

    move-result-object v9

    .line 174
    invoke-virtual {v12}, Lcom/byazt/xj/ve;->eo()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/byazt/ete/gr$c;->c(Ljava/lang/String;)Lcom/byazt/ete/gr$c;

    move-result-object v9

    iget-object v10, v0, Lcom/byazt/atv/n;->yp:Lcom/byazt/ete/da;

    .line 175
    invoke-virtual {v10}, Lcom/byazt/ete/da;->z()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/byazt/ete/gr$c;->tt(J)Lcom/byazt/ete/gr$c;

    move-result-object v9

    iget-object v10, v0, Lcom/byazt/atv/n;->yp:Lcom/byazt/ete/da;

    .line 176
    invoke-virtual {v10}, Lcom/byazt/ete/da;->m()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/byazt/ete/gr$c;->c(J)Lcom/byazt/ete/gr$c;

    move-result-object v9

    .line 177
    invoke-virtual {v9, v4}, Lcom/byazt/ete/gr$c;->n(Ljava/lang/String;)Lcom/byazt/ete/gr$c;

    move-result-object v4

    .line 178
    invoke-virtual {v4, v7}, Lcom/byazt/ete/gr$c;->n(I)Lcom/byazt/ete/gr$c;

    move-result-object v4

    .line 179
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    if-lez v2, :cond_19

    :try_start_0
    const-string v9, "convertActionType"

    .line 180
    invoke-virtual {v7, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :catchall_0
    :cond_19
    invoke-virtual {v12}, Lcom/byazt/xj/ve;->i()Landroid/view/View;

    move-result-object v2

    const/4 v9, 0x1

    .line 182
    :try_start_1
    instance-of v10, v2, Landroid/widget/TextView;

    if-eqz v10, :cond_1a

    .line 183
    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    if-eqz v10, :cond_1a

    .line 184
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "\u4e0b\u8f7d"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1a

    const-string v10, "is_compliant_download"

    .line 185
    invoke-virtual {v7, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 186
    :catch_0
    :cond_1a
    :try_start_2
    iget-object v10, v0, Lcom/byazt/atv/n;->a:Lcom/byazt/ete/ic;

    if-eqz v10, :cond_1b

    iget-boolean v10, v0, Lcom/byazt/atv/n;->md:Z

    if-eqz v10, :cond_1b

    const-string v10, "uchain"

    invoke-virtual {v13, v10, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1b

    const-string v5, "uchain_event_name"

    .line 187
    invoke-virtual {v7, v5, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 188
    :catch_1
    :cond_1b
    :try_start_3
    iget-object v5, v0, Lcom/byazt/atv/n;->sp:Lcom/byazt/atv/tt;

    if-eqz v5, :cond_1c

    .line 189
    invoke-virtual {v5}, Lcom/byazt/atv/tt;->zb()Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_1c

    .line 190
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :cond_1c
    :try_start_4
    const-string v3, "webUrl"

    .line 191
    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/byazt/atv/n;->sl()Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/byazt/wj/tt;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "webTitle"

    .line 192
    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/byazt/atv/n;->sl()Lorg/json/JSONObject;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/byazt/wj/tt;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    const-string v10, "openCommonWebUrl"

    .line 193
    invoke-virtual {v7, v10, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "openCommonWebTitle"

    .line 194
    invoke-virtual {v7, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    nop

    :goto_3
    if-eqz p5, :cond_1d

    :try_start_5
    const-string v3, "isLottieInternalClick"

    .line 195
    invoke-virtual {v7, v3, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    nop

    .line 196
    :cond_1d
    :goto_4
    invoke-virtual {v4, v7}, Lcom/byazt/ete/gr$c;->c(Lorg/json/JSONObject;)Lcom/byazt/ete/gr$c;

    .line 197
    invoke-virtual {v4}, Lcom/byazt/ete/gr$c;->c()Lcom/byazt/ete/gr;

    move-result-object v3

    .line 198
    iget-object v4, v0, Lcom/byazt/atv/n;->i:Lcom/byazt/xl/x;

    if-eqz v4, :cond_1e

    .line 199
    invoke-interface {v4, v2, v8, v3, v6}, Lcom/byazt/xl/x;->c(Landroid/view/View;ILcom/byazt/sr/ve;I)V

    :cond_1e
    if-eqz v1, :cond_1f

    .line 200
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/sz/m;->uj()Lcom/byazt/sz/m;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 201
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/sz/m;->uj()Lcom/byazt/sz/m;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/byazt/sz/rh$tt;->c(Lcom/byazt/sz/m;)V

    :cond_1f
    return-void
.end method

.method private c(Lcom/byazt/xj/ve;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/xj/ve<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Lcom/byazt/xj/ve<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    .line 8
    instance-of v0, p1, Lcom/byazt/xj/c;

    const/4 v1, 0x4

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p1, v1}, Lcom/byazt/xj/ve;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_0
    check-cast p1, Lcom/byazt/xj/c;

    invoke-virtual {p1}, Lcom/byazt/xj/c;->sp()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 12
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/xj/ve;

    .line 14
    invoke-direct {p0, v0, p2}, Lcom/byazt/atv/n;->c(Lcom/byazt/xj/ve;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    if-eqz p1, :cond_3

    .line 15
    invoke-virtual {p1, v1}, Lcom/byazt/xj/ve;->c(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private c(Lorg/json/JSONObject;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "type"

    .line 114
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/byazt/atv/n;->sl()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/byazt/wj/tt;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nodeId"

    .line 115
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/byazt/atv/n;->sl()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/byazt/wj/tt;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/byazt/atv/n;->ve:Lcom/byazt/xj/ve;

    if-nez v2, :cond_1

    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {v2, v2}, Lcom/byazt/xj/ve;->tt(Lcom/byazt/xj/ve;)Lcom/byazt/xj/ve;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/byazt/xj/ve;->uj(Ljava/lang/String;)Lcom/byazt/xj/ve;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "onShow"

    .line 118
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, 0x0

    .line 119
    invoke-virtual {v1, p1}, Lcom/byazt/xj/ve;->tt(I)V

    return-void

    :cond_2
    const-string v2, "onDismiss"

    .line 120
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 p1, 0x8

    .line 121
    invoke-virtual {v1, p1}, Lcom/byazt/xj/ve;->tt(I)V

    return-void

    :cond_3
    const-string v1, "haptic"

    .line 122
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 123
    invoke-direct {p0, p1}, Lcom/byazt/atv/n;->ve(Lorg/json/JSONObject;)V

    return-void

    :cond_4
    const-string v1, "dismissScene"

    .line 124
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 125
    invoke-direct {p0, p1}, Lcom/byazt/atv/n;->n(Lorg/json/JSONObject;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private c(Ljava/lang/String;I)Z
    .locals 1

    const-string v0, "scene1"

    .line 221
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/byazt/sy/uj;->c(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private n(Lorg/json/JSONObject;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "params"

    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string v0, "scene"

    .line 7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/byazt/atv/n;->c(Ljava/lang/String;)V

    return-void
.end method

.method private rh()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/atv/n;->a:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->eo()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method private tt(Lcom/byazt/sz/m;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {p1}, Lcom/byazt/sz/m;->ve()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "uttieUrl"

    .line 15
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/atv/n;->a:Lcom/byazt/ete/ic;

    invoke-virtual {v0, v1, p1}, Lcom/byazt/ukr/yp;->tt(Lcom/byazt/ete/ic;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private tt(Lcom/byazt/sz/m;Lcom/byazt/sz/rh$tt;Lcom/byazt/sz/rh$c;)V
    .locals 6

    .line 17
    invoke-virtual {p1}, Lcom/byazt/sz/m;->ve()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "type"

    const/4 v2, 0x0

    .line 18
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 20
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const-string v2, "clickEvent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string p1, "close"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 21
    :cond_2
    iget-object p1, p0, Lcom/byazt/atv/n;->da:Lcom/byazt/sy/x;

    if-eqz p1, :cond_3

    .line 22
    invoke-interface {p1}, Lcom/byazt/sy/x;->c()V

    :cond_3
    const-string p1, "uttieUrl"

    .line 23
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object p2

    iget-object p3, p0, Lcom/byazt/atv/n;->a:Lcom/byazt/ete/ic;

    invoke-virtual {p2, p3, p1}, Lcom/byazt/ukr/yp;->ve(Lcom/byazt/ete/ic;Ljava/lang/String;)V

    return-void

    :cond_4
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 25
    invoke-direct/range {v0 .. v5}, Lcom/byazt/atv/n;->c(Lcom/byazt/sz/m;Lcom/byazt/sz/rh$tt;Lcom/byazt/sz/rh$c;IZ)V

    :goto_0
    return-void
.end method

.method private tt(Lorg/json/JSONObject;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "type"

    .line 26
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/byazt/atv/n;->sl()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/byazt/wj/tt;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nodeId"

    .line 27
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/byazt/atv/n;->sl()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/byazt/wj/tt;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/byazt/atv/n;->ve:Lcom/byazt/xj/ve;

    if-nez v2, :cond_1

    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {v2, v2}, Lcom/byazt/xj/ve;->tt(Lcom/byazt/xj/ve;)Lcom/byazt/xj/ve;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/byazt/xj/ve;->uj(Ljava/lang/String;)Lcom/byazt/xj/ve;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "onDismiss"

    .line 30
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 p1, 0x8

    .line 31
    invoke-virtual {v1, p1}, Lcom/byazt/xj/ve;->tt(I)V

    return-void

    :cond_2
    const-string v2, "onShow"

    .line 32
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 p1, 0x0

    .line 33
    invoke-virtual {v1, p1}, Lcom/byazt/xj/ve;->tt(I)V

    return-void

    :cond_3
    const-string v1, "haptic"

    .line 34
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 35
    invoke-direct {p0, p1}, Lcom/byazt/atv/n;->ve(Lorg/json/JSONObject;)V

    return-void

    :cond_4
    const-string v1, "dismissScene"

    .line 36
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 37
    invoke-direct {p0, p1}, Lcom/byazt/atv/n;->n(Lorg/json/JSONObject;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private uj(Lcom/byazt/sz/m;Lcom/byazt/sz/rh$tt;Lcom/byazt/sz/rh$c;)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/byazt/atv/n;->z:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/atv/n;->z:Ljava/lang/ref/WeakReference;

    new-instance v1, Lcom/byazt/atv/n$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/byazt/atv/n$5;-><init>(Lcom/byazt/atv/n;Lcom/byazt/sz/m;Lcom/byazt/sz/rh$tt;Lcom/byazt/sz/rh$c;)V

    invoke-static {v0, v1}, Lcom/byazt/aas/or;->c(Ljava/lang/ref/WeakReference;Lcom/byazt/hkv/ve;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private uj(Lorg/json/JSONObject;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "params"

    .line 9
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string v0, "scene"

    .line 10
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "ugen_id"

    .line 11
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "ugen_md5"

    .line 12
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "ugen_url"

    .line 13
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "displayAreaAndroid"

    .line 14
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "render_sequence"

    .line 15
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    .line 16
    invoke-virtual/range {v1 .. v7}, Lcom/byazt/atv/n;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private uj(Lcom/byazt/sz/m;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/byazt/sz/m;->tt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/byazt/sz/m;->ve()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "lottieEvent"

    .line 6
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    return v2

    :cond_0
    return v0
.end method

.method private ve(Lcom/byazt/sz/m;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/byazt/sz/m;->ve()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "uttieUrl"

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "duration"

    .line 4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 5
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object p1

    iget-object v3, p0, Lcom/byazt/atv/n;->a:Lcom/byazt/ete/ic;

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/byazt/ukr/yp;->c(Lcom/byazt/ete/ic;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method private ve(Lcom/byazt/sz/m;Lcom/byazt/sz/rh$tt;Lcom/byazt/sz/rh$c;)V
    .locals 11

    .line 6
    iget-object v0, p0, Lcom/byazt/atv/n;->gt:Lcom/byazt/nr/zm;

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Lcom/byazt/nr/zm;

    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/atv/n;->sp:Lcom/byazt/atv/tt;

    .line 8
    invoke-virtual {v2}, Lcom/byazt/xl/u;->i()Z

    move-result v2

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/byazt/nr/zm;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/byazt/atv/n;->gt:Lcom/byazt/nr/zm;

    .line 9
    iget-object v1, p0, Lcom/byazt/atv/n;->a:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->ge()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/byazt/nr/zm;->c(F)V

    .line 10
    iget-object v0, p0, Lcom/byazt/atv/n;->gt:Lcom/byazt/nr/zm;

    iget-object v1, p0, Lcom/byazt/atv/n;->a:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->tw()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/byazt/nr/zm;->ve(F)V

    .line 11
    iget-object v0, p0, Lcom/byazt/atv/n;->gt:Lcom/byazt/nr/zm;

    iget-object v1, p0, Lcom/byazt/atv/n;->a:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->br()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/byazt/nr/zm;->tt(F)V

    .line 12
    iget-object v0, p0, Lcom/byazt/atv/n;->gt:Lcom/byazt/nr/zm;

    iget-object v1, p0, Lcom/byazt/atv/n;->a:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->lv()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/nr/zm;->c(Lorg/json/JSONObject;)V

    .line 13
    iget-object v0, p0, Lcom/byazt/atv/n;->gt:Lcom/byazt/nr/zm;

    iget-object v1, p0, Lcom/byazt/atv/n;->a:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->pe()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/nr/zm;->a(I)V

    .line 14
    iget-object v0, p0, Lcom/byazt/atv/n;->gt:Lcom/byazt/nr/zm;

    iget-object v1, p0, Lcom/byazt/atv/n;->a:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/nr/zm;->n(I)V

    .line 15
    iget-object v0, p0, Lcom/byazt/atv/n;->gt:Lcom/byazt/nr/zm;

    iget-object v1, p0, Lcom/byazt/atv/n;->a:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->yx()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/nr/zm;->tt(Lorg/json/JSONObject;)V

    .line 16
    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 17
    iget-object v9, p0, Lcom/byazt/atv/n;->gt:Lcom/byazt/nr/zm;

    new-instance v10, Lcom/byazt/atv/n$3;

    move-object v2, v10

    move-object v3, p0

    move-object v4, v1

    move-object v5, p2

    move-object v6, v0

    move-object v7, p1

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/byazt/atv/n$3;-><init>(Lcom/byazt/atv/n;[FLcom/byazt/sz/rh$tt;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/byazt/sz/m;Lcom/byazt/sz/rh$c;)V

    invoke-virtual {v9, v10}, Lcom/byazt/nr/zm;->c(Lcom/byazt/nr/zm$c;)V

    .line 18
    iget-object p3, p0, Lcom/byazt/atv/n;->gt:Lcom/byazt/nr/zm;

    new-instance v8, Lcom/byazt/atv/n$4;

    move-object v2, v8

    move-object v4, p1

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/byazt/atv/n$4;-><init>(Lcom/byazt/atv/n;Lcom/byazt/sz/m;Lcom/byazt/sz/rh$tt;Ljava/util/concurrent/atomic/AtomicBoolean;[F)V

    invoke-virtual {p3, v8}, Lcom/byazt/nr/zm;->c(Lcom/byazt/nr/zm$tt;)V

    .line 19
    iget-object p1, p0, Lcom/byazt/atv/n;->gt:Lcom/byazt/nr/zm;

    invoke-direct {p0}, Lcom/byazt/atv/n;->rh()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/byazt/nr/zm;->c(I)Z

    return-void
.end method

.method private ve(Lorg/json/JSONObject;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "params"

    .line 20
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/byazt/atv/n;->tt:Landroid/content/Context;

    iget-object v1, p0, Lcom/byazt/atv/n;->a:Lcom/byazt/ete/ic;

    invoke-static {p1, v0, v1}, Lcom/byazt/fx/ve;->c(Lorg/json/JSONObject;Landroid/content/Context;Lcom/byazt/ete/ic;)V

    return-void
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
    const-string v1, "VideoPlaceholder"

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
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/byazt/atv/n;->sp:Lcom/byazt/atv/tt;

    invoke-virtual {v0}, Lcom/byazt/xl/u;->n()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public c(JJ)V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/byazt/atv/n;->m:Lcom/byazt/xj/ve;

    instance-of v1, v0, Lcom/byazt/hnr/c;

    if-eqz v1, :cond_0

    .line 224
    check-cast v0, Lcom/byazt/hnr/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/byazt/hnr/c;->c(JJ)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/qdk/tt;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/atv/n;->u:Lcom/byazt/qdk/tt;

    return-void
.end method

.method public c(Lcom/byazt/sy/c;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/byazt/atv/n;->yv:Lcom/byazt/sy/c;

    return-void
.end method

.method public c(Lcom/byazt/sy/sp;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/byazt/atv/n;->rh:Lcom/byazt/sy/sp;

    return-void
.end method

.method public c(Lcom/byazt/sy/x;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/byazt/atv/n;->da:Lcom/byazt/sy/x;

    return-void
.end method

.method public c(Lcom/byazt/sz/m;Lcom/byazt/sz/rh$tt;Lcom/byazt/sz/rh$c;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 67
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/sz/m;->tt()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/atv/n;->ve(Lcom/byazt/sz/m;Lcom/byazt/sz/rh$tt;Lcom/byazt/sz/rh$c;)V

    goto/16 :goto_0

    .line 69
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/sz/m;->tt()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/atv/n;->uj(Lcom/byazt/sz/m;Lcom/byazt/sz/rh$tt;Lcom/byazt/sz/rh$c;)V

    goto/16 :goto_0

    .line 71
    :cond_2
    invoke-virtual {p1}, Lcom/byazt/sz/m;->tt()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    .line 72
    invoke-virtual {p1}, Lcom/byazt/sz/m;->ve()Lorg/json/JSONObject;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/byazt/atv/n;->tt(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 73
    :cond_3
    invoke-virtual {p1}, Lcom/byazt/sz/m;->tt()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 74
    invoke-virtual {p1}, Lcom/byazt/sz/m;->ve()Lorg/json/JSONObject;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/byazt/atv/n;->c(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 75
    :cond_4
    invoke-virtual {p1}, Lcom/byazt/sz/m;->tt()I

    move-result v0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_5

    .line 76
    invoke-direct {p0, p1}, Lcom/byazt/atv/n;->tt(Lcom/byazt/sz/m;)V

    goto :goto_0

    .line 77
    :cond_5
    invoke-virtual {p1}, Lcom/byazt/sz/m;->tt()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_6

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/atv/n;->tt(Lcom/byazt/sz/m;Lcom/byazt/sz/rh$tt;Lcom/byazt/sz/rh$c;)V

    .line 79
    invoke-direct {p0, p1}, Lcom/byazt/atv/n;->ve(Lcom/byazt/sz/m;)V

    goto :goto_0

    .line 80
    :cond_6
    invoke-virtual {p1}, Lcom/byazt/sz/m;->tt()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_7

    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/atv/n;->tt(Lcom/byazt/sz/m;Lcom/byazt/sz/rh$tt;Lcom/byazt/sz/rh$c;)V

    goto :goto_0

    .line 82
    :cond_7
    invoke-direct {p0, p1}, Lcom/byazt/atv/n;->uj(Lcom/byazt/sz/m;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/atv/n;->tt(Lcom/byazt/sz/m;Lcom/byazt/sz/rh$tt;Lcom/byazt/sz/rh$c;)V

    goto :goto_0

    .line 84
    :cond_8
    invoke-virtual {p1}, Lcom/byazt/sz/m;->tt()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_9

    .line 85
    invoke-direct {p0, p1}, Lcom/byazt/atv/n;->c(Lcom/byazt/sz/m;)V

    goto :goto_0

    :cond_9
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 86
    invoke-direct/range {v2 .. v7}, Lcom/byazt/atv/n;->c(Lcom/byazt/sz/m;Lcom/byazt/sz/rh$tt;Lcom/byazt/sz/rh$c;IZ)V

    .line 87
    :goto_0
    invoke-virtual {p1}, Lcom/byazt/sz/m;->ve()Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 88
    invoke-virtual {p1}, Lcom/byazt/sz/m;->ve()Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "next"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 89
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 90
    new-instance p2, Lcom/byazt/sz/m;

    invoke-direct {p2}, Lcom/byazt/sz/m;-><init>()V

    const/4 p3, 0x1

    .line 91
    invoke-virtual {p2, p3}, Lcom/byazt/sz/m;->c(I)V

    .line 92
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/byazt/sz/m;->c(Lorg/json/JSONObject;)V

    .line 93
    iget-object p1, p0, Lcom/byazt/atv/n;->ve:Lcom/byazt/xj/ve;

    invoke-virtual {p2, p1}, Lcom/byazt/sz/m;->c(Lcom/byazt/xj/ve;)V

    const/4 p1, 0x0

    .line 94
    invoke-virtual {p0, p2, p1, p1}, Lcom/byazt/atv/n;->c(Lcom/byazt/sz/m;Lcom/byazt/sz/rh$tt;Lcom/byazt/sz/rh$c;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_a
    return-void
.end method

.method public c(Lcom/byazt/sz/x;)V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/byazt/atv/n;->t:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Lcom/byazt/xj/ve;Landroid/view/MotionEvent;)V
    .locals 2

    .line 239
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    iget-object p1, p0, Lcom/byazt/atv/n;->yp:Lcom/byazt/ete/da;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/byazt/ete/da;->ve(F)V

    .line 241
    iget-object p1, p0, Lcom/byazt/atv/n;->yp:Lcom/byazt/ete/da;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/byazt/ete/da;->uj(F)V

    .line 242
    iget-object p1, p0, Lcom/byazt/atv/n;->yp:Lcom/byazt/ete/da;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/byazt/ete/da;->tt(J)V

    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object p1, p0, Lcom/byazt/atv/n;->yp:Lcom/byazt/ete/da;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/byazt/ete/da;->n(I)V

    .line 244
    iget-object p1, p0, Lcom/byazt/atv/n;->yp:Lcom/byazt/ete/da;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/byazt/ete/da;->a(I)V

    .line 245
    iget-object p1, p0, Lcom/byazt/atv/n;->yp:Lcom/byazt/ete/da;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/byazt/ete/da;->c(F)V

    .line 246
    iget-object p1, p0, Lcom/byazt/atv/n;->yp:Lcom/byazt/ete/da;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/byazt/ete/da;->tt(F)V

    .line 247
    iget-object p1, p0, Lcom/byazt/atv/n;->yp:Lcom/byazt/ete/da;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/byazt/ete/da;->c(J)V

    .line 248
    iget-object p1, p0, Lcom/byazt/atv/n;->yp:Lcom/byazt/ete/da;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/byazt/ete/da;->tt(I)V

    .line 249
    iget-object p1, p0, Lcom/byazt/atv/n;->yp:Lcom/byazt/ete/da;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/byazt/ete/da;->ve(I)V

    .line 250
    iget-object p1, p0, Lcom/byazt/atv/n;->yp:Lcom/byazt/ete/da;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/byazt/ete/da;->uj(I)V

    return-void
.end method

.method public c(Lcom/byazt/xj/ve;Ljava/lang/String;Lcom/byazt/pm/a$c;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Lcom/byazt/xl/sp;)V
    .locals 8

    .line 17
    iget-object v0, p0, Lcom/byazt/atv/n;->sp:Lcom/byazt/atv/tt;

    invoke-virtual {v0}, Lcom/byazt/atv/tt;->or()Lcom/byazt/sz/qy;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/sz/qy;->c()V

    .line 18
    invoke-virtual {p0}, Lcom/byazt/atv/n;->c()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/atv/n;->uj:Lorg/json/JSONObject;

    .line 19
    invoke-virtual {p0}, Lcom/byazt/atv/n;->sl()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/atv/n;->n:Lorg/json/JSONObject;

    .line 20
    iget-object v1, p0, Lcom/byazt/atv/n;->uj:Lorg/json/JSONObject;

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 21
    :cond_0
    invoke-virtual {p0, p1}, Lcom/byazt/atv/n;->tt(Lcom/byazt/xl/sp;)V

    .line 22
    iget-object v0, p0, Lcom/byazt/atv/n;->ve:Lcom/byazt/xj/ve;

    if-eqz v0, :cond_a

    .line 23
    new-instance v0, Lcom/byazt/atv/ve;

    invoke-direct {v0}, Lcom/byazt/atv/ve;-><init>()V

    iput-object v0, p0, Lcom/byazt/atv/n;->sl:Lcom/byazt/xl/yp;

    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, v1}, Lcom/byazt/xl/yp;->c(Z)V

    .line 25
    iget-object v0, p0, Lcom/byazt/atv/n;->sl:Lcom/byazt/xl/yp;

    invoke-virtual {p0}, Lcom/byazt/atv/n;->ve()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/xl/yp;->c(I)V

    .line 26
    invoke-virtual {p0}, Lcom/byazt/atv/n;->a()Lcom/byazt/xj/ve;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/atv/n;->m:Lcom/byazt/xj/ve;

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/byazt/hnr/c;

    if-eqz v1, :cond_1

    .line 28
    iget-object v1, p0, Lcom/byazt/atv/n;->sl:Lcom/byazt/xl/yp;

    check-cast v1, Lcom/byazt/atv/ve;

    invoke-virtual {v0}, Lcom/byazt/xj/ve;->i()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Lcom/byazt/atv/ve;->c(Landroid/widget/FrameLayout;)V

    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/atv/n;->x()Lcom/byazt/xj/ve;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/atv/n;->nu:Lcom/byazt/xj/ve;

    if-eqz v0, :cond_2

    .line 30
    instance-of v1, v0, Lcom/byazt/dy/c;

    if-eqz v1, :cond_2

    .line 31
    iget-object v1, p0, Lcom/byazt/atv/n;->sl:Lcom/byazt/xl/yp;

    check-cast v1, Lcom/byazt/atv/ve;

    invoke-virtual {v0}, Lcom/byazt/xj/ve;->i()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Lcom/byazt/atv/ve;->tt(Landroid/widget/FrameLayout;)V

    .line 32
    :cond_2
    iget-object v0, p0, Lcom/byazt/atv/n;->sl:Lcom/byazt/xl/yp;

    instance-of v1, v0, Lcom/byazt/atv/ve;

    if-eqz v1, :cond_3

    .line 33
    check-cast v0, Lcom/byazt/atv/ve;

    iget-object v1, p0, Lcom/byazt/atv/n;->rl:Lcom/byazt/qmz/c;

    invoke-virtual {v0, v1}, Lcom/byazt/atv/ve;->c(Lcom/byazt/qmz/c;)V

    .line 34
    :cond_3
    iget-object v0, p0, Lcom/byazt/atv/n;->x:Lcom/byazt/atv/UGTimerContainer;

    iget-object v1, p0, Lcom/byazt/atv/n;->rl:Lcom/byazt/qmz/c;

    invoke-virtual {v0, v1}, Lcom/byazt/atv/UGTimerContainer;->setTimerHolder(Lcom/byazt/qmz/c;)V

    .line 35
    iget-object v0, p0, Lcom/byazt/atv/n;->ve:Lcom/byazt/xj/ve;

    invoke-virtual {v0}, Lcom/byazt/xj/ve;->or()I

    move-result v0

    .line 36
    iget-object v1, p0, Lcom/byazt/atv/n;->ve:Lcom/byazt/xj/ve;

    invoke-virtual {v1}, Lcom/byazt/xj/ve;->cu()I

    move-result v1

    .line 37
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/byazt/atv/n;->qy:Ljava/util/List;

    .line 38
    iget-object v4, p0, Lcom/byazt/atv/n;->ve:Lcom/byazt/xj/ve;

    invoke-direct {p0, v4, v3}, Lcom/byazt/atv/n;->c(Lcom/byazt/xj/ve;Ljava/util/List;)V

    .line 39
    iget-object v3, p0, Lcom/byazt/atv/n;->ve:Lcom/byazt/xj/ve;

    invoke-virtual {v3}, Lcom/byazt/xj/ve;->i()Landroid/view/View;

    move-result-object v3

    .line 40
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_4

    .line 41
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 42
    :cond_4
    iget-object v3, p0, Lcom/byazt/atv/n;->x:Lcom/byazt/atv/UGTimerContainer;

    iget-object v4, p0, Lcom/byazt/atv/n;->ve:Lcom/byazt/xj/ve;

    invoke-virtual {v4}, Lcom/byazt/xj/ve;->i()Landroid/view/View;

    move-result-object v4

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    iget-object v0, p0, Lcom/byazt/atv/n;->sp:Lcom/byazt/atv/tt;

    invoke-virtual {v0}, Lcom/byazt/atv/tt;->d()F

    move-result v0

    .line 44
    iget-object v1, p0, Lcom/byazt/atv/n;->sp:Lcom/byazt/atv/tt;

    invoke-virtual {v1}, Lcom/byazt/atv/tt;->eo()F

    move-result v1

    .line 45
    iget-object v3, p0, Lcom/byazt/atv/n;->tt:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    .line 46
    iget-object v3, p0, Lcom/byazt/atv/n;->tt:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    .line 47
    iget-object v4, p0, Lcom/byazt/atv/n;->tt:Landroid/content/Context;

    invoke-static {v4}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;)I

    move-result v4

    .line 48
    iget-object v5, p0, Lcom/byazt/atv/n;->tt:Landroid/content/Context;

    invoke-static {v5}, Lcom/byazt/aas/pf;->x(Landroid/content/Context;)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/byazt/atv/n;->tt:Landroid/content/Context;

    invoke-static {v6}, Lcom/byazt/aas/pf;->da(Landroid/content/Context;)F

    move-result v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v4, v4

    cmpl-float v6, v0, v4

    if-lez v6, :cond_5

    move v0, v4

    :cond_5
    int-to-float v4, v5

    cmpl-float v5, v3, v4

    if-lez v5, :cond_6

    move v3, v4

    :cond_6
    const/4 v4, 0x0

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_7

    .line 49
    iget-object v4, p0, Lcom/byazt/atv/n;->x:Lcom/byazt/atv/UGTimerContainer;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    float-to-int v6, v0

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 50
    :cond_7
    iget-object v4, p0, Lcom/byazt/atv/n;->x:Lcom/byazt/atv/UGTimerContainer;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    float-to-int v6, v0

    float-to-int v7, v3

    invoke-direct {v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    if-gtz v1, :cond_8

    float-to-int v0, v0

    const/high16 v1, -0x80000000

    .line 51
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    .line 52
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 53
    iget-object v3, p0, Lcom/byazt/atv/n;->x:Lcom/byazt/atv/UGTimerContainer;

    invoke-virtual {v3, v0, v1}, Landroid/view/View;->measure(II)V

    .line 54
    iget-object v0, p0, Lcom/byazt/atv/n;->tt:Landroid/content/Context;

    iget-object v1, p0, Lcom/byazt/atv/n;->x:Lcom/byazt/atv/UGTimerContainer;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;F)I

    move-result v0

    .line 55
    iget-object v1, p0, Lcom/byazt/atv/n;->tt:Landroid/content/Context;

    iget-object v3, p0, Lcom/byazt/atv/n;->x:Lcom/byazt/atv/UGTimerContainer;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v1, v3}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;F)I

    move-result v1

    .line 56
    iget-object v3, p0, Lcom/byazt/atv/n;->sl:Lcom/byazt/xl/yp;

    int-to-double v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/byazt/xl/yp;->c(D)V

    .line 57
    iget-object v0, p0, Lcom/byazt/atv/n;->sl:Lcom/byazt/xl/yp;

    int-to-double v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/byazt/xl/yp;->tt(D)V

    goto :goto_1

    .line 58
    :cond_8
    iget-object v1, p0, Lcom/byazt/atv/n;->sl:Lcom/byazt/xl/yp;

    iget-object v4, p0, Lcom/byazt/atv/n;->tt:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;F)I

    move-result v0

    int-to-double v4, v0

    invoke-virtual {v1, v4, v5}, Lcom/byazt/xl/yp;->c(D)V

    .line 59
    iget-object v0, p0, Lcom/byazt/atv/n;->sl:Lcom/byazt/xl/yp;

    iget-object v1, p0, Lcom/byazt/atv/n;->tt:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;F)I

    move-result v1

    int-to-double v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/byazt/xl/yp;->tt(D)V

    .line 60
    :goto_1
    iget-object v0, p0, Lcom/byazt/atv/n;->my:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x89

    .line 61
    invoke-interface {p1, v0, v2}, Lcom/byazt/xl/sp;->c(ILjava/lang/String;)V

    return-void

    .line 62
    :cond_9
    iget-object v0, p0, Lcom/byazt/atv/n;->x:Lcom/byazt/atv/UGTimerContainer;

    iget-object v1, p0, Lcom/byazt/atv/n;->sl:Lcom/byazt/xl/yp;

    invoke-interface {p1, v0, v1}, Lcom/byazt/xl/sp;->c(Landroid/view/View;Lcom/byazt/xl/yp;)V

    return-void

    :cond_a
    const/16 v0, 0x8a

    .line 63
    invoke-interface {p1, v0, v2}, Lcom/byazt/xl/sp;->c(ILjava/lang/String;)V

    return-void

    :cond_b
    :goto_2
    const/16 v0, 0x85

    .line 64
    invoke-interface {p1, v0, v2}, Lcom/byazt/xl/sp;->c(ILjava/lang/String;)V

    return-void
.end method

.method public c(Lcom/byazt/xl/x;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/byazt/atv/n;->i:Lcom/byazt/xl/x;

    return-void
.end method

.method public c(Ljava/lang/CharSequence;IIZ)V
    .locals 3

    .line 225
    iget-object p2, p0, Lcom/byazt/atv/n;->ve:Lcom/byazt/xj/ve;

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "count_down_skip_container"

    .line 226
    invoke-virtual {p2, v0}, Lcom/byazt/xj/ve;->uj(Ljava/lang/String;)Lcom/byazt/xj/ve;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 227
    invoke-virtual {p2}, Lcom/byazt/xj/ve;->i()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 228
    invoke-virtual {p2}, Lcom/byazt/xj/ve;->i()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 229
    :cond_1
    iget-object p2, p0, Lcom/byazt/atv/n;->ve:Lcom/byazt/xj/ve;

    const-string v1, "count_down"

    invoke-virtual {p2, v1}, Lcom/byazt/xj/ve;->uj(Ljava/lang/String;)Lcom/byazt/xj/ve;

    move-result-object p2

    .line 230
    iget-object v1, p0, Lcom/byazt/atv/n;->ve:Lcom/byazt/xj/ve;

    const-string v2, "skip"

    invoke-virtual {v1, v2}, Lcom/byazt/xj/ve;->uj(Ljava/lang/String;)Lcom/byazt/xj/ve;

    move-result-object v1

    .line 231
    instance-of v2, p2, Lcom/byazt/sm/tt;

    if-eqz v2, :cond_5

    instance-of v2, v1, Lcom/byazt/sm/tt;

    if-eqz v2, :cond_5

    const-string v2, "s "

    if-nez p3, :cond_4

    const-string p3, "0"

    .line 232
    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    if-eqz p4, :cond_2

    goto :goto_0

    .line 233
    :cond_2
    check-cast p2, Lcom/byazt/sm/tt;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/byazt/sm/tt;->t(Ljava/lang/String;)V

    .line 234
    check-cast v1, Lcom/byazt/sm/tt;

    const-string p1, "| \u8df3\u8fc7"

    invoke-virtual {v1, p1}, Lcom/byazt/sm/tt;->t(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v1}, Lcom/byazt/xj/ve;->i()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/byazt/sm/UGTextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 236
    :cond_3
    :goto_0
    check-cast p2, Lcom/byazt/sm/tt;

    invoke-virtual {p2}, Lcom/byazt/xj/ve;->i()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/byazt/sm/UGTextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 237
    check-cast v1, Lcom/byazt/sm/tt;

    const-string p1, "\u8df3\u8fc7"

    invoke-virtual {v1, p1}, Lcom/byazt/sm/tt;->t(Ljava/lang/String;)V

    return-void

    .line 238
    :cond_4
    check-cast p2, Lcom/byazt/sm/tt;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/byazt/sm/tt;->t(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 217
    invoke-virtual {p0}, Lcom/byazt/atv/n;->sl()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/byazt/wj/tt;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "scene1"

    .line 218
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 219
    iget-object p1, p0, Lcom/byazt/atv/n;->rh:Lcom/byazt/sy/sp;

    if-eqz p1, :cond_0

    .line 220
    invoke-interface {p1}, Lcom/byazt/sy/sp;->n()V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 202
    invoke-virtual {p0}, Lcom/byazt/atv/n;->sl()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/byazt/wj/tt;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 203
    invoke-virtual {p0}, Lcom/byazt/atv/n;->sl()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/byazt/wj/tt;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-virtual {p0}, Lcom/byazt/atv/n;->sl()Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/byazt/wj/tt;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    .line 205
    invoke-virtual {p0}, Lcom/byazt/atv/n;->sl()Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {p4, p2}, Lcom/byazt/wj/tt;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    .line 206
    invoke-virtual {p0}, Lcom/byazt/atv/n;->sl()Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {p5, p2}, Lcom/byazt/wj/tt;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    .line 207
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, p2

    goto :goto_0

    :catch_0
    const/4 p2, 0x0

    const/4 v4, 0x0

    .line 208
    :goto_0
    invoke-virtual {p0}, Lcom/byazt/atv/n;->sl()Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {p6, p2}, Lcom/byazt/wj/tt;->c(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    .line 209
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v5, p2

    goto :goto_1

    :catch_1
    const/4 p2, 0x2

    const/4 v5, 0x2

    .line 210
    :goto_1
    invoke-direct {p0, p1, v4}, Lcom/byazt/atv/n;->c(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 211
    :cond_0
    iget-object p1, p0, Lcom/byazt/atv/n;->ve:Lcom/byazt/xj/ve;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/byazt/xj/ve;->i()Landroid/view/View;

    move-result-object p1

    goto :goto_2

    :cond_1
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_4

    .line 212
    iget-object p2, p0, Lcom/byazt/atv/n;->a:Lcom/byazt/ete/ic;

    if-nez p2, :cond_2

    goto :goto_3

    :cond_2
    const/4 v6, 0x5

    .line 213
    invoke-static/range {v1 .. v6}, Lcom/byazt/sy/uj;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Lcom/byazt/ete/ir;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 214
    invoke-virtual {p2}, Lcom/byazt/ete/ir;->t()Z

    move-result p3

    if-nez p3, :cond_3

    goto :goto_3

    .line 215
    :cond_3
    new-instance p3, Lcom/byazt/ma/n;

    iget-object p4, p0, Lcom/byazt/atv/n;->a:Lcom/byazt/ete/ic;

    iget-object p5, p0, Lcom/byazt/atv/n;->yv:Lcom/byazt/sy/c;

    invoke-direct {p3, p4, p5, p2}, Lcom/byazt/ma/n;-><init>(Lcom/byazt/ete/ic;Lcom/byazt/sy/c;Lcom/byazt/ete/ir;)V

    iput-object p3, p0, Lcom/byazt/atv/n;->zm:Lcom/byazt/ma/n;

    .line 216
    invoke-virtual {p3, p1}, Lcom/byazt/ma/n;->c(Landroid/view/View;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/byazt/atv/n;->my:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public da()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/atv/n;->md:Z

    .line 2
    .line 3
    return v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/xj/ve<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/atv/n;->qy:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/atv/n;->p:Lcom/byazt/xyr/sp;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/xyr/sp;->c()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public n()[F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/atv/n;->ve:Lcom/byazt/xj/ve;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "InteractContainerView"

    .line 2
    invoke-virtual {v0, v2}, Lcom/byazt/xj/ve;->n(Ljava/lang/String;)Lcom/byazt/xj/ve;

    move-result-object v0

    .line 3
    instance-of v2, v0, Lcom/byazt/sy/sl;

    if-eqz v2, :cond_1

    .line 4
    check-cast v0, Lcom/byazt/sy/sl;

    .line 5
    invoke-virtual {v0}, Lcom/byazt/sy/sl;->q()[F

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public nu()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/atv/n;->p:Lcom/byazt/xyr/sp;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/xyr/sp;->c()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSoundMute(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/atv/n;->ve:Lcom/byazt/xj/ve;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v1, "mute_image"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/byazt/xj/ve;->uj(Ljava/lang/String;)Lcom/byazt/xj/ve;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lcom/byazt/atv/n;->gu:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    move-object p1, v0

    .line 25
    check-cast p1, Lcom/byazt/vn/tt;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/byazt/atv/n;->gu:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Lcom/byazt/vn/tt;->t(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object p1, p0, Lcom/byazt/atv/n;->gr:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_2

    .line 40
    .line 41
    move-object p1, v0

    .line 42
    check-cast p1, Lcom/byazt/vn/tt;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/byazt/atv/n;->gr:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Lcom/byazt/vn/tt;->t(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/byazt/xj/ve;->tt()V

    .line 50
    .line 51
    .line 52
    :cond_3
    return-void
.end method

.method public sl()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/atv/n;->sp:Lcom/byazt/atv/tt;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/atv/tt;->zb()Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public sp()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/atv/n;->x:Lcom/byazt/atv/UGTimerContainer;

    .line 2
    .line 3
    return-object v0
.end method

.method public t()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/atv/n;->my:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/atv/n;->gt:Lcom/byazt/nr/zm;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/byazt/atv/n;->rh()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/byazt/nr/zm;->tt(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/byazt/atv/n;->rl:Lcom/byazt/qmz/c;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/byazt/qmz/c;->tt()V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/byazt/atv/n;->t:Ljava/util/List;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 30
    .line 31
    .line 32
    :cond_2
    return-void
.end method

.method public tt(Lcom/byazt/xl/sp;)V
    .locals 1

    .line 8
    iget-object p1, p0, Lcom/byazt/atv/n;->c:Lcom/byazt/sz/z;

    invoke-virtual {p1, p0}, Lcom/byazt/sz/z;->c(Lcom/byazt/sz/rh;)V

    .line 9
    iget-object p1, p0, Lcom/byazt/atv/n;->c:Lcom/byazt/sz/z;

    invoke-virtual {p1, p0}, Lcom/byazt/sz/z;->c(Lcom/byazt/sz/gt;)V

    .line 10
    iget-object p1, p0, Lcom/byazt/atv/n;->c:Lcom/byazt/sz/z;

    iget-object v0, p0, Lcom/byazt/atv/n;->uj:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lcom/byazt/sz/z;->c(Lorg/json/JSONObject;)Lcom/byazt/xj/ve;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/atv/n;->ve:Lcom/byazt/xj/ve;

    .line 11
    iget-object p1, p0, Lcom/byazt/atv/n;->sp:Lcom/byazt/atv/tt;

    invoke-virtual {p1}, Lcom/byazt/atv/tt;->or()Lcom/byazt/sz/qy;

    move-result-object p1

    invoke-interface {p1}, Lcom/byazt/sz/qy;->tt()V

    .line 12
    iget-object p1, p0, Lcom/byazt/atv/n;->sp:Lcom/byazt/atv/tt;

    invoke-virtual {p1}, Lcom/byazt/atv/tt;->or()Lcom/byazt/sz/qy;

    move-result-object p1

    invoke-interface {p1}, Lcom/byazt/sz/qy;->ve()V

    .line 13
    iget-object p1, p0, Lcom/byazt/atv/n;->c:Lcom/byazt/sz/z;

    iget-object v0, p0, Lcom/byazt/atv/n;->n:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lcom/byazt/sz/z;->tt(Lorg/json/JSONObject;)V

    return-void
.end method

.method public tt()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/atv/n;->sp:Lcom/byazt/atv/tt;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcom/byazt/atv/n;->sp:Lcom/byazt/atv/tt;

    invoke-virtual {v2}, Lcom/byazt/atv/tt;->qp()I

    move-result v2

    .line 4
    instance-of v3, p0, Lcom/byazt/atv/sp;

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->bp()Z

    move-result v0

    return v0

    :cond_1
    const/4 v4, 0x2

    if-eqz v3, :cond_2

    if-ne v2, v4, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->ph()Z

    move-result v0

    return v0

    :cond_2
    if-nez v3, :cond_3

    if-ne v2, v4, :cond_3

    .line 7
    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->dr()Z

    move-result v0

    return v0

    :cond_3
    return v1
.end method

.method public u()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/atv/n;->ve:Lcom/byazt/xj/ve;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v1, "corver_container"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/byazt/xj/ve;->uj(Ljava/lang/String;)Lcom/byazt/xj/ve;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/byazt/xj/ve;->i()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/byazt/xj/ve;->i()Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public uj()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/atv/n;->qy:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/byazt/atv/n;->qy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/xj/ve;

    .line 3
    invoke-virtual {v1}, Lcom/byazt/xj/ve;->ic()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public ve()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/atv/n;->a:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/pu;->tt(Lcom/byazt/ete/ic;)I

    move-result v0

    return v0
.end method

.method public x()Lcom/byazt/xj/ve;
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
    const-string v1, "PlayableComponent"

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

.method public yp()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/atv/n;->ve:Lcom/byazt/xj/ve;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v1, "corver_container"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/byazt/xj/ve;->uj(Ljava/lang/String;)Lcom/byazt/xj/ve;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/byazt/xj/ve;->i()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/byazt/xj/ve;->i()Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/16 v1, 0x8

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public z()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/atv/n;->ve:Lcom/byazt/xj/ve;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/byazt/atv/n;->p:Lcom/byazt/xyr/sp;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Lcom/byazt/xyr/sp;->c(Lcom/byazt/xj/ve;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
