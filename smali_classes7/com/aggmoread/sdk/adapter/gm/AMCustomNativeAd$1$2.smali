.class Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/client/AMAdMediaListener;


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
    iput-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1$2;->this$1:Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onVideoClicked()V
    .locals 1

    .line 1
    const-string v0, "onVideoClicked"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/aggmoread/sdk/adapter/helper/LogHelper;->log(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1$2;->this$1:Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->callAdClick()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onVideoCompleted()V
    .locals 1

    .line 1
    const-string v0, "onVideoCompleted"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/aggmoread/sdk/adapter/helper/LogHelper;->log(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1$2;->this$1:Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->callVideoCompleted()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onVideoError(Lcom/aggmoread/sdk/client/AMError;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "onVideoError errorCode = "

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget v1, p1, Lcom/aggmoread/sdk/client/AMError;->code:I

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, " errorMessage = "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v1, p1, Lcom/aggmoread/sdk/client/AMError;->msg:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lcom/aggmoread/sdk/adapter/helper/LogHelper;->log(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1$2;->this$1:Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;

    .line 38
    .line 39
    iget v1, p1, Lcom/aggmoread/sdk/client/AMError;->code:I

    .line 40
    .line 41
    iget-object p1, p1, Lcom/aggmoread/sdk/client/AMError;->msg:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->callVideoError(ILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1$2;->this$1:Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1;

    .line 48
    .line 49
    iget-object p1, p1, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;

    .line 50
    .line 51
    const v0, 0x7a129

    .line 52
    .line 53
    .line 54
    const-string v1, "video error"

    .line 55
    .line 56
    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->callVideoError(ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void
.end method

.method public onVideoInit()V
    .locals 1

    .line 1
    const-string v0, "onVideoInit"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/aggmoread/sdk/adapter/helper/LogHelper;->log(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onVideoLoaded(I)V
    .locals 0

    .line 1
    const-string p1, "onVideoLoaded"

    .line 2
    .line 3
    invoke-static {p1}, Lcom/aggmoread/sdk/adapter/helper/LogHelper;->log(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onVideoLoading()V
    .locals 1

    .line 1
    const-string v0, "onVideoLoading"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/aggmoread/sdk/adapter/helper/LogHelper;->log(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onVideoPause()V
    .locals 1

    .line 1
    const-string v0, "onVideoPause"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/aggmoread/sdk/adapter/helper/LogHelper;->log(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1$2;->this$1:Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->callVideoPause()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onVideoReady()V
    .locals 1

    .line 1
    const-string v0, "onVideoReady"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/aggmoread/sdk/adapter/helper/LogHelper;->log(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onVideoResume()V
    .locals 1

    .line 1
    const-string v0, "onVideoResume"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/aggmoread/sdk/adapter/helper/LogHelper;->log(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1$2;->this$1:Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->callVideoResume()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onVideoStart()V
    .locals 1

    .line 1
    const-string v0, "onVideoStart"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/aggmoread/sdk/adapter/helper/LogHelper;->log(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1$2;->this$1:Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd$1;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMCustomNativeAd;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->callVideoStart()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onVideoStop()V
    .locals 1

    .line 1
    const-string v0, "onVideoStop"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/aggmoread/sdk/adapter/helper/LogHelper;->log(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
