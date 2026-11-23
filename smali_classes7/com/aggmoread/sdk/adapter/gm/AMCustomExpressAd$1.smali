.class Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/client/feedlist/AMExpressAd$ExpressMediaListener;


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
    iput-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd$1;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onVideoCached(Lcom/aggmoread/sdk/client/feedlist/AMExpressAd;)V
    .locals 0

    return-void
.end method

.method public onVideoComplete(Lcom/aggmoread/sdk/client/feedlist/AMExpressAd;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd$1;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->callVideoCompleted()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onVideoError(Lcom/aggmoread/sdk/client/feedlist/AMExpressAd;Lcom/aggmoread/sdk/client/AMError;)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd;->access$000()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v0, "onVideoError errorCode = "

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget v0, p2, Lcom/aggmoread/sdk/client/AMError;->code:I

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v0, " errorMessage = "

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v0, p2, Lcom/aggmoread/sdk/client/AMError;->msg:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd$1;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd;

    .line 32
    .line 33
    iget v0, p2, Lcom/aggmoread/sdk/client/AMError;->code:I

    .line 34
    .line 35
    iget-object p2, p2, Lcom/aggmoread/sdk/client/AMError;->msg:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->callVideoError(ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd$1;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd;

    .line 42
    .line 43
    const p2, 0x7a129

    .line 44
    .line 45
    .line 46
    const-string v0, "video error"

    .line 47
    .line 48
    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->callVideoError(ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void
.end method

.method public onVideoInit(Lcom/aggmoread/sdk/client/feedlist/AMExpressAd;)V
    .locals 0

    return-void
.end method

.method public onVideoLoading(Lcom/aggmoread/sdk/client/feedlist/AMExpressAd;)V
    .locals 0

    return-void
.end method

.method public onVideoPageClose(Lcom/aggmoread/sdk/client/feedlist/AMExpressAd;)V
    .locals 0

    return-void
.end method

.method public onVideoPageOpen(Lcom/aggmoread/sdk/client/feedlist/AMExpressAd;)V
    .locals 0

    return-void
.end method

.method public onVideoPause(Lcom/aggmoread/sdk/client/feedlist/AMExpressAd;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd$1;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->callVideoPause()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onVideoReady(Lcom/aggmoread/sdk/client/feedlist/AMExpressAd;J)V
    .locals 0

    return-void
.end method

.method public onVideoStart(Lcom/aggmoread/sdk/client/feedlist/AMExpressAd;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd$1;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->callVideoStart()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
