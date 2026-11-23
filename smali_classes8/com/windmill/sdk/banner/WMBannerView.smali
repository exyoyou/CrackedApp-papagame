.class public final Lcom/windmill/sdk/banner/WMBannerView;
.super Lcom/windmill/sdk/banner/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/windmill/sdk/banner/b;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/windmill/sdk/banner/b;-><init>(Landroid/app/Activity;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "attrs",
            "defStyle"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/windmill/sdk/banner/b;-><init>(Landroid/app/Activity;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic checkValidAdCaches()Ljava/util/List;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/windmill/sdk/banner/b;->checkValidAdCaches()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic checkVisibleStart()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/windmill/sdk/banner/b;->checkVisibleStart()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic destroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/windmill/sdk/banner/b;->destroy()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic disableAutoScroll()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/windmill/sdk/banner/b;->disableAutoScroll()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic getActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/windmill/sdk/banner/b;->getActivity()Landroid/app/Activity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic getLoadFailMessages()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/windmill/sdk/banner/b;->getLoadFailMessages()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic inVisible()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/windmill/sdk/banner/b;->inVisible()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic isCanRefresh()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/windmill/sdk/banner/b;->isCanRefresh()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic isReady()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/windmill/sdk/banner/b;->isReady()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic isViewAttached()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/windmill/sdk/banner/b;->isViewAttached()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic loadAd(Lcom/windmill/sdk/banner/WMBannerAdRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "request"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/windmill/sdk/banner/b;->loadAd(Lcom/windmill/sdk/banner/WMBannerAdRequest;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic onAdAutoRefreshFail(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "error",
            "placementId"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/windmill/sdk/banner/b;->onAdAutoRefreshFail(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic onAdAutoRefreshed(Lcom/windmill/sdk/models/AdInfo;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "adInfo",
            "bannerView"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/windmill/sdk/banner/b;->onAdAutoRefreshed(Lcom/windmill/sdk/models/AdInfo;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic onAdClicked(Lcom/windmill/sdk/models/AdInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "adInfo"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/windmill/sdk/banner/b;->onAdClicked(Lcom/windmill/sdk/models/AdInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic onAdClosed(Lcom/windmill/sdk/models/AdInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "adInfo"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/windmill/sdk/banner/b;->onAdClosed(Lcom/windmill/sdk/models/AdInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic onAdLoadError(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "error",
            "placementId"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/windmill/sdk/banner/b;->onAdLoadError(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic onAdLoadSuccess(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "bannerView",
            "placementId"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/windmill/sdk/banner/b;->onAdLoadSuccess(Landroid/view/View;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic onAdShown(Lcom/windmill/sdk/models/AdInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "adInfo"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/windmill/sdk/banner/b;->onAdShown(Lcom/windmill/sdk/models/AdInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic onFinishTemporaryDetach()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/windmill/sdk/banner/b;->onFinishTemporaryDetach()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic onStartTemporaryDetach()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/windmill/sdk/banner/b;->onStartTemporaryDetach()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic onWindowFocusChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "hasWindowFocus"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/windmill/sdk/banner/b;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic setActivityChannelFilterList(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "channelIds"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/windmill/sdk/banner/b;->setActivityChannelFilterList(Ljava/util/Set;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic setAdListener(Lcom/windmill/sdk/banner/WMBannerAdListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/windmill/sdk/banner/b;->setAdListener(Lcom/windmill/sdk/banner/WMBannerAdListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic setAdSourceStatusListener(Lcom/windmill/sdk/WMAdSourceStatusListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/windmill/sdk/banner/b;->setAdSourceStatusListener(Lcom/windmill/sdk/WMAdSourceStatusListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic setAutoAnimation(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "anima"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/windmill/sdk/banner/b;->setAutoAnimation(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic setAutoScroll()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/windmill/sdk/banner/b;->setAutoScroll()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic setCustomGroup(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "customGroup"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/windmill/sdk/banner/b;->setCustomGroup(Ljava/util/HashMap;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic setFilter(Lcom/windmill/sdk/WMAdFilter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "filter"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/windmill/sdk/banner/b;->setFilter(Lcom/windmill/sdk/WMAdFilter;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic visible()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/windmill/sdk/banner/b;->visible()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
