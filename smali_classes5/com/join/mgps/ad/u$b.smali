.class Lcom/join/mgps/ad/u$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/ad/u;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic g:Lcom/join/mgps/ad/u;


# direct methods
.method constructor <init>(Lcom/join/mgps/ad/u;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ad/u$b;->g:Lcom/join/mgps/ad/u;

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
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "message"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/u$b;->g:Lcom/join/mgps/ad/u;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/ad/u;->d(Lcom/join/mgps/ad/u;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x5

    .line 8
    invoke-static {v0, v1}, Lcom/join/mgps/ad/b;->a(Landroid/content/Context;I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/ad/u$b;->g:Lcom/join/mgps/ad/u;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/join/mgps/ad/u;->g:Lcom/join/mgps/ad/u$c;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/ad/u$c;->onError(ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onRewardVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ad"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string v1, "rewardVideoAd loaded"

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    const-string v1, "RewardVideo"

    .line 10
    .line 11
    invoke-static {v1, v0}, Lcom/join/mgps/Util/h1;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/ad/u$b;->g:Lcom/join/mgps/ad/u;

    .line 15
    .line 16
    invoke-static {v0, v2}, Lcom/join/mgps/ad/u;->e(Lcom/join/mgps/ad/u;Z)Z

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/ad/u$b;->g:Lcom/join/mgps/ad/u;

    .line 20
    .line 21
    invoke-static {v0, p1}, Lcom/join/mgps/ad/u;->g(Lcom/join/mgps/ad/u;Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/ad/u$b;->g:Lcom/join/mgps/ad/u;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/join/mgps/ad/u;->f(Lcom/join/mgps/ad/u;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Lcom/join/mgps/ad/u$b$a;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/join/mgps/ad/u$b$a;-><init>(Lcom/join/mgps/ad/u$b;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->setRewardAdInteractionListener(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/mgps/ad/u$b;->g:Lcom/join/mgps/ad/u;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/join/mgps/ad/u;->f(Lcom/join/mgps/ad/u;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-instance v1, Lcom/join/mgps/ad/u$b$b;

    .line 45
    .line 46
    invoke-direct {v1, p0}, Lcom/join/mgps/ad/u$b$b;-><init>(Lcom/join/mgps/ad/u$b;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->setDownloadListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/join/mgps/ad/u$b;->g:Lcom/join/mgps/ad/u;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/join/mgps/ad/u;->g:Lcom/join/mgps/ad/u$c;

    .line 55
    .line 56
    if-eqz v0, :cond_0

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Lcom/join/mgps/ad/u$c;->onRewardVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/ad/u$b;->g:Lcom/join/mgps/ad/u;

    .line 62
    .line 63
    invoke-static {p1}, Lcom/join/mgps/ad/u;->m(Lcom/join/mgps/ad/u;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_1

    .line 68
    .line 69
    iget-object p1, p0, Lcom/join/mgps/ad/u$b;->g:Lcom/join/mgps/ad/u;

    .line 70
    .line 71
    invoke-static {p1}, Lcom/join/mgps/ad/u;->n(Lcom/join/mgps/ad/u;)Landroid/app/Activity;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-eqz p1, :cond_1

    .line 76
    .line 77
    iget-object p1, p0, Lcom/join/mgps/ad/u$b;->g:Lcom/join/mgps/ad/u;

    .line 78
    .line 79
    invoke-static {p1}, Lcom/join/mgps/ad/u;->n(Lcom/join/mgps/ad/u;)Landroid/app/Activity;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-nez p1, :cond_1

    .line 88
    .line 89
    iget-object p1, p0, Lcom/join/mgps/ad/u$b;->g:Lcom/join/mgps/ad/u;

    .line 90
    .line 91
    invoke-static {p1}, Lcom/join/mgps/ad/u;->n(Lcom/join/mgps/ad/u;)Landroid/app/Activity;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/join/mgps/ad/u$b;->g:Lcom/join/mgps/ad/u;

    .line 96
    .line 97
    invoke-static {v1}, Lcom/join/mgps/ad/u;->h(Lcom/join/mgps/ad/u;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    iget-object v2, p0, Lcom/join/mgps/ad/u$b;->g:Lcom/join/mgps/ad/u;

    .line 102
    .line 103
    invoke-static {v2}, Lcom/join/mgps/ad/u;->i(Lcom/join/mgps/ad/u;)I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    iget-object v3, p0, Lcom/join/mgps/ad/u$b;->g:Lcom/join/mgps/ad/u;

    .line 108
    .line 109
    invoke-static {v3}, Lcom/join/mgps/ad/u;->j(Lcom/join/mgps/ad/u;)I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/join/mgps/ad/u;->u(Landroid/app/Activity;Ljava/lang/String;II)V

    .line 114
    .line 115
    .line 116
    :cond_1
    return-void
.end method

.method public onRewardVideoCached()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "rewardVideoAd video cached"

    aput-object v3, v1, v2

    const-string v2, "RewardVideo"

    .line 1
    invoke-static {v2, v1}, Lcom/join/mgps/Util/h1;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/ad/u$b;->g:Lcom/join/mgps/ad/u;

    invoke-static {v1, v0}, Lcom/join/mgps/ad/u;->e(Lcom/join/mgps/ad/u;Z)Z

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ad/u$b;->g:Lcom/join/mgps/ad/u;

    iget-object v0, v0, Lcom/join/mgps/ad/u;->g:Lcom/join/mgps/ad/u$c;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/ad/u$c;->onRewardVideoCached()V

    :cond_0
    return-void
.end method

.method public onRewardVideoCached(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ttRewardVideoAd"
        }
    .end annotation

    .line 5
    iget-object p1, p0, Lcom/join/mgps/ad/u$b;->g:Lcom/join/mgps/ad/u;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/join/mgps/ad/u;->e(Lcom/join/mgps/ad/u;Z)Z

    return-void
.end method
