.class public Lcom/byazt/tjo/sp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x204,
        0x5b
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Landroid/util/SparseArray<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public tt:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Function<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/byazt/tjo/sp;->c:Ljava/util/function/Function;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/byazt/tjo/sp;->tt:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic c(Lcom/byazt/tjo/sp;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/tjo/sp;->tt:Landroid/content/Context;

    return-object p0
.end method

.method private c(Lcom/bykv/vk/openvk/api/proto/PluginValueSet;)Lcom/bykv/vk/openvk/api/proto/PluginValueSet;
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lcom/byazt/dj/tt;

    invoke-interface {p1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->sparseArray()Landroid/util/SparseArray;

    move-result-object v1

    invoke-static {}, Lcom/byazt/vxy/c;->tt()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/byazt/dj/tt;-><init>(Landroid/util/SparseArray;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lcom/byazt/dj/tt;->qy()Ljava/lang/String;

    move-result-object v0

    .line 5
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    goto :goto_0

    .line 7
    :cond_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    const/4 v1, 0x0

    .line 8
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "name"

    const-string v4, "personal_ads_type"

    if-ge v1, v2, :cond_3

    .line 9
    :try_start_1
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 10
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 11
    :cond_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 12
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/bp/c;->tt()Lcom/byazt/xf/ve;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 13
    invoke-virtual {v2}, Lcom/byazt/xf/ve;->sp()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "0"

    goto :goto_2

    :cond_4
    const-string v2, "1"

    .line 14
    :goto_2
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "value"

    .line 15
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 17
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/byazt/ch/c;->c(Lcom/bykv/vk/openvk/api/proto/PluginValueSet;Ljava/lang/String;)Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :catchall_0
    move-exception v0

    .line 18
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_5
    return-object p1
.end method

.method private c(Lcom/bykv/vk/openvk/api/proto/PluginValueSet;Lcom/byazt/dj/tt;)Lcom/bykv/vk/openvk/api/proto/PluginValueSet;
    .locals 2

    .line 148
    invoke-static {p1}, Lcom/byazt/rl/c;->c(Lcom/bykv/vk/openvk/api/proto/PluginValueSet;)Lcom/byazt/rl/c;

    move-result-object p1

    .line 149
    invoke-virtual {p2}, Lcom/byazt/dj/tt;->i()F

    move-result v0

    const v1, 0x3f7a9

    invoke-virtual {p1, v1, v0}, Lcom/byazt/rl/c;->c(IF)Lcom/byazt/rl/c;

    const v0, 0x3f7a8

    .line 150
    invoke-virtual {p2}, Lcom/byazt/dj/tt;->x()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/byazt/rl/c;->c(IF)Lcom/byazt/rl/c;

    const v0, 0x3f7a7

    .line 151
    invoke-virtual {p2}, Lcom/byazt/dj/tt;->sp()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/byazt/rl/c;->c(II)Lcom/byazt/rl/c;

    const v0, 0x3f7a6

    .line 152
    invoke-virtual {p2}, Lcom/byazt/dj/tt;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/byazt/rl/c;->c(II)Lcom/byazt/rl/c;

    const v0, 0x3f7a4

    .line 153
    invoke-virtual {p2}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/byazt/rl/c;->c(ILjava/lang/String;)Lcom/byazt/rl/c;

    .line 154
    invoke-virtual {p1}, Lcom/byazt/rl/c;->tt()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    move-result-object p1

    return-object p1
.end method

.method private c(ILandroid/util/SparseArray;Lcom/bykv/vk/openvk/api/proto/PluginValueSet;Ljava/util/function/Function;Ljava/util/Map;Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bykv/vk/openvk/api/proto/PluginValueSet;",
            "Ljava/util/function/Function<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    const-string v5, "CSJM_loadAD Type:"

    .line 28
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "TTMediationSDK"

    invoke-static {v6, v5}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance v5, Lcom/byazt/nx/c;

    invoke-direct {v5, v2}, Lcom/byazt/nx/c;-><init>(Landroid/util/SparseArray;)V

    .line 30
    new-instance v7, Lcom/byazt/dj/tt$c;

    new-instance v8, Lcom/byazt/dj/tt;

    invoke-static {}, Lcom/byazt/vxy/c;->tt()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v2, v9}, Lcom/byazt/dj/tt;-><init>(Landroid/util/SparseArray;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Lcom/byazt/dj/tt$c;-><init>(Lcom/byazt/dj/tt;)V

    if-eqz v4, :cond_0

    .line 31
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 32
    invoke-virtual {v7, v4}, Lcom/byazt/dj/tt$c;->c(Ljava/util/Map;)Lcom/byazt/dj/tt$c;

    .line 33
    :cond_0
    invoke-static {}, Lcom/byazt/vq/c;->c()Lcom/byazt/vq/c;

    move-result-object v4

    invoke-virtual {v5}, Lcom/byazt/nx/c;->x()Ljava/util/function/Function;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/byazt/vq/c;->c(Ljava/util/function/Function;)V

    .line 34
    new-instance v4, Lcom/byazt/dj/tt$c;

    new-instance v8, Lcom/byazt/dj/tt;

    invoke-static {}, Lcom/byazt/vxy/c;->tt()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v2, v9}, Lcom/byazt/dj/tt;-><init>(Landroid/util/SparseArray;Ljava/lang/String;)V

    invoke-direct {v4, v8}, Lcom/byazt/dj/tt$c;-><init>(Lcom/byazt/dj/tt;)V

    .line 35
    invoke-direct {v0, v5, v4}, Lcom/byazt/tjo/sp;->c(Lcom/byazt/nx/c;Lcom/byazt/dj/tt$c;)V

    .line 36
    invoke-virtual {v5}, Lcom/byazt/nx/c;->ve()F

    move-result v2

    .line 37
    invoke-virtual {v5}, Lcom/byazt/nx/c;->uj()F

    move-result v8

    .line 38
    invoke-virtual {v5}, Lcom/byazt/nx/c;->c()I

    move-result v9

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v9, :cond_2

    cmpl-float v9, v2, v11

    if-eqz v9, :cond_1

    invoke-virtual {v5}, Lcom/byazt/nx/c;->c()I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v9, v2

    if-nez v9, :cond_2

    .line 39
    :cond_1
    iget-object v9, v0, Lcom/byazt/tjo/sp;->tt:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/byazt/nx/c;->c()I

    move-result v13

    int-to-float v13, v13

    invoke-static {v9, v13}, Lcom/byazt/pp/n;->tt(Landroid/content/Context;F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v7, v9}, Lcom/byazt/dj/tt$c;->c(F)Lcom/byazt/dj/tt$c;

    .line 40
    invoke-virtual {v5}, Lcom/byazt/nx/c;->c()I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v9, v2

    if-nez v9, :cond_2

    const/4 v9, 0x1

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    .line 41
    :goto_0
    invoke-virtual {v5}, Lcom/byazt/nx/c;->tt()I

    move-result v13

    if-eqz v13, :cond_5

    cmpl-float v13, v2, v11

    if-nez v13, :cond_3

    cmpl-float v13, v8, v11

    if-eqz v13, :cond_4

    .line 42
    :cond_3
    invoke-virtual {v5}, Lcom/byazt/nx/c;->tt()I

    move-result v13

    int-to-float v13, v13

    cmpl-float v13, v8, v13

    if-nez v13, :cond_5

    .line 43
    :cond_4
    iget-object v13, v0, Lcom/byazt/tjo/sp;->tt:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/byazt/nx/c;->tt()I

    move-result v14

    int-to-float v14, v14

    invoke-static {v13, v14}, Lcom/byazt/pp/n;->tt(Landroid/content/Context;F)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v7, v13}, Lcom/byazt/dj/tt$c;->tt(F)Lcom/byazt/dj/tt$c;

    .line 44
    :cond_5
    invoke-virtual {v5}, Lcom/byazt/nx/c;->c()I

    move-result v13

    if-nez v13, :cond_6

    cmpl-float v13, v2, v11

    if-eqz v13, :cond_6

    .line 45
    iget-object v13, v0, Lcom/byazt/tjo/sp;->tt:Landroid/content/Context;

    invoke-static {v13, v2}, Lcom/byazt/pp/n;->c(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/byazt/dj/tt$c;->c(I)Lcom/byazt/dj/tt$c;

    .line 46
    :cond_6
    invoke-virtual {v5}, Lcom/byazt/nx/c;->tt()I

    move-result v2

    if-nez v2, :cond_7

    cmpl-float v2, v8, v11

    if-eqz v2, :cond_7

    .line 47
    iget-object v2, v0, Lcom/byazt/tjo/sp;->tt:Landroid/content/Context;

    invoke-static {v2, v8}, Lcom/byazt/pp/n;->c(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/byazt/dj/tt$c;->tt(I)Lcom/byazt/dj/tt$c;

    .line 48
    :cond_7
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/omf/x;->zb()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 49
    invoke-virtual {v5}, Lcom/byazt/nx/c;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7, v1}, Lcom/byazt/qv/uj;->c(Ljava/lang/String;Lcom/byazt/dj/tt$c;I)Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    move-result-object v2

    goto :goto_1

    .line 50
    :cond_8
    invoke-virtual {v7}, Lcom/byazt/dj/tt$c;->c()Lcom/byazt/dj/tt;

    move-result-object v2

    invoke-static {v2}, Lcom/byazt/ch/c;->c(Lcom/byazt/dj/tt;)Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    move-result-object v2

    .line 51
    :goto_1
    new-instance v7, Lcom/byazt/ch/c;

    if-eqz v2, :cond_9

    invoke-interface {v2}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->sparseArray()Landroid/util/SparseArray;

    move-result-object v2

    goto :goto_2

    :cond_9
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    :goto_2
    invoke-static {}, Lcom/byazt/vxy/c;->tt()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v2, v8}, Lcom/byazt/ch/c;-><init>(Landroid/util/SparseArray;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v4}, Lcom/byazt/dj/tt$c;->c()Lcom/byazt/dj/tt;

    move-result-object v2

    move-object/from16 v4, p3

    invoke-direct {v0, v4, v2}, Lcom/byazt/tjo/sp;->c(Lcom/bykv/vk/openvk/api/proto/PluginValueSet;Lcom/byazt/dj/tt;)Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    move-result-object v2

    .line 53
    invoke-virtual {v7}, Lcom/byazt/ch/c;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v4, v12

    const-string v8, "\u914d\u7f6e\u672a\u52a0\u8f7d\u5b8c\u6210\uff0c\u8bf7\u7a0d\u540e2-5\u79d2\u8bf7\u6c42\u5e7f\u544a\uff08\u4fee\u6539\u5efa\u8bae\uff1a\u9002\u5f53\u5c06\u8bf7\u6c42\u975e\u5f00\u5c4f\u7c7b\u578b\u5e7f\u544a\u7684\u65f6\u673a\u5f80\u540e\u79fb\uff09"

    const-string v14, ",ritId:"

    const-string v15, "please exec TTAdSdk.init and TTAdSdk.start before load ad"

    const-string v10, "TMe"

    if-eq v1, v12, :cond_28

    const/4 v12, 0x3

    if-eq v1, v12, :cond_23

    const/4 v12, 0x5

    const-string v11, "context is null"

    const v13, 0x13c6d

    if-eq v1, v12, :cond_1a

    const/4 v9, 0x7

    if-eq v1, v9, :cond_16

    const/16 v9, 0x8

    if-eq v1, v9, :cond_f

    const/16 v9, 0x9

    if-eq v1, v9, :cond_a

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CSJM_loadAD load default mCSJLoader = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/byazt/tjo/sp;->c:Ljava/util/function/Function;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-direct {v0, v1, v2}, Lcom/byazt/tjo/sp;->c(ILcom/bykv/vk/openvk/api/proto/PluginValueSet;)V

    return-void

    .line 56
    :cond_a
    invoke-static {}, Lcom/byazt/vq/c;->c()Lcom/byazt/vq/c;

    move-result-object v6

    invoke-virtual {v7}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12, v9, v4}, Lcom/byazt/vq/c;->c(Ljava/lang/String;IZ)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "load m draw \u5e7f\u544a\u4f4d = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/byazt/nx/c;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v1, Lcom/byazt/yla/ve;

    invoke-direct {v1, v3}, Lcom/byazt/yla/ve;-><init>(Ljava/util/function/Function;)V

    .line 59
    sget-boolean v2, Lcom/byazt/omf/rh;->c:Z

    if-nez v2, :cond_b

    .line 60
    invoke-static {v10, v15}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2710

    .line 61
    invoke-virtual {v1, v2, v15}, Lcom/byazt/nh/tt;->c(ILjava/lang/String;)V

    return-void

    :cond_b
    if-eqz p6, :cond_c

    const/16 v2, 0x2769

    .line 62
    invoke-virtual {v1, v2, v8}, Lcom/byazt/nh/tt;->c(ILjava/lang/String;)V

    return-void

    .line 63
    :cond_c
    iget-object v2, v0, Lcom/byazt/tjo/sp;->tt:Landroid/content/Context;

    if-eqz v2, :cond_d

    .line 64
    invoke-static {v2, v7, v1}, Lcom/byazt/qv/tt;->c(Landroid/content/Context;Lcom/byazt/ch/c;Lcom/byazt/nh/tt;)V

    return-void

    .line 65
    :cond_d
    invoke-virtual {v1, v13, v11}, Lcom/byazt/nh/tt;->c(ILjava/lang/String;)V

    return-void

    .line 66
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "load csj draw \u4ee3\u7801\u4f4d = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/byazt/nx/c;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-direct {v0, v1, v2}, Lcom/byazt/tjo/sp;->c(ILcom/bykv/vk/openvk/api/proto/PluginValueSet;)V

    return-void

    .line 68
    :cond_f
    invoke-static {}, Lcom/byazt/vq/c;->c()Lcom/byazt/vq/c;

    move-result-object v6

    invoke-virtual {v7}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11, v9, v4}, Lcom/byazt/vq/c;->c(Ljava/lang/String;IZ)Z

    move-result v6

    const/16 v11, 0xa

    if-nez v6, :cond_11

    invoke-static {}, Lcom/byazt/vq/c;->c()Lcom/byazt/vq/c;

    move-result-object v6

    invoke-virtual {v7}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12, v11, v4}, Lcom/byazt/vq/c;->c(Ljava/lang/String;IZ)Z

    move-result v4

    if-eqz v4, :cond_10

    goto :goto_3

    :cond_10
    const-string v3, "load csj full"

    .line 69
    invoke-static {v10, v3}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-direct {v0, v1, v2}, Lcom/byazt/tjo/sp;->c(ILcom/bykv/vk/openvk/api/proto/PluginValueSet;)V

    return-void

    .line 71
    :cond_11
    :goto_3
    new-instance v1, Lcom/byazt/ov/c;

    invoke-direct {v1, v3}, Lcom/byazt/ov/c;-><init>(Ljava/util/function/Function;)V

    .line 72
    sget-boolean v2, Lcom/byazt/omf/rh;->c:Z

    if-nez v2, :cond_12

    .line 73
    invoke-static {v10, v15}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2710

    .line 74
    invoke-virtual {v1, v2, v15}, Lcom/byazt/nh/uj;->c(ILjava/lang/String;)V

    return-void

    :cond_12
    if-eqz p6, :cond_13

    const/16 v2, 0x2769

    .line 75
    invoke-virtual {v1, v2, v8}, Lcom/byazt/nh/uj;->c(ILjava/lang/String;)V

    return-void

    .line 76
    :cond_13
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v2

    invoke-virtual {v7}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x65

    invoke-virtual {v2, v3, v9, v4}, Lcom/byazt/qe/ve;->c(Ljava/lang/String;II)Lcom/byazt/nbs/tt;

    move-result-object v2

    if-nez v2, :cond_14

    .line 77
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v2

    invoke-virtual {v7}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v11, v4}, Lcom/byazt/qe/ve;->c(Ljava/lang/String;II)Lcom/byazt/nbs/tt;

    move-result-object v2

    :cond_14
    if-eqz v2, :cond_15

    .line 78
    invoke-virtual {v2}, Lcom/byazt/nbs/tt;->pf()I

    move-result v2

    if-ne v2, v9, :cond_15

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "load m full \u5e7f\u544a\u4f4d = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/byazt/nx/c;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v2, v0, Lcom/byazt/tjo/sp;->tt:Landroid/content/Context;

    invoke-static {v2, v7, v1}, Lcom/byazt/qv/tt;->c(Landroid/content/Context;Lcom/byazt/ch/c;Lcom/byazt/nh/uj;)V

    return-void

    .line 81
    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "load m interstitial full \u5e7f\u544a\u4f4d = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/byazt/nx/c;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v2, v0, Lcom/byazt/tjo/sp;->tt:Landroid/content/Context;

    invoke-static {v2, v7, v1}, Lcom/byazt/qv/tt;->tt(Landroid/content/Context;Lcom/byazt/ch/c;Lcom/byazt/nh/uj;)V

    return-void

    .line 83
    :cond_16
    invoke-static {}, Lcom/byazt/vq/c;->c()Lcom/byazt/vq/c;

    move-result-object v6

    invoke-virtual {v7}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11, v9, v4}, Lcom/byazt/vq/c;->c(Ljava/lang/String;IZ)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 84
    new-instance v1, Lcom/byazt/bz/tt;

    invoke-direct {v1, v3}, Lcom/byazt/bz/tt;-><init>(Ljava/util/function/Function;)V

    .line 85
    sget-boolean v2, Lcom/byazt/omf/rh;->c:Z

    if-nez v2, :cond_17

    .line 86
    invoke-static {v10, v15}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2710

    .line 87
    invoke-virtual {v1, v2, v15}, Lcom/byazt/nh/sp;->c(ILjava/lang/String;)V

    return-void

    :cond_17
    if-eqz p6, :cond_18

    const/16 v2, 0x2769

    .line 88
    invoke-virtual {v1, v2, v8}, Lcom/byazt/nh/sp;->c(ILjava/lang/String;)V

    return-void

    .line 89
    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "load m reward video \u5e7f\u544a\u4f4d = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/byazt/nx/c;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v2, v0, Lcom/byazt/tjo/sp;->tt:Landroid/content/Context;

    invoke-static {v2, v7, v1}, Lcom/byazt/qv/tt;->c(Landroid/content/Context;Lcom/byazt/ch/c;Lcom/byazt/nh/sp;)V

    return-void

    .line 91
    :cond_19
    invoke-direct {v0, v1, v2}, Lcom/byazt/tjo/sp;->c(ILcom/bykv/vk/openvk/api/proto/PluginValueSet;)V

    return-void

    :cond_1a
    const/4 v6, 0x2

    .line 92
    invoke-interface {v2, v6}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->booleanValue(I)Z

    move-result v6

    .line 93
    invoke-static {}, Lcom/byazt/vq/c;->c()Lcom/byazt/vq/c;

    move-result-object v13

    invoke-virtual {v7}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1, v12, v4}, Lcom/byazt/vq/c;->c(Ljava/lang/String;IZ)Z

    move-result v1

    const-string v4, ", isExpress: "

    if-eqz v1, :cond_22

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "load m feed \u5e7f\u544a\u4f4d = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/byazt/nx/c;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_1e

    .line 95
    new-instance v1, Lcom/byazt/cv/sl;

    invoke-direct {v1, v3}, Lcom/byazt/cv/sl;-><init>(Ljava/util/function/Function;)V

    .line 96
    sget-boolean v2, Lcom/byazt/omf/rh;->c:Z

    if-nez v2, :cond_1b

    .line 97
    invoke-static {v10, v15}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2710

    .line 98
    invoke-virtual {v1, v2, v15}, Lcom/byazt/nh/a;->c(ILjava/lang/String;)V

    return-void

    :cond_1b
    if-eqz p6, :cond_1c

    const/16 v2, 0x2769

    .line 99
    invoke-virtual {v1, v2, v8}, Lcom/byazt/nh/a;->c(ILjava/lang/String;)V

    return-void

    .line 100
    :cond_1c
    iget-object v2, v0, Lcom/byazt/tjo/sp;->tt:Landroid/content/Context;

    if-eqz v2, :cond_1d

    .line 101
    invoke-static {v2, v7, v1, v9}, Lcom/byazt/qv/tt;->c(Landroid/content/Context;Lcom/byazt/ch/c;Lcom/byazt/nh/a;Z)V

    return-void

    :cond_1d
    const v2, 0x13c6d

    .line 102
    invoke-virtual {v1, v2, v11}, Lcom/byazt/nh/a;->c(ILjava/lang/String;)V

    return-void

    .line 103
    :cond_1e
    new-instance v1, Lcom/byazt/cv/t;

    invoke-direct {v1, v3}, Lcom/byazt/cv/t;-><init>(Ljava/util/function/Function;)V

    .line 104
    sget-boolean v2, Lcom/byazt/omf/rh;->c:Z

    if-nez v2, :cond_1f

    .line 105
    invoke-static {v10, v15}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2710

    .line 106
    invoke-virtual {v1, v2, v15}, Lcom/byazt/nh/ve;->c(ILjava/lang/String;)V

    return-void

    :cond_1f
    if-eqz p6, :cond_20

    const/16 v2, 0x2769

    .line 107
    invoke-virtual {v1, v2, v8}, Lcom/byazt/nh/ve;->c(ILjava/lang/String;)V

    return-void

    .line 108
    :cond_20
    iget-object v2, v0, Lcom/byazt/tjo/sp;->tt:Landroid/content/Context;

    if-eqz v2, :cond_21

    .line 109
    invoke-static {v2, v7, v1, v9}, Lcom/byazt/qv/tt;->c(Landroid/content/Context;Lcom/byazt/ch/c;Lcom/byazt/nh/ve;Z)V

    return-void

    :cond_21
    const v2, 0x13c6d

    .line 110
    invoke-virtual {v1, v2, v11}, Lcom/byazt/nh/ve;->c(ILjava/lang/String;)V

    return-void

    .line 111
    :cond_22
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "load csj feed \u4ee3\u7801\u4f4d = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/byazt/nx/c;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v1, p1

    .line 112
    invoke-direct {v0, v1, v2}, Lcom/byazt/tjo/sp;->c(ILcom/bykv/vk/openvk/api/proto/PluginValueSet;)V

    return-void

    .line 113
    :cond_23
    invoke-static {}, Lcom/byazt/vq/c;->c()Lcom/byazt/vq/c;

    move-result-object v6

    invoke-virtual {v7}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v12, v4}, Lcom/byazt/vq/c;->c(Ljava/lang/String;IZ)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 114
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "load m splash \u5e7f\u544a\u4f4d = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/byazt/nx/c;->n()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    const/4 v4, 0x1

    goto :goto_5

    .line 115
    :cond_24
    invoke-static {}, Lcom/byazt/ck/uj;->c()Lcom/byazt/ck/uj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/byazt/ck/uj;->ve()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 116
    invoke-virtual {v5}, Lcom/byazt/nx/c;->sp()Lcom/byazt/am/ve;

    move-result-object v4

    if-eqz v4, :cond_25

    .line 117
    invoke-virtual {v5}, Lcom/byazt/nx/c;->sp()Lcom/byazt/am/ve;

    move-result-object v4

    invoke-virtual {v4}, Lcom/byazt/am/ve;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_25

    .line 118
    invoke-virtual {v5}, Lcom/byazt/nx/c;->sp()Lcom/byazt/am/ve;

    move-result-object v4

    invoke-virtual {v4}, Lcom/byazt/am/ve;->ve()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_25

    .line 119
    invoke-virtual {v5}, Lcom/byazt/nx/c;->sp()Lcom/byazt/am/ve;

    move-result-object v4

    invoke-virtual {v4}, Lcom/byazt/am/ve;->tt()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_25

    .line 120
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "load m splash \u5f00\u5c4f\u515c\u5e95\u4ee3\u7801\u4f4d = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/byazt/nx/c;->sp()Lcom/byazt/am/ve;

    move-result-object v6

    invoke-virtual {v6}, Lcom/byazt/am/ve;->tt()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_25
    const/4 v4, 0x0

    :goto_5
    if-eqz v4, :cond_27

    .line 121
    new-instance v1, Lcom/byazt/bc/tt;

    invoke-direct {v1, v3}, Lcom/byazt/bc/tt;-><init>(Ljava/util/function/Function;)V

    .line 122
    sget-boolean v2, Lcom/byazt/omf/rh;->c:Z

    if-nez v2, :cond_26

    .line 123
    invoke-static {v10, v15}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v2, Lcom/byazt/oh/c;

    const/16 v3, 0x2710

    invoke-direct {v2, v3, v15}, Lcom/byazt/oh/c;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/byazt/nh/c;->c(Lcom/byazt/nc/c;)V

    return-void

    .line 125
    :cond_26
    new-instance v2, Lcom/byazt/tjo/sp$2;

    move-object/from16 p1, v2

    move-object/from16 p2, p0

    move-object/from16 p3, v7

    move-object/from16 p4, v5

    move-object/from16 p5, v1

    move/from16 p6, v9

    invoke-direct/range {p1 .. p6}, Lcom/byazt/tjo/sp$2;-><init>(Lcom/byazt/tjo/sp;Lcom/byazt/ch/c;Lcom/byazt/nx/c;Lcom/byazt/bc/tt;Z)V

    invoke-static {v2}, Lcom/byazt/yf/da;->c(Lcom/byazt/ko/c;)V

    return-void

    .line 126
    :cond_27
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "load csj splash \u4ee3\u7801\u4f4d = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/byazt/nx/c;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-direct {v0, v1, v2}, Lcom/byazt/tjo/sp;->c(ILcom/bykv/vk/openvk/api/proto/PluginValueSet;)V

    return-void

    .line 128
    :cond_28
    invoke-static {}, Lcom/byazt/vq/c;->c()Lcom/byazt/vq/c;

    move-result-object v6

    invoke-virtual {v7}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v6, v11, v12, v4}, Lcom/byazt/vq/c;->c(Ljava/lang/String;IZ)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 129
    new-instance v1, Lcom/byazt/xw/c;

    invoke-direct {v1, v3}, Lcom/byazt/xw/c;-><init>(Ljava/util/function/Function;)V

    .line 130
    sget-boolean v2, Lcom/byazt/omf/rh;->c:Z

    if-nez v2, :cond_29

    .line 131
    invoke-static {v10, v15}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2710

    .line 132
    invoke-virtual {v1, v2, v15}, Lcom/byazt/nh/a;->c(ILjava/lang/String;)V

    return-void

    :cond_29
    if-eqz p6, :cond_2a

    const/16 v2, 0x2769

    .line 133
    invoke-virtual {v1, v2, v8}, Lcom/byazt/nh/a;->c(ILjava/lang/String;)V

    return-void

    .line 134
    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "load m banner \u5e7f\u544a\u4f4d = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/byazt/nx/c;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v2, v0, Lcom/byazt/tjo/sp;->tt:Landroid/content/Context;

    invoke-static {v2, v7, v1, v9}, Lcom/byazt/qv/tt;->c(Landroid/content/Context;Lcom/byazt/ch/c;Lcom/byazt/xw/c;Z)V

    return-void

    .line 136
    :cond_2b
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "load csj banner \u4ee3\u7801\u4f4d = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/byazt/nx/c;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-direct {v0, v1, v2}, Lcom/byazt/tjo/sp;->c(ILcom/bykv/vk/openvk/api/proto/PluginValueSet;)V

    return-void
