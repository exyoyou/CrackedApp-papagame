.class public abstract Lcom/windmill/sdk/natives/WMNativeAdData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/windmill/sdk/natives/WMNativeAdData$AppInfo;,
        Lcom/windmill/sdk/natives/WMNativeAdData$CustomizeVideo;,
        Lcom/windmill/sdk/natives/WMNativeAdData$AdShakeViewListener;,
        Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;,
        Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;,
        Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListenerExt;,
        Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;,
        Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;
    }
.end annotation


# instance fields
.field private expiredTime:J

.field private time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract bindImageViews(Landroid/content/Context;Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "imageViews",
            "defaultImageRes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract bindMediaView(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "mediaLayout"
        }
    .end annotation
.end method

.method public abstract bindViewForInteraction(Landroid/content/Context;Landroid/view/View;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "view",
            "clickableViews",
            "creativeViewList",
            "disLikeView"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation
.end method

.method public abstract connectAdToView(Landroid/app/Activity;Lcom/windmill/sdk/natives/WMNativeAdContainer;Lcom/windmill/sdk/natives/WMNativeAdRender;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "adContainer",
            "adRender"
        }
    .end annotation
.end method

.method public abstract destroy()V
.end method

.method public getAdChoice()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getAdLogo()Landroid/graphics/Bitmap;
.end method

.method public abstract getAdPatternType()I
.end method

.method public getAppDownloadButton(Landroid/content/Context;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAppInfo()Lcom/windmill/sdk/natives/WMNativeAdData$AppInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getCTAText()Ljava/lang/String;
.end method

.method public getCustomizeVideo()Lcom/windmill/sdk/natives/WMNativeAdData$CustomizeVideo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getDesc()Ljava/lang/String;
.end method

.method public abstract getExpressAdView()Landroid/view/View;
.end method

.method public abstract getIconUrl()Ljava/lang/String;
.end method

.method public abstract getImageList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/natives/WMImage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getImageUrlList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getInteractionType()I
.end method

.method public getInteractionWidgetView(IIILcom/windmill/sdk/natives/WMNativeAdData$AdShakeViewListener;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x10
        }
        names = {
            "width",
            "height",
            "actionType",
            "listener"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getInteractionWidgetView(Landroid/view/ViewGroup;IIILcom/windmill/sdk/natives/WMNativeAdData$AdShakeViewListener;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x10
        }
        names = {
            "widgetViewGroup",
            "width",
            "height",
            "actionType",
            "listener"
        }
    .end annotation

    .line 2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMediaExtraOption()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNativeAdContainer(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract getNetworkId()I
.end method

.method public getOriginNativeAdData()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getReadTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/windmill/sdk/natives/WMNativeAdData;->time:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public getVideoCoverImage()Lcom/windmill/sdk/natives/WMImage;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoDuration()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getVideoHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isExpressAd()Z
.end method

.method public abstract isNativeDrawAd()Z
.end method

.method public isReady()Z
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/windmill/sdk/natives/WMNativeAdData;->expiredTime:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    const/4 v4, 0x1

    .line 6
    cmp-long v5, v0, v2

    .line 7
    .line 8
    if-nez v5, :cond_0

    .line 9
    .line 10
    return v4

    .line 11
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iget-wide v2, p0, Lcom/windmill/sdk/natives/WMNativeAdData;->time:J

    .line 16
    .line 17
    sub-long/2addr v0, v2

    .line 18
    iget-wide v2, p0, Lcom/windmill/sdk/natives/WMNativeAdData;->expiredTime:J

    .line 19
    .line 20
    cmp-long v5, v0, v2

    .line 21
    .line 22
    if-gez v5, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v4, 0x0

    .line 26
    :goto_0
    return v4
.end method

.method public pauseVideo()V
    .locals 0

    return-void
.end method

.method public registerViewBidder(Lcom/windmill/sdk/natives/WMViewBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewBinder"
        }
    .end annotation

    return-void
.end method

.method public abstract render()V
.end method

.method public renderShakeView(IILcom/windmill/sdk/natives/WMNativeAdData$AdShakeViewListener;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "listener"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public resumeVideo()V
    .locals 0

    return-void
.end method

.method public setAdLogoParams(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adLogoParams"
        }
    .end annotation

    return-void
.end method

.method public setCloseViewPosition(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    return-void
.end method

.method public abstract setDislikeInteractionCallback(Landroid/app/Activity;Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "dislikeInteractionCallback"
        }
    .end annotation
.end method

.method public abstract setDownloadListener(Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appDownloadListener"
        }
    .end annotation
.end method

.method public setExpired_time(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expiredTime"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/windmill/sdk/natives/WMNativeAdData;->expiredTime:J

    .line 2
    .line 3
    return-void
.end method

.method public abstract setInteractionListener(Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adInteractionListener"
        }
    .end annotation
.end method

.method public abstract setMediaListener(Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeADMediaListener"
        }
    .end annotation
.end method

.method public setMediaViewOption(Lcom/windmill/sdk/natives/WMVideoOption;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoOption"
        }
    .end annotation

    return-void
.end method

.method public setReadyTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "readyTime"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/windmill/sdk/natives/WMNativeAdData;->time:J

    .line 2
    .line 3
    return-void
.end method

.method public setVideoMute(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isMute"
        }
    .end annotation

    return-void
.end method

.method public setVideoProgressUpdateInterval(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intervalMs"
        }
    .end annotation

    return-void
.end method

.method public startVideo()V
    .locals 0

    return-void
.end method

.method public stopVideo()V
    .locals 0

    return-void
.end method
