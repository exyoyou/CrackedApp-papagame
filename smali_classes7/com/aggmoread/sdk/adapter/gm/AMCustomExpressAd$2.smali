.class Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/client/feedlist/AMExpressInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd;-><init>(Lcom/aggmoread/sdk/client/feedlist/AMExpressAd;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd$2;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onADCloseOverlay(Lcom/aggmoread/sdk/client/feedlist/AMExpressAd;)V
    .locals 0

    return-void
.end method

.method public onADLeftApplication(Lcom/aggmoread/sdk/client/feedlist/AMExpressAd;)V
    .locals 0

    return-void
.end method

.method public onADOpenOverlay(Lcom/aggmoread/sdk/client/feedlist/AMExpressAd;)V
    .locals 0

    return-void
.end method

.method public onAdClicked(Lcom/aggmoread/sdk/client/feedlist/AMExpressAd;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd$2;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->callAdClick()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAdClosed(Lcom/aggmoread/sdk/client/feedlist/AMExpressAd;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd$2;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd;->onDestroy()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAdError(Lcom/aggmoread/sdk/client/AMError;)V
    .locals 0

    return-void
.end method

.method public onAdExposed(Lcom/aggmoread/sdk/client/feedlist/AMExpressAd;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd$2;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->callAdShow()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onRenderFail(Lcom/aggmoread/sdk/client/feedlist/AMExpressAd;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd$2;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/aggmoread/sdk/client/feedlist/AMExpressAd;->getView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const v1, 0x1869f

    .line 8
    .line 9
    .line 10
    const-string v2, "render fail"

    .line 11
    .line 12
    invoke-virtual {v0, p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->callRenderFail(Landroid/view/View;ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onRenderSuccess(Lcom/aggmoread/sdk/client/feedlist/AMExpressAd;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd$2;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd;

    .line 2
    .line 3
    const/high16 v0, -0x40800000    # -1.0f

    .line 4
    .line 5
    const/high16 v1, -0x40000000    # -2.0f

    .line 6
    .line 7
    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->callRenderSuccess(FF)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
