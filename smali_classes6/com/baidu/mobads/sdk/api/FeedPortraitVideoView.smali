.class public Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView$InvocationHandlerImp;
    }
.end annotation


# static fields
.field private static final FEED_CLICK:Ljava/lang/String; = "pauseBtnClick"

.field private static final PLAY_END:Ljava/lang/String; = "playCompletion"

.field private static final PLAY_ERROR:Ljava/lang/String; = "playError"

.field private static final PLAY_PAUSE:Ljava/lang/String; = "playPause"

.field private static final PLAY_RESUME:Ljava/lang/String; = "playResume"

.field private static final PLAY_START:Ljava/lang/String; = "playRenderingStart"

.field private static final TAG:Ljava/lang/String; = "FeedPortraitVideoView"


# instance fields
.field private mAdView:Landroid/view/View;

.field private mFeedVideoListener:Lcom/baidu/mobads/sdk/api/IFeedPortraitListener;

.field private mLoader:Ljava/lang/ClassLoader;

.field private mRemoteClassName:Ljava/lang/String;

.field private mViewContext:Landroid/content/Context;

.field private useDownloadFrame:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    sget-object p2, Lcom/baidu/mobads/sdk/internal/z;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mRemoteClassName:Ljava/lang/String;

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->useDownloadFrame:Z

    .line 6
    invoke-direct {p0, p1}, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;)Lcom/baidu/mobads/sdk/api/IFeedPortraitListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mFeedVideoListener:Lcom/baidu/mobads/sdk/api/IFeedPortraitListener;

    .line 2
    .line 3
    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mViewContext:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    new-array v1, v0, [Ljava/lang/Class;

    .line 5
    .line 6
    const-class v2, Landroid/content/Context;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 10
    .line 11
    new-array v0, v0, [Ljava/lang/Object;

    .line 12
    .line 13
    aput-object p1, v0, v3

    .line 14
    .line 15
    invoke-static {p1}, Lcom/baidu/mobads/sdk/internal/bu;->a(Landroid/content/Context;)Ljava/lang/ClassLoader;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mLoader:Ljava/lang/ClassLoader;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mRemoteClassName:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v2, p1, v1, v0}, Lcom/baidu/mobads/sdk/internal/av;->a(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Landroid/view/View;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mAdView:Landroid/view/View;

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 34
    .line 35
    const/4 v1, -0x1

    .line 36
    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentPosition()J
    .locals 7

    .line 1
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mAdView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mRemoteClassName:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mLoader:Ljava/lang/ClassLoader;

    .line 8
    .line 9
    const-string v3, "getCurrentPosition"

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    new-array v5, v4, [Ljava/lang/Class;

    .line 13
    .line 14
    new-array v6, v4, [Ljava/lang/Object;

    .line 15
    .line 16
    move-object v4, v5

    .line 17
    move-object v5, v6

    .line 18
    invoke-static/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    instance-of v1, v0, Ljava/lang/Long;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    check-cast v0, Ljava/lang/Long;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    return-wide v0

    .line 33
    :cond_0
    const-wide/16 v0, 0x0

    .line 34
    .line 35
    return-wide v0
.end method

.method public getDuration()J
    .locals 7

    .line 1
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mAdView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mRemoteClassName:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mLoader:Ljava/lang/ClassLoader;

    .line 8
    .line 9
    const-string v3, "getDuration"

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    new-array v5, v4, [Ljava/lang/Class;

    .line 13
    .line 14
    new-array v6, v4, [Ljava/lang/Object;

    .line 15
    .line 16
    move-object v4, v5

    .line 17
    move-object v5, v6

    .line 18
    invoke-static/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    instance-of v1, v0, Ljava/lang/Long;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    check-cast v0, Ljava/lang/Long;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    return-wide v0

    .line 33
    :cond_0
    const-wide/16 v0, 0x0

    .line 34
    .line 35
    return-wide v0
.end method

.method public handleFeedCover(Lcom/baidu/mobads/sdk/api/AbstractData;)V
    .locals 8

    .line 1
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mAdView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mRemoteClassName:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mLoader:Ljava/lang/ClassLoader;

    .line 8
    .line 9
    const-string v3, "handleCover"

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    new-array v5, v4, [Ljava/lang/Class;

    .line 13
    .line 14
    const-class v6, Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    aput-object v6, v5, v7

    .line 18
    .line 19
    new-array v6, v4, [Ljava/lang/Object;

    .line 20
    .line 21
    aput-object p1, v6, v7

    .line 22
    .line 23
    move-object v4, v5

    .line 24
    move-object v5, v6

    .line 25
    invoke-static/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public hideFeedCoverPic(Lcom/baidu/mobads/sdk/api/AbstractData;)V
    .locals 8

    .line 1
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mAdView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mRemoteClassName:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mLoader:Ljava/lang/ClassLoader;

    .line 8
    .line 9
    const-string v3, "hideFeedCoverPic"

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    new-array v5, v4, [Ljava/lang/Class;

    .line 13
    .line 14
    const-class v6, Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    aput-object v6, v5, v7

    .line 18
    .line 19
    new-array v6, v4, [Ljava/lang/Object;

    .line 20
    .line 21
    aput-object p1, v6, v7

    .line 22
    .line 23
    move-object v4, v5

    .line 24
    move-object v5, v6

    .line 25
    invoke-static/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public hideFeedPauseBtn(Lcom/baidu/mobads/sdk/api/AbstractData;)V
    .locals 8

    .line 1
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mAdView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mRemoteClassName:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mLoader:Ljava/lang/ClassLoader;

    .line 8
    .line 9
    const-string v3, "hidePauseBtn"

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    new-array v5, v4, [Ljava/lang/Class;

    .line 13
    .line 14
    const-class v6, Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    aput-object v6, v5, v7

    .line 18
    .line 19
    new-array v6, v4, [Ljava/lang/Object;

    .line 20
    .line 21
    aput-object p1, v6, v7

    .line 22
    .line 23
    move-object v4, v5

    .line 24
    move-object v5, v6

    .line 25
    invoke-static/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public isPlaying()Z
    .locals 7

    .line 1
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mAdView:Landroid/view/View;

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mRemoteClassName:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mLoader:Ljava/lang/ClassLoader;

    .line 9
    .line 10
    const-string v3, "isPlaying"

    .line 11
    .line 12
    new-array v4, v6, [Ljava/lang/Class;

    .line 13
    .line 14
    new-array v5, v6, [Ljava/lang/Object;

    .line 15
    .line 16
    invoke-static/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    instance-of v1, v0, Ljava/lang/Boolean;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    check-cast v0, Ljava/lang/Boolean;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    return v0

    .line 31
    :cond_0
    return v6
.end method

.method public isShowEndFrame()Z
    .locals 7

    .line 1
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mAdView:Landroid/view/View;

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mRemoteClassName:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mLoader:Ljava/lang/ClassLoader;

    .line 9
    .line 10
    const-string v3, "isShowEndFrame"

    .line 11
    .line 12
    new-array v4, v6, [Ljava/lang/Class;

    .line 13
    .line 14
    new-array v5, v6, [Ljava/lang/Object;

    .line 15
    .line 16
    invoke-static/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    instance-of v1, v0, Ljava/lang/Boolean;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    check-cast v0, Ljava/lang/Boolean;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    return v0

    .line 31
    :cond_0
    return v6
.end method

.method public pause()V
    .locals 7

    .line 1
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mAdView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mRemoteClassName:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mLoader:Ljava/lang/ClassLoader;

    .line 8
    .line 9
    const-string v3, "pause"

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    new-array v5, v4, [Ljava/lang/Class;

    .line 13
    .line 14
    new-array v6, v4, [Ljava/lang/Object;

    .line 15
    .line 16
    move-object v4, v5

    .line 17
    move-object v5, v6

    .line 18
    invoke-static/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public play()V
    .locals 7

    .line 1
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mAdView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mRemoteClassName:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mLoader:Ljava/lang/ClassLoader;

    .line 8
    .line 9
    const-string v3, "play"

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    new-array v5, v4, [Ljava/lang/Class;

    .line 13
    .line 14
    new-array v6, v4, [Ljava/lang/Object;

    .line 15
    .line 16
    move-object v4, v5

    .line 17
    move-object v5, v6

    .line 18
    invoke-static/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 7

    .line 1
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mAdView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mRemoteClassName:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mLoader:Ljava/lang/ClassLoader;

    .line 8
    .line 9
    const-string v3, "resume"

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    new-array v5, v4, [Ljava/lang/Class;

    .line 13
    .line 14
    new-array v6, v4, [Ljava/lang/Object;

    .line 15
    .line 16
    move-object v4, v5

    .line 17
    move-object v5, v6

    .line 18
    invoke-static/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 8

    .line 1
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mAdView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mRemoteClassName:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mLoader:Ljava/lang/ClassLoader;

    .line 8
    .line 9
    const-string v3, "seekTo"

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    new-array v5, v4, [Ljava/lang/Class;

    .line 13
    .line 14
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    aput-object v6, v5, v7

    .line 18
    .line 19
    new-array v6, v4, [Ljava/lang/Object;

    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    aput-object p1, v6, v7

    .line 26
    .line 27
    move-object v4, v5

    .line 28
    move-object v5, v6

    .line 29
    invoke-static/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public setAdData(Lcom/baidu/mobads/sdk/api/AbstractData;)V
    .locals 9

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mAdView:Landroid/view/View;

    .line 5
    .line 6
    if-eqz v1, :cond_2

    .line 7
    .line 8
    instance-of v0, p1, Lcom/baidu/mobads/sdk/api/NativeCPUAdData;

    .line 9
    .line 10
    const-class v2, Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x1

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mRemoteClassName:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v5, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mLoader:Ljava/lang/ClassLoader;

    .line 19
    .line 20
    const-string v6, "setCpuAdData"

    .line 21
    .line 22
    new-array v7, v4, [Ljava/lang/Class;

    .line 23
    .line 24
    aput-object v2, v7, v3

    .line 25
    .line 26
    new-array v8, v4, [Ljava/lang/Object;

    .line 27
    .line 28
    aput-object p1, v8, v3

    .line 29
    .line 30
    move-object v2, v5

    .line 31
    move-object v3, v6

    .line 32
    move-object v4, v7

    .line 33
    move-object v5, v8

    .line 34
    invoke-static/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mRemoteClassName:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v5, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mLoader:Ljava/lang/ClassLoader;

    .line 41
    .line 42
    const-string v6, "setAdData"

    .line 43
    .line 44
    new-array v7, v4, [Ljava/lang/Class;

    .line 45
    .line 46
    aput-object v2, v7, v3

    .line 47
    .line 48
    new-array v8, v4, [Ljava/lang/Object;

    .line 49
    .line 50
    aput-object p1, v8, v3

    .line 51
    .line 52
    move-object v2, v5

    .line 53
    move-object v3, v6

    .line 54
    move-object v4, v7

    .line 55
    move-object v5, v8

    .line 56
    invoke-static/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    :cond_2
    :goto_0
    return-void
.end method

.method public setCanClickVideo(Z)V
    .locals 8

    .line 1
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mAdView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mRemoteClassName:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mLoader:Ljava/lang/ClassLoader;

    .line 8
    .line 9
    const-string v3, "setCanClickVideo"

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    new-array v5, v4, [Ljava/lang/Class;

    .line 13
    .line 14
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    aput-object v6, v5, v7

    .line 18
    .line 19
    new-array v6, v4, [Ljava/lang/Object;

    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    aput-object p1, v6, v7

    .line 26
    .line 27
    move-object v4, v5

    .line 28
    move-object v5, v6

    .line 29
    invoke-static/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public setFeedPortraitListener(Lcom/baidu/mobads/sdk/api/IFeedPortraitListener;)V
    .locals 10

    .line 1
    iput-object p1, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mFeedVideoListener:Lcom/baidu/mobads/sdk/api/IFeedPortraitListener;

    .line 2
    .line 3
    :try_start_0
    const-string p1, "com.component.feed.IFeedPortraitListener"

    .line 4
    .line 5
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mLoader:Ljava/lang/ClassLoader;

    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/baidu/mobads/sdk/internal/av;->a(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x1

    .line 18
    new-array v2, v1, [Ljava/lang/Class;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    aput-object p1, v2, v3

    .line 22
    .line 23
    new-instance v4, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView$InvocationHandlerImp;

    .line 24
    .line 25
    invoke-direct {v4, p0}, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView$InvocationHandlerImp;-><init>(Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v2, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v5, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mAdView:Landroid/view/View;

    .line 33
    .line 34
    if-eqz v5, :cond_0

    .line 35
    .line 36
    iget-object v4, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mRemoteClassName:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v6, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mLoader:Ljava/lang/ClassLoader;

    .line 39
    .line 40
    const-string v7, "setFeedPortraitListener"

    .line 41
    .line 42
    new-array v8, v1, [Ljava/lang/Class;

    .line 43
    .line 44
    aput-object p1, v8, v3

    .line 45
    .line 46
    new-array v9, v1, [Ljava/lang/Object;

    .line 47
    .line 48
    aput-object v0, v9, v3

    .line 49
    .line 50
    invoke-static/range {v4 .. v9}, Lcom/baidu/mobads/sdk/internal/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    :catchall_0
    :cond_0
    return-void
.end method

.method public setPlayBackSpeed(F)V
    .locals 8

    .line 1
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mAdView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mRemoteClassName:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mLoader:Ljava/lang/ClassLoader;

    .line 8
    .line 9
    const-string v3, "setPlayBackSpeed"

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    new-array v5, v4, [Ljava/lang/Class;

    .line 13
    .line 14
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    aput-object v6, v5, v7

    .line 18
    .line 19
    new-array v6, v4, [Ljava/lang/Object;

    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    aput-object p1, v6, v7

    .line 26
    .line 27
    move-object v4, v5

    .line 28
    move-object v5, v6

    .line 29
    invoke-static/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public setProgressBackgroundColor(I)V
    .locals 8

    .line 1
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mAdView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mRemoteClassName:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mLoader:Ljava/lang/ClassLoader;

    .line 8
    .line 9
    const-string v3, "setProgressBackgroundColor"

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    new-array v5, v4, [Ljava/lang/Class;

    .line 13
    .line 14
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    aput-object v6, v5, v7

    .line 18
    .line 19
    new-array v6, v4, [Ljava/lang/Object;

    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    aput-object p1, v6, v7

    .line 26
    .line 27
    move-object v4, v5

    .line 28
    move-object v5, v6

    .line 29
    invoke-static/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public setProgressBarColor(I)V
    .locals 8

    .line 1
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mAdView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mRemoteClassName:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mLoader:Ljava/lang/ClassLoader;

    .line 8
    .line 9
    const-string v3, "setProgressBarColor"

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    new-array v5, v4, [Ljava/lang/Class;

    .line 13
    .line 14
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    aput-object v6, v5, v7

    .line 18
    .line 19
    new-array v6, v4, [Ljava/lang/Object;

    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    aput-object p1, v6, v7

    .line 26
    .line 27
    move-object v4, v5

    .line 28
    move-object v5, v6

    .line 29
    invoke-static/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public setProgressHeightInDp(I)V
    .locals 8

    .line 1
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mAdView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mRemoteClassName:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mLoader:Ljava/lang/ClassLoader;

    .line 8
    .line 9
    const-string v3, "setProgressHeightDp"

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    new-array v5, v4, [Ljava/lang/Class;

    .line 13
    .line 14
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    aput-object v6, v5, v7

    .line 18
    .line 19
    new-array v6, v4, [Ljava/lang/Object;

    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    aput-object p1, v6, v7

    .line 26
    .line 27
    move-object v4, v5

    .line 28
    move-object v5, v6

    .line 29
    invoke-static/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public setShowProgress(Z)V
    .locals 8

    .line 1
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mAdView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mRemoteClassName:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mLoader:Ljava/lang/ClassLoader;

    .line 8
    .line 9
    const-string v3, "setShowProgressBar"

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    new-array v5, v4, [Ljava/lang/Class;

    .line 13
    .line 14
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    aput-object v6, v5, v7

    .line 18
    .line 19
    new-array v6, v4, [Ljava/lang/Object;

    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    aput-object p1, v6, v7

    .line 26
    .line 27
    move-object v4, v5

    .line 28
    move-object v5, v6

    .line 29
    invoke-static/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public setUseDownloadFrame(Z)V
    .locals 8

    .line 1
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mAdView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mRemoteClassName:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mLoader:Ljava/lang/ClassLoader;

    .line 8
    .line 9
    const-string v3, "setUseDownloadFrame"

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    new-array v5, v4, [Ljava/lang/Class;

    .line 13
    .line 14
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    aput-object v6, v5, v7

    .line 18
    .line 19
    new-array v6, v4, [Ljava/lang/Object;

    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    aput-object p1, v6, v7

    .line 26
    .line 27
    move-object v4, v5

    .line 28
    move-object v5, v6

    .line 29
    invoke-static/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public setVideoMute(Z)V
    .locals 8

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mAdView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mRemoteClassName:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mLoader:Ljava/lang/ClassLoader;

    .line 8
    .line 9
    const-string v3, "userSetVideoMute"

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    new-array v5, v4, [Ljava/lang/Class;

    .line 13
    .line 14
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    aput-object v6, v5, v7

    .line 18
    .line 19
    new-array v6, v4, [Ljava/lang/Object;

    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    aput-object p1, v6, v7

    .line 26
    .line 27
    move-object v4, v5

    .line 28
    move-object v5, v6

    .line 29
    invoke-static/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    .line 36
    .line 37
    :cond_0
    :goto_0
    return-void
.end method

.method public showFeedVideoCover(Lcom/baidu/mobads/sdk/api/AbstractData;)V
    .locals 8

    .line 1
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mAdView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mRemoteClassName:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mLoader:Ljava/lang/ClassLoader;

    .line 8
    .line 9
    const-string v3, "showFeedVideoCover"

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    new-array v5, v4, [Ljava/lang/Class;

    .line 13
    .line 14
    const-class v6, Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    aput-object v6, v5, v7

    .line 18
    .line 19
    new-array v6, v4, [Ljava/lang/Object;

    .line 20
    .line 21
    aput-object p1, v6, v7

    .line 22
    .line 23
    move-object v4, v5

    .line 24
    move-object v5, v6

    .line 25
    invoke-static/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public showNormalPic(Lcom/baidu/mobads/sdk/api/AbstractData;)V
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mAdView:Landroid/view/View;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mRemoteClassName:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mLoader:Ljava/lang/ClassLoader;

    .line 11
    .line 12
    const-string v3, "showNormalPic"

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    new-array v5, v4, [Ljava/lang/Class;

    .line 16
    .line 17
    const-class v6, Ljava/lang/Object;

    .line 18
    .line 19
    const/4 v7, 0x0

    .line 20
    aput-object v6, v5, v7

    .line 21
    .line 22
    new-array v6, v4, [Ljava/lang/Object;

    .line 23
    .line 24
    aput-object p1, v6, v7

    .line 25
    .line 26
    move-object v4, v5

    .line 27
    move-object v5, v6

    .line 28
    invoke-static/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 7

    .line 1
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mAdView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mRemoteClassName:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mLoader:Ljava/lang/ClassLoader;

    .line 8
    .line 9
    const-string v3, "stop"

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    new-array v5, v4, [Ljava/lang/Class;

    .line 13
    .line 14
    new-array v6, v4, [Ljava/lang/Object;

    .line 15
    .line 16
    move-object v4, v5

    .line 17
    move-object v5, v6

    .line 18
    invoke-static/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public systemSetVideoMute(Z)V
    .locals 8

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mAdView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mRemoteClassName:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->mLoader:Ljava/lang/ClassLoader;

    .line 8
    .line 9
    const-string v3, "setVideoMute"

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    new-array v5, v4, [Ljava/lang/Class;

    .line 13
    .line 14
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    aput-object v6, v5, v7

    .line 18
    .line 19
    new-array v6, v4, [Ljava/lang/Object;

    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    aput-object p1, v6, v7

    .line 26
    .line 27
    move-object v4, v5

    .line 28
    move-object v5, v6

    .line 29
    invoke-static/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    .line 36
    .line 37
    :cond_0
    :goto_0
    return-void
.end method
