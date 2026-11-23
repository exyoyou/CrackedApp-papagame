.class public Lcom/windmill/gdt/GDTRewardVideoAdapter;
.super Lcom/windmill/sdk/custom/WMCustomRewardAdapter;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter;->a:I

    iput-boolean v0, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter;->c:Z

    iput-boolean v0, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter;->d:Z

    iput-boolean v0, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter;->e:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter;->h:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/windmill/gdt/GDTRewardVideoAdapter;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter;->f:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic a(Lcom/windmill/gdt/GDTRewardVideoAdapter;)Z
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/windmill/gdt/GDTRewardVideoAdapter;)Lcom/qq/e/ads/rewardvideo/RewardVideoAD;
    .locals 0

    iget-object p0, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter;->b:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    return-object p0
.end method

.method static synthetic c(Lcom/windmill/gdt/GDTRewardVideoAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter;->e:Z

    return p0
.end method

.method static synthetic d(Lcom/windmill/gdt/GDTRewardVideoAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter;->c:Z

    return p0
.end method

.method static synthetic e(Lcom/windmill/gdt/GDTRewardVideoAdapter;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter;->c:Z

    return v0
.end method

.method static synthetic f(Lcom/windmill/gdt/GDTRewardVideoAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter;->d:Z

    return p0
.end method


# virtual methods
.method public destroyAd()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter;->b:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter;->b:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter;->d:Z

    :cond_0
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

.method public getChannelObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter;->b:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    return-object v0
.end method

.method public getMediaExtraOption()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter;->b:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qq/e/ads/LiteAbstractAD;->getExtraInfo()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/gdt/GDTAdapterProxy;->getRequestId(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRewardExtraOption()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter;->f:Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "transId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "trans_id"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_0
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
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter;->b:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter;->d:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/qq/e/ads/LiteAbstractAD;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter;->b:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    invoke-virtual {v1}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->hasShown()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catchall_0
    move-exception v1

    const-string v2, "GDT isReady error"

    invoke-static {v2, v1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return v0
.end method

.method public loadAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .locals 7
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

    const-string v0, " "

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter;->c:Z

    iput-boolean v1, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter;->d:Z

    iput-boolean v1, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter;->e:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter;->f:Ljava/util/Map;

    invoke-virtual {p0, p3}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->setAdapterServerExtra(Ljava/util/Map;)V

    const-string v2, ""

    if-eqz p3, :cond_2

    const-string v2, "showDownloadDialog"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v3, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter;->e:Z

    :cond_0
    const-string v2, "autoPlayMuted"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    const-string v2, "placementId"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move v4, v1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "----loadAd:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    new-instance v3, Lcom/windmill/gdt/GDTRewardVideoAdapter$1;

    invoke-direct {v3, p0}, Lcom/windmill/gdt/GDTRewardVideoAdapter$1;-><init>(Lcom/windmill/gdt/GDTRewardVideoAdapter;)V

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getBiddingType()I

    move-result v0

    if-nez v0, :cond_3

    new-instance v6, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getHbResponseStr()Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;ZLjava/lang/String;)V

    iput-object v6, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter;->b:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    invoke-direct {v0, p1, v2, v3, v4}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;Z)V

    iput-object v0, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter;->b:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/windmill/gdt/GdtUtil;->getLoadAdParams(Ljava/lang/Class;Ljava/util/Map;)Lcom/qq/e/comm/constants/LoadAdParams;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p3, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter;->b:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    invoke-virtual {p3, p1}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->setLoadAdParams(Lcom/qq/e/comm/constants/LoadAdParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :try_start_1
    new-instance p1, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;

    invoke-direct {p1}, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getUserId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;->setUserId(Ljava/lang/String;)Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;

    if-eqz p2, :cond_5

    invoke-static {p2}, Lcom/czhj/sdk/common/json/JSONSerializer;->Serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " json "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;->setCustomData(Ljava/lang/String;)Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;

    :cond_5
    iget-object p2, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter;->b:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    invoke-virtual {p1}, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;->build()Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->setServerSideVerificationOptions(Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    iget-object p1, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter;->b:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    invoke-virtual {p1}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->loadAD()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " catch throwable "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    new-instance p2, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object p3, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {p3}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result p3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

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

    iget-object p2, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter;->b:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    invoke-static {p1, p3, p2, p0}, Lcom/windmill/gdt/GdtNotifyBiddingResult;->notifyBiddingResult(ZLjava/util/Map;Lcom/qq/e/ads/LiteAbstractAD;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)V

    return-void
.end method

.method public onCreate(Landroid/app/Activity;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter;->g:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter;->c:Z

    if-eqz v1, :cond_0

    instance-of v1, p1, Lcom/qq/e/ads/ADActivity;

    if-eqz v1, :cond_0

    const-string v1, "com.qq.e.ads"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onCreate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter;->h:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter;->g:Z

    if-eqz v1, :cond_2

    instance-of v1, p1, Lcom/qq/e/ads/ADActivity;

    if-eqz v1, :cond_2

    const-string v1, "com.qq.e.ads"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " GDT onDestroy activity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_1
    iget-boolean p1, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter;->c:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter;->h:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter;->c:Z

    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callVideoAdClosed()V

    iput-boolean p1, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter;->g:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public showAd(Landroid/app/Activity;Ljava/util/HashMap;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string p2, "auto_close_callback"

    :try_start_0
    invoke-interface {p3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "1"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter;->g:Z

    :cond_1
    iget-boolean p2, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter;->d:Z

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter;->b:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->hasShown()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p1, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object p2, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_PLAY:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result p2

    const-string p3, "\u6b64\u6761\u5e7f\u544a\u5df2\u7ecf\u5c55\u793a\u8fc7\uff0c\u8bf7\u518d\u6b21\u8bf7\u6c42\u5e7f\u544a\u540e\u8fdb\u884c\u5e7f\u544a\u5c55\u793a\uff01"

    invoke-direct {p1, p2, p3}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callVideoAdPlayError(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void

    :cond_2
    iget-object p2, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter;->b:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    invoke-virtual {p2}, Lcom/qq/e/ads/LiteAbstractAD;->isValid()Z

    move-result p2

    if-nez p2, :cond_3

    new-instance p1, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object p2, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_PLAY:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result p2

    const-string p3, "\u6fc0\u52b1\u89c6\u9891\u5e7f\u544a\u5df2\u8fc7\u671f\uff0c\u8bf7\u518d\u6b21\u8bf7\u6c42\u5e7f\u544a\u540e\u8fdb\u884c\u5e7f\u544a\u5c55\u793a\uff01"

    invoke-direct {p1, p2, p3}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callVideoAdPlayError(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getBiddingType()I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_4

    if-ne p2, v1, :cond_5

    :cond_4
    :try_start_1
    const-string p2, "eCpm"

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_5

    iget-object p3, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter;->b:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    invoke-static {p2}, Lcom/windmill/sdk/base/WMBidUtil;->parseInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p3, p2}, Lcom/qq/e/ads/LiteAbstractAD;->setBidECPM(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_1
    iput-boolean v1, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter;->c:Z

    iget-object p2, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter;->b:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    invoke-virtual {p2, p1}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->showAD(Landroid/app/Activity;)V

    return-void

    :cond_6
    new-instance p1, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object p2, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_PLAY:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {p2}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result p2

    const-string p3, "rewardVideoAD is not isReady or is null"

    invoke-direct {p1, p2, p3}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callVideoAdPlayError(Lcom/windmill/sdk/base/WMAdapterError;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    new-instance p2, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object p3, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_PLAY:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {p3}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result p3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callVideoAdPlayError(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method
