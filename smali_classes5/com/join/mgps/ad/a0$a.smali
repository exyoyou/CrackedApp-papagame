.class Lcom/join/mgps/ad/a0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/ad/a0;->t(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic g:Lcom/join/mgps/ad/a0;


# direct methods
.method constructor <init>(Lcom/join/mgps/ad/a0;)V
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
    iput-object p1, p0, Lcom/join/mgps/ad/a0$a;->g:Lcom/join/mgps/ad/a0;

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
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/a0$a;->g:Lcom/join/mgps/ad/a0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/ad/d;->a:Landroid/content/Context;

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    invoke-static {v0, v1}, Lcom/join/mgps/ad/d;->h(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/ad/a0$a;->g:Lcom/join/mgps/ad/a0;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/ad/d;->onWfADClose()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/ad/a0$a;->g:Lcom/join/mgps/ad/a0;

    .line 15
    .line 16
    iget-object v1, v0, Lcom/join/mgps/ad/d;->f:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/join/mgps/ad/d;->onWfADClose(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/ad/a0$a;->g:Lcom/join/mgps/ad/a0;

    .line 22
    .line 23
    iget-object v1, v0, Lcom/join/mgps/ad/d;->f:Ljava/lang/String;

    .line 24
    .line 25
    iget v2, v0, Lcom/join/mgps/ad/d;->g:I

    .line 26
    .line 27
    iget v3, v0, Lcom/join/mgps/ad/d;->h:I

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2, v3}, Lcom/join/mgps/ad/d;->onWfADClose(Ljava/lang/String;II)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/ad/a0$a;->g:Lcom/join/mgps/ad/a0;

    .line 33
    .line 34
    iget-object v1, v0, Lcom/join/mgps/ad/d;->f:Ljava/lang/String;

    .line 35
    .line 36
    iget v2, v0, Lcom/join/mgps/ad/d;->g:I

    .line 37
    .line 38
    iget v3, v0, Lcom/join/mgps/ad/d;->h:I

    .line 39
    .line 40
    iget-object v4, v0, Lcom/join/mgps/ad/d;->l:Ljava/util/Map;

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/join/mgps/ad/d;->onWfADClose(Ljava/lang/String;IILjava/util/Map;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public onAdShow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/a0$a;->g:Lcom/join/mgps/ad/a0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/join/mgps/ad/a0;->u(Lcom/join/mgps/ad/a0;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/ad/a0$a;->g:Lcom/join/mgps/ad/a0;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/join/mgps/ad/d;->a:Landroid/content/Context;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {v0, v1}, Lcom/join/mgps/ad/d;->h(Landroid/content/Context;I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/ad/a0$a;->g:Lcom/join/mgps/ad/a0;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/ad/d;->onWfADShow()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/ad/a0$a;->g:Lcom/join/mgps/ad/a0;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/join/mgps/ad/d;->e()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public onAdVideoBarClick()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/a0$a;->g:Lcom/join/mgps/ad/a0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/ad/d;->a:Landroid/content/Context;

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    invoke-static {v0, v1}, Lcom/join/mgps/ad/d;->h(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/ad/a0$a;->g:Lcom/join/mgps/ad/a0;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/join/mgps/ad/d;->d:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    new-array v1, v1, [Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    const-string v3, "rewardVideoAd bar click"

    .line 18
    .line 19
    aput-object v3, v1, v2

    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/join/mgps/Util/h1;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
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
    .locals 2
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
    iget-object p4, p0, Lcom/join/mgps/ad/a0$a;->g:Lcom/join/mgps/ad/a0;

    .line 2
    .line 3
    iget-object p4, p4, Lcom/join/mgps/ad/d;->d:Ljava/lang/String;

    .line 4
    .line 5
    const/4 p5, 0x1

    .line 6
    new-array p5, p5, [Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "verify:"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p1, " amount:"

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p1, " name:"

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const/4 p2, 0x0

    .line 42
    aput-object p1, p5, p2

    .line 43
    .line 44
    invoke-static {p4, p5}, Lcom/join/mgps/Util/h1;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/join/mgps/ad/a0$a;->g:Lcom/join/mgps/ad/a0;

    .line 48
    .line 49
    iget-object p1, p1, Lcom/join/mgps/ad/d;->a:Landroid/content/Context;

    .line 50
    .line 51
    const/4 p2, 0x6

    .line 52
    invoke-static {p1, p2}, Lcom/join/mgps/ad/d;->h(Landroid/content/Context;I)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public onSkippedVideo()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/a0$a;->g:Lcom/join/mgps/ad/a0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/ad/d;->f()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onVideoComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/a0$a;->g:Lcom/join/mgps/ad/a0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/ad/d;->a:Landroid/content/Context;

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-static {v0, v1}, Lcom/join/mgps/ad/d;->h(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/ad/a0$a;->g:Lcom/join/mgps/ad/a0;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/ad/d;->onWfVideoComplete()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onVideoError()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/a0$a;->g:Lcom/join/mgps/ad/a0;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/join/mgps/ad/d;->l:Ljava/util/Map;

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v0, v0, Lcom/join/mgps/ad/d;->a:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v0, v2, v1}, Lcom/join/mgps/ad/d;->i(Landroid/content/Context;ILjava/util/Map;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, v0, Lcom/join/mgps/ad/d;->a:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {v0, v2}, Lcom/join/mgps/ad/d;->h(Landroid/content/Context;I)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method
