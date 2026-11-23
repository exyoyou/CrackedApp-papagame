.class Lcom/join/mgps/ad/u$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/ad/u$b;->onRewardVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic g:Lcom/join/mgps/ad/u$b;


# direct methods
.method constructor <init>(Lcom/join/mgps/ad/u$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ad/u$b$a;->g:Lcom/join/mgps/ad/u$b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdClose()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/u$b$a;->g:Lcom/join/mgps/ad/u$b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/ad/u$b;->g:Lcom/join/mgps/ad/u;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/join/mgps/ad/u;->d(Lcom/join/mgps/ad/u;)Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x3

    .line 10
    invoke-static {v0, v1}, Lcom/join/mgps/ad/b;->a(Landroid/content/Context;I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/ad/u$b$a;->g:Lcom/join/mgps/ad/u$b;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/join/mgps/ad/u$b;->g:Lcom/join/mgps/ad/u;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/join/mgps/ad/u;->g:Lcom/join/mgps/ad/u$c;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/ad/u$c;->onAdClose()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/ad/u$b$a;->g:Lcom/join/mgps/ad/u$b;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/join/mgps/ad/u$b;->g:Lcom/join/mgps/ad/u;

    .line 27
    .line 28
    iget-object v1, v0, Lcom/join/mgps/ad/u;->g:Lcom/join/mgps/ad/u$c;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/join/mgps/ad/u;->h(Lcom/join/mgps/ad/u;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v1, v0}, Lcom/join/mgps/ad/u$c;->a(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/ad/u$b$a;->g:Lcom/join/mgps/ad/u$b;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/join/mgps/ad/u$b;->g:Lcom/join/mgps/ad/u;

    .line 40
    .line 41
    iget-object v1, v0, Lcom/join/mgps/ad/u;->g:Lcom/join/mgps/ad/u$c;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/join/mgps/ad/u;->h(Lcom/join/mgps/ad/u;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v2, p0, Lcom/join/mgps/ad/u$b$a;->g:Lcom/join/mgps/ad/u$b;

    .line 48
    .line 49
    iget-object v2, v2, Lcom/join/mgps/ad/u$b;->g:Lcom/join/mgps/ad/u;

    .line 50
    .line 51
    invoke-static {v2}, Lcom/join/mgps/ad/u;->i(Lcom/join/mgps/ad/u;)I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    iget-object v3, p0, Lcom/join/mgps/ad/u$b$a;->g:Lcom/join/mgps/ad/u$b;

    .line 56
    .line 57
    iget-object v3, v3, Lcom/join/mgps/ad/u$b;->g:Lcom/join/mgps/ad/u;

    .line 58
    .line 59
    invoke-static {v3}, Lcom/join/mgps/ad/u;->j(Lcom/join/mgps/ad/u;)I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    invoke-virtual {v1, v0, v2, v3}, Lcom/join/mgps/ad/u$c;->b(Ljava/lang/String;II)V

    .line 64
    .line 65
    .line 66
    :cond_0
    const/4 v0, 0x1

    .line 67
    new-array v0, v0, [Ljava/lang/Object;

    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    const-string v2, "rewardVideoAd close"

    .line 71
    .line 72
    aput-object v2, v0, v1

    .line 73
    .line 74
    const-string v1, "RewardVideo"

    .line 75
    .line 76
    invoke-static {v1, v0}, Lcom/join/mgps/Util/h1;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public onAdShow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/u$b$a;->g:Lcom/join/mgps/ad/u$b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/ad/u$b;->g:Lcom/join/mgps/ad/u;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v0, v1}, Lcom/join/mgps/ad/u;->e(Lcom/join/mgps/ad/u;Z)Z

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/ad/u$b$a;->g:Lcom/join/mgps/ad/u$b;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/join/mgps/ad/u$b;->g:Lcom/join/mgps/ad/u;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/join/mgps/ad/u;->d(Lcom/join/mgps/ad/u;)Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-static {v0, v2}, Lcom/join/mgps/ad/b;->a(Landroid/content/Context;I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/ad/u$b$a;->g:Lcom/join/mgps/ad/u$b;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/join/mgps/ad/u$b;->g:Lcom/join/mgps/ad/u;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/join/mgps/ad/u;->g:Lcom/join/mgps/ad/u$c;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/ad/u$c;->onAdShow()V

    .line 30
    .line 31
    .line 32
    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    .line 33
    .line 34
    const-string v2, "rewardVideoAd show"

    .line 35
    .line 36
    aput-object v2, v0, v1

    .line 37
    .line 38
    const-string v1, "RewardVideo"

    .line 39
    .line 40
    invoke-static {v1, v0}, Lcom/join/mgps/Util/h1;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public onAdVideoBarClick()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/u$b$a;->g:Lcom/join/mgps/ad/u$b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/ad/u$b;->g:Lcom/join/mgps/ad/u;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/join/mgps/ad/u;->d(Lcom/join/mgps/ad/u;)Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x2

    .line 10
    invoke-static {v0, v1}, Lcom/join/mgps/ad/b;->a(Landroid/content/Context;I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/ad/u$b$a;->g:Lcom/join/mgps/ad/u$b;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/join/mgps/ad/u$b;->g:Lcom/join/mgps/ad/u;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/join/mgps/ad/u;->g:Lcom/join/mgps/ad/u$c;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/ad/u$c;->onAdVideoBarClick()V

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 v0, 0x1

    .line 25
    new-array v0, v0, [Ljava/lang/Object;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    const-string v2, "rewardVideoAd bar click"

    .line 29
    .line 30
    aput-object v2, v0, v1

    .line 31
    .line 32
    const-string v1, "RewardVideo"

    .line 33
    .line 34
    invoke-static {v1, v0}, Lcom/join/mgps/Util/h1;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public onRewardArrived(ZILandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "b",
            "i",
            "bundle"
        }
    .end annotation

    return-void
.end method

.method public onRewardVerify(ZILjava/lang/String;ILjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "b",
            "i",
            "s",
            "i1",
            "s1"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v2, "verify:"

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, " amount:"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, " name:"

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const/4 v2, 0x0

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    const-string v1, "RewardVideo"

    .line 41
    .line 42
    invoke-static {v1, v0}, Lcom/join/mgps/Util/h1;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/join/mgps/ad/u$b$a;->g:Lcom/join/mgps/ad/u$b;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/join/mgps/ad/u$b;->g:Lcom/join/mgps/ad/u;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/join/mgps/ad/u;->d(Lcom/join/mgps/ad/u;)Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const/4 v1, 0x6

    .line 54
    invoke-static {v0, v1}, Lcom/join/mgps/ad/b;->a(Landroid/content/Context;I)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/mgps/ad/u$b$a;->g:Lcom/join/mgps/ad/u$b;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/join/mgps/ad/u$b;->g:Lcom/join/mgps/ad/u;

    .line 60
    .line 61
    iget-object v1, v0, Lcom/join/mgps/ad/u;->g:Lcom/join/mgps/ad/u$c;

    .line 62
    .line 63
    if-eqz v1, :cond_0

    .line 64
    .line 65
    move v2, p1

    .line 66
    move v3, p2

    .line 67
    move-object v4, p3

    .line 68
    move v5, p4

    .line 69
    move-object v6, p5

    .line 70
    invoke-virtual/range {v1 .. v6}, Lcom/join/mgps/ad/u$c;->onRewardVerify(ZILjava/lang/String;ILjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_0
    return-void
.end method

.method public onSkippedVideo()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/u$b$a;->g:Lcom/join/mgps/ad/u$b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/ad/u$b;->g:Lcom/join/mgps/ad/u;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/join/mgps/ad/u;->g:Lcom/join/mgps/ad/u$c;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/ad/u$c;->onSkippedVideo()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public onVideoComplete()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/u$b$a;->g:Lcom/join/mgps/ad/u$b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/ad/u$b;->g:Lcom/join/mgps/ad/u;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/join/mgps/ad/u;->d(Lcom/join/mgps/ad/u;)Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x4

    .line 10
    invoke-static {v0, v1}, Lcom/join/mgps/ad/b;->a(Landroid/content/Context;I)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    new-array v0, v0, [Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    const-string v2, "rewardVideoAd complete"

    .line 18
    .line 19
    aput-object v2, v0, v1

    .line 20
    .line 21
    const-string v1, "RewardVideo"

    .line 22
    .line 23
    invoke-static {v1, v0}, Lcom/join/mgps/Util/h1;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/ad/u$b$a;->g:Lcom/join/mgps/ad/u$b;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/join/mgps/ad/u$b;->g:Lcom/join/mgps/ad/u;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/join/mgps/ad/u;->g:Lcom/join/mgps/ad/u$c;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/join/mgps/ad/u$c;->onVideoComplete()V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public onVideoError()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/u$b$a;->g:Lcom/join/mgps/ad/u$b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/ad/u$b;->g:Lcom/join/mgps/ad/u;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/join/mgps/ad/u;->d(Lcom/join/mgps/ad/u;)Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x5

    .line 10
    invoke-static {v0, v1}, Lcom/join/mgps/ad/b;->a(Landroid/content/Context;I)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    new-array v0, v0, [Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    const-string v2, "rewardVideoAd error"

    .line 18
    .line 19
    aput-object v2, v0, v1

    .line 20
    .line 21
    const-string v1, "RewardVideo"

    .line 22
    .line 23
    invoke-static {v1, v0}, Lcom/join/mgps/Util/h1;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/ad/u$b$a;->g:Lcom/join/mgps/ad/u$b;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/join/mgps/ad/u$b;->g:Lcom/join/mgps/ad/u;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/join/mgps/ad/u;->g:Lcom/join/mgps/ad/u$c;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/join/mgps/ad/u$c;->onVideoError()V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method
