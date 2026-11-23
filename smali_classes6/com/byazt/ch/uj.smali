.class public abstract Lcom/byazt/ch/uj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x41e,
        0xf
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
.field public c:Lcom/bykv/vk/openvk/api/proto/PluginValueSet;


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

.method private c()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/rl/c;->c()Lcom/byazt/rl/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/rl/c;->tt()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method


# virtual methods
.method public apply(Landroid/util/SparseArray;)Ljava/lang/Object;
    .locals 13
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
    invoke-static {p1}, Lcom/byazt/rl/c;->c(Landroid/util/SparseArray;)Lcom/byazt/rl/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/rl/c;->tt()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    move-result-object p1

    const v1, -0x5f5e0f3

    .line 3
    invoke-interface {p1, v1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->intValue(I)I

    move-result v1

    const v2, -0x5f5e0f1

    .line 4
    const-class v3, Ljava/lang/Class;

    invoke-interface {p1, v2, v3}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    .line 5
    const-class v2, Landroid/util/SparseArray;

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v1, :sswitch_data_0

    const/4 v5, 0x2

    const/4 v6, 0x3

    const-class v7, Landroid/content/Context;

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 6
    :pswitch_0
    invoke-interface {p1, v4, v7}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 7
    invoke-static {}, Ln0/a;->a()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {p1, v6, v4}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object v4

    .line 8
    new-instance v6, Lcom/byazt/cw/c;

    invoke-static {}, Ln0/a;->a()Ljava/lang/Class;

    move-result-object v7

    invoke-interface {p1, v5, v7}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object v5

    invoke-direct {v6, v5}, Lcom/byazt/cw/c;-><init>(Ljava/util/function/Function;)V

    .line 9
    new-instance v5, Lcom/byazt/ch/c;

    invoke-interface {p1, v3, v2}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    invoke-direct {v5, p1, v0}, Lcom/byazt/ch/c;-><init>(Landroid/util/SparseArray;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v5, v6, v4}, Lcom/byazt/ch/uj;->loadDrawToken(Landroid/content/Context;Lcom/byazt/ch/c;Lcom/byazt/cw/c;Ljava/util/function/Function;)V

    goto/16 :goto_1

    .line 10
    :pswitch_1
    invoke-interface {p1, v4, v7}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 11
    invoke-static {}, Ln0/a;->a()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {p1, v6, v4}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object v4

    .line 12
    new-instance v6, Lcom/byazt/cw/ve;

    invoke-static {}, Ln0/a;->a()Ljava/lang/Class;

    move-result-object v7

    invoke-interface {p1, v5, v7}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object v5

    invoke-direct {v6, v5}, Lcom/byazt/cw/ve;-><init>(Ljava/util/function/Function;)V

    .line 13
    new-instance v5, Lcom/byazt/ch/c;

    invoke-interface {p1, v3, v2}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    invoke-direct {v5, p1, v0}, Lcom/byazt/ch/c;-><init>(Landroid/util/SparseArray;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v5, v6, v4}, Lcom/byazt/ch/uj;->loadNativeToken(Landroid/content/Context;Lcom/byazt/ch/c;Lcom/byazt/cw/ve;Ljava/util/function/Function;)V

    goto/16 :goto_1

    .line 14
    :pswitch_2
    new-instance v0, Lcom/byazt/cw/uj;

    invoke-static {}, Ln0/a;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p1, v4, v1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/byazt/cw/uj;-><init>(Ljava/util/function/Function;)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/byazt/ch/uj;->showOpenOrInstallAppDialog(Lcom/byazt/cw/uj;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 16
    :pswitch_3
    invoke-interface {p1, v4}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->intValue(I)I

    move-result p1

    .line 17
    invoke-virtual {p0, p1}, Lcom/byazt/ch/uj;->setThemeStatus(I)V

    goto/16 :goto_1

    .line 18
    :pswitch_4
    invoke-interface {p1, v4, v7}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 19
    const-class v2, [I

    invoke-interface {p1, v3, v2}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    .line 20
    invoke-virtual {p0, v1, p1}, Lcom/byazt/ch/uj;->requestPermissionIfNecessary(Landroid/content/Context;[I)V

    goto/16 :goto_1

    .line 21
    :pswitch_5
    invoke-interface {p1, v4, v7}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 22
    invoke-virtual {p0, p1}, Lcom/byazt/ch/uj;->requestPermissionIfNecessary(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 23
    :pswitch_6
    invoke-interface {p1, v4, v2}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    .line 24
    new-instance v1, Lcom/byazt/dj/uj;

    invoke-direct {v1, p1}, Lcom/byazt/dj/uj;-><init>(Landroid/util/SparseArray;)V

    invoke-virtual {p0, v1}, Lcom/byazt/ch/uj;->updatePrivacyConfig(Lcom/byazt/dj/uj;)V

    goto/16 :goto_1

    .line 25
    :pswitch_7
    const-class v1, Ljava/lang/String;

    invoke-interface {p1, v4, v1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 26
    invoke-virtual {p0, p1}, Lcom/byazt/ch/uj;->setPulisherDid(Ljava/lang/String;)V

    goto :goto_1

    .line 27
    :pswitch_8
    new-instance v1, Lcom/byazt/je/ve;

    invoke-interface {p1, v4, v2}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    invoke-direct {v1, p1}, Lcom/byazt/je/ve;-><init>(Landroid/util/SparseArray;)V

    invoke-virtual {p0, v1}, Lcom/byazt/ch/uj;->setUserInfoForSegment(Lcom/byazt/je/ve;)V

    goto :goto_1

    .line 28
    :pswitch_9
    const-class v1, Landroid/app/Activity;

    invoke-interface {p1, v4, v1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/app/Activity;

    .line 29
    const-class v1, Ljava/util/List;

    invoke-interface {p1, v3, v1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    .line 30
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object v2

    .line 33
    new-instance v3, Lcom/byazt/ch/n;

    invoke-direct {v3, v2}, Lcom/byazt/ch/n;-><init>(Ljava/util/function/Function;)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 34
    :cond_2
    invoke-interface {p1, v5}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->intValue(I)I

    move-result v10

    .line 35
    invoke-interface {p1, v6}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->intValue(I)I

    move-result v11

    const/4 v1, 0x4

    .line 36
    invoke-static {}, Ln0/a;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object v12

    move-object v7, p0

    .line 37
    invoke-virtual/range {v7 .. v12}, Lcom/byazt/ch/uj;->preload(Landroid/app/Activity;Ljava/util/List;IILjava/util/function/Function;)V

    goto :goto_1

    .line 38
    :sswitch_0
    const-class v1, Ljava/util/Map;

    invoke-interface {p1, v4, v1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 39
    invoke-virtual {p0, p1}, Lcom/byazt/ch/uj;->updateLocalExtra(Ljava/util/Map;)V

    :goto_1
    return-object v0

    .line 40
    :sswitch_1
    invoke-interface {p1, v4}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->intValue(I)I

    move-result v0

    .line 41
    invoke-interface {p1, v3, v2}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    .line 42
    invoke-static {p1}, Lcom/byazt/rl/c;->c(Landroid/util/SparseArray;)Lcom/byazt/rl/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/rl/c;->tt()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/byazt/ch/uj;->mtool(ILcom/bykv/vk/openvk/api/proto/PluginValueSet;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 43
    :sswitch_2
    invoke-virtual {p0}, Lcom/byazt/ch/uj;->getMediationExtraInfo()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 44
    :sswitch_3
    invoke-virtual {p0}, Lcom/byazt/ch/uj;->values()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    move-result-object p1

    invoke-interface {p1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->sparseArray()Landroid/util/SparseArray;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x5f5e0f2 -> :sswitch_3
        0x41ec8 -> :sswitch_2
        0x422c3 -> :sswitch_1
        0x422ca -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x41ebd
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
    .end packed-switch
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/byazt/ch/uj;->apply(Landroid/util/SparseArray;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract getMediationExtraInfo()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract loadDrawToken(Landroid/content/Context;Lcom/byazt/ch/c;Lcom/byazt/cw/c;Ljava/util/function/Function;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/byazt/ch/c;",
            "Lcom/byazt/cw/c;",
            "Ljava/util/function/Function<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loadNativeToken(Landroid/content/Context;Lcom/byazt/ch/c;Lcom/byazt/cw/ve;Ljava/util/function/Function;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/byazt/ch/c;",
            "Lcom/byazt/cw/ve;",
            "Ljava/util/function/Function<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract mtool(ILcom/bykv/vk/openvk/api/proto/PluginValueSet;)Ljava/lang/Object;
.end method

.method public abstract preload(Landroid/app/Activity;Ljava/util/List;IILjava/util/function/Function;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/byazt/ch/n;",
            ">;II",
            "Ljava/util/function/Function<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract requestPermissionIfNecessary(Landroid/content/Context;)V
.end method

.method public abstract requestPermissionIfNecessary(Landroid/content/Context;[I)V
.end method

.method public abstract setPulisherDid(Ljava/lang/String;)V
.end method

.method public abstract setThemeStatus(I)V
.end method

.method public abstract setUserInfoForSegment(Lcom/byazt/je/ve;)V
.end method

.method public abstract showOpenOrInstallAppDialog(Lcom/byazt/cw/uj;)I
.end method

.method public abstract updateLocalExtra(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updatePrivacyConfig(Lcom/byazt/dj/uj;)V
.end method

.method public values()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ch/uj;->c:Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/byazt/ch/uj;->c()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/byazt/ch/uj;->c:Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 11
    .line 12
    return-object v0
.end method
