.class public Lcom/windmill/gdt/GDTNBAdapter;
.super Lcom/windmill/sdk/custom/WMCustomBannerAdapter;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

.field private c:Lcom/windmill/gdt/c;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/windmill/gdt/GDTNBAdapter;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/windmill/gdt/GDTNBAdapter;->a:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/windmill/gdt/GDTNBAdapter;)Lcom/qq/e/ads/nativ/NativeUnifiedADData;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/windmill/gdt/GDTNBAdapter;->b:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    return-object p0
.end method

.method static synthetic a(Lcom/windmill/gdt/GDTNBAdapter;Lcom/qq/e/ads/nativ/NativeUnifiedADData;)Lcom/qq/e/ads/nativ/NativeUnifiedADData;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/windmill/gdt/GDTNBAdapter;->b:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    return-object p1
.end method

.method static synthetic a(Lcom/windmill/gdt/GDTNBAdapter;Lcom/windmill/gdt/c;)Lcom/windmill/gdt/c;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/windmill/gdt/GDTNBAdapter;->c:Lcom/windmill/gdt/c;

    return-object p1
.end method

.method static synthetic b(Lcom/windmill/gdt/GDTNBAdapter;)I
    .locals 0

    iget p0, p0, Lcom/windmill/gdt/GDTNBAdapter;->d:I

    return p0
.end method

.method static synthetic c(Lcom/windmill/gdt/GDTNBAdapter;)I
    .locals 0

    iget p0, p0, Lcom/windmill/gdt/GDTNBAdapter;->e:I

    return p0
.end method

.method static synthetic d(Lcom/windmill/gdt/GDTNBAdapter;)Lcom/windmill/gdt/c;
    .locals 0

    iget-object p0, p0, Lcom/windmill/gdt/GDTNBAdapter;->c:Lcom/windmill/gdt/c;

    return-object p0
.end method

.method static synthetic e(Lcom/windmill/gdt/GDTNBAdapter;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/windmill/gdt/GDTNBAdapter;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/gdt/GDTNBAdapter;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/windmill/gdt/GDTNBAdapter;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public destroyAd()V
    .locals 2

    iget-object v0, p0, Lcom/windmill/gdt/GDTNBAdapter;->b:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->destroy()V

    iput-object v1, p0, Lcom/windmill/gdt/GDTNBAdapter;->b:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    :cond_0
    iget-object v0, p0, Lcom/windmill/gdt/GDTNBAdapter;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/windmill/gdt/GDTNBAdapter;->a:Landroid/view/View;

    :cond_1
    return-void
.end method

.method public gdtNoadNotify(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/windmill/gdt/GdtUtil;->noAdReplace(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public getBannerView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/windmill/gdt/GDTNBAdapter;->a:Landroid/view/View;

    return-object v0
.end method

.method public getChannelObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/windmill/gdt/GDTNBAdapter;->b:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    return-object v0
.end method

.method public getMediaExtraOption()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/windmill/gdt/GDTNBAdapter;->c:Lcom/windmill/gdt/c;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "------getMediaExtraOption "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/windmill/gdt/GDTNBAdapter;->b:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v2}, Lcom/qq/e/comm/pi/LADI;->getExtraInfo()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/windmill/gdt/GDTNBAdapter;->b:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v1}, Lcom/qq/e/comm/pi/LADI;->getExtraInfo()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/windmill/gdt/GDTNBAdapter;->b:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v1}, Lcom/qq/e/comm/pi/LADI;->getExtraInfo()Ljava/util/Map;

    move-result-object v1

    const-string v2, "request_id"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/windmill/gdt/GDTNBAdapter;->b:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v1}, Lcom/qq/e/comm/pi/LADI;->getExtraInfo()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getS2sResultUrl(ZLjava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "------getS2sResultUrl "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p3}, Lcom/windmill/gdt/GDTAdapterProxy;->castBiddingInfo(ZLjava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/windmill/gdt/GdtUtil;->s2sMacroReplace(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getS2sResultUrl(ZLjava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lcom/windmill/gdt/GDTNBAdapter;->b:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/gdt/GDTNBAdapter;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
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

    :try_start_0
    const-string v0, "placementId"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " loadAd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    if-nez p1, :cond_0

    new-instance p1, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object p2, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result p2

    const-string p3, "loadAd with activity is null"

    invoke-direct {p1, p2, p3}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    :try_start_1
    const-string v1, "ad_key_width"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/windmill/sdk/base/WMBidUtil;->parseInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/windmill/gdt/GDTNBAdapter;->d:I

    :cond_1
    const-string v1, "ad_key_height"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/windmill/sdk/base/WMBidUtil;->parseInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/windmill/gdt/GDTNBAdapter;->e:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    new-instance p2, Lcom/windmill/gdt/GDTNBAdapter$1;

    invoke-direct {p2, p0, v0, p3, p1}, Lcom/windmill/gdt/GDTNBAdapter$1;-><init>(Lcom/windmill/gdt/GDTNBAdapter;Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getBiddingType()I

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lcom/qq/e/ads/nativ/NativeUnifiedAD;

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getHbResponseStr()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v0, p2, v2}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/nativ/NativeADUnifiedListener;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/qq/e/ads/nativ/NativeUnifiedAD;

    invoke-direct {v1, p1, v0, p2}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/nativ/NativeADUnifiedListener;)V

    :goto_1
    const-string p1, "minVideoDuration"

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "maxVideoDuration"

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    :try_start_3
    invoke-static {p1}, Lcom/windmill/sdk/base/WMBidUtil;->parseInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lt p1, v0, :cond_4

    invoke-virtual {v1, p1}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->setMinVideoDuration(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    :try_start_4
    invoke-virtual {v1, v0}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->setMinVideoDuration(I)V

    :cond_4
    :goto_2
    move-object p1, p2

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez p1, :cond_5

    const/16 p1, 0x3c

    :try_start_5
    invoke-static {p2}, Lcom/windmill/sdk/base/WMBidUtil;->parseInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-gt p2, p1, :cond_5

    invoke-virtual {v1, p2}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->setMaxVideoDuration(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catch_2
    :try_start_6
    invoke-virtual {v1, p1}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->setMaxVideoDuration(I)V

    :cond_5
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/windmill/gdt/GdtUtil;->getLoadAdParams(Ljava/lang/Class;Ljava/util/Map;)Lcom/qq/e/comm/constants/LoadAdParams;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_6

    invoke-virtual {v1, p2, p1}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->loadData(ILcom/qq/e/comm/constants/LoadAdParams;)V

    return-void

    :cond_6
    invoke-virtual {v1, p2}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->loadData(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    new-instance p2, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object p3, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {p3}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result p3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "catch gdt loadAd error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method public notifyBiddingResult(ZLjava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object p2, p0, Lcom/windmill/gdt/GDTNBAdapter;->b:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-static {p1, p3, p2, p0}, Lcom/windmill/gdt/GdtNotifyBiddingResult;->notifyNativeBiddingResult(ZLjava/util/Map;Lcom/qq/e/ads/nativ/NativeUnifiedADData;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/windmill/gdt/GDTNBAdapter;->c:Lcom/windmill/gdt/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/windmill/gdt/c;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
