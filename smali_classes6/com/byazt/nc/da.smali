.class public abstract Lcom/byazt/nc/da;
.super Lcom/byazt/nc/u;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x103,
        0x48
    }
.end annotation


# instance fields
.field public c:Lcom/bykv/vk/openvk/api/proto/PluginValueSet;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/nc/u;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/byazt/nc/u;->values()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/byazt/rl/c;->c(Lcom/bykv/vk/openvk/api/proto/PluginValueSet;)Lcom/byazt/rl/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/byazt/nc/da$1;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/byazt/nc/da$1;-><init>(Lcom/byazt/nc/da;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Lcom/byazt/lq/uj;->c(Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const v2, 0x27101

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v2, v1}, Lcom/byazt/rl/c;->c(ILjava/lang/Object;)Lcom/byazt/rl/c;

    .line 22
    .line 23
    .line 24
    new-instance v1, Lcom/byazt/nc/da$2;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/byazt/nc/da$2;-><init>(Lcom/byazt/nc/da;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Lcom/byazt/lq/uj;->c(Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const v2, 0x27102

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2, v1}, Lcom/byazt/rl/c;->c(ILjava/lang/Object;)Lcom/byazt/rl/c;

    .line 37
    .line 38
    .line 39
    new-instance v1, Lcom/byazt/nc/da$3;

    .line 40
    .line 41
    invoke-direct {v1, p0}, Lcom/byazt/nc/da$3;-><init>(Lcom/byazt/nc/da;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v1}, Lcom/byazt/lq/uj;->c(Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const v2, 0x27103

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2, v1}, Lcom/byazt/rl/c;->c(ILjava/lang/Object;)Lcom/byazt/rl/c;

    .line 52
    .line 53
    .line 54
    new-instance v1, Lcom/byazt/nc/da$4;

    .line 55
    .line 56
    invoke-direct {v1, p0}, Lcom/byazt/nc/da$4;-><init>(Lcom/byazt/nc/da;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v1}, Lcom/byazt/lq/uj;->c(Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const v2, 0x27104

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v2, v1}, Lcom/byazt/rl/c;->c(ILjava/lang/Object;)Lcom/byazt/rl/c;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/byazt/rl/c;->tt()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    return-object v0
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

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_0

    .line 5
    invoke-super {p0, p1}, Lcom/byazt/nc/u;->apply(Landroid/util/SparseArray;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :sswitch_0
    new-instance p1, Lcom/byazt/bf/tt;

    invoke-static {}, Ln0/a;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/byazt/bf/tt;-><init>(Ljava/util/function/Function;)V

    .line 7
    invoke-virtual {p0, p1}, Lcom/byazt/nc/da;->setVideoRewardListener(Lcom/byazt/bf/tt;)V

    goto :goto_1

    .line 8
    :sswitch_1
    new-instance p1, Lcom/byazt/bf/c;

    invoke-static {}, Ln0/a;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/byazt/bf/c;-><init>(Ljava/util/function/Function;)V

    .line 9
    invoke-virtual {p0, p1}, Lcom/byazt/nc/da;->setVideoAdListener(Lcom/byazt/bf/c;)V

    goto :goto_1

    .line 10
    :sswitch_2
    invoke-static {}, Ln0/a;->a()Ljava/lang/Class;

    move-result-object p1

    invoke-interface {v1, v3, p1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object p1

    const/4 v2, 0x1

    .line 11
    invoke-interface {v1, v2}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->intValue(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 12
    new-instance v1, Lcom/byazt/am/n;

    invoke-direct {v1, p1}, Lcom/byazt/am/n;-><init>(Ljava/util/function/Function;)V

    goto :goto_0

    .line 13
    :cond_1
    new-instance v1, Lcom/byazt/lsp/ve;

    invoke-direct {v1, p1}, Lcom/byazt/lsp/ve;-><init>(Ljava/util/function/Function;)V

    .line 14
    :goto_0
    invoke-virtual {p0, v1}, Lcom/byazt/nc/u;->setExpressRenderListener(Lcom/byazt/lsp/ve;)V

    :goto_1
    return-object v0

    .line 15
    :sswitch_3
    invoke-virtual {p0}, Lcom/byazt/nc/da;->values()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    move-result-object p1

    invoke-interface {p1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->sparseArray()Landroid/util/SparseArray;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5f5e0f2 -> :sswitch_3
        0x2234f -> :sswitch_2
        0x27165 -> :sswitch_1
        0x27166 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/byazt/nc/da;->apply(Landroid/util/SparseArray;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract getAdViewHeight()I
.end method

.method public abstract getAdViewWidth()I
.end method

.method public abstract getCustomVideo()Lcom/byazt/yh/c;
.end method

.method public abstract getVideoDuration()D
.end method

.method public abstract setVideoAdListener(Lcom/byazt/bf/c;)V
.end method

.method public abstract setVideoRewardListener(Lcom/byazt/bf/tt;)V
.end method

.method public values()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nc/da;->c:Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/byazt/nc/da;->c()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/byazt/nc/da;->c:Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 11
    .line 12
    return-object v0
.end method
