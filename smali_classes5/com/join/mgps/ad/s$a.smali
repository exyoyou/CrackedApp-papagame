.class Lcom/join/mgps/ad/s$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/client/reward/AMRewardAdListener;
.implements Lcom/aggmoread/sdk/client/reward/AMRewardInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/ad/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/join/mgps/ad/s;


# direct methods
.method constructor <init>(Lcom/join/mgps/ad/s;)V
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
    iput-object p1, p0, Lcom/join/mgps/ad/s$a;->b:Lcom/join/mgps/ad/s;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/join/mgps/ad/s$a;->a:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showAd"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/ad/s$a;->a:Z

    .line 2
    .line 3
    return-void
.end method

.method public onAdClicked()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/s$a;->b:Lcom/join/mgps/ad/s;

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
    iget-object v0, p0, Lcom/join/mgps/ad/s$a;->b:Lcom/join/mgps/ad/s;

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

.method public onAdClosed()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/s$a;->b:Lcom/join/mgps/ad/s;

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
    iget-object v0, p0, Lcom/join/mgps/ad/s$a;->b:Lcom/join/mgps/ad/s;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/ad/d;->onWfADClose()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/ad/s$a;->b:Lcom/join/mgps/ad/s;

    .line 15
    .line 16
    iget-object v1, v0, Lcom/join/mgps/ad/d;->f:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/join/mgps/ad/d;->onWfADClose(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/ad/s$a;->b:Lcom/join/mgps/ad/s;

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
    iget-object v0, p0, Lcom/join/mgps/ad/s$a;->b:Lcom/join/mgps/ad/s;

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

.method public onAdError(Lcom/aggmoread/sdk/client/AMError;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "amError"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/s$a;->b:Lcom/join/mgps/ad/s;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/join/mgps/ad/s;->u(Lcom/join/mgps/ad/s;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/ad/s$a;->b:Lcom/join/mgps/ad/s;

    .line 8
    .line 9
    iput-boolean v1, v0, Lcom/join/mgps/ad/d;->k:Z

    .line 10
    .line 11
    iget-object v1, v0, Lcom/join/mgps/ad/d;->l:Ljava/util/Map;

    .line 12
    .line 13
    const/4 v2, 0x5

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v0, v0, Lcom/join/mgps/ad/d;->a:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {v0, v2, v1}, Lcom/join/mgps/ad/d;->i(Landroid/content/Context;ILjava/util/Map;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, v0, Lcom/join/mgps/ad/d;->a:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {v0, v2}, Lcom/join/mgps/ad/d;->h(Landroid/content/Context;I)V

    .line 25
    .line 26
    .line 27
    :goto_0
    if-eqz p1, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/ad/s$a;->b:Lcom/join/mgps/ad/s;

    .line 30
    .line 31
    iget v1, p1, Lcom/aggmoread/sdk/client/AMError;->code:I

    .line 32
    .line 33
    iget-object p1, p1, Lcom/aggmoread/sdk/client/AMError;->msg:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/ad/d;->onWfError(ILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/ad/s$a;->b:Lcom/join/mgps/ad/s;

    .line 40
    .line 41
    const/4 v0, -0x1

    .line 42
    const-string v1, "\u672a\u77e5\u9519\u8bef"

    .line 43
    .line 44
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/ad/d;->onWfError(ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :goto_1
    return-void
.end method

.method public onAdExposed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/s$a;->b:Lcom/join/mgps/ad/s;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/join/mgps/ad/s;->u(Lcom/join/mgps/ad/s;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/ad/s$a;->b:Lcom/join/mgps/ad/s;

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
    iget-object v0, p0, Lcom/join/mgps/ad/s$a;->b:Lcom/join/mgps/ad/s;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/ad/d;->onWfADShow()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onAdLoadFail(Lcom/aggmoread/sdk/client/AMError;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "amError"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/s$a;->b:Lcom/join/mgps/ad/s;

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
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/ad/s$a;->b:Lcom/join/mgps/ad/s;

    .line 22
    .line 23
    iget v1, p1, Lcom/aggmoread/sdk/client/AMError;->code:I

    .line 24
    .line 25
    iget-object p1, p1, Lcom/aggmoread/sdk/client/AMError;->msg:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/ad/d;->onWfError(ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/ad/s$a;->b:Lcom/join/mgps/ad/s;

    .line 32
    .line 33
    const/4 v0, -0x1

    .line 34
    const-string v1, "\u672a\u77e5\u9519\u8bef"

    .line 35
    .line 36
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/ad/d;->onWfError(ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :goto_1
    return-void
.end method

.method public onAdLoaded(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aggmoread/sdk/client/reward/AMRewardAd;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/s$a;->b:Lcom/join/mgps/ad/s;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/ad/d;->d:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v2, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    const-string v3, "rewardVideoAd loaded"

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    aput-object v3, v2, v4

    .line 12
    .line 13
    invoke-static {v0, v2}, Lcom/join/mgps/Util/h1;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/ad/s$a;->b:Lcom/join/mgps/ad/s;

    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/join/mgps/ad/s;->u(Lcom/join/mgps/ad/s;Z)Z

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/ad/s$a;->b:Lcom/join/mgps/ad/s;

    .line 22
    .line 23
    iput-boolean v4, v0, Lcom/join/mgps/ad/d;->k:Z

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lcom/aggmoread/sdk/client/reward/AMRewardAd;

    .line 32
    .line 33
    invoke-static {v0, p1}, Lcom/join/mgps/ad/s;->v(Lcom/join/mgps/ad/s;Lcom/aggmoread/sdk/client/reward/AMRewardAd;)Lcom/aggmoread/sdk/client/reward/AMRewardAd;

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public onAdVideoCached()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/s$a;->b:Lcom/join/mgps/ad/s;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/ad/d;->d:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v2, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    const-string v3, "rewardVideoAd video cached"

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    aput-object v3, v2, v4

    .line 12
    .line 13
    invoke-static {v0, v2}, Lcom/join/mgps/Util/h1;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/ad/s$a;->b:Lcom/join/mgps/ad/s;

    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/join/mgps/ad/s;->u(Lcom/join/mgps/ad/s;Z)Z

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/ad/s$a;->b:Lcom/join/mgps/ad/s;

    .line 22
    .line 23
    iput-boolean v4, v0, Lcom/join/mgps/ad/d;->k:Z

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/join/mgps/ad/d;->onWfVideoCached()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/ad/s$a;->b:Lcom/join/mgps/ad/s;

    .line 29
    .line 30
    iget-boolean v1, p0, Lcom/join/mgps/ad/s$a;->a:Z

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/join/mgps/ad/d;->onWfADLoad(Z)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public onReward(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "map"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/ad/s$a;->b:Lcom/join/mgps/ad/s;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/ad/d;->a:Landroid/content/Context;

    .line 4
    .line 5
    const/4 v0, 0x6

    .line 6
    invoke-static {p1, v0}, Lcom/join/mgps/ad/d;->h(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onVideoComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/s$a;->b:Lcom/join/mgps/ad/s;

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
    iget-object v0, p0, Lcom/join/mgps/ad/s$a;->b:Lcom/join/mgps/ad/s;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/ad/d;->onWfVideoComplete()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
