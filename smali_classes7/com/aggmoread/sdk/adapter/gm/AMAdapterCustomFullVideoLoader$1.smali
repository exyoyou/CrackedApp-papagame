.class Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFullVideoLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/client/fullscreen/AMFullScreenAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFullVideoLoader;->showAd(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFullVideoLoader;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFullVideoLoader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFullVideoLoader$1;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFullVideoLoader;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onADLeftApplication()V
    .locals 0

    return-void
.end method

.method public onAdClicked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFullVideoLoader$1;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFullVideoLoader;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/fullvideo/MediationCustomFullVideoLoader;->callFullVideoAdClick()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAdClosed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFullVideoLoader$1;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFullVideoLoader;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/fullvideo/MediationCustomFullVideoLoader;->callFullVideoAdClosed()V

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
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFullVideoLoader$1;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFullVideoLoader;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/fullvideo/MediationCustomFullVideoLoader;->callFullVideoAdShow()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAdVideoCompleted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFullVideoLoader$1;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFullVideoLoader;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/fullvideo/MediationCustomFullVideoLoader;->callFullVideoComplete()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
