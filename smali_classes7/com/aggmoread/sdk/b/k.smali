.class public Lcom/aggmoread/sdk/b/k;
.super Lcom/aggmoread/sdk/b/c;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/client/feedlist/AMMixFeedAd;


# instance fields
.field private b:Lcom/aggmoread/sdk/b/h;

.field private c:Lcom/aggmoread/sdk/b/l;


# direct methods
.method public constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/c/a;Lcom/aggmoread/sdk/b/d;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/aggmoread/sdk/b/c;-><init>(Lcom/aggmoread/sdk/z/c/a/a/c/a;Lcom/aggmoread/sdk/b/d;)V

    instance-of v0, p1, Lcom/aggmoread/sdk/z/c/a/a/c/p/d;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/aggmoread/sdk/b/h;

    check-cast p1, Lcom/aggmoread/sdk/z/c/a/a/c/p/d;

    invoke-direct {v0, p1, p2}, Lcom/aggmoread/sdk/b/h;-><init>(Lcom/aggmoread/sdk/z/c/a/a/c/p/d;Lcom/aggmoread/sdk/b/d;)V

    iput-object v0, p0, Lcom/aggmoread/sdk/b/k;->b:Lcom/aggmoread/sdk/b/h;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/aggmoread/sdk/z/c/a/a/c/p/f;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/aggmoread/sdk/b/l;

    check-cast p1, Lcom/aggmoread/sdk/z/c/a/a/c/p/f;

    invoke-direct {v0, p1, p2}, Lcom/aggmoread/sdk/b/l;-><init>(Lcom/aggmoread/sdk/z/c/a/a/c/p/f;Lcom/aggmoread/sdk/b/d;)V

    iput-object v0, p0, Lcom/aggmoread/sdk/b/k;->c:Lcom/aggmoread/sdk/b/l;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/aggmoread/sdk/b/k;->b:Lcom/aggmoread/sdk/b/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/b/h;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/b/k;->c:Lcom/aggmoread/sdk/b/l;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/aggmoread/sdk/b/l;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bindAdToView(Landroid/content/Context;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;Ljava/util/List;Landroid/view/View;Lcom/aggmoread/sdk/client/feedlist/AMNativeInteractionListener;)Landroid/view/View;
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/aggmoread/sdk/client/feedlist/AMNativeInteractionListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Landroid/widget/FrameLayout$LayoutParams;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Lcom/aggmoread/sdk/client/feedlist/AMNativeInteractionListener;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/b/k;->c:Lcom/aggmoread/sdk/b/l;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/aggmoread/sdk/b/l;->bindAdToView(Landroid/content/Context;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;Ljava/util/List;Landroid/view/View;Lcom/aggmoread/sdk/client/feedlist/AMNativeInteractionListener;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bindAdToView(Landroid/content/Context;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;Ljava/util/List;Landroid/view/View;Ljava/util/List;Lcom/aggmoread/sdk/client/feedlist/AMNativeInteractionListener;)Landroid/view/View;
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/aggmoread/sdk/client/feedlist/AMNativeInteractionListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Landroid/widget/FrameLayout$LayoutParams;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/aggmoread/sdk/client/feedlist/AMNativeInteractionListener;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/aggmoread/sdk/b/k;->c:Lcom/aggmoread/sdk/b/l;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/aggmoread/sdk/b/l;->bindAdToView(Landroid/content/Context;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;Ljava/util/List;Landroid/view/View;Ljava/util/List;Lcom/aggmoread/sdk/client/feedlist/AMNativeInteractionListener;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bindCTAViews(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/aggmoread/sdk/b/k;->c:Lcom/aggmoread/sdk/b/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/aggmoread/sdk/b/l;->bindCTAViews(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public bindMediaAdToView(Lcom/aggmoread/sdk/client/AMAdMediaView;Lcom/aggmoread/sdk/client/AMAdMediaListener;)V
    .locals 1
    .param p1    # Lcom/aggmoread/sdk/client/AMAdMediaView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/aggmoread/sdk/b/k;->c:Lcom/aggmoread/sdk/b/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/aggmoread/sdk/b/l;->bindMediaAdToView(Lcom/aggmoread/sdk/client/AMAdMediaView;Lcom/aggmoread/sdk/client/AMAdMediaListener;)V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/b/k;->b:Lcom/aggmoread/sdk/b/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/b/h;->destroy()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/b/k;->c:Lcom/aggmoread/sdk/b/l;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/aggmoread/sdk/b/l;->destroy()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aggmoread/sdk/b/k;->b:Lcom/aggmoread/sdk/b/h;

    iput-object v0, p0, Lcom/aggmoread/sdk/b/k;->c:Lcom/aggmoread/sdk/b/l;

    return-void
.end method

.method public getAdPatternType()I
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/b/k;->c:Lcom/aggmoread/sdk/b/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/b/l;->getAdPatternType()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAppInfo()Lcom/aggmoread/sdk/client/AMAppInfo;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/b/k;->c:Lcom/aggmoread/sdk/b/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/b/l;->getAppInfo()Lcom/aggmoread/sdk/client/AMAppInfo;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppPrice()D
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/b/k;->c:Lcom/aggmoread/sdk/b/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/b/l;->getAppPrice()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getAppScore()I
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/b/k;->c:Lcom/aggmoread/sdk/b/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/b/l;->getAppScore()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAppStatus()I
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/b/k;->c:Lcom/aggmoread/sdk/b/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/b/l;->getAppStatus()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCTAText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/b/k;->c:Lcom/aggmoread/sdk/b/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/b/l;->getCTAText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/b/k;->c:Lcom/aggmoread/sdk/b/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/b/l;->getDesc()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getDownloadCount()J
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/b/k;->c:Lcom/aggmoread/sdk/b/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/b/l;->getDownloadCount()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getExpressView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/b/k;->b:Lcom/aggmoread/sdk/b/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/b/h;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/b/k;->c:Lcom/aggmoread/sdk/b/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/b/l;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/b/k;->c:Lcom/aggmoread/sdk/b/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/b/l;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getImageUrlList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/aggmoread/sdk/b/k;->c:Lcom/aggmoread/sdk/b/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/b/l;->getImageUrlList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPictureHeight()I
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/b/k;->c:Lcom/aggmoread/sdk/b/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/b/l;->getPictureHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPictureWidth()I
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/b/k;->c:Lcom/aggmoread/sdk/b/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/b/l;->getPictureWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getProgress()I
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/b/k;->c:Lcom/aggmoread/sdk/b/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/b/l;->getProgress()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/b/k;->c:Lcom/aggmoread/sdk/b/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/b/l;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getVideoCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/b/k;->c:Lcom/aggmoread/sdk/b/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/b/l;->getVideoCurrentPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoDuration()I
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/b/k;->c:Lcom/aggmoread/sdk/b/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/b/l;->getVideoDuration()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAppAd()Z
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/b/k;->c:Lcom/aggmoread/sdk/b/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/b/l;->isAppAd()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isExpressAd()Z
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/b/k;->b:Lcom/aggmoread/sdk/b/h;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVideoAd()Z
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/b/k;->c:Lcom/aggmoread/sdk/b/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/b/l;->isVideoAd()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pauseVideo()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/b/k;->c:Lcom/aggmoread/sdk/b/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/b/l;->pauseVideo()V

    :cond_0
    return-void
.end method

.method public renderExpressAd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/b/k;->b:Lcom/aggmoread/sdk/b/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/b/h;->render()V

    :cond_0
    return-void
.end method

.method public renderExpressAd(Landroid/app/Activity;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/aggmoread/sdk/b/k;->b:Lcom/aggmoread/sdk/b/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/aggmoread/sdk/b/h;->renderActivity(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public renderView(Landroid/view/View;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/b/k;->c:Lcom/aggmoread/sdk/b/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/aggmoread/sdk/b/l;->renderView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/b/k;->c:Lcom/aggmoread/sdk/b/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/b/l;->resume()V

    :cond_0
    return-void
.end method

.method public resumeVideo()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/b/k;->c:Lcom/aggmoread/sdk/b/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/b/l;->resumeVideo()V

    :cond_0
    return-void
.end method

.method public setExpressInteractionListener(Lcom/aggmoread/sdk/client/feedlist/AMExpressInteractionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/b/k;->b:Lcom/aggmoread/sdk/b/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/aggmoread/sdk/b/h;->setInteractionListener(Lcom/aggmoread/sdk/client/feedlist/AMExpressInteractionListener;)V

    :cond_0
    return-void
.end method

.method public setExpressMediaListener(Lcom/aggmoread/sdk/client/feedlist/AMExpressAd$ExpressMediaListener;)V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/b/k;->b:Lcom/aggmoread/sdk/b/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/aggmoread/sdk/b/h;->setMediaListener(Lcom/aggmoread/sdk/client/feedlist/AMExpressAd$ExpressMediaListener;)V

    :cond_0
    return-void
.end method

.method public setVideoMute(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/b/k;->c:Lcom/aggmoread/sdk/b/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/aggmoread/sdk/b/l;->setVideoMute(Z)V

    :cond_0
    return-void
.end method

.method public startVideo()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/b/k;->c:Lcom/aggmoread/sdk/b/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/b/l;->startVideo()V

    :cond_0
    return-void
.end method

.method public stopVideo()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/b/k;->c:Lcom/aggmoread/sdk/b/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/b/l;->stopVideo()V

    :cond_0
    return-void
.end method
