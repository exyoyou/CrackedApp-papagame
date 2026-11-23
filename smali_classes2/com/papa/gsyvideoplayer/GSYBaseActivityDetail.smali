.class public abstract Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lv7/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;",
        ">",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Lv7/h;"
    }
.end annotation


# instance fields
.field protected isPause:Z

.field protected isPlay:Z

.field protected orientationUtils:Lcom/papa/gsyvideoplayer/utils/n;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract clickForFullScreen()V
.end method

.method public abstract getDetailOrientationRotateAuto()Z
.end method

.method public abstract getGSYVideoOptionBuilder()Lcom/papa/gsyvideoplayer/builder/a;
.end method

.method public abstract getGSYVideoPlayer()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getOrientationOption()Lcom/papa/gsyvideoplayer/utils/m;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hideActionBarWhenFull()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hideStatusBarWhenFull()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public initVideo()V
    .locals 3

    .line 1
    new-instance v0, Lcom/papa/gsyvideoplayer/utils/n;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->getGSYVideoPlayer()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->getOrientationOption()Lcom/papa/gsyvideoplayer/utils/m;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-direct {v0, p0, v1, v2}, Lcom/papa/gsyvideoplayer/utils/n;-><init>(Landroid/app/Activity;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Lcom/papa/gsyvideoplayer/utils/m;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->orientationUtils:Lcom/papa/gsyvideoplayer/utils/n;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/utils/n;->I(Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->getGSYVideoPlayer()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->getGSYVideoPlayer()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-instance v1, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail$a;

    .line 39
    .line 40
    invoke-direct {v1, p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail$a;-><init>(Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method public initVideoBuilderMode()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->initVideo()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->getGSYVideoOptionBuilder()Lcom/papa/gsyvideoplayer/builder/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lcom/papa/gsyvideoplayer/builder/a;->T(Lv7/h;)Lcom/papa/gsyvideoplayer/builder/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->getGSYVideoPlayer()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/builder/a;->b(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public isAutoFullWithSize()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public varargs onAutoComplete(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->orientationUtils:Lcom/papa/gsyvideoplayer/utils/n;

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
    invoke-static {p0}, Lcom/papa/gsyvideoplayer/d;->c0(Landroid/content/Context;)Z

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
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public varargs onClickBlank(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs onClickBlankFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs onClickResume(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs onClickResumeFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs onClickSeekbar(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs onClickSeekbarFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs onClickStartError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs onClickStartIcon(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs onClickStartThumb(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs onClickStop(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs onClickStopFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->isPlay:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->isPause:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->getGSYVideoPlayer()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v4, p0, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->orientationUtils:Lcom/papa/gsyvideoplayer/utils/n;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->hideActionBarWhenFull()Z

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->hideStatusBarWhenFull()Z

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    move-object v2, p0

    .line 27
    move-object v3, p1

    .line 28
    invoke-virtual/range {v1 .. v6}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;Lcom/papa/gsyvideoplayer/utils/n;ZZ)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->isPlay:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->getGSYVideoPlayer()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getCurrentPlayer()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->release()V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->orientationUtils:Lcom/papa/gsyvideoplayer/utils/n;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/n;->D()V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public varargs onEnterFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs onEnterSmallWidget(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->getGSYVideoPlayer()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getCurrentPlayer()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->orientationUtils:Lcom/papa/gsyvideoplayer/utils/n;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/utils/n;->K(Z)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iput-boolean v1, p0, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->isPause:Z

    .line 24
    .line 25
    return-void
.end method

.method public varargs onPlayError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs onPrepared(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->orientationUtils:Lcom/papa/gsyvideoplayer/utils/n;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->getDetailOrientationRotateAuto()Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const/4 v0, 0x1

    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->isAutoFullWithSize()Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    const/4 p2, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p2, 0x0

    .line 21
    :goto_0
    invoke-virtual {p1, p2}, Lcom/papa/gsyvideoplayer/utils/n;->I(Z)V

    .line 22
    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->isPlay:Z

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 28
    .line 29
    const-string p2, "initVideo() or initVideoBuilderMode() first"

    .line 30
    .line 31
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1
.end method

.method public varargs onQuitFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->orientationUtils:Lcom/papa/gsyvideoplayer/utils/n;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/utils/n;->q()I

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public varargs onQuitSmallWidget(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->getGSYVideoPlayer()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getCurrentPlayer()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoResume()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->orientationUtils:Lcom/papa/gsyvideoplayer/utils/n;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/utils/n;->K(Z)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iput-boolean v1, p0, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->isPause:Z

    .line 24
    .line 25
    return-void
.end method

.method public varargs onStartPrepared(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs onTouchScreenSeekLight(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs onTouchScreenSeekPosition(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs onTouchScreenSeekVolume(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

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
