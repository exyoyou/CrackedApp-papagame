.class Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/client/banner/AMBannerAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader$1;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader$1$1;->this$1:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader$1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdLoadFail(Lcom/aggmoread/sdk/client/AMError;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "AMAdapterCustomFullVideoLoader onAdLoadFail "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lcom/aggmoread/sdk/adapter/helper/LogHelper;->log(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v1, "onNoAD errorCode = "

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget v1, p1, Lcom/aggmoread/sdk/client/AMError;->code:I

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, " errorMessage = "

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget-object v1, p1, Lcom/aggmoread/sdk/client/AMError;->msg:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Lcom/aggmoread/sdk/adapter/helper/LogHelper;->log(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader$1$1;->this$1:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader$1;

    .line 56
    .line 57
    iget-object v0, v0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader$1;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader;

    .line 58
    .line 59
    iget v1, p1, Lcom/aggmoread/sdk/client/AMError;->code:I

    .line 60
    .line 61
    iget-object p1, p1, Lcom/aggmoread/sdk/client/AMError;->msg:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/MediationCustomAdBaseLoader;->callLoadFail(ILjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    iget-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader$1$1;->this$1:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader$1;

    .line 68
    .line 69
    iget-object p1, p1, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader$1;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader;

    .line 70
    .line 71
    const v0, 0x7a125

    .line 72
    .line 73
    .line 74
    const-string v1, "no ad"

    .line 75
    .line 76
    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/MediationCustomAdBaseLoader;->callLoadFail(ILjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :goto_0
    return-void
.end method

.method public onAdLoaded(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aggmoread/sdk/client/banner/AMBannerAd;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "AMAdapterCustomFullVideoLoader onAdLoaded "

    .line 2
    .line 3
    invoke-static {v0}, Lcom/aggmoread/sdk/adapter/helper/LogHelper;->log(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader$1$1;->this$1:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader$1;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader$1;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lcom/aggmoread/sdk/client/banner/AMBannerAd;

    .line 24
    .line 25
    invoke-static {v0, p1}, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader;->access$102(Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader;Lcom/aggmoread/sdk/client/banner/AMBannerAd;)Lcom/aggmoread/sdk/client/banner/AMBannerAd;

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader$1$1;->this$1:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader$1;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader$1;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader;->access$100(Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader;)Lcom/aggmoread/sdk/client/banner/AMBannerAd;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-interface {p1}, Lcom/aggmoread/sdk/client/AMAdInterface;->getAdExtras()Lcom/aggmoread/sdk/client/AMAdExtras;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1}, Lcom/aggmoread/sdk/adapter/helper/AdapterHelper;->getPrice(Lcom/aggmoread/sdk/client/AMAdExtras;)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-lez p1, :cond_0

    .line 45
    .line 46
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader$1$1;->this$1:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader$1;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader$1;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader;

    .line 49
    .line 50
    int-to-double v1, p1

    .line 51
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/banner/MediationCustomBannerLoader;->callLoadSuccess(D)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader$1$1;->this$1:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader$1;

    .line 56
    .line 57
    iget-object p1, p1, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader$1;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/banner/MediationCustomBannerLoader;->callLoadSuccess()V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    iget-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader$1$1;->this$1:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader$1;

    .line 64
    .line 65
    iget-object p1, p1, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader$1;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomBannerLoader;

    .line 66
    .line 67
    const v0, 0x7a125

    .line 68
    .line 69
    .line 70
    const-string v1, "\u5e7f\u544a\u52a0\u8f7d\u5931\u8d25\uff0c\u6ca1\u6709\u5339\u914d\u5230\u5408\u9002\u7684\u5e7f\u544a!"

    .line 71
    .line 72
    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/MediationCustomAdBaseLoader;->callLoadFail(ILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :goto_0
    return-void
.end method
