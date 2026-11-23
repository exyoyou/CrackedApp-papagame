.class public Lcom/byazt/omf/md;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f,
        0x15d
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
.field public final c:Lcom/bykv/vk/openvk/api/proto/PluginValueSet;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/byazt/rl/c;->c()Lcom/byazt/rl/c;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lcom/byazt/omf/md$1;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/byazt/omf/md$1;-><init>(Lcom/byazt/omf/md;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lcom/byazt/lq/uj;->c(Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/16 v2, 0xb

    .line 18
    .line 19
    invoke-virtual {v0, v2, v1}, Lcom/byazt/rl/c;->c(ILjava/lang/Object;)Lcom/byazt/rl/c;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/16 v1, 0xc

    .line 24
    .line 25
    const-string v2, "7.6.1.1"

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/byazt/rl/c;->c(ILjava/lang/String;)Lcom/byazt/rl/c;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/byazt/rl/c;->tt()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/byazt/omf/md;->c:Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 36
    .line 37
    return-void
.end method

.method private c(Ljava/lang/Object;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/byazt/aas/zb;

    invoke-direct {v0}, Lcom/byazt/aas/zb;-><init>()V

    const-string v1, "listener"

    .line 2
    invoke-virtual {v0, v1, p1}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->nb()Ljava/util/function/Function;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object v1

    const/16 v2, 0xa2

    .line 5
    invoke-virtual {v1, v2}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    move-result-object v1

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2, p1}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    move-result-object p1

    const-class v1, Ljava/lang/Void;

    .line 7
    invoke-virtual {p1, v1}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object p1

    .line 9
    invoke-static {v0, p1}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private c(Ljava/util/function/Function;)V
    .locals 2
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

    if-nez p1, :cond_0

    return-void

    .line 14
    :cond_0
    invoke-static {p1}, Lcom/byazt/yxi/ve;->c(Ljava/util/function/Function;)Landroid/util/SparseArray;

    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/byazt/rl/c;->c(Landroid/util/SparseArray;)Lcom/byazt/rl/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/rl/c;->tt()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    move-result-object v0

    const/16 v1, 0x2710

    .line 16
    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->intValue(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 17
    :cond_1
    invoke-static {}, Lcom/byazt/omf/p;->x()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18
    invoke-static {}, Lcom/byazt/apd/tt;->c()Lcom/byazt/apd/tt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/apd/tt;->c(Ljava/util/function/Function;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private c(Ljava/util/function/Function;Ljava/lang/String;)Z
    .locals 3

    .line 10
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object v0

    const/16 v1, 0x2714

    .line 11
    invoke-virtual {v0, v1}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    .line 12
    invoke-virtual {v0}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 13
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private tt(Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Lcom/bytedance/component/sdk/annotation/DungeonFlag;
    .end annotation

    .line 1
    invoke-static {p1}, Ln0/b;->a(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "qa_common_tool"

    .line 12
    .line 13
    invoke-direct {p0, v0, v1}, Lcom/byazt/omf/md;->c(Ljava/util/function/Function;Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-static {p1}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/byazt/lj/ve;->setQATool(Ljava/util/function/Function;)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/16 v1, 0x2712

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-class v2, Ljava/lang/Void;

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    .line 39
    .line 40
    .line 41
    const/16 v1, 0x4e22

    .line 42
    .line 43
    invoke-static {}, Lcom/byazt/lj/ve;->getInstance()Lcom/byazt/lj/ve;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v0, v1, v2}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v0}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method public apply(Landroid/util/SparseArray;)Ljava/lang/Object;
    .locals 5
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

    if-eqz p1, :cond_6

    .line 2
    invoke-static {p1}, Lcom/byazt/rl/c;->c(Landroid/util/SparseArray;)Lcom/byazt/rl/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/rl/c;->tt()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    move-result-object p1

    const v1, -0x5f5e0f3

    .line 3
    invoke-interface {p1, v1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->intValue(I)I

    move-result v1

    const v2, -0x5f5e0f2

    if-eq v1, v2, :cond_5

    const v2, -0xf4178

    .line 4
    const-class v3, Landroid/content/Context;

    if-eq v1, v2, :cond_4

    const/16 v2, 0x10

    if-eq v1, v2, :cond_3

    const/16 v2, 0x13

    const-class v4, Landroid/os/Bundle;

    if-eq v1, v2, :cond_1

    const v2, 0xf4179

    if-eq v1, v2, :cond_0

    const/16 v2, 0x8

    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
    const/16 v0, 0x9

    .line 5
    const-class v1, Ljava/lang/Class;

    invoke-interface {p1, v0, v1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const/16 v1, 0xa

    .line 6
    invoke-interface {p1, v1, v4}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 7
    invoke-virtual {p0, v0, p1}, Lcom/byazt/omf/md;->getExtra(Ljava/lang/Class;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_1
    invoke-static {}, Ln0/a;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/byazt/omf/md;->unregister(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 10
    :pswitch_2
    const-class v1, Ljava/lang/Object;

    invoke-interface {p1, v2, v1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/byazt/omf/md;->register(Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_3
    const/4 v1, 0x7

    .line 12
    invoke-interface {p1, v1, v3}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 13
    invoke-virtual {p0, p1}, Lcom/byazt/omf/md;->requestPermissionIfNecessary(Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_4
    const/16 v0, 0xd

    .line 14
    invoke-interface {p1, v0}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->booleanValue(I)Z

    move-result v0

    const/16 v1, 0xe

    .line 15
    invoke-interface {p1, v1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->intValue(I)I

    move-result v1

    .line 16
    invoke-static {p1}, Lcom/byazt/rl/c;->c(Lcom/bykv/vk/openvk/api/proto/PluginValueSet;)Lcom/byazt/rl/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/rl/c;->tt()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/byazt/omf/md;->getBiddingToken(Lcom/bykv/vk/openvk/api/proto/PluginValueSet;ZI)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_5
    const/16 v1, 0xb

    .line 17
    invoke-interface {p1, v1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->intValue(I)I

    move-result p1

    .line 18
    invoke-virtual {p0, p1}, Lcom/byazt/omf/md;->setThemeStatus(I)V

    goto/16 :goto_0

    :cond_0
    return-object p0

    :cond_1
    const/16 v0, 0x14

    .line 19
    invoke-interface {p1, v0, v4}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    if-eqz p1, :cond_2

    const-string v0, "event_id"

    const/4 v1, -0x1

    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "event_type"

    .line 21
    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "package_name"

    .line 22
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "event_token"

    .line 23
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-static {p1}, Lcom/byazt/nr/c;->ve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 25
    new-instance v3, Lcom/byazt/qt/c;

    invoke-direct {v3}, Lcom/byazt/qt/c;-><init>()V

    .line 26
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "tag"

    .line 27
    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/byazt/qt/c;->a(Ljava/lang/String;)V

    const-string p1, "value"

    .line 28
    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/byazt/qt/c;->sp(Ljava/lang/String;)V

    const-string p1, "log_extra"

    .line 29
    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/byazt/qt/c;->uj(Ljava/lang/String;)V

    const-string p1, "download_url"

    .line 30
    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/byazt/qt/c;->i(Ljava/lang/String;)V

    const-string p1, "save_path"

    .line 31
    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/byazt/qt/c;->x(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :catch_0
    invoke-virtual {v3, v0}, Lcom/byazt/qt/c;->c(I)V

    .line 33
    invoke-virtual {v3, v2}, Lcom/byazt/qt/c;->ve(Ljava/lang/String;)V

    .line 34
    invoke-static {v3, v1}, Lcom/byazt/dk/z;->c(Lcom/byazt/qt/c;I)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 35
    :cond_2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    return-object p1

    :cond_3
    const/16 v1, 0x11

    const/4 v2, 0x0

    .line 36
    invoke-interface {p1, v1, v2}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->booleanValue(IZ)Z

    move-result v1

    const/16 v2, 0x15

    .line 37
    const-class v3, Landroid/util/SparseArray;

    invoke-interface {p1, v2, v3}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    .line 38
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lcom/byazt/omf/x;->c(ZLandroid/util/SparseArray;)V

    return-object v0

    :cond_4
    const v0, -0xf3a70

    .line 39
    invoke-interface {p1, v0, v3}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 40
    new-instance v0, Lcom/byazt/omf/h;

    invoke-direct {v0, p1}, Lcom/byazt/omf/h;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 41
    :cond_5
    iget-object p1, p0, Lcom/byazt/omf/md;->c:Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->sparseArray()Landroid/util/SparseArray;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/byazt/omf/md;->apply(Landroid/util/SparseArray;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public clearFullRewardCache()V
    .locals 1

    .line 1
    const-string v0, "open_ad_sdk_union_meta_cache_kv"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/aas/eo;->c(Ljava/lang/String;)Lcom/byazt/iy/n;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/byazt/iy/n;->clear()V

    .line 8
    .line 9
    .line 10
    const-string v0, "tt_materialMeta"

    .line 11
    .line 12
    invoke-static {v0}, Lcom/byazt/aas/eo;->c(Ljava/lang/String;)Lcom/byazt/iy/n;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Lcom/byazt/iy/n;->clear()V

    .line 17
    .line 18
    .line 19
    const-string v0, "tt_splash"

    .line 20
    .line 21
    invoke-static {v0}, Lcom/byazt/aas/eo;->c(Ljava/lang/String;)Lcom/byazt/iy/n;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Lcom/byazt/iy/n;->clear()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public createLoader(Landroid/content/Context;)Lcom/byazt/omf/h;
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/omf/h;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/byazt/omf/h;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getBiddingToken(Lcom/bykv/vk/openvk/api/proto/PluginValueSet;ZI)Ljava/lang/String;
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-static {}, Lcom/byazt/omf/gt;->c()Lcom/byazt/omf/gu;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Lcom/byazt/omf/gt;->c()Lcom/byazt/omf/gu;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lcom/byazt/dj/tt;

    .line 15
    .line 16
    invoke-interface {p1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->sparseArray()Landroid/util/SparseArray;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {}, Lcom/byazt/vxy/c;->tt()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-direct {v1, p1, v2}, Lcom/byazt/dj/tt;-><init>(Landroid/util/SparseArray;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v1, p2, p3}, Lcom/byazt/omf/gu;->c(Lcom/byazt/dj/tt;ZI)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1

    .line 32
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 33
    return-object p1
.end method

.method public getExtra(Ljava/lang/Class;Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const-string v0, "type"

    .line 4
    .line 5
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {p1, p2}, Lcom/byazt/sq/uj;->c(Ljava/lang/Class;Landroid/os/Bundle;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lcom/byazt/ue/a;->c(Landroid/content/Context;)Lcom/byazt/ue/a;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0, p1, p2}, Lcom/byazt/sq/uj;->c(Lcom/byazt/sq/uj$c;Ljava/lang/Class;Landroid/os/Bundle;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_1
    const-class v0, Landroid/util/SparseArray;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    const/4 v2, 0x0

    .line 31
    if-eq p1, v0, :cond_e

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v3, "com.bytedance.sdk.openadsdk.AdConfig"

    .line 40
    .line 41
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    goto/16 :goto_0

    .line 48
    .line 49
    :cond_2
    const-class v0, Landroid/os/Bundle;

    .line 50
    .line 51
    const/4 v3, 0x1

    .line 52
    const-string v4, "action"

    .line 53
    .line 54
    if-ne p1, v0, :cond_7

    .line 55
    .line 56
    if-nez p2, :cond_3

    .line 57
    .line 58
    return-object v1

    .line 59
    :cond_3
    invoke-virtual {p2, v4, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_6

    .line 64
    .line 65
    if-eq p1, v3, :cond_5

    .line 66
    .line 67
    const/4 p2, 0x2

    .line 68
    if-eq p1, p2, :cond_4

    .line 69
    .line 70
    goto/16 :goto_1

    .line 71
    .line 72
    :cond_4
    invoke-virtual {p0}, Lcom/byazt/omf/md;->clearFullRewardCache()V

    .line 73
    .line 74
    .line 75
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    .line 76
    .line 77
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string p2, "splash"

    .line 81
    .line 82
    invoke-virtual {p1, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 83
    .line 84
    .line 85
    const-string p2, "reward"

    .line 86
    .line 87
    invoke-virtual {p1, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 88
    .line 89
    .line 90
    const-string p2, "brand"

    .line 91
    .line 92
    invoke-virtual {p1, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 93
    .line 94
    .line 95
    const-string p2, "other"

    .line 96
    .line 97
    invoke-virtual {p1, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 98
    .line 99
    .line 100
    invoke-static {p1}, Lcom/byazt/ri/c;->c(Lorg/json/JSONObject;)V

    .line 101
    .line 102
    .line 103
    invoke-static {v2}, Lcom/byazt/bzd/sl;->c(I)Lcom/byazt/fk/c;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-interface {p1}, Lcom/byazt/fk/c;->clearCache()V

    .line 108
    .line 109
    .line 110
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p1}, Lcom/byazt/ogz/sl;->st()Lorg/json/JSONObject;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-static {p1}, Lcom/byazt/ri/c;->c(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    .line 120
    .line 121
    goto/16 :goto_1

    .line 122
    .line 123
    :catchall_0
    move-exception p1

    .line 124
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-static {p1}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    goto/16 :goto_1

    .line 132
    .line 133
    :cond_5
    const-string p1, "event_name"

    .line 134
    .line 135
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    const-string v0, "event_extra"

    .line 140
    .line 141
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {v0, p1, p2}, Lcom/byazt/ukr/yp;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    goto/16 :goto_1

    .line 153
    .line 154
    :cond_6
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    const-string v0, "plugin_pkg_name"

    .line 159
    .line 160
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    const-string v2, "plugin_version"

    .line 165
    .line 166
    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    invoke-virtual {p1, v0, p2}, Lcom/byazt/omf/x;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    goto/16 :goto_1

    .line 174
    .line 175
    :cond_7
    const-class v0, Landroid/view/View;

    .line 176
    .line 177
    if-ne p1, v0, :cond_8

    .line 178
    .line 179
    new-instance p1, Lcom/byazt/apd/EcBackUpWebView;

    .line 180
    .line 181
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    invoke-direct {p1, p2}, Lcom/byazt/apd/EcBackUpWebView;-><init>(Landroid/content/Context;)V

    .line 186
    .line 187
    .line 188
    return-object p1

    .line 189
    :cond_8
    const-class v0, Ljava/util/Map;

    .line 190
    .line 191
    if-ne p1, v0, :cond_b

    .line 192
    .line 193
    new-instance p1, Ljava/util/HashMap;

    .line 194
    .line 195
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 196
    .line 197
    .line 198
    if-eqz p2, :cond_a

    .line 199
    .line 200
    const-string v0, "extra_name"

    .line 201
    .line 202
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p2

    .line 206
    const-string v0, "use_mediation_map"

    .line 207
    .line 208
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result p2

    .line 212
    if-eqz p2, :cond_a

    .line 213
    .line 214
    invoke-static {}, Lcom/byazt/omf/AdSdkInitializerHolder;->isSdkInitSuccess()Z

    .line 215
    .line 216
    .line 217
    move-result p2

    .line 218
    if-eqz p2, :cond_9

    .line 219
    .line 220
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    invoke-virtual {p2}, Lcom/byazt/ogz/sl;->cx()Z

    .line 225
    .line 226
    .line 227
    move-result p2

    .line 228
    if-eqz p2, :cond_9

    .line 229
    .line 230
    invoke-static {}, Lcom/byazt/omf/AdSdkInitializerHolder;->hasDispatchAdSdkInitializer()Z

    .line 231
    .line 232
    .line 233
    move-result p2

    .line 234
    if-eqz p2, :cond_9

    .line 235
    .line 236
    const/4 v2, 0x1

    .line 237
    :cond_9
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 238
    .line 239
    .line 240
    move-result-object p2

    .line 241
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    :cond_a
    return-object p1

    .line 245
    :cond_b
    invoke-static {}, Ln0/a;->a()Ljava/lang/Class;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    if-ne p1, v0, :cond_12

    .line 250
    .line 251
    if-nez p2, :cond_c

    .line 252
    .line 253
    return-object v1

    .line 254
    :cond_c
    invoke-virtual {p2, v4, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 255
    .line 256
    .line 257
    move-result p1

    .line 258
    const/4 p2, 0x4

    .line 259
    if-eq p1, p2, :cond_d

    .line 260
    .line 261
    goto :goto_1

    .line 262
    :cond_d
    invoke-static {}, Lcom/byazt/zlb/uj;->create()Lcom/byazt/zlb/uj;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    return-object p1

    .line 267
    :cond_e
    :goto_0
    if-eqz p2, :cond_12

    .line 268
    .line 269
    invoke-virtual {p2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 274
    .line 275
    .line 276
    move-result p1

    .line 277
    if-nez p1, :cond_12

    .line 278
    .line 279
    const-string p1, "is_paid"

    .line 280
    .line 281
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    if-eqz v0, :cond_f

    .line 286
    .line 287
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 292
    .line 293
    .line 294
    move-result p1

    .line 295
    invoke-virtual {v0, p1}, Lcom/byazt/omf/x;->n(Z)V

    .line 296
    .line 297
    .line 298
    :cond_f
    const-string p1, "extra_data"

    .line 299
    .line 300
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    if-eqz v0, :cond_10

    .line 305
    .line 306
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    invoke-virtual {v0, p1}, Lcom/byazt/omf/x;->sp(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    :cond_10
    const-string p1, "keywords"

    .line 318
    .line 319
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 320
    .line 321
    .line 322
    move-result v0

    .line 323
    if-eqz v0, :cond_11

    .line 324
    .line 325
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    invoke-virtual {v0, p1}, Lcom/byazt/omf/x;->x(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    :cond_11
    const-string p1, "quit_work"

    .line 337
    .line 338
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 339
    .line 340
    .line 341
    move-result v0

    .line 342
    if-eqz v0, :cond_12

    .line 343
    .line 344
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    invoke-virtual {p2, p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 349
    .line 350
    .line 351
    move-result p1

    .line 352
    invoke-virtual {v0, p1, v1}, Lcom/byazt/omf/x;->c(ZLandroid/util/SparseArray;)V

    .line 353
    .line 354
    .line 355
    :cond_12
    :goto_1
    return-object v1
.end method

.method public getThemeStatus()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/omf/x;->pu()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public register(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/omf/x;->lr()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/byazt/omf/md;->tt(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    instance-of v0, p1, Landroid/os/Bundle;

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    check-cast p1, Landroid/os/Bundle;

    .line 19
    .line 20
    const-string v0, "_pl_config_info_"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v1, p1}, Lcom/byazt/omf/x;->c(Landroid/os/Bundle;)V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lcom/byazt/omf/x;->cu()Lorg/json/JSONObject;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    invoke-static {}, Lcom/byazt/aas/u;->tt()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_1

    .line 58
    .line 59
    invoke-static {}, Lcom/byazt/zj/tt;->tt()Lcom/byazt/zj/tt;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lcom/byazt/zj/tt;->ve()V

    .line 64
    .line 65
    .line 66
    :cond_1
    return-void

    .line 67
    :cond_2
    invoke-static {p1}, Ln0/b;->a(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const v1, -0x7fffffff

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    const-class v1, Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-static {p1}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    instance-of v1, v0, Ljava/lang/String;

    .line 103
    .line 104
    if-eqz v1, :cond_3

    .line 105
    .line 106
    const-string v1, "TTAdInteractionListener"

    .line 107
    .line 108
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_3

    .line 113
    .line 114
    new-instance v0, Lcom/byazt/ocd/tt;

    .line 115
    .line 116
    invoke-static {p1}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-direct {v0, p1}, Lcom/byazt/ocd/tt;-><init>(Ljava/util/function/Function;)V

    .line 121
    .line 122
    .line 123
    invoke-direct {p0, v0}, Lcom/byazt/omf/md;->c(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :cond_3
    invoke-static {p1}, Lcom/byazt/sq/ve;->tt(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-nez v0, :cond_4

    .line 132
    .line 133
    invoke-static {p1}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-direct {p0, p1}, Lcom/byazt/omf/md;->c(Ljava/util/function/Function;)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :cond_4
    invoke-static {}, Lcom/byazt/omf/p;->x()Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-nez v0, :cond_5

    .line 146
    .line 147
    invoke-static {}, Lcom/byazt/aas/nb;->x()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    const-string v1, "com.pangolin_demo.toutiao"

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-eqz v0, :cond_6

    .line 158
    .line 159
    :cond_5
    if-eqz p1, :cond_6

    .line 160
    .line 161
    invoke-static {p1}, Lcom/byazt/sq/ve;->c(Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    :cond_6
    sget v0, Lcom/byazt/omf/p;->uj:I

    .line 165
    .line 166
    const/16 v1, 0x1ce8

    .line 167
    .line 168
    if-ge v0, v1, :cond_7

    .line 169
    .line 170
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/TTAdInteractionListener;

    .line 171
    .line 172
    if-eqz v0, :cond_7

    .line 173
    .line 174
    new-instance v0, Lcom/byazt/ocd/tt;

    .line 175
    .line 176
    new-instance v1, Lcom/byazt/wrq/n;

    .line 177
    .line 178
    check-cast p1, Lcom/bytedance/sdk/openadsdk/TTAdInteractionListener;

    .line 179
    .line 180
    invoke-direct {v1, p1}, Lcom/byazt/wrq/n;-><init>(Lcom/bytedance/sdk/openadsdk/TTAdInteractionListener;)V

    .line 181
    .line 182
    .line 183
    invoke-direct {v0, v1}, Lcom/byazt/ocd/tt;-><init>(Ljava/util/function/Function;)V

    .line 184
    .line 185
    .line 186
    invoke-direct {p0, v0}, Lcom/byazt/omf/md;->c(Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    :cond_7
    return-void
.end method

.method public requestPermissionIfNecessary(Landroid/content/Context;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/byazt/omf/x;->my()Lcom/byazt/dj/uj;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/byazt/dj/uj;->isCanUseLocation()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0}, Lcom/byazt/dj/uj;->isCanUsePhoneState()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-virtual {v0}, Lcom/byazt/dj/uj;->isCanUseWriteExternal()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .line 34
    .line 35
    const-class v1, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;

    .line 36
    .line 37
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    .line 39
    .line 40
    const/high16 v1, 0x10000000

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    const-string v1, "type"

    .line 46
    .line 47
    const/4 v2, 0x2

    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    invoke-static {p1, v0, v1}, Lcom/byazt/nr/tt;->c(Landroid/content/Context;Landroid/content/Intent;Lcom/byazt/nr/tt$c;)Z

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public setThemeStatus(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/omf/x;->pu()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Lcom/byazt/omf/x;->n(I)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Landroid/content/Intent;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v1, "com.bytedance.openadsdk.themeTypeChangeReceiver"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    const-string v1, "theme_status_change"

    .line 29
    .line 30
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {}, Lcom/byazt/aas/nb;->p()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method public unregister(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/omf/p;->x()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/byazt/aas/nb;->x()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "com.pangolin_demo.toutiao"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    :cond_0
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-static {p1}, Lcom/byazt/sq/ve;->ve(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public values()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/omf/md;->c:Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->sparseArray()Landroid/util/SparseArray;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
