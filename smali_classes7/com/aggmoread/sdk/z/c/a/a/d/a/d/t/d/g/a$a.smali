.class Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/g/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/g/a;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/g/a;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/g/a;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/g/a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/g/a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/g/a;

    invoke-virtual {v0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/g/a;->a(ILjava/lang/String;)V

    return-void
.end method

.method public onRewardVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/g/a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/g/a;

    invoke-static {v0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/g/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/g/a;Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/g/a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/g/a;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/g/a;->z()V

    return-void
.end method

.method public onRewardVideoCached()V
    .locals 2

    .line 1
    const-string v0, "AMRTAGCSJ"

    const-string v1, "onRewardVideoCached #1"

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRewardVideoCached(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V
    .locals 1

    .line 2
    const-string p1, "AMRTAGCSJ"

    const-string v0, "onRewardVideoCached #2"

    invoke-static {p1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/g/a$a;->a:Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/g/a;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/t/d/g/a;->A()V

    return-void
.end method
