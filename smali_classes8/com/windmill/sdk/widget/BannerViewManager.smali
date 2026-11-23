.class public Lcom/windmill/sdk/widget/BannerViewManager;
.super Lcom/windmill/sdk/widget/a;
.source "SourceFile"


# instance fields
.field private a:Lcom/windmill/sdk/widget/BannerBaseView;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/windmill/sdk/natives/WMNativeAdData;Ljava/util/Map;Lcom/windmill/sdk/widget/ViewInteractionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "width",
            "height",
            "nativeAdData",
            "serverExtra",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Lcom/windmill/sdk/natives/WMNativeAdData;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/windmill/sdk/widget/ViewInteractionListener;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p4, p5, p6}, Lcom/windmill/sdk/widget/a;-><init>(Lcom/windmill/sdk/natives/WMNativeAdData;Ljava/util/Map;Lcom/windmill/sdk/widget/ViewInteractionListener;)V

    .line 2
    .line 3
    .line 4
    const/4 p4, 0x0

    .line 5
    iput-boolean p4, p0, Lcom/windmill/sdk/widget/BannerViewManager;->b:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/windmill/sdk/widget/a;->getNativeTemplateId()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p4

    .line 11
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result p5

    .line 15
    if-nez p5, :cond_1

    .line 16
    .line 17
    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    .line 18
    .line 19
    .line 20
    const-string p5, "7002001"

    .line 21
    .line 22
    invoke-virtual {p4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p4

    .line 26
    if-nez p4, :cond_0

    .line 27
    .line 28
    new-instance p1, Lcom/windmill/sdk/base/WMAdapterError;

    .line 29
    .line 30
    sget-object p2, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_PLAY:Lcom/windmill/sdk/WindMillError;

    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    const-string p3, "nativeTemplateId is not find"

    .line 37
    .line 38
    invoke-direct {p1, p2, p3}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, p1}, Lcom/windmill/sdk/widget/BannerViewManager;->a(Lcom/windmill/sdk/base/WMAdapterError;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    new-instance p4, Lcom/windmill/sdk/widget/BannerView_7002001;

    .line 46
    .line 47
    invoke-direct {p4, p1, p2, p3, p0}, Lcom/windmill/sdk/widget/BannerView_7002001;-><init>(Landroid/content/Context;IILcom/windmill/sdk/widget/a;)V

    .line 48
    .line 49
    .line 50
    iput-object p4, p0, Lcom/windmill/sdk/widget/BannerViewManager;->a:Lcom/windmill/sdk/widget/BannerBaseView;

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    new-instance p1, Lcom/windmill/sdk/base/WMAdapterError;

    .line 54
    .line 55
    sget-object p2, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_PLAY:Lcom/windmill/sdk/WindMillError;

    .line 56
    .line 57
    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    const-string p3, "nativeTemplateId is null"

    .line 62
    .line 63
    invoke-direct {p1, p2, p3}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-direct {p0, p1}, Lcom/windmill/sdk/widget/BannerViewManager;->a(Lcom/windmill/sdk/base/WMAdapterError;)V

    .line 67
    .line 68
    .line 69
    :goto_0
    return-void
.end method

.method private a(Lcom/windmill/sdk/base/WMAdapterError;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapterError"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/windmill/sdk/widget/BannerViewManager;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/windmill/sdk/widget/BannerViewManager;->b:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/windmill/sdk/widget/a;->listener:Lcom/windmill/sdk/widget/ViewInteractionListener;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    instance-of v1, v0, Lcom/windmill/sdk/widget/BannerViewInteractionListener;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    check-cast v0, Lcom/windmill/sdk/widget/BannerViewInteractionListener;

    .line 17
    .line 18
    invoke-interface {v0, p1}, Lcom/windmill/sdk/widget/BannerViewInteractionListener;->onAdRenderError(Lcom/windmill/sdk/base/WMAdapterError;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method


# virtual methods
.method public render()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/widget/BannerViewManager;->a:Lcom/windmill/sdk/widget/BannerBaseView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/windmill/sdk/widget/BannerBaseView;->renderView()V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/windmill/sdk/widget/BannerViewManager;->b:Z

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/windmill/sdk/widget/a;->listener:Lcom/windmill/sdk/widget/ViewInteractionListener;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    instance-of v1, v0, Lcom/windmill/sdk/widget/BannerViewInteractionListener;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    check-cast v0, Lcom/windmill/sdk/widget/BannerViewInteractionListener;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/windmill/sdk/widget/BannerViewManager;->a:Lcom/windmill/sdk/widget/BannerBaseView;

    .line 23
    .line 24
    invoke-interface {v0, v1}, Lcom/windmill/sdk/widget/BannerViewInteractionListener;->onAdRenderSuccess(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    .line 29
    .line 30
    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_PLAY:Lcom/windmill/sdk/WindMillError;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const-string v2, "render bannerView is null"

    .line 37
    .line 38
    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v0}, Lcom/windmill/sdk/widget/BannerViewManager;->a(Lcom/windmill/sdk/base/WMAdapterError;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    :goto_0
    return-void
.end method