.end method

.method private c(ILcom/bykv/vk/openvk/api/proto/PluginValueSet;)V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/byazt/tjo/sp;->c:Ljava/util/function/Function;

    instance-of v0, v0, Lcom/byazt/omf/h;

    if-eqz v0, :cond_1

    .line 139
    invoke-direct {p0, p2}, Lcom/byazt/tjo/sp;->c(Lcom/bykv/vk/openvk/api/proto/PluginValueSet;)Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    move-result-object v0

    const/4 v1, 0x1

    .line 140
    const-class v2, Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "apply->load with null callback"

    .line 141
    invoke-static {p1}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;)V

    return-void

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/byazt/tjo/sp;->c:Ljava/util/function/Function;

    check-cast v1, Lcom/byazt/omf/h;

    invoke-static {v0}, Lcom/byazt/gxc/ve;->c(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object v0

    invoke-virtual {v1, p1, p2, v0}, Lcom/byazt/omf/h;->loadAdByType(ILcom/bykv/vk/openvk/api/proto/PluginValueSet;Ljava/util/function/Function;)V

    :cond_1
    return-void
.end method

.method private c(Landroid/util/SparseArray;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-static {p1}, Lcom/byazt/rl/c;->c(Landroid/util/SparseArray;)Lcom/byazt/rl/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/rl/c;->tt()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    move-result-object v5

    const v0, -0x5f5e0ee

    .line 20
    invoke-interface {v5, v0}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->intValue(I)I

    move-result v3

    const v0, 0x3f7a4

    .line 21
    invoke-interface {v5, v0}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x1

    .line 22
    invoke-static {}, Ln0/a;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object v6

    .line 23
    invoke-static {}, Lcom/byazt/vq/c;->c()Lcom/byazt/vq/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/vq/c;->ve()Z

    move-result v0

    if-nez v0, :cond_1

    .line 24
    iget-object p1, p0, Lcom/byazt/tjo/sp;->c:Ljava/util/function/Function;

    instance-of p1, p1, Lcom/byazt/omf/h;

    if-eqz p1, :cond_0

    const-string p1, "TMe"

    const-string v0, "load csj \u4ee3\u7801\u4f4d\u672a\u5f00\u542f\u805a\u5408\u5f00\u5173"

    .line 25
    invoke-static {p1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object p1, p0, Lcom/byazt/tjo/sp;->c:Ljava/util/function/Function;

    check-cast p1, Lcom/byazt/omf/h;

    invoke-virtual {p1, v3, v5, v6}, Lcom/byazt/omf/h;->loadAdByType(ILcom/bykv/vk/openvk/api/proto/PluginValueSet;Ljava/util/function/Function;)V

    :cond_0
    return-void

    .line 27
    :cond_1
    invoke-static {}, Lcom/byazt/tjo/c;->c()Lcom/byazt/tjo/c;

    move-result-object v0

    new-instance v8, Lcom/byazt/tjo/sp$1;

    move-object v1, v8

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/byazt/tjo/sp$1;-><init>(Lcom/byazt/tjo/sp;ILandroid/util/SparseArray;Lcom/bykv/vk/openvk/api/proto/PluginValueSet;Ljava/util/function/Function;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lcom/byazt/tjo/c;->c(Lcom/byazt/zh/uj;)V

    return-void
.end method

.method private c(Lcom/byazt/nx/c;Lcom/byazt/dj/tt$c;)V
    .locals 1

    .line 143
    invoke-virtual {p1}, Lcom/byazt/nx/c;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/byazt/dj/tt$c;->uj(Ljava/lang/String;)Lcom/byazt/dj/tt$c;

    .line 144
    invoke-virtual {p1}, Lcom/byazt/nx/c;->ve()F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/byazt/dj/tt$c;->c(F)Lcom/byazt/dj/tt$c;

    .line 145
    invoke-virtual {p1}, Lcom/byazt/nx/c;->uj()F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/byazt/dj/tt$c;->tt(F)Lcom/byazt/dj/tt$c;

    .line 146
    invoke-virtual {p1}, Lcom/byazt/nx/c;->tt()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/byazt/dj/tt$c;->tt(I)Lcom/byazt/dj/tt$c;

    .line 147
    invoke-virtual {p1}, Lcom/byazt/nx/c;->c()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/byazt/dj/tt$c;->c(I)Lcom/byazt/dj/tt$c;

    return-void
.end method

.method public static synthetic c(Lcom/byazt/tjo/sp;ILandroid/util/SparseArray;Lcom/bykv/vk/openvk/api/proto/PluginValueSet;Ljava/util/function/Function;Ljava/util/Map;Z)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p6}, Lcom/byazt/tjo/sp;->c(ILandroid/util/SparseArray;Lcom/bykv/vk/openvk/api/proto/PluginValueSet;Ljava/util/function/Function;Ljava/util/Map;Z)V

    return-void
.end method


# virtual methods
.method public apply(Landroid/util/SparseArray;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/byazt/tjo/sp;->c(Landroid/util/SparseArray;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/byazt/tjo/sp;->apply(Landroid/util/SparseArray;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
