.class public Lcom/windmill/adscope/AdScopeSplashAdAdapter;
.super Lcom/windmill/sdk/custom/WMCustomSplashAdapter;
.source "SourceFile"


# instance fields
.field private a:Lcom/beizi/fusion/SplashAd;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/windmill/adscope/AdScopeSplashAdAdapter;->b:Z

    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 1

    .line 1
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    return-object v0
.end method

.method static synthetic a(Lcom/windmill/adscope/AdScopeSplashAdAdapter;)Z
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/windmill/adscope/AdScopeSplashAdAdapter;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/windmill/adscope/AdScopeSplashAdAdapter;)Lcom/beizi/fusion/SplashAd;
    .locals 0

    iget-object p0, p0, Lcom/windmill/adscope/AdScopeSplashAdAdapter;->a:Lcom/beizi/fusion/SplashAd;

    return-object p0
.end method


# virtual methods
.method public destroyAd()V
    .locals 2

    iget-object v0, p0, Lcom/windmill/adscope/AdScopeSplashAdAdapter;->a:Lcom/beizi/fusion/SplashAd;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/beizi/fusion/SplashAd;->cancel(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/windmill/adscope/AdScopeSplashAdAdapter;->a:Lcom/beizi/fusion/SplashAd;

    :cond_0
    return-void
.end method

.method public getChannelObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/windmill/adscope/AdScopeSplashAdAdapter;->a:Lcom/beizi/fusion/SplashAd;

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/windmill/adscope/AdScopeSplashAdAdapter;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/adscope/AdScopeSplashAdAdapter;->a:Lcom/beizi/fusion/SplashAd;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadAd(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/Map;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 p2, 0x0

    :try_start_0
    iput-boolean p2, p0, Lcom/windmill/adscope/AdScopeSplashAdAdapter;->b:Z

    if-nez p1, :cond_0

    new-instance p1, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object p2, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result p2

    const-string p3, "activity is null"

    invoke-direct {p1, p2, p3}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void

    :cond_0
    const-string p2, "placementId"

    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " loadAd:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/windmill/adscope/AdScopeSplashAdAdapter;->a(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p1}, Lcom/windmill/adscope/AdScopeSplashAdAdapter;->a(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/windmill/adscope/AdScopeSplashAdAdapter;->px2dip(Landroid/content/Context;F)I

    move-result p2

    int-to-float v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/windmill/adscope/AdScopeSplashAdAdapter;->px2dip(Landroid/content/Context;F)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x5

    :try_start_1
    const-string v2, "load_timeout"

    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_1

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/windmill/sdk/base/WMBidUtil;->parseInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_1
    const-string p4, "ad_key_width"

    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_2

    move-object v2, p4

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/windmill/sdk/base/WMBidUtil;->parseInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p0, p1, p4}, Lcom/windmill/adscope/AdScopeSplashAdAdapter;->px2dip(Landroid/content/Context;F)I

    move-result p2

    :cond_2
    const-string p4, "ad_key_height"

    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_3

    move-object p4, p3

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-eqz p4, :cond_3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/windmill/sdk/base/WMBidUtil;->parseInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p0, p1, p3}, Lcom/windmill/adscope/AdScopeSplashAdAdapter;->px2dip(Landroid/content/Context;F)I

    move-result p3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, p3

    goto :goto_0

    :catch_0
    move-exception p3

    :try_start_2
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    move p3, v0

    new-instance p4, Lcom/beizi/fusion/SplashAd;

    const/4 v2, 0x0

    new-instance v4, Lcom/windmill/adscope/AdScopeSplashAdAdapter$1;

    invoke-direct {v4, p0}, Lcom/windmill/adscope/AdScopeSplashAdAdapter$1;-><init>(Lcom/windmill/adscope/AdScopeSplashAdAdapter;)V

    int-to-long v0, v1

    const-wide/16 v5, 0x3e8

    mul-long v5, v5, v0

    move-object v0, p4

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/beizi/fusion/SplashAd;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Lcom/beizi/fusion/AdListener;J)V

    iput-object p4, p0, Lcom/windmill/adscope/AdScopeSplashAdAdapter;->a:Lcom/beizi/fusion/SplashAd;

    invoke-virtual {p4, p2, p3}, Lcom/beizi/fusion/SplashAd;->loadAd(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p1

    new-instance p2, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object p3, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {p3}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result p3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method public px2dip(Landroid/content/Context;F)I
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_0
    div-float/2addr p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method

.method public showAd(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, Lcom/windmill/adscope/AdScopeSplashAdAdapter;->a:Lcom/beizi/fusion/SplashAd;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/beizi/fusion/SplashAd;->show(Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object p2, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_PLAY:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result p2

    const-string p3, "mSplashAD is null"

    invoke-direct {p1, p2, p3}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->callSplashAdShowError(Lcom/windmill/sdk/base/WMAdapterError;)V

    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/windmill/adscope/AdScopeSplashAdAdapter;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object p3, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_PLAY:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {p3}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result p3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->callSplashAdShowError(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method
