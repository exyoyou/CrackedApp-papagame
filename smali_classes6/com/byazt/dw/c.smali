.class public abstract Lcom/byazt/dw/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x201,
        0x14
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
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/rl/c;->c()Lcom/byazt/rl/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/byazt/dw/c$1;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/byazt/dw/c$1;-><init>(Lcom/byazt/dw/c;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Lcom/byazt/lq/uj;->c(Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const v2, 0x41745

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Lcom/byazt/rl/c;->c(ILjava/lang/Object;)Lcom/byazt/rl/c;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/byazt/rl/c;->tt()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method


# virtual methods
.method public apply(Landroid/util/SparseArray;)Ljava/lang/Object;
    .locals 11
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

    const v2, -0x5f5e0f2

    if-eq v1, v2, :cond_1

    .line 5
    const-class v2, Ljava/lang/Integer;

    const/4 v3, 0x1

    const-class v4, Landroid/app/Activity;

    const/4 v5, 0x0

    packed-switch v1, :pswitch_data_0

    const-class v6, Landroid/app/Dialog;

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    goto/16 :goto_0

    .line 6
    :pswitch_0
    invoke-interface {p1, v5, v4}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 7
    const-class v1, Ljava/util/Map;

    invoke-interface {p1, v3, v1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 8
    invoke-virtual {p0, v0, p1}, Lcom/byazt/dw/c;->getDislikeDialog(Landroid/app/Activity;Ljava/util/Map;)Lcom/byazt/dw/ve;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_1
    invoke-interface {p1, v5, v4}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 10
    invoke-virtual {p0, p1}, Lcom/byazt/dw/c;->getDislikeDialog(Landroid/app/Activity;)Lcom/byazt/dw/ve;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_2
    invoke-virtual {p0}, Lcom/byazt/dw/c;->getDislikeInfo()Lcom/byazt/nc/uj;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_3
    invoke-interface {p1, v5, v6}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    .line 13
    invoke-interface {p1, v3, v2}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->arrayValue(ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Integer;

    .line 14
    invoke-virtual {p0, v0, p1}, Lcom/byazt/dw/c;->getDislikeDialog(Landroid/app/Dialog;[Ljava/lang/Integer;)Lcom/byazt/nc/sp;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_4
    invoke-interface {p1, v5, v4}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 16
    invoke-virtual {p0, p1}, Lcom/byazt/dw/c;->getDislikeDialog2(Landroid/app/Activity;)Lcom/byazt/nc/sp;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_5
    invoke-interface {p1, v5, v6}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Dialog;

    .line 18
    invoke-interface {p1, v3, v2}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->arrayValue(ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Integer;

    .line 19
    invoke-virtual {p0, v1, p1}, Lcom/byazt/dw/c;->setDislikeDialog(Landroid/app/Dialog;[Ljava/lang/Integer;)V

    goto :goto_0

    .line 20
    :pswitch_6
    invoke-interface {p1, v5, v4}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 21
    new-instance v2, Lcom/byazt/dhf/c;

    invoke-static {}, Ln0/a;->a()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/byazt/dhf/c;-><init>(Ljava/util/function/Function;)V

    .line 22
    invoke-virtual {p0, v1, v2}, Lcom/byazt/dw/c;->setDislikeCallback(Landroid/app/Activity;Lcom/byazt/dhf/c;)V

    goto :goto_0

    .line 23
    :pswitch_7
    invoke-virtual {p0}, Lcom/byazt/dw/c;->hasDislike()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 24
    :pswitch_8
    invoke-interface {p1, v5, v4}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/app/Activity;

    .line 25
    const-class v1, Landroid/view/ViewGroup;

    invoke-interface {p1, v3, v1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/view/ViewGroup;

    const/4 v1, 0x2

    .line 26
    const-class v2, Ljava/util/List;

    invoke-interface {p1, v1, v2}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/util/List;

    const/4 v1, 0x3

    .line 27
    invoke-interface {p1, v1, v2}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/util/List;

    const/4 v1, 0x4

    .line 28
    invoke-interface {p1, v1, v2}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/util/List;

    .line 29
    new-instance v10, Lcom/byazt/am/uj;

    const/4 v1, 0x5

    invoke-static {}, Ln0/a;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object p1

    invoke-direct {v10, p1}, Lcom/byazt/am/uj;-><init>(Ljava/util/function/Function;)V

    move-object v4, p0

    .line 30
    invoke-virtual/range {v4 .. v10}, Lcom/byazt/dw/c;->registerView(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/byazt/am/uj;)V

    :goto_0
    return-object v0

    .line 31
    :pswitch_9
    invoke-virtual {p0}, Lcom/byazt/dw/c;->getInteractionType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 32
    :pswitch_a
    invoke-virtual {p0}, Lcom/byazt/dw/c;->getAdImageMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 33
    :pswitch_b
    invoke-virtual {p0}, Lcom/byazt/dw/c;->getSource()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 34
    :pswitch_c
    invoke-virtual {p0}, Lcom/byazt/dw/c;->getImageList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 35
    :pswitch_d
    invoke-virtual {p0}, Lcom/byazt/dw/c;->getStarRating()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-class v0, Ljava/lang/Double;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 36
    :pswitch_e
    invoke-virtual {p0}, Lcom/byazt/dw/c;->getActionText()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 37
    :pswitch_f
    invoke-virtual {p0}, Lcom/byazt/dw/c;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 38
    :pswitch_10
    invoke-virtual {p0}, Lcom/byazt/dw/c;->getIconUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 39
    :pswitch_11
    invoke-virtual {p0}, Lcom/byazt/dw/c;->getDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 40
    :pswitch_12
    invoke-virtual {p0}, Lcom/byazt/dw/c;->getTitle()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/dw/c;->values()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    move-result-object p1

    invoke-interface {p1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->sparseArray()Landroid/util/SparseArray;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x416e1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x416f0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x41746
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/byazt/dw/c;->apply(Landroid/util/SparseArray;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract getActionText()Ljava/lang/String;
.end method

.method public abstract getAdImageMode()I
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getDislikeDialog(Landroid/app/Activity;)Lcom/byazt/dw/ve;
.end method

.method public abstract getDislikeDialog(Landroid/app/Activity;Ljava/util/Map;)Lcom/byazt/dw/ve;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/byazt/dw/ve;"
        }
    .end annotation
.end method

.method public abstract getDislikeDialog(Landroid/app/Dialog;[Ljava/lang/Integer;)Lcom/byazt/nc/sp;
.end method

.method public abstract getDislikeDialog2(Landroid/app/Activity;)Lcom/byazt/nc/sp;
.end method

.method public abstract getDislikeInfo()Lcom/byazt/nc/uj;
.end method

.method public abstract getIconUrl()Ljava/lang/String;
.end method

.method public abstract getImageList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getImageUrl()Ljava/lang/String;
.end method

.method public abstract getInteractionType()I
.end method

.method public abstract getNativeAdAppInfo()Lcom/byazt/dw/uj;
.end method

.method public abstract getSource()Ljava/lang/String;
.end method

.method public abstract getStarRating()D
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract hasDislike()Z
.end method

.method public abstract registerView(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/byazt/am/uj;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/byazt/am/uj;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setDislikeCallback(Landroid/app/Activity;Lcom/byazt/dhf/c;)V
.end method

.method public abstract setDislikeDialog(Landroid/app/Dialog;[Ljava/lang/Integer;)V
.end method

.method public values()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dw/c;->c:Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/byazt/dw/c;->c()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/byazt/dw/c;->c:Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 11
    .line 12
    return-object v0
.end method
