.class public Lcom/byazt/zm/tt;
.super Lcom/byazt/yl/ve;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1e2,
        0xd
    }
.end annotation


# instance fields
.field public da:Lcom/byazt/rm/n;

.field public i:Lcom/byazt/dhf/c;

.field public m:Lcom/byazt/rm/x;

.field public nu:Lcom/byazt/rm/ve;

.field public rh:Lcom/byazt/rm/a;

.field public sl:Lcom/byazt/yf/z;

.field public t:Lcom/byazt/rm/tt;

.field public u:Lcom/byazt/rm/sp;

.field public x:Lcom/byazt/ylx/c;

.field public yp:Lcom/byazt/rm/i;

.field public z:Lcom/byazt/rm/uj;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/yl/ve;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bidLoseNotify(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    const-string v0, "bidding_lose_reason_NUM"

    .line 5
    .line 6
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    instance-of v0, p1, Ljava/lang/Integer;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    check-cast p1, Ljava/lang/Integer;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    :catch_0
    :cond_1
    return-void
.end method

.method public bidWinNotify(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/byazt/zm/tt;->x:Lcom/byazt/ylx/c;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/byazt/yl/ve;->getCpm()D

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p1, p0, Lcom/byazt/zm/tt;->sl:Lcom/byazt/yf/z;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/byazt/yl/ve;->getCpm()D

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public cancelDownload()V
    .locals 0

    return-void
.end method

.method public dislikeClick(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/byazt/yl/ve;->dislikeClick(Ljava/lang/String;Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public getAdView()Landroid/view/View;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/zm/tt;->x:Lcom/byazt/ylx/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v1, v0, Lcom/byazt/vz/c;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/byazt/vz/c;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/byazt/vz/c;->c()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/byazt/zm/tt;->u:Lcom/byazt/rm/sp;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/byazt/rm/sp;->c()Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    return-object v0
.end method

.method public getDislikeCallback()Lcom/byazt/dhf/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zm/tt;->i:Lcom/byazt/dhf/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDislikeDialog(Landroid/app/Activity;)Lcom/byazt/nc/sp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zm/tt;->da:Lcom/byazt/rm/n;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/byazt/rm/n;->c(Landroid/app/Activity;)Lcom/byazt/nc/sp;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-super {p0, p1}, Lcom/byazt/yl/ve;->getDislikeDialog(Landroid/app/Activity;)Lcom/byazt/nc/sp;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public getDownloadStatus()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zm/tt;->rh:Lcom/byazt/rm/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/rm/a;->c()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, -0x1

    .line 11
    return v0
.end method

.method public getGMAdAppDownloadListener()Lcom/byazt/zh/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yl/ve;->ve:Lcom/byazt/zh/tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGMDrawAdListener()Lcom/byazt/fy/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yl/ve;->a:Lcom/byazt/fy/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGMNativeAdListener()Lcom/byazt/me/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yl/ve;->c:Lcom/byazt/me/tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGMNativeCustomVideoReporter()Lcom/byazt/me/n;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/zm/tt;->nu:Lcom/byazt/rm/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/rm/ve;->tt()Lcom/byazt/me/n;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getGMVideoListener()Lcom/byazt/me/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTTAdapterCallback()Lcom/byazt/zq/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yl/ve;->sp:Lcom/byazt/zq/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/zm/tt;->nu:Lcom/byazt/rm/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/rm/ve;->c()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getVideoView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zm/tt;->nu:Lcom/byazt/rm/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/rm/ve;->ve()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-super {p0}, Lcom/byazt/yl/ve;->getVideoView()Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public hasDestroyed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasDislike()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/zm/tt;->z:Lcom/byazt/rm/uj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/rm/uj;->c()Z

    .line 6
    .line 7
    .line 8
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return v0

    .line 10
    :catch_0
    :cond_0
    invoke-super {p0}, Lcom/byazt/yl/ve;->hasDislike()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public final isReadyStatus()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zm/tt;->m:Lcom/byazt/rm/x;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/rm/x;->c()Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/byazt/zm/tt;->x:Lcom/byazt/ylx/c;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/byazt/ylx/c;->ve()Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0

    .line 19
    :cond_1
    invoke-super {p0}, Lcom/byazt/yl/ve;->isReadyStatus()Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method public final nativeDislikeClick(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zm/tt;->x:Lcom/byazt/ylx/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/byazt/ylx/c;->c(Lcom/byazt/yl/ve;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/byazt/yl/ve;->onDestroy()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/byazt/yl/ve;->onPause()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/byazt/yl/ve;->onResume()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public pauseAppDownload()V
    .locals 0

    return-void
.end method

.method public registerViewForInteraction(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/byazt/me/da;Ljava/util/List;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/byazt/me/da;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public render()V
    .locals 0

    return-void
.end method

.method public resumeAppDownload()V
    .locals 0

    return-void
.end method

.method public setCustomNativeConvert(Lcom/byazt/rm/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zm/tt;->t:Lcom/byazt/rm/tt;

    .line 2
    .line 3
    return-void
.end method

.method public setCustomNativeCustomizeVideoConvert(Lcom/byazt/rm/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zm/tt;->nu:Lcom/byazt/rm/ve;

    .line 2
    .line 3
    return-void
.end method

.method public setCustomNativeDownloadStatusControllerConvert(Lcom/byazt/rm/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zm/tt;->rh:Lcom/byazt/rm/a;

    .line 2
    .line 3
    return-void
.end method

.method public setCustomNativeExpressConvert(Lcom/byazt/rm/sp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zm/tt;->u:Lcom/byazt/rm/sp;

    .line 2
    .line 3
    return-void
.end method

.method public setCustomNativeLifecycleConvert(Lcom/byazt/rm/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zm/tt;->yp:Lcom/byazt/rm/i;

    .line 2
    .line 3
    return-void
.end method

.method public setDislikeCallback(Landroid/app/Activity;Lcom/byazt/dhf/c;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/byazt/zm/tt;->i:Lcom/byazt/dhf/c;

    .line 2
    .line 3
    return-void
.end method

.method public setDislikeDialogCallBack(Lcom/byazt/rm/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zm/tt;->da:Lcom/byazt/rm/n;

    .line 2
    .line 3
    return-void
.end method

.method public setGMCustomBaseAdapter(Lcom/byazt/ylx/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zm/tt;->x:Lcom/byazt/ylx/c;

    .line 2
    .line 3
    return-void
.end method

.method public setGmReceiveBidResultCallback(Lcom/byazt/yf/z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zm/tt;->sl:Lcom/byazt/yf/z;

    .line 2
    .line 3
    return-void
.end method

.method public setIGMCustomNativeDislikeConvert(Lcom/byazt/rm/uj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zm/tt;->z:Lcom/byazt/rm/uj;

    .line 2
    .line 3
    return-void
.end method

.method public setIGMCustomNativeIsReadyStatusConvert(Lcom/byazt/rm/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zm/tt;->m:Lcom/byazt/rm/x;

    .line 2
    .line 3
    return-void
.end method

.method public showAd(Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/byazt/zm/tt;->x:Lcom/byazt/ylx/c;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    instance-of p3, p2, Lcom/byazt/ylx/tt;

    .line 6
    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    check-cast p2, Lcom/byazt/ylx/tt;

    .line 10
    .line 11
    invoke-virtual {p2, p1}, Lcom/byazt/ylx/tt;->c(Landroid/app/Activity;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public showSplashAd(Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/zm/tt;->x:Lcom/byazt/ylx/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v1, v0, Lcom/byazt/xi/c;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/byazt/xi/c;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/byazt/xi/c;->c(Landroid/view/ViewGroup;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public unregisterView()V
    .locals 0

    return-void
.end method
