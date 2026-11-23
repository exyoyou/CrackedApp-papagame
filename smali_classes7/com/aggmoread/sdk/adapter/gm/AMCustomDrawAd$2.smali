.class Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/client/draw/AMDrawAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd;-><init>(Lcom/aggmoread/sdk/client/draw/AMDrawAd;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd;

.field final synthetic val$adSlot:Lcom/bytedance/sdk/openadsdk/AdSlot;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd$2;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd$2;->val$adSlot:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onADCloseOverlay()V
    .locals 0

    return-void
.end method

.method public onADLeftApplication()V
    .locals 0

    return-void
.end method

.method public onADOpenOverlay()V
    .locals 0

    return-void
.end method

.method public onAdClicked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd$2;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->callAdClick()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAdError(Lcom/aggmoread/sdk/client/AMError;)V
    .locals 0

    return-void
.end method

.method public onAdExposed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd$2;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->callAdShow()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onRenderFail()V
    .locals 4

    .line 1
    const-string v0, "onRenderFail"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/aggmoread/sdk/adapter/helper/LogHelper;->log(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd$2;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd;

    .line 7
    .line 8
    const v1, 0x1869f

    .line 9
    .line 10
    .line 11
    const-string v2, "render fail"

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->callRenderFail(Landroid/view/View;ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onRenderSuccess()V
    .locals 3

    .line 1
    const-string v0, "onRenderSuccess"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/aggmoread/sdk/adapter/helper/LogHelper;->log(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd$2;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd$2;->val$adSlot:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getImgAcceptedWidth()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    int-to-float v1, v1

    .line 15
    iget-object v2, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomDrawAd$2;->val$adSlot:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getImgAcceptedHeight()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    int-to-float v2, v2

    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->callRenderSuccess(FF)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
