.class Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/client/feedlist/AMExpressAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader$1;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader$1$2;->this$1:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader$1;

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
    const-string v1, "express onAdLoadFail errorCode = "

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
    iget-object v0, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader$1$2;->this$1:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader$1;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader$1;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader;

    .line 38
    .line 39
    iget v1, p1, Lcom/aggmoread/sdk/client/AMError;->code:I

    .line 40
    .line 41
    iget-object p1, p1, Lcom/aggmoread/sdk/client/AMError;->msg:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/MediationCustomAdBaseLoader;->callLoadFail(ILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader$1$2;->this$1:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader$1;

    .line 48
    .line 49
    iget-object p1, p1, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader$1;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader;

    .line 50
    .line 51
    const v0, 0x7a125

    .line 52
    .line 53
    .line 54
    const-string v1, "no ad"

    .line 55
    .line 56
    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/MediationCustomAdBaseLoader;->callLoadFail(ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void
.end method

.method public onAdLoaded(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aggmoread/sdk/client/feedlist/AMExpressAd;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-ge v2, v3, :cond_1

    .line 21
    .line 22
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lcom/aggmoread/sdk/client/feedlist/AMExpressAd;

    .line 27
    .line 28
    invoke-interface {v3}, Lcom/aggmoread/sdk/client/AMAdInterface;->getAdExtras()Lcom/aggmoread/sdk/client/AMAdExtras;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-static {v4}, Lcom/aggmoread/sdk/adapter/helper/AdapterHelper;->getPrice(Lcom/aggmoread/sdk/client/AMAdExtras;)I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-gez v4, :cond_0

    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    :cond_0
    new-instance v5, Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd;

    .line 40
    .line 41
    iget-object v6, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader$1$2;->this$1:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader$1;

    .line 42
    .line 43
    iget-object v6, v6, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader$1;->val$adSlot:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 44
    .line 45
    invoke-direct {v5, v3, v6}, Lcom/aggmoread/sdk/adapter/gm/AMCustomExpressAd;-><init>(Lcom/aggmoread/sdk/client/feedlist/AMExpressAd;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 46
    .line 47
    .line 48
    int-to-double v3, v4

    .line 49
    invoke-virtual {v5, v3, v4}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->setBiddingPrice(D)V

    .line 50
    .line 51
    .line 52
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    add-int/lit8 v2, v2, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader$1$2;->this$1:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader$1;

    .line 59
    .line 60
    iget-object p1, p1, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader$1;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader;

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeLoader;->callLoadSuccess(Ljava/util/List;)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    iget-object p1, p0, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader$1$2;->this$1:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader$1;

    .line 67
    .line 68
    iget-object p1, p1, Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader$1;->this$0:Lcom/aggmoread/sdk/adapter/gm/AMAdapterCustomFeedLoader;

    .line 69
    .line 70
    const v0, 0x7a125

    .line 71
    .line 72
    .line 73
    const-string v1, "\u5e7f\u544a\u52a0\u8f7d\u5931\u8d25\uff0c\u6ca1\u6709\u5339\u914d\u5230\u5408\u9002\u7684\u5e7f\u544a!"

    .line 74
    .line 75
    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/MediationCustomAdBaseLoader;->callLoadFail(ILjava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :goto_1
    return-void
.end method
