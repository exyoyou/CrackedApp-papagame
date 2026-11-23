.class public abstract Lcom/byazt/nc/i;
.super Lcom/byazt/nc/da;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x103,
        0x2a
    }
.end annotation


# instance fields
.field public c:Lcom/bykv/vk/openvk/api/proto/PluginValueSet;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/nc/da;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/byazt/nc/da;->values()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public apply(Landroid/util/SparseArray;)Ljava/lang/Object;
    .locals 6
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

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/rl/c;->tt()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    move-result-object v1

    const v2, -0x5f5e0f3

    .line 3
    invoke-interface {v1, v2}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->intValue(I)I

    move-result v2

    const v3, -0x5f5e0f1

    .line 4
    const-class v4, Ljava/lang/Class;

    invoke-interface {v1, v3, v4}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    const v3, -0x5f5e0f2

    if-eq v2, v3, :cond_3

    const v3, 0x2234f

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    .line 5
    invoke-super {p0, p1}, Lcom/byazt/nc/da;->apply(Landroid/util/SparseArray;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_0
    new-instance p1, Lcom/byazt/uz/c;

    invoke-static {}, Ln0/a;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v5, v2}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/byazt/uz/c;-><init>(Ljava/util/function/Function;)V

    .line 7
    invoke-virtual {p0, p1}, Lcom/byazt/nc/i;->setDrawVideoListener(Lcom/byazt/uz/c;)V

    goto :goto_1

    .line 8
    :pswitch_1
    const-class p1, Landroid/graphics/Bitmap;

    invoke-interface {v1, v5, p1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 9
    invoke-interface {v1, v4}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->intValue(I)I

    move-result v1

    .line 10
    invoke-virtual {p0, p1, v1}, Lcom/byazt/nc/i;->setPauseIcon(Landroid/graphics/Bitmap;I)V

    goto :goto_1

    .line 11
    :pswitch_2
    invoke-interface {v1, v5}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->booleanValue(I)Z

    move-result p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/byazt/nc/i;->setCanInterruptVideoPlay(Z)V

    goto :goto_1

    .line 13
    :cond_1
    invoke-static {}, Ln0/a;->a()Ljava/lang/Class;

    move-result-object p1

    invoke-interface {v1, v5, p1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object p1

    .line 14
    invoke-interface {v1, v4}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->intValue(I)I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 15
    new-instance v1, Lcom/byazt/am/n;

    invoke-direct {v1, p1}, Lcom/byazt/am/n;-><init>(Ljava/util/function/Function;)V

    goto :goto_0

    .line 16
    :cond_2
    new-instance v1, Lcom/byazt/lsp/ve;

    invoke-direct {v1, p1}, Lcom/byazt/lsp/ve;-><init>(Ljava/util/function/Function;)V

    .line 17
    :goto_0
    invoke-virtual {p0, v1}, Lcom/byazt/nc/u;->setExpressRenderListener(Lcom/byazt/lsp/ve;)V

    :goto_1
    return-object v0

    .line 18
    :cond_3
    invoke-virtual {p0}, Lcom/byazt/nc/i;->values()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    move-result-object p1

    invoke-interface {p1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->sparseArray()Landroid/util/SparseArray;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x29875
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/byazt/nc/i;->apply(Landroid/util/SparseArray;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract setCanInterruptVideoPlay(Z)V
.end method

.method public abstract setDrawVideoListener(Lcom/byazt/uz/c;)V
.end method

.method public abstract setPauseIcon(Landroid/graphics/Bitmap;I)V
.end method

.method public values()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nc/i;->c:Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/byazt/nc/i;->c()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/byazt/nc/i;->c:Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 11
    .line 12
    return-object v0
.end method
