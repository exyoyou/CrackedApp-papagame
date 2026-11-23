.class public Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd;
.super Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mNativeExpressADView:Lcom/aggmoread/sdk/client/feedlist/AMExpressAd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/aggmoread/sdk/client/feedlist/AMExpressAd;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x1

    .line 5
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->setExpressAd(Z)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd;->mNativeExpressADView:Lcom/aggmoread/sdk/client/feedlist/AMExpressAd;

    .line 9
    .line 10
    new-instance p2, Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd$1;

    .line 11
    .line 12
    invoke-direct {p2, p0}, Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd$1;-><init>(Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, p2}, Lcom/aggmoread/sdk/client/feedlist/AMExpressAd;->setMediaListener(Lcom/aggmoread/sdk/client/feedlist/AMExpressAd$ExpressMediaListener;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd;->mNativeExpressADView:Lcom/aggmoread/sdk/client/feedlist/AMExpressAd;

    .line 19
    .line 20
    new-instance p2, Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd$2;

    .line 21
    .line 22
    invoke-direct {p2, p0}, Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd$2;-><init>(Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, p2}, Lcom/aggmoread/sdk/client/feedlist/AMExpressAd;->setInteractionListener(Lcom/aggmoread/sdk/client/feedlist/AMExpressInteractionListener;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$100(Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd;)Lcom/aggmoread/sdk/client/feedlist/AMExpressAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd;->mNativeExpressADView:Lcom/aggmoread/sdk/client/feedlist/AMExpressAd;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$102(Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd;Lcom/aggmoread/sdk/client/feedlist/AMExpressAd;)Lcom/aggmoread/sdk/client/feedlist/AMExpressAd;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd;->mNativeExpressADView:Lcom/aggmoread/sdk/client/feedlist/AMExpressAd;

    .line 2
    .line 3
    return-object p1
.end method


# virtual methods
.method public getExpressView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd;->mNativeExpressADView:Lcom/aggmoread/sdk/client/feedlist/AMExpressAd;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/aggmoread/sdk/client/feedlist/AMExpressAd;->getView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public hasDislike()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->onDestroy()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd$4;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd$4;-><init>(Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/aggmoread/sdk/adapter/helper/ThreadHelper;->runInMainThread(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->onPause()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->onResume()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public receiveBidResult(ZDILjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZDI",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd;->mNativeExpressADView:Lcom/aggmoread/sdk/client/feedlist/AMExpressAd;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3, p4}, Lcom/aggmoread/sdk/adapter/helper/AdapterHelper;->notifyBidResult(Lcom/aggmoread/sdk/client/AMAdInterface;ZDI)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-super/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->receiveBidResult(ZDILjava/util/Map;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public render()V
    .locals 1

    .line 1
    new-instance v0, Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd$3;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd$3;-><init>(Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/aggmoread/sdk/adapter/helper/ThreadHelper;->runOnUIThreadByThreadPool(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
