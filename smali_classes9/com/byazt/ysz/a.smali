.class public abstract Lcom/byazt/ysz/a;
.super Lcom/byazt/ysz/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x24d,
        0x22
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/ysz/a$c;
    }
.end annotation


# instance fields
.field public volatile a:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/byazt/ete/ic;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljava/lang/String;

.field public uj:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/ysz/c;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c(Landroid/content/Context;Lcom/byazt/eia/i;ILjava/lang/String;Ljava/util/Map;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/byazt/eia/i;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "openLive key:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p5}, Lcom/byazt/ppf/ve;->c(Ljava/lang/Object;Ljava/util/Map;)Lcom/byazt/ete/ic;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->lw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTLiveSDkBridge"

    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/byazt/ysz/c;->c:Ljava/util/function/Function;

    if-eqz v0, :cond_7

    .line 44
    new-instance v0, Lcom/byazt/aas/zb;

    invoke-direct {v0}, Lcom/byazt/aas/zb;-><init>()V

    const-string v1, "context"

    .line 45
    invoke-virtual {v0, v1, p1}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object v0

    const-string v1, "bundle"

    .line 46
    invoke-direct {p0, p1, p2, p5}, Lcom/byazt/ysz/a;->tt(Landroid/content/Context;Lcom/byazt/eia/i;Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/byazt/ysz/c;->c:Ljava/util/function/Function;

    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object v2

    const/4 v3, 0x0

    .line 48
    invoke-virtual {v2, v3}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    move-result-object v2

    const-class v4, Ljava/lang/Integer;

    invoke-virtual {v2, v4}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    move-result-object v2

    .line 49
    invoke-virtual {v2, v3, v0}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object v0

    .line 50
    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 52
    :goto_0
    iput-object p4, p0, Lcom/byazt/ysz/c;->tt:Ljava/lang/String;

    .line 53
    invoke-interface {p2}, Lcom/byazt/eia/i;->rl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/byazt/ysz/a;->uj:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 54
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-static {p2, p5}, Lcom/byazt/ppf/ve;->c(Ljava/lang/Object;Ljava/util/Map;)Lcom/byazt/ete/ic;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/byazt/ysz/a;->a:Ljava/lang/ref/SoftReference;

    .line 55
    invoke-static {p5}, Lcom/byazt/wu/ve;->c(Ljava/util/Map;)I

    move-result v1

    const/16 v2, 0x65

    if-eq v1, v2, :cond_3

    const/16 v2, 0x66

    if-ne v1, v2, :cond_1

    goto :goto_2

    .line 56
    :cond_1
    invoke-virtual {p0, p2, v1}, Lcom/byazt/ysz/c;->c(Lcom/byazt/eia/i;I)Z

    move-result v2

    const/4 v4, 0x2

    if-eqz v2, :cond_2

    .line 57
    invoke-virtual {p0, p2}, Lcom/byazt/ysz/c;->tt(Lcom/byazt/eia/i;)I

    move-result v3

    const/4 p3, 0x7

    if-nez v3, :cond_6

    .line 58
    :try_start_0
    new-instance v2, Lcom/byazt/glq/c;

    invoke-direct {v2}, Lcom/byazt/glq/c;-><init>()V

    invoke-virtual {v2, p4}, Lcom/byazt/glq/c;->c(Ljava/lang/String;)Lcom/byazt/glq/c;

    move-result-object v2

    .line 59
    invoke-virtual {v2, p1, p5, p2}, Lcom/byazt/glq/c;->c(Landroid/content/Context;Ljava/util/Map;Lcom/byazt/eia/i;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    shl-int/lit8 p1, v1, 0x8

    or-int/2addr v0, p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 60
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :goto_1
    const/4 v4, 0x7

    goto :goto_4

    .line 61
    :cond_2
    invoke-interface {p2}, Lcom/byazt/eia/i;->n()I

    move-result p1

    const/16 v1, 0x9

    if-ne p1, v1, :cond_5

    goto :goto_4

    :cond_3
    :goto_2
    shl-int/lit8 p1, v1, 0x8

    or-int/2addr v0, p1

    goto :goto_3

    :cond_4
    const/4 v3, 0x3

    :cond_5
    :goto_3
    move v4, p3

    :cond_6
    :goto_4
    move v7, p3

    move v9, v3

    move v8, v4

    goto :goto_5

    :cond_7
    const/4 v3, 0x1

    const/4 v0, 0x4

    move v7, p3

    move v8, v7

    const/4 v9, 0x1

    .line 62
    :goto_5
    invoke-static {p2, p5}, Lcom/byazt/ppf/ve;->c(Ljava/lang/Object;Ljava/util/Map;)Lcom/byazt/ete/ic;

    move-result-object v5

    move-object v4, p0

    move-object v6, p4

    invoke-virtual/range {v4 .. v9}, Lcom/byazt/ysz/c;->c(Lcom/byazt/ete/ic;Ljava/lang/String;III)V

    return v0
.end method

.method public static synthetic c(Lcom/byazt/ysz/a;Landroid/content/Context;Lcom/byazt/eia/i;ILjava/lang/String;Ljava/util/Map;)I
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Lcom/byazt/ysz/a;->c(Landroid/content/Context;Lcom/byazt/eia/i;ILjava/lang/String;Ljava/util/Map;)I

    move-result p0

    return p0
.end method

.method public static c(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    .line 71
    sget-object p0, Lcom/bytedance/android/metrics/EnterFromMerge;->AD_UNION_EXCITATION:Lcom/bytedance/android/metrics/EnterFromMerge;

    invoke-virtual {p0}, Lcom/bytedance/android/metrics/EnterFromMerge;->lowerName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    .line 72
    sget-object p0, Lcom/bytedance/android/metrics/EnterFromMerge;->AD_UNION_INSERT:Lcom/bytedance/android/metrics/EnterFromMerge;

    invoke-virtual {p0}, Lcom/bytedance/android/metrics/EnterFromMerge;->lowerName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v0, 0x5

    if-ne p0, v0, :cond_2

    .line 73
    sget-object p0, Lcom/bytedance/android/metrics/EnterFromMerge;->AD_UNION_FEED:Lcom/bytedance/android/metrics/EnterFromMerge;

    invoke-virtual {p0}, Lcom/bytedance/android/metrics/EnterFromMerge;->lowerName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 v0, 0x9

    if-ne p0, v0, :cond_3

    .line 74
    sget-object p0, Lcom/bytedance/android/metrics/EnterFromMerge;->AD_UNION_DRAW:Lcom/bytedance/android/metrics/EnterFromMerge;

    invoke-virtual {p0}, Lcom/bytedance/android/metrics/EnterFromMerge;->lowerName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    const-string p0, "ad_union_banner"

    return-object p0

    :cond_4
    const/4 v0, 0x3

    if-eq p0, v0, :cond_8

    const/4 v0, 0x4

    if-ne p0, v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    if-ne p0, v0, :cond_6

    const-string p0, "ad_union_former_insert"

    return-object p0

    :cond_6
    const/4 v0, 0x6

    if-ne p0, v0, :cond_7

    const-string p0, "ad_union_patch"

    return-object p0

    .line 75
    :cond_7
    sget-object p0, Lcom/bytedance/android/metrics/EnterFromMerge;->NO_VALUE:Lcom/bytedance/android/metrics/EnterFromMerge;

    invoke-virtual {p0}, Lcom/bytedance/android/metrics/EnterFromMerge;->lowerName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    :goto_0
    const-string p0, "ad_union_topview"

    return-object p0
.end method

.method private c(Lorg/json/JSONArray;Lcom/byazt/eia/i;)V
    .locals 7

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 63
    :cond_0
    invoke-interface {p2}, Lcom/byazt/eia/i;->rl()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/byazt/fri/c;

    invoke-static {v0, v1}, Lcom/byazt/omf/rl;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/fri/c;

    if-eqz v0, :cond_3

    .line 64
    iget-object v1, v0, Lcom/byazt/fri/c;->tt:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 65
    :cond_1
    invoke-interface {p2}, Lcom/byazt/eia/i;->uj()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    .line 66
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 67
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "type"

    .line 68
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 69
    iget-object v4, v0, Lcom/byazt/fri/c;->tt:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "status"

    const/4 v4, 0x1

    .line 70
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private tt(Landroid/content/Context;Lcom/byazt/eia/i;Ljava/util/Map;)Landroid/os/Bundle;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/byazt/eia/i;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "pangle_live_room_data"

    const-string v5, "log_extra"

    const-string v6, "enter_request"

    .line 2
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const/4 v8, 0x1

    if-eqz v2, :cond_20

    :try_start_0
    const-string v0, "room_id"

    .line 3
    invoke-interface/range {p2 .. p2}, Lcom/byazt/eia/i;->da()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v7, v0, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 5
    :goto_0
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 6
    invoke-interface/range {p2 .. p2}, Lcom/byazt/eia/i;->yp()Lcom/byazt/ete/nu;

    move-result-object v0

    .line 7
    invoke-interface/range {p2 .. p2}, Lcom/byazt/eia/i;->n()I

    move-result v10

    const/16 v11, 0x9

    if-ne v10, v11, :cond_1

    .line 8
    invoke-interface/range {p2 .. p2}, Lcom/byazt/eia/i;->D_()Lcom/byazt/ete/kk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    invoke-interface/range {p2 .. p2}, Lcom/byazt/eia/i;->D_()Lcom/byazt/ete/kk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ete/kk;->ve()Lcom/byazt/ete/nu;

    move-result-object v0

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    move-object v10, v0

    .line 10
    :goto_2
    invoke-static/range {p3 .. p3}, Lcom/byazt/wu/ve;->c(Ljava/util/Map;)I

    move-result v0

    .line 11
    invoke-interface/range {p2 .. p2}, Lcom/byazt/eia/i;->C_()Lcom/byazt/ete/q;

    move-result-object v13

    .line 12
    invoke-interface/range {p2 .. p2}, Lcom/byazt/eia/i;->n()I

    move-result v14

    if-ne v14, v11, :cond_3

    .line 13
    invoke-interface/range {p2 .. p2}, Lcom/byazt/eia/i;->D_()Lcom/byazt/ete/kk;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 14
    invoke-interface/range {p2 .. p2}, Lcom/byazt/eia/i;->D_()Lcom/byazt/ete/kk;

    move-result-object v13

    invoke-virtual {v13}, Lcom/byazt/ete/kk;->uj()Lcom/byazt/ete/q;

    move-result-object v13

    goto :goto_3

    :cond_2
    const/4 v13, 0x0

    :cond_3
    :goto_3
    const/4 v14, 0x3

    if-eqz v13, :cond_5

    .line 15
    invoke-virtual {v13}, Lcom/byazt/ete/q;->ve()I

    move-result v16

    if-nez v16, :cond_5

    .line 16
    invoke-virtual {v13}, Lcom/byazt/ete/q;->tt()I

    move-result v13

    if-ne v13, v8, :cond_4

    const/16 v13, 0x65

    goto :goto_4

    :cond_4
    if-ne v13, v14, :cond_5

    const/16 v13, 0x68

    goto :goto_4

    :cond_5
    move v13, v0

    .line 17
    :goto_4
    invoke-interface/range {p2 .. p2}, Lcom/byazt/eia/i;->n()I

    move-result v16

    .line 18
    invoke-direct {v1, v2}, Lcom/byazt/ysz/a;->uj(Lcom/byazt/eia/i;)I

    move-result v0

    .line 19
    invoke-interface/range {p2 .. p2}, Lcom/byazt/eia/i;->sl()Lcom/byazt/ete/sv;

    move-result-object v17

    .line 20
    invoke-interface/range {p2 .. p2}, Lcom/byazt/eia/i;->n()I

    move-result v14

    if-ne v14, v11, :cond_7

    .line 21
    invoke-interface/range {p2 .. p2}, Lcom/byazt/eia/i;->D_()Lcom/byazt/ete/kk;

    move-result-object v14

    if-eqz v14, :cond_6

    .line 22
    invoke-interface/range {p2 .. p2}, Lcom/byazt/eia/i;->D_()Lcom/byazt/ete/kk;

    move-result-object v14

    invoke-virtual {v14}, Lcom/byazt/ete/kk;->a()Lcom/byazt/ete/sv;

    move-result-object v17

    goto :goto_5

    :cond_6
    const/16 v17, 0x0

    .line 23
    :cond_7
    :goto_5
    invoke-interface/range {p2 .. p2}, Lcom/byazt/eia/i;->t()Ljava/lang/String;

    move-result-object v14

    .line 24
    invoke-interface/range {p2 .. p2}, Lcom/byazt/eia/i;->n()I

    move-result v8

    if-ne v8, v11, :cond_9

    .line 25
    invoke-interface/range {p2 .. p2}, Lcom/byazt/eia/i;->D_()Lcom/byazt/ete/kk;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 26
    invoke-interface/range {p2 .. p2}, Lcom/byazt/eia/i;->D_()Lcom/byazt/ete/kk;

    move-result-object v8

    invoke-virtual {v8}, Lcom/byazt/ete/kk;->n()Ljava/lang/String;

    move-result-object v14

    goto :goto_6

    :cond_8
    const/4 v14, 0x0

    .line 27
    :cond_9
    :goto_6
    invoke-static {v13}, Lcom/byazt/bb/a;->c(I)Z

    move-result v8

    const-string v11, "live_auth_extra_info"

    const-string v15, "auth_reward_gold"

    const-string v12, "live_auto_auth_login_source"

    const-class v3, Ljava/lang/Integer;

    const/16 v19, 0x0

    move-object/from16 v20, v6

    const-string v6, "TTLiveSDkBridge"

    move-object/from16 v21, v4

    const-string v4, "live_popup_dou_auth_dialog"

    move-object/from16 v22, v5

    if-eqz v8, :cond_13

    const/16 v8, 0x65

    if-eq v13, v8, :cond_c

    const/16 v8, 0x66

    if-eq v13, v8, :cond_c

    const/16 v8, 0x68

    if-ne v13, v8, :cond_a

    goto :goto_8

    :cond_a
    const/16 v8, 0x67

    if-ne v13, v8, :cond_b

    const/4 v8, 0x1

    .line 28
    :try_start_1
    invoke-virtual {v9, v4, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    goto/16 :goto_10

    :cond_b
    move/from16 v13, v16

    :goto_7
    const/4 v4, 0x0

    goto :goto_a

    .line 29
    :cond_c
    :goto_8
    :try_start_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    if-eqz v17, :cond_f

    const/16 v8, 0x65

    if-ne v13, v8, :cond_d

    const/4 v8, 0x1

    goto :goto_9

    :cond_d
    const/16 v8, 0x68

    if-ne v13, v8, :cond_e

    const/4 v8, 0x3

    goto :goto_9

    :cond_e
    const/4 v8, 0x2

    .line 30
    :goto_9
    :try_start_3
    invoke-virtual {v4, v12, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "live_auto_auth_success_has_ticket"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move/from16 v18, v8

    .line 31
    :try_start_4
    invoke-static {v14}, Lcom/byazt/wu/ve;->c(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v4, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v5, "live_auto_auth_promotion_id"

    .line 32
    invoke-virtual/range {v17 .. v17}, Lcom/byazt/ete/sv;->tt()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move/from16 v8, v18

    goto :goto_b

    :catch_2
    move-exception v0

    move/from16 v13, v16

    move/from16 v8, v18

    goto :goto_e

    :catch_3
    move-exception v0

    move/from16 v18, v8

    move/from16 v13, v16

    goto :goto_e

    :cond_f
    move/from16 v13, v16

    :goto_a
    const/4 v8, -0x1

    :goto_b
    if-lez v0, :cond_11

    if-nez v4, :cond_10

    .line 33
    :try_start_5
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_c

    :catch_4
    move-exception v0

    goto :goto_e

    .line 34
    :cond_10
    :goto_c
    :try_start_6
    invoke-interface/range {p2 .. p2}, Lcom/byazt/eia/i;->rl()Ljava/lang/String;

    move-result-object v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    move/from16 v16, v8

    :try_start_7
    new-instance v8, Ljava/lang/Integer;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    move/from16 v18, v13

    const/4 v13, 0x1

    :try_start_8
    invoke-direct {v8, v13}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v5, v8, v3}, Lcom/byazt/omf/rl;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 35
    invoke-virtual {v4, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_d

    :catch_5
    move-exception v0

    move/from16 v18, v13

    move/from16 v8, v16

    goto :goto_e

    :catch_6
    move-exception v0

    move/from16 v16, v8

    move/from16 v18, v13

    goto :goto_e

    :cond_11
    move/from16 v16, v8

    move/from16 v18, v13

    :goto_d
    if-eqz v4, :cond_12

    .line 36
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 38
    invoke-virtual {v9, v11, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_f

    :catch_7
    move-exception v0

    move/from16 v8, v16

    move/from16 v13, v18

    :goto_e
    const/4 v3, 0x1

    goto :goto_11

    :cond_12
    :goto_f
    move/from16 v8, v16

    move/from16 v13, v18

    goto/16 :goto_14

    :catch_8
    move-exception v0

    move/from16 v13, v16

    :goto_10
    const/4 v3, 0x1

    const/4 v8, -0x1

    :goto_11
    new-array v4, v3, [Ljava/lang/Object;

    aput-object v0, v4, v19

    .line 39
    invoke-static {v6, v4}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_14

    :cond_13
    if-lez v0, :cond_14

    .line 40
    invoke-interface/range {p0 .. p0}, Lcom/byazt/ysz/uj;->n()I

    move-result v5

    const/4 v8, 0x2

    if-eq v5, v8, :cond_14

    .line 41
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 42
    :try_start_9
    invoke-interface/range {p2 .. p2}, Lcom/byazt/eia/i;->rl()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/Integer;

    const/4 v13, 0x1

    invoke-direct {v8, v13}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v5, v8, v3}, Lcom/byazt/omf/rl;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 43
    invoke-virtual {v4, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 44
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v11, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_13

    :catch_9
    move-exception v0

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v0, v4, v19

    .line 45
    invoke-static {v6, v4}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_13

    :cond_14
    const/4 v3, 0x1

    .line 46
    invoke-virtual {v1, v2}, Lcom/byazt/ysz/c;->tt(Lcom/byazt/eia/i;)I

    move-result v0

    if-nez v0, :cond_17

    .line 47
    invoke-interface/range {p2 .. p2}, Lcom/byazt/eia/i;->n()I

    move-result v0

    const/4 v5, 0x7

    if-ne v0, v5, :cond_15

    .line 48
    invoke-virtual {v9, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_13

    .line 49
    :cond_15
    invoke-interface/range {p2 .. p2}, Lcom/byazt/eia/i;->n()I

    move-result v0

    const/16 v4, 0x8

    if-ne v0, v4, :cond_17

    const-string v0, "live_popup_dou_deeplink_dialog"

    .line 50
    invoke-virtual {v9, v0, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    if-eqz v10, :cond_16

    .line 51
    invoke-virtual {v10}, Lcom/byazt/ete/nu;->tt()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_16
    const-string v0, ""

    :goto_12
    const-string v3, "live_popup_dou_deeplink_url"

    invoke-virtual {v9, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    :goto_13
    move/from16 v13, v16

    const/4 v8, -0x1

    :goto_14
    if-eqz v17, :cond_19

    .line 52
    invoke-virtual/range {v17 .. v17}, Lcom/byazt/ete/sv;->sp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "live_csj_libra_param"

    .line 53
    invoke-virtual/range {v17 .. v17}, Lcom/byazt/ete/sv;->sp()Ljava/lang/String;

    move-result-object v3

    .line 54
    invoke-virtual {v9, v0, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_18
    invoke-virtual/range {v17 .. v17}, Lcom/byazt/ete/sv;->x()Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 56
    invoke-direct {v1, v0, v2}, Lcom/byazt/ysz/a;->c(Lorg/json/JSONArray;Lcom/byazt/eia/i;)V

    const-string v3, "live_tob_task_center_config"

    .line 57
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "live_tob_task_key"

    .line 58
    invoke-interface/range {p2 .. p2}, Lcom/byazt/eia/i;->rl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v0, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    const-string v3, "enter_from_merge"

    if-eqz v10, :cond_1d

    .line 59
    invoke-virtual {v10}, Lcom/byazt/ete/nu;->tt()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 60
    :try_start_a
    invoke-virtual {v10}, Lcom/byazt/ete/nu;->tt()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 61
    new-instance v4, Lorg/json/JSONObject;

    const-string v5, "ad_data_params"

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v5, v22

    .line 62
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 63
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 64
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 65
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1a

    .line 66
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "ad_event_aid"

    const-string v1, "aid"

    .line 67
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ad_event_source"

    const-string v6, "source"

    .line 68
    invoke-static {v0, v6}, Lcom/byazt/apd/ve;->c(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ad_event_gd_label"

    const-string v6, "gd_label"

    .line 69
    invoke-static {v0, v6}, Lcom/byazt/apd/ve;->c(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ad_event_union_user_id"

    const-string v6, "union_user_id"

    .line 70
    invoke-static {v0, v6}, Lcom/byazt/apd/ve;->c(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ad_event_app_siteid"

    .line 71
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v6

    invoke-virtual {v6}, Lcom/byazt/omf/x;->rl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ad_event_live_type"

    const-string v6, "1"

    .line 72
    invoke-virtual {v15, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    invoke-virtual {v15}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-virtual {v15}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1a
    const-string v1, "cid"

    .line 75
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "creativeID"

    .line 76
    invoke-virtual {v11, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "IESLiveEffectAdTrackExtraServiceKey"

    .line 77
    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "is_other_channel"

    const-string v5, "union_ad"

    .line 78
    invoke-virtual {v10, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "value"

    .line 79
    invoke-virtual {v10, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "live_effect_ad_log_extra_map"

    .line 80
    invoke-virtual {v7, v1, v10}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    move-object/from16 v1, v21

    .line 81
    invoke-static {v0, v1}, Lcom/byazt/apd/ve;->c(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 82
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1b

    .line 83
    invoke-virtual {v7, v1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    const-string v1, "owner_open_id"

    .line 84
    invoke-static {v0, v1}, Lcom/byazt/apd/ve;->c(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const-string v1, "user_id"

    .line 86
    invoke-static {v0, v1}, Lcom/byazt/apd/ve;->c(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1c
    const-string v4, "anchor_id"

    .line 87
    invoke-virtual {v9, v4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "live.intent.extra.REQUEST_ID"

    const-string v4, "request_id"

    .line 88
    invoke-static {v0, v4}, Lcom/byazt/apd/ve;->c(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {v0, v3}, Lcom/byazt/apd/ve;->c(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_15

    :catch_a
    move-exception v0

    .line 90
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_1d
    const/4 v0, 0x0

    .line 91
    :goto_15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 92
    invoke-static/range {p2 .. p3}, Lcom/byazt/ppf/ve;->c(Ljava/lang/Object;Ljava/util/Map;)Lcom/byazt/ete/ic;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/aas/nb;->sl(Lcom/byazt/ete/ic;)I

    move-result v0

    invoke-static {v0}, Lcom/byazt/ysz/a;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 93
    :cond_1e
    invoke-virtual {v9, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-static/range {p2 .. p3}, Lcom/byazt/ppf/ve;->c(Ljava/lang/Object;Ljava/util/Map;)Lcom/byazt/ete/ic;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/aas/nb;->sl(Lcom/byazt/ete/ic;)I

    move-result v0

    invoke-static {v0}, Lcom/byazt/ysz/a;->tt(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "enter_method"

    invoke-virtual {v9, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "live_pangle_interaction_type"

    .line 95
    invoke-virtual {v9, v0, v13}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "live.intent.extra.ENTER_LIVE_EXTRA"

    .line 96
    invoke-virtual {v7, v0, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v1, -0x1

    if-eq v8, v1, :cond_1f

    .line 97
    :try_start_b
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 98
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v1, v20

    .line 99
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 100
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 101
    invoke-virtual {v4, v12, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "live_commerce_sdk_custom_params"

    .line 102
    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    move-object v14, v0

    :catch_b
    :cond_1f
    const-string v0, "ecom_live_params"

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    .line 106
    invoke-virtual {v1, v2, v14, v3}, Lcom/byazt/ysz/c;->c(Lcom/byazt/eia/i;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 107
    invoke-virtual {v7, v0, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_20
    invoke-interface/range {p2 .. p2}, Lcom/byazt/eia/i;->y_()Z

    move-result v0

    if-nez v0, :cond_21

    return-object v7

    :cond_21
    const-string v0, "reward_countdown"

    .line 109
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 110
    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_22

    .line 111
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-lez v0, :cond_22

    const-string v0, "csj.reward_countdown_duration_ms"

    .line 112
    invoke-virtual {v7, v0, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "android.app.activity.request_code"

    const/4 v2, 0x1

    .line 113
    invoke-virtual {v7, v0, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "reward_live_scene"

    .line 114
    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 115
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_22

    const-string v0, "live_popup_reward_auth"

    .line 116
    invoke-virtual {v7, v0, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "rewardAuthFlag"

    const-string v2, "liv pop rew auth:  1"

    .line 117
    invoke-static {v0, v2}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    return-object v7
.end method

.method public static tt(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 118
    sget-object p0, Lcom/bytedance/android/metrics/EnterMethod;->NO_VALUE:Lcom/bytedance/android/metrics/EnterMethod;

    invoke-virtual {p0}, Lcom/bytedance/android/metrics/EnterMethod;->lowerName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 119
    :pswitch_0
    sget-object p0, Lcom/bytedance/android/metrics/EnterMethod;->LIVE_CARD:Lcom/bytedance/android/metrics/EnterMethod;

    invoke-virtual {p0}, Lcom/bytedance/android/metrics/EnterMethod;->lowerName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 120
    :pswitch_1
    sget-object p0, Lcom/bytedance/android/metrics/EnterMethod;->LIVE_CELL:Lcom/bytedance/android/metrics/EnterMethod;

    invoke-virtual {p0}, Lcom/bytedance/android/metrics/EnterMethod;->lowerName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private uj(Lcom/byazt/eia/i;)I
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/byazt/eia/i;->m()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1}, Lcom/byazt/eia/i;->rl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-class v1, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-static {p1, v1}, Lcom/byazt/omf/rl;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/Integer;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-lez p1, :cond_0

    .line 25
    .line 26
    return v1

    .line 27
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    return v1

    .line 34
    :cond_1
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    .line 35
    .line 36
    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v0, "auth_reward_gold"

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    return p1

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    const/4 v0, 0x1

    .line 48
    new-array v0, v0, [Ljava/lang/Object;

    .line 49
    .line 50
    aput-object p1, v0, v1

    .line 51
    .line 52
    const-string p1, "TTLiveSDkBridge"

    .line 53
    .line 54
    invoke-static {p1, v0}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    return v1
.end method


# virtual methods
.method public a_(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ysz/a;->n:Ljava/lang/String;

    return-void
.end method

.method public a_(Lcom/byazt/ete/ic;)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/byazt/ysz/c;->c(Lcom/byazt/eia/i;)Z

    move-result p1

    return p1
.end method

.method public c(Landroid/content/Context;Lcom/byazt/eia/i;Ljava/util/Map;)I
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/byazt/eia/i;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    .line 4
    invoke-virtual {v9, v10}, Lcom/byazt/ysz/c;->ve(Lcom/byazt/eia/i;)V

    .line 5
    invoke-interface/range {p2 .. p2}, Lcom/byazt/eia/i;->n()I

    move-result v12

    const/4 v13, 0x2

    const/16 v14, 0x9

    if-ne v12, v14, :cond_0

    const-string v0, "saas_status_while_click"

    .line 6
    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-interface/range {p2 .. p2}, Lcom/byazt/eia/i;->D_()Lcom/byazt/ete/kk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    invoke-interface/range {p2 .. p2}, Lcom/byazt/eia/i;->D_()Lcom/byazt/ete/kk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ete/kk;->ve()Lcom/byazt/ete/nu;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v15, 0x2

    goto :goto_0

    :cond_0
    move v15, v12

    .line 9
    :goto_0
    invoke-interface/range {p2 .. p2}, Lcom/byazt/eia/i;->da()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0, v15}, Lcom/byazt/ysz/c;->c(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x6

    return v0

    :cond_1
    if-eqz v11, :cond_2

    const-string v0, "event_tag"

    .line 10
    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v0, ""

    :goto_1
    move-object v7, v0

    .line 11
    invoke-interface/range {p0 .. p0}, Lcom/byazt/ysz/uj;->a()Z

    move-result v0

    const/4 v8, 0x1

    if-nez v0, :cond_4

    .line 12
    invoke-static/range {p2 .. p3}, Lcom/byazt/ppf/ve;->c(Ljava/lang/Object;Ljava/util/Map;)Lcom/byazt/ete/ic;

    move-result-object v1

    const/4 v4, 0x1

    const/4 v0, 0x7

    if-ne v15, v0, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x2

    :goto_2
    move-object/from16 v0, p0

    move-object v2, v7

    move v3, v12

    invoke-virtual/range {v0 .. v5}, Lcom/byazt/ysz/c;->c(Lcom/byazt/ete/ic;Ljava/lang/String;III)V

    return v8

    .line 13
    :cond_4
    invoke-static/range {p2 .. p3}, Lcom/byazt/ppf/ve;->c(Ljava/lang/Object;Ljava/util/Map;)Lcom/byazt/ete/ic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->lw()Ljava/lang/String;

    .line 14
    iget-object v0, v9, Lcom/byazt/ysz/c;->c:Ljava/util/function/Function;

    if-eqz v0, :cond_b

    .line 15
    iput-object v7, v9, Lcom/byazt/ysz/c;->tt:Ljava/lang/String;

    .line 16
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-direct {v6, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 18
    new-instance v4, Lcom/byazt/ysz/a$1;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v6

    move-object/from16 v3, p1

    move-object v14, v4

    move-object/from16 v4, p2

    const/16 v18, 0x0

    move v5, v12

    move-object/from16 v19, v6

    move-object/from16 v6, p3

    move-object/from16 v20, v7

    move-wide/from16 v7, v16

    invoke-direct/range {v0 .. v8}, Lcom/byazt/ysz/a$1;-><init>(Lcom/byazt/ysz/a;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/Context;Lcom/byazt/eia/i;ILjava/util/Map;J)V

    .line 19
    invoke-interface/range {p0 .. p0}, Lcom/byazt/ysz/uj;->n()I

    move-result v0

    const/4 v8, 0x1

    if-eq v0, v13, :cond_5

    .line 20
    invoke-virtual {v9, v10, v14, v8, v11}, Lcom/byazt/ysz/a;->c(Lcom/byazt/eia/i;Lcom/byazt/ysz/a$c;ZLjava/util/Map;)Z

    move-result v5

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_a

    .line 21
    invoke-interface/range {p2 .. p2}, Lcom/byazt/eia/i;->C_()Lcom/byazt/ete/q;

    move-result-object v0

    .line 22
    invoke-interface/range {p2 .. p2}, Lcom/byazt/eia/i;->n()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_7

    .line 23
    invoke-interface/range {p2 .. p2}, Lcom/byazt/eia/i;->D_()Lcom/byazt/ete/kk;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 24
    invoke-interface/range {p2 .. p2}, Lcom/byazt/eia/i;->D_()Lcom/byazt/ete/kk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ete/kk;->uj()Lcom/byazt/ete/q;

    move-result-object v0

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :cond_7
    :goto_4
    move-object v13, v0

    if-eqz v13, :cond_9

    .line 25
    invoke-virtual {v13}, Lcom/byazt/ete/q;->n()J

    move-result-wide v14

    const-wide/16 v0, 0x0

    cmp-long v2, v14, v0

    if-lez v2, :cond_8

    .line 26
    invoke-static {}, Lcom/byazt/nr/da;->ve()Landroid/os/Handler;

    move-result-object v7

    new-instance v6, Lcom/byazt/ysz/a$2;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move v5, v12

    move-object v8, v6

    move-object/from16 v6, v20

    move-object v9, v7

    move-object/from16 v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/byazt/ysz/a$2;-><init>(Lcom/byazt/ysz/a;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/Context;Lcom/byazt/eia/i;ILjava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v9, v8, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 27
    :cond_8
    invoke-virtual {v13}, Lcom/byazt/ete/q;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 28
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->ve()Lcom/byazt/aas/c;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 29
    new-instance v8, Lcom/byazt/ddx/i;

    invoke-direct {v8}, Lcom/byazt/ddx/i;-><init>()V

    new-instance v9, Lcom/byazt/ysz/a$3;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move v5, v12

    move-object/from16 v6, v20

    move-object/from16 v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/byazt/ysz/a$3;-><init>(Lcom/byazt/ysz/a;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/Context;Lcom/byazt/eia/i;ILjava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v8, v9}, Lcom/byazt/ddx/i;->c(Lcom/byazt/ddx/i$c;)V

    :cond_9
    return v18

    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move-object/from16 v4, v20

    move-object/from16 v5, p3

    .line 30
    invoke-direct/range {v0 .. v5}, Lcom/byazt/ysz/a;->c(Landroid/content/Context;Lcom/byazt/eia/i;ILjava/lang/String;Ljava/util/Map;)I

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x4

    return v0
.end method

.method public c(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/util/Map;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/byazt/ete/ic;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-eqz p3, :cond_0

    :try_start_0
    const-string v2, "reward_countdown"

    .line 76
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 77
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_0

    .line 78
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "TTLiveSDkBridge"

    .line 79
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-wide v2, v0

    :goto_0
    const/4 v4, 0x5

    if-eqz p1, :cond_6

    if-nez p2, :cond_1

    goto :goto_1

    .line 80
    :cond_1
    instance-of v5, p1, Landroid/app/Activity;

    if-nez v5, :cond_2

    const/4 p1, 0x7

    return p1

    .line 81
    :cond_2
    invoke-static {p2}, Lcom/byazt/ete/to;->c(Lcom/byazt/ete/ic;)Z

    move-result v5

    if-nez v5, :cond_3

    return v4

    :cond_3
    cmp-long v4, v2, v0

    if-gez v4, :cond_4

    const/16 p1, 0x8

    return p1

    .line 82
    :cond_4
    invoke-static {p2}, Lcom/byazt/ete/to;->tt(Lcom/byazt/ete/ic;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    const/16 p1, 0x9

    return p1

    .line 83
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/byazt/ysz/a;->c(Landroid/content/Context;Lcom/byazt/eia/i;Ljava/util/Map;)I

    move-result p1

    return p1

    :cond_6
    :goto_1
    return v4
.end method

.method public c(Lcom/byazt/cn/tt;Z)I
    .locals 5

    .line 96
    iget-object v0, p0, Lcom/byazt/ysz/c;->c:Ljava/util/function/Function;

    if-eqz v0, :cond_1

    .line 97
    invoke-interface {p0}, Lcom/byazt/ysz/uj;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "expand_method_name"

    const-string v2, "requestDyAuth"

    .line 99
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 100
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/omf/x;->kk()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    .line 101
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, p1

    const-string p1, "expand_method_param"

    .line 102
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object p1, p0, Lcom/byazt/ysz/c;->c:Ljava/util/function/Function;

    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object v1

    const/4 v4, 0x7

    .line 104
    invoke-virtual {v1, v4}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    move-result-object v1

    const-class v4, Ljava/lang/Void;

    invoke-virtual {v1, v4}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    move-result-object v1

    .line 105
    invoke-virtual {v1, v3, v0}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object v0

    .line 106
    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "requestDyAuth:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", syncAuth = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TTLiveSDkBridge"

    invoke-static {p2, p1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    const/16 p1, 0xb

    return p1

    :cond_1
    const/16 p1, 0xc

    return p1
.end method

.method public c(Lcom/byazt/eia/i;Lcom/byazt/ysz/ve;Ljava/lang/String;Ljava/util/Map;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/eia/i;",
            "Lcom/byazt/ysz/ve;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 1
    const/4 p1, -0x1

    return p1
.end method

.method public c(Ljava/lang/String;)I
    .locals 3

    .line 84
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0xf

    return p1

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/byazt/ysz/c;->c:Ljava/util/function/Function;

    if-eqz v0, :cond_5

    .line 86
    invoke-interface {p0}, Lcom/byazt/ysz/uj;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 87
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->kk()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 p1, 0xd

    return p1

    .line 88
    :cond_1
    new-instance v1, Lcom/byazt/aas/zb;

    invoke-direct {v1}, Lcom/byazt/aas/zb;-><init>()V

    const-string v2, "context"

    .line 89
    invoke-virtual {v1, v2, v0}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object v0

    const-string v1, "scheme_uri"

    .line 90
    invoke-virtual {v0, v1, p1}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p1

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/byazt/ysz/c;->c:Ljava/util/function/Function;

    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object v1

    const/16 v2, 0x8

    .line 92
    invoke-virtual {v1, v2}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    move-result-object v1

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    move-result-object v1

    const/4 v2, 0x0

    .line 93
    invoke-virtual {v1, v2, p1}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object p1

    .line 94
    invoke-static {v0, p1}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 95
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    if-eqz v2, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    const/16 p1, 0xa

    return p1

    :catch_0
    const/16 p1, 0xe

    return p1

    :cond_4
    const/16 p1, 0xb

    return p1

    :cond_5
    const/16 p1, 0xc

    return p1
.end method

.method public c(Ljava/lang/String;Lcom/byazt/ete/ic;J)V
    .locals 0

    .line 108
    invoke-static {p1, p2, p3, p4}, Lcom/byazt/ex/c;->c(Ljava/lang/String;Lcom/byazt/ete/ic;J)V

    return-void
.end method

.method public c(Ljava/lang/String;Z)V
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/byazt/ysz/c;->c:Ljava/util/function/Function;

    if-nez v0, :cond_0

    return-void

    .line 110
    :cond_0
    invoke-interface {p0}, Lcom/byazt/ysz/uj;->a()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 111
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "expand_method_name"

    .line 112
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 113
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, p1, v1

    const-string p2, "expand_method_param"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object p1, p0, Lcom/byazt/ysz/c;->c:Ljava/util/function/Function;

    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object p2

    const/4 v2, 0x7

    .line 115
    invoke-virtual {p2, v2}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    move-result-object p2

    const-class v2, Ljava/lang/Void;

    invoke-virtual {p2, v2}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    move-result-object p2

    .line 116
    invoke-virtual {p2, v1, v0}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object p2

    .line 117
    invoke-static {p1, p2}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c(Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Lcom/byazt/ysz/c;->c(Ljava/util/function/Function;)V

    return-void
.end method

.method public c(Lcom/byazt/eia/i;Lcom/byazt/ysz/a$c;ZLjava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/eia/i;",
            "Lcom/byazt/ysz/a$c;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/byazt/ysz/a;->n:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 32
    :cond_0
    invoke-interface {p1}, Lcom/byazt/eia/i;->C_()Lcom/byazt/ete/q;

    move-result-object v0

    .line 33
    invoke-interface {p1}, Lcom/byazt/eia/i;->n()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_2

    .line 34
    invoke-interface {p1}, Lcom/byazt/eia/i;->D_()Lcom/byazt/ete/kk;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 35
    invoke-interface {p1}, Lcom/byazt/eia/i;->D_()Lcom/byazt/ete/kk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ete/kk;->uj()Lcom/byazt/ete/q;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    return v1

    .line 36
    :cond_3
    invoke-virtual {v0}, Lcom/byazt/ete/q;->ve()I

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 37
    :cond_4
    :try_start_0
    iget-object v2, p0, Lcom/byazt/ysz/a;->n:Ljava/lang/String;

    const-string v3, "\\."

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v3, 0x339d5

    if-ge v2, v3, :cond_5

    return v1

    :catch_0
    nop

    .line 39
    :cond_5
    invoke-virtual {v0}, Lcom/byazt/ete/q;->tt()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_6

    const/4 v3, 0x1

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x3

    if-eqz p3, :cond_8

    if-ne v0, v4, :cond_7

    const/4 v3, 0x1

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    :cond_8
    :goto_2
    if-eqz v3, :cond_a

    .line 40
    new-instance p3, Ljava/lang/ref/SoftReference;

    invoke-static {p1, p4}, Lcom/byazt/ppf/ve;->c(Ljava/lang/Object;Ljava/util/Map;)Lcom/byazt/ete/ic;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/byazt/ysz/a;->a:Ljava/lang/ref/SoftReference;

    .line 41
    new-instance p1, Lcom/byazt/ysz/a$4;

    invoke-direct {p1, p0, p2}, Lcom/byazt/ysz/a$4;-><init>(Lcom/byazt/ysz/a;Lcom/byazt/ysz/a$c;)V

    if-ne v0, v4, :cond_9

    const/4 p2, 0x1

    goto :goto_3

    :cond_9
    const/4 p2, 0x0

    :goto_3
    invoke-virtual {p0, p1, p2}, Lcom/byazt/ysz/a;->c(Lcom/byazt/cn/tt;Z)I

    move-result p1

    if-ne p1, v2, :cond_a

    return v2

    :cond_a
    return v1
.end method

.method public r_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public sp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ysz/a;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt(Lcom/byazt/ete/ic;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 p1, 0x2

    return p1
.end method
