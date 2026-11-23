.class public Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd;
.super Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/draw/MediationCustomDrawAd;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private height:I

.field private mNativeExpressADView:Lcom/aggmoread/sdk/client/draw/AMDrawAd;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/aggmoread/sdk/client/draw/AMDrawAd;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/draw/MediationCustomDrawAd;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->setExpressAd(Z)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd;->mNativeExpressADView:Lcom/aggmoread/sdk/client/draw/AMDrawAd;

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getImgAcceptedWidth()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd;->width:I

    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getImgAcceptedHeight()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iput p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd;->height:I

    .line 21
    .line 22
    iget-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd;->mNativeExpressADView:Lcom/aggmoread/sdk/client/draw/AMDrawAd;

    .line 23
    .line 24
    new-instance v0, Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd$1;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd$1;-><init>(Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, v0}, Lcom/aggmoread/sdk/client/draw/AMDrawAd;->setVideoListener(Lcom/aggmoread/sdk/client/draw/AMDrawAd$DrawVideoListener;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd;->mNativeExpressADView:Lcom/aggmoread/sdk/client/draw/AMDrawAd;

    .line 33
    .line 34
    new-instance v0, Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd$2;

    .line 35
    .line 36
    invoke-direct {v0, p0, p2}, Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd$2;-><init>(Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {p1, v0}, Lcom/aggmoread/sdk/client/draw/AMDrawAd;->setInteractionListener(Lcom/aggmoread/sdk/client/draw/AMDrawAdInteractionListener;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd;)Lcom/aggmoread/sdk/client/draw/AMDrawAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd;->mNativeExpressADView:Lcom/aggmoread/sdk/client/draw/AMDrawAd;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$002(Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd;Lcom/aggmoread/sdk/client/draw/AMDrawAd;)Lcom/aggmoread/sdk/client/draw/AMDrawAd;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd;->mNativeExpressADView:Lcom/aggmoread/sdk/client/draw/AMDrawAd;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public getExpressView()Landroid/view/View;
    .locals 1

    .line 1
    const-string v0, "getExpressView"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/aggmoread/sdk/adapter/helper/LogHelper;->log(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd;->mNativeExpressADView:Lcom/aggmoread/sdk/client/draw/AMDrawAd;

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/aggmoread/sdk/client/draw/AMDrawAd;->getView()Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
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
    new-instance v0, Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd$4;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd$4;-><init>(Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd;)V

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
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd;->mNativeExpressADView:Lcom/aggmoread/sdk/client/draw/AMDrawAd;

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
    const-string v0, "render"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/aggmoread/sdk/adapter/helper/LogHelper;->log(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd$3;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd$3;-><init>(Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/aggmoread/sdk/adapter/helper/ThreadHelper;->runOnUIThreadByThreadPool(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
