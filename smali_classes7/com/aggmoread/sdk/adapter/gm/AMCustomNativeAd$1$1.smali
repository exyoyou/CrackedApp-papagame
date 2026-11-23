.class Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/client/feedlist/AMNativeInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1$1;->this$1:Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onADStatusChanged(I)V
    .locals 0

    return-void
.end method

.method public onAdClicked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1$1;->this$1:Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->callAdClick()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onAdError(Lcom/aggmoread/sdk/client/AMError;)V
    .locals 0

    return-void
.end method

.method public onAdExposed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1$1;->this$1:Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->callAdShow()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onLoadApkProgress(I)V
    .locals 0

    return-void
.end method
