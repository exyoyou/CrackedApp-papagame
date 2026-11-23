.class public Lcom/join/mgps/adapter/FullScreenActivity;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d02e7
.end annotation


# instance fields
.field muteBak:Z

.field proxy:Lcom/danikula/videocache/i;

.field videoInfo:Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field videoPlayer:Lcom/join/android/app/component/video/StandardVideoView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/adapter/FullScreenActivity;->muteBak:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method afterViews()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/FullScreenActivity;->videoInfo:Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0, p0}, Lcom/join/mgps/adapter/FullScreenActivity;->getProxy(Landroid/content/Context;)Lcom/danikula/videocache/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/join/mgps/adapter/FullScreenActivity;->proxy:Lcom/danikula/videocache/i;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/adapter/FullScreenActivity;->videoInfo:Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->y()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/join/mgps/adapter/FullScreenActivity;->videoInfo:Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/join/mgps/adapter/FullScreenActivity$VideoInfo;->b()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget-object v2, p0, Lcom/join/mgps/adapter/FullScreenActivity;->videoPlayer:Lcom/join/android/app/component/video/StandardVideoView;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-virtual {v2, v3}, Lcom/join/android/app/component/video/StandardVideoView;->setMuteWhenPlay(Z)V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lcom/join/mgps/adapter/FullScreenActivity;->videoPlayer:Lcom/join/android/app/component/video/StandardVideoView;

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    invoke-virtual {v2, v4}, Lcom/join/android/app/component/video/StandardVideoView;->setNoneNetFinishActivity(Z)V

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/join/mgps/adapter/FullScreenActivity;->videoPlayer:Lcom/join/android/app/component/video/StandardVideoView;

    .line 40
    .line 41
    iget-object v2, v2, Lcom/join/android/app/component/video/StandardVideoView;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 42
    .line 43
    invoke-static {v2, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Lcom/join/mgps/adapter/FullScreenActivity;->videoPlayer:Lcom/join/android/app/component/video/StandardVideoView;

    .line 47
    .line 48
    const-string v5, "FullScreenActivity"

    .line 49
    .line 50
    invoke-virtual {v2, v5}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setPlayTag(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v2, p0, Lcom/join/mgps/adapter/FullScreenActivity;->videoPlayer:Lcom/join/android/app/component/video/StandardVideoView;

    .line 54
    .line 55
    const/4 v5, 0x2

    .line 56
    new-array v5, v5, [Ljava/lang/Object;

    .line 57
    .line 58
    const-string v6, ""

    .line 59
    .line 60
    aput-object v6, v5, v3

    .line 61
    .line 62
    aput-object v1, v5, v4

    .line 63
    .line 64
    invoke-virtual {v2, v0, v4, v5}, Lcom/join/android/app/component/video/StandardVideoView;->setUp(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public autoPlayVideo(Landroid/widget/AbsListView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    return-void
.end method

.method back()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public getProxy(Landroid/content/Context;)Lcom/danikula/videocache/i;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/MApplication;->q(Landroid/content/Context;)Lcom/danikula/videocache/i;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/papa/gsyvideoplayer/d;->c0(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/FullScreenActivity;->videoPlayer:Lcom/join/android/app/component/video/StandardVideoView;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getBackButton()Landroid/widget/ImageView;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Lcom/BaseAppCompatActivity;->setSystemUiHide(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/papa/gsyvideoplayer/d;->j0()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/papa/gsyvideoplayer/d;->j0()V

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/join/mgps/adapter/FullScreenActivity;->muteBak:Z

    .line 8
    .line 9
    sput-boolean v0, Lcom/join/android/app/component/video/StandardVideoView;->E:Z

    .line 10
    .line 11
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/join/android/app/component/video/StandardVideoView;->E:Z

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/adapter/FullScreenActivity;->muteBak:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/adapter/FullScreenActivity;->startPlay()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method startPlay()V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/join/mgps/adapter/FullScreenActivity$a;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/join/mgps/adapter/FullScreenActivity$a;-><init>(Lcom/join/mgps/adapter/FullScreenActivity;)V

    .line 9
    .line 10
    .line 11
    const-wide/16 v2, 0x1f4

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method
