.class Lcom/join/mgps/ad/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;
.implements Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/ad/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/join/mgps/ad/f;


# direct methods
.method constructor <init>(Lcom/join/mgps/ad/f;)V
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
    iput-object p1, p0, Lcom/join/mgps/ad/f$b;->b:Lcom/join/mgps/ad/f;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/join/mgps/ad/f$b;->a:Z

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
    iput-boolean p1, p0, Lcom/join/mgps/ad/f$b;->a:Z

    .line 2
    .line 3
    return-void
.end method

.method public onADClicked()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/f$b;->b:Lcom/join/mgps/ad/f;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/ad/d;->d:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const-string v3, "rewardVideoAd bar click"

    .line 10
    .line 11
    aput-object v3, v1, v2

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/join/mgps/Util/h1;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/ad/f$b;->b:Lcom/join/mgps/ad/f;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/ad/d;->onWfADClick()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onADClosed()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/f$b;->b:Lcom/join/mgps/ad/f;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/ad/d;->a:Landroid/content/Context;

    .line 4
    .line 5
    const/16 v1, 0x3ec

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/join/mgps/ad/d;->h(Landroid/content/Context;I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/ad/f$b;->b:Lcom/join/mgps/ad/f;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/ad/d;->onWfADClose()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/ad/f$b;->b:Lcom/join/mgps/ad/f;

    .line 16
    .line 17
    iget-object v1, v0, Lcom/join/mgps/ad/d;->f:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/join/mgps/ad/d;->onWfADClose(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/ad/f$b;->b:Lcom/join/mgps/ad/f;

    .line 23
    .line 24
    iget-object v1, v0, Lcom/join/mgps/ad/d;->f:Ljava/lang/String;

    .line 25
    .line 26
    iget v2, v0, Lcom/join/mgps/ad/d;->g:I

    .line 27
    .line 28
    iget v3, v0, Lcom/join/mgps/ad/d;->h:I

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2, v3}, Lcom/join/mgps/ad/d;->onWfADClose(Ljava/lang/String;II)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public onADExposure()V
    .locals 0

    return-void
.end method

.method public onADLeftApplication()V
    .locals 0

    return-void
.end method

.method public onADOpened()V
    .locals 0

    return-void
.end method

.method public onADReceive()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/f$b;->b:Lcom/join/mgps/ad/f;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/join/mgps/ad/f;->u(Lcom/join/mgps/ad/f;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/ad/f$b;->b:Lcom/join/mgps/ad/f;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, v0, Lcom/join/mgps/ad/d;->k:Z

    .line 11
    .line 12
    iget-boolean v1, p0, Lcom/join/mgps/ad/f$b;->a:Z

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/join/mgps/ad/d;->onWfADLoad(Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onNoAD(Lcom/qq/e/comm/util/AdError;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adError"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/f$b;->b:Lcom/join/mgps/ad/f;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/join/mgps/ad/f;->u(Lcom/join/mgps/ad/f;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/ad/f$b;->b:Lcom/join/mgps/ad/f;

    .line 8
    .line 9
    iput-boolean v1, v0, Lcom/join/mgps/ad/d;->k:Z

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/ad/d;->onWfError(ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onRenderFail()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/f$b;->b:Lcom/join/mgps/ad/f;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/join/mgps/ad/f;->u(Lcom/join/mgps/ad/f;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/ad/f$b;->b:Lcom/join/mgps/ad/f;

    .line 8
    .line 9
    iput-boolean v1, v0, Lcom/join/mgps/ad/d;->k:Z

    .line 10
    .line 11
    iget-object v0, v0, Lcom/join/mgps/ad/d;->a:Landroid/content/Context;

    .line 12
    .line 13
    const/16 v1, 0x3ec

    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/join/mgps/ad/d;->h(Landroid/content/Context;I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/ad/f$b;->b:Lcom/join/mgps/ad/f;

    .line 19
    .line 20
    const/4 v1, -0x1

    .line 21
    const-string v2, "\u5e7f\u544a\u6e32\u67d3\u5931\u8d25"

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/ad/d;->onWfError(ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public onRenderSuccess()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/f$b;->b:Lcom/join/mgps/ad/f;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/join/mgps/ad/f;->u(Lcom/join/mgps/ad/f;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/ad/f$b;->b:Lcom/join/mgps/ad/f;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/join/mgps/ad/d;->a:Landroid/content/Context;

    .line 10
    .line 11
    const/16 v1, 0x3eb

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/join/mgps/ad/d;->h(Landroid/content/Context;I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/ad/f$b;->b:Lcom/join/mgps/ad/f;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/ad/d;->onWfADShow()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onVideoCached()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/f$b;->b:Lcom/join/mgps/ad/f;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/join/mgps/ad/f;->u(Lcom/join/mgps/ad/f;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/ad/f$b;->b:Lcom/join/mgps/ad/f;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, v0, Lcom/join/mgps/ad/d;->k:Z

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/ad/d;->onWfVideoCached()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onVideoComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/f$b;->b:Lcom/join/mgps/ad/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/ad/d;->onWfVideoComplete()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onVideoError(Lcom/qq/e/comm/util/AdError;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adError"
        }
    .end annotation

    return-void
.end method

.method public onVideoInit()V
    .locals 0

    return-void
.end method

.method public onVideoLoading()V
    .locals 0

    return-void
.end method

.method public onVideoPageClose()V
    .locals 0

    return-void
.end method

.method public onVideoPageOpen()V
    .locals 0

    return-void
.end method

.method public onVideoPause()V
    .locals 0

    return-void
.end method

.method public onVideoReady(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    return-void
.end method

.method public onVideoStart()V
    .locals 0

    return-void
.end method
