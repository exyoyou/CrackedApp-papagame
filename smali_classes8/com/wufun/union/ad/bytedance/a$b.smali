.class Lcom/wufun/union/ad/bytedance/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wufun/union/ad/bytedance/a;->h(Ljava/lang/String;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic g:Lcom/wufun/union/ad/bytedance/a;


# direct methods
.method constructor <init>(Lcom/wufun/union/ad/bytedance/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufun/union/ad/bytedance/a$b;->g:Lcom/wufun/union/ad/bytedance/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wufun/union/ad/bytedance/a$b;->g:Lcom/wufun/union/ad/bytedance/a;

    .line 2
    .line 3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, "["

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p1, ", "

    .line 19
    .line 20
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p1, "]"

    .line 27
    .line 28
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const/4 p2, 0x1

    .line 36
    invoke-virtual {v0, p2, v1, p1}, Lcom/wufun/union/ad/AdChannel;->i(ILjava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public onRewardVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wufun/union/ad/bytedance/a$b;->g:Lcom/wufun/union/ad/bytedance/a;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/wufun/union/ad/bytedance/a;->l:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-static {v0, p1}, Lcom/wufun/union/ad/bytedance/a;->q(Lcom/wufun/union/ad/bytedance/a;Z)Z

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/wufun/union/ad/bytedance/a$b;->g:Lcom/wufun/union/ad/bytedance/a;

    .line 10
    .line 11
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 12
    .line 13
    const-string v2, ""

    .line 14
    .line 15
    invoke-virtual {v0, p1, v1, v2}, Lcom/wufun/union/ad/AdChannel;->i(ILjava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onRewardVideoCached()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufun/union/ad/bytedance/a$b;->g:Lcom/wufun/union/ad/bytedance/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/wufun/union/ad/bytedance/a;->r(Lcom/wufun/union/ad/bytedance/a;Z)Z

    return-void
.end method

.method public onRewardVideoCached(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/wufun/union/ad/bytedance/a$b;->g:Lcom/wufun/union/ad/bytedance/a;

    iput-object p1, v0, Lcom/wufun/union/ad/bytedance/a;->l:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    const/4 p1, 0x1

    .line 3
    invoke-static {v0, p1}, Lcom/wufun/union/ad/bytedance/a;->s(Lcom/wufun/union/ad/bytedance/a;Z)Z

    return-void
.end method
