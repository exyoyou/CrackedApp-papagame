.class public abstract Lcom/byazt/nc/tt;
.super Lcom/byazt/nc/x;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x103,
        0xd
    }
.end annotation


# instance fields
.field public c:Lcom/bykv/vk/openvk/api/proto/PluginValueSet;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/nc/x;-><init>()V

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
    new-instance v1, Lcom/byazt/nc/tt$1;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/byazt/nc/tt$1;-><init>(Lcom/byazt/nc/tt;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Lcom/byazt/lq/uj;->c(Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const v2, 0x1adb1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Lcom/byazt/rl/c;->c(ILjava/lang/Object;)Lcom/byazt/rl/c;

    .line 18
    .line 19
    .line 20
    new-instance v1, Lcom/byazt/nc/tt$2;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lcom/byazt/nc/tt$2;-><init>(Lcom/byazt/nc/tt;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Lcom/byazt/lq/uj;->c(Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const v2, 0x1adb3

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v2, v1}, Lcom/byazt/rl/c;->c(ILjava/lang/Object;)Lcom/byazt/rl/c;

    .line 33
    .line 34
    .line 35
    new-instance v1, Lcom/byazt/nc/tt$3;

    .line 36
    .line 37
    invoke-direct {v1, p0}, Lcom/byazt/nc/tt$3;-><init>(Lcom/byazt/nc/tt;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v1}, Lcom/byazt/lq/uj;->c(Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const v2, 0x1adb4

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2, v1}, Lcom/byazt/rl/c;->c(ILjava/lang/Object;)Lcom/byazt/rl/c;

    .line 48
    .line 49
    .line 50
    new-instance v1, Lcom/byazt/nc/tt$4;

    .line 51
    .line 52
    invoke-direct {v1, p0}, Lcom/byazt/nc/tt$4;-><init>(Lcom/byazt/nc/tt;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v1}, Lcom/byazt/lq/uj;->c(Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const v2, 0x1adb5

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v2, v1}, Lcom/byazt/rl/c;->c(ILjava/lang/Object;)Lcom/byazt/rl/c;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/byazt/rl/c;->tt()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
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

    .line 5
    const-class v3, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_0

    .line 6
    invoke-super {p0, p1}, Lcom/byazt/nc/x;->apply(Landroid/util/SparseArray;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :sswitch_0
    invoke-virtual {p0}, Lcom/byazt/nc/tt;->getMediationManager()Lcom/byazt/sbm/sp;

    move-result-object p1

    return-object p1

    .line 8
    :sswitch_1
    invoke-interface {v1, v4, v3}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    .line 9
    const-class v3, Landroid/app/Activity;

    invoke-interface {v1, v2, v3}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 10
    invoke-virtual {p0, p1, v1}, Lcom/byazt/nc/tt;->showSplashCardView(Landroid/view/ViewGroup;Landroid/app/Activity;)V

    goto :goto_0

    .line 11
    :sswitch_2
    invoke-interface {v1, v4, v3}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 12
    invoke-virtual {p0, p1}, Lcom/byazt/nc/tt;->showSplashView(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 13
    :sswitch_3
    new-instance p1, Lcom/byazt/vw/tt;

    invoke-static {}, Ln0/a;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/byazt/vw/tt;-><init>(Ljava/util/function/Function;)V

    .line 14
    invoke-virtual {p0, p1}, Lcom/byazt/nc/tt;->setSplashCardListener(Lcom/byazt/vw/tt;)V

    goto :goto_0

    .line 15
    :sswitch_4
    new-instance p1, Lcom/byazt/vw/c;

    invoke-static {}, Ln0/a;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/byazt/vw/c;-><init>(Ljava/util/function/Function;)V

    .line 16
    invoke-virtual {p0, p1}, Lcom/byazt/nc/tt;->setSplashAdListener(Lcom/byazt/vw/c;)V

    goto :goto_0

    .line 17
    :sswitch_5
    new-instance p1, Lcom/byazt/ocd/ve;

    invoke-static {}, Ln0/a;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/byazt/ocd/ve;-><init>(Ljava/util/function/Function;)V

    .line 18
    invoke-virtual {p0, p1}, Lcom/byazt/nc/tt;->setDownloadListener(Lcom/byazt/ocd/ve;)V

    goto :goto_0

    .line 19
    :sswitch_6
    invoke-virtual {p0}, Lcom/byazt/nc/tt;->hideSkipButton()V

    :goto_0
    return-object v0

    .line 20
    :sswitch_7
    invoke-virtual {p0}, Lcom/byazt/nc/tt;->values()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    move-result-object p1

    invoke-interface {p1}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->sparseArray()Landroid/util/SparseArray;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x5f5e0f2 -> :sswitch_7
        0x1ae15 -> :sswitch_6
        0x1ae16 -> :sswitch_5
        0x1ae17 -> :sswitch_4
        0x1ae1a -> :sswitch_3
        0x1ae1c -> :sswitch_2
        0x1ae1d -> :sswitch_1
        0x1ae1e -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/byazt/nc/tt;->apply(Landroid/util/SparseArray;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract getInteractionType()I
.end method

.method public abstract getLifecycleId()Ljava/lang/String;
.end method

.method public abstract getMediaExtraInfo()Ljava/util/Map;
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

.method public abstract getMediationManager()Lcom/byazt/sbm/sp;
.end method

.method public abstract getSplashCardView()Landroid/view/View;
.end method

.method public abstract getSplashView()Landroid/view/View;
.end method

.method public abstract hideSkipButton()V
.end method

.method public abstract setDownloadListener(Lcom/byazt/ocd/ve;)V
.end method

.method public abstract setSplashAdListener(Lcom/byazt/vw/c;)V
.end method

.method public abstract setSplashCardListener(Lcom/byazt/vw/tt;)V
.end method

.method public abstract showSplashCardView(Landroid/view/ViewGroup;Landroid/app/Activity;)V
.end method

.method public abstract showSplashView(Landroid/view/ViewGroup;)V
.end method

.method public values()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nc/tt;->c:Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/byazt/nc/tt;->c()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/byazt/nc/tt;->c:Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 11
    .line 12
    return-object v0
.end method
