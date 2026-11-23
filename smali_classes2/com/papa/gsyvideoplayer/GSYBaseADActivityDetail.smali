.class public abstract Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;
.super Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;",
        "R:",
        "Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;",
        ">",
        "Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected mADOrientationUtils:Lcom/papa/gsyvideoplayer/utils/n;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public clickForFullScreen()V
    .locals 0

    return-void
.end method

.method public abstract getGSYADVideoOptionBuilder()Lcom/papa/gsyvideoplayer/builder/a;
.end method

.method public abstract getGSYADVideoPlayer()Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

.method public getOrientationOption()Lcom/papa/gsyvideoplayer/utils/m;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public initVideo()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->initVideo()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/papa/gsyvideoplayer/utils/n;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->getGSYADVideoPlayer()Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->getOrientationOption()Lcom/papa/gsyvideoplayer/utils/m;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-direct {v0, p0, v1, v2}, Lcom/papa/gsyvideoplayer/utils/n;-><init>(Landroid/app/Activity;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Lcom/papa/gsyvideoplayer/utils/m;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->mADOrientationUtils:Lcom/papa/gsyvideoplayer/utils/n;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/utils/n;->I(Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->getGSYADVideoPlayer()Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->getGSYADVideoPlayer()Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v1, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail$a;

    .line 42
    .line 43
    invoke-direct {v1, p0}, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail$a;-><init>(Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method

.method public initVideoBuilderMode()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->initVideoBuilderMode()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->getGSYADVideoOptionBuilder()Lcom/papa/gsyvideoplayer/builder/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail$b;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail$b;-><init>(Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/builder/a;->T(Lv7/h;)Lcom/papa/gsyvideoplayer/builder/a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->getGSYADVideoPlayer()Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/builder/a;->a(Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method protected isADStarted()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->getGSYADVideoPlayer()Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getCurrentPlayer()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ltz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->getGSYADVideoPlayer()Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getCurrentPlayer()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->getGSYADVideoPlayer()Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getCurrentPlayer()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v1, 0x6

    .line 42
    if-eq v0, v1, :cond_0

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 v0, 0x0

    .line 47
    :goto_0
    return v0
.end method

.method public abstract isNeedAdOnStart()Z
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->mADOrientationUtils:Lcom/papa/gsyvideoplayer/utils/n;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/n;->q()I

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {p0}, Lcom/papa/gsyvideoplayer/b;->c0(Landroid/content/Context;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->onBackPressed()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->isPlay:Z

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->isPause:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->getGSYADVideoPlayer()Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->isADStarted()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    iput-boolean v1, p0, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->isPlay:Z

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->getGSYADVideoPlayer()Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getCurrentPlayer()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iget-object v5, p0, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->mADOrientationUtils:Lcom/papa/gsyvideoplayer/utils/n;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->hideActionBarWhenFull()Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->hideStatusBarWhenFull()Z

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    move-object v3, p0

    .line 45
    move-object v4, p1

    .line 46
    invoke-virtual/range {v2 .. v7}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;Lcom/papa/gsyvideoplayer/utils/n;ZZ)V

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-super {p0, p1}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 50
    .line 51
    .line 52
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->isPlay:Z

    .line 53
    .line 54
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/papa/gsyvideoplayer/b;->i0()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->mADOrientationUtils:Lcom/papa/gsyvideoplayer/utils/n;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/n;->D()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public varargs onEnterFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->onEnterFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    aget-object p1, p2, p1

    .line 6
    .line 7
    check-cast p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getBackButton()Landroid/widget/ImageView;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/16 p2, 0x8

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/papa/gsyvideoplayer/b;->f0()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public varargs onPrepared(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->onPrepared(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->isNeedAdOnStart()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->startAdPlay()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/papa/gsyvideoplayer/b;->g0()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public varargs onStartPrepared(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->onStartPrepared(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public showADFull()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->mADOrientationUtils:Lcom/papa/gsyvideoplayer/utils/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/n;->r()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->mADOrientationUtils:Lcom/papa/gsyvideoplayer/utils/n;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/n;->E()V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->getGSYADVideoPlayer()Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->hideActionBarWhenFull()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->hideStatusBarWhenFull()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {v0, p0, v1, v2}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public showFull()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->orientationUtils:Lcom/papa/gsyvideoplayer/utils/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/n;->r()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->orientationUtils:Lcom/papa/gsyvideoplayer/utils/n;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/n;->E()V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->getGSYVideoPlayer()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->hideActionBarWhenFull()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->hideStatusBarWhenFull()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {v0, p0, v1, v2}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public startAdPlay()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->getGSYADVideoPlayer()Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->getGSYADVideoPlayer()Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->startPlayLogic()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->getGSYVideoPlayer()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getCurrentPlayer()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isIfCurrentIsFullscreen()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->showADFull()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->getGSYADVideoPlayer()Lcom/papa/gsyvideoplayer/video/GSYADVideoPlayer;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->getGSYVideoPlayer()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getSaveBeforeFullSystemUiVisibility()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setSaveBeforeFullSystemUiVisibility(I)V

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void
.end method
