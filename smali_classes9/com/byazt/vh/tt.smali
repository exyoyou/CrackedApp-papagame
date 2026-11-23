.class public Lcom/byazt/vh/tt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x87c,
        0xd
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
.field private final c:Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationAdDislike;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationAdDislike;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/vh/tt;->c:Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationAdDislike;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public apply(Landroid/util/SparseArray;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/byazt/vh/tt;->c:Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationAdDislike;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/byazt/rl/ve;->c(Landroid/util/SparseArray;)Lcom/byazt/rl/ve;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/rl/ve;->tt()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p1

    const v0, -0x5f5e0f3

    .line 4
    invoke-interface {p1, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 5
    :pswitch_0
    new-instance v0, Lcom/byazt/vh/c;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Object;

    invoke-interface {p1, v2, v3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/hj/z;->c(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/byazt/vh/c;-><init>(Ljava/util/function/Function;)V

    .line 6
    iget-object p1, p0, Lcom/byazt/vh/tt;->c:Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationAdDislike;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationAdDislike;->setDislikeCallback(Lcom/bytedance/sdk/openadsdk/mediation/ad/IMediationDislikeCallback;)V

    goto :goto_0

    .line 7
    :pswitch_1
    iget-object p1, p0, Lcom/byazt/vh/tt;->c:Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationAdDislike;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationAdDislike;->showDislikeDialog()V

    :goto_0
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x41ed0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/byazt/vh/tt;->apply(Landroid/util/SparseArray;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
