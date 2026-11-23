.class Lcom/windmill/baidu/BdExpressAdData$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/api/ExpressResponse$ExpressInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/baidu/b;-><init>(Lcom/baidu/mobads/sdk/api/ExpressResponse;Lcom/windmill/sdk/custom/WMCustomNativeAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

.field final synthetic b:Lcom/windmill/baidu/b;


# direct methods
.method constructor <init>(Lcom/windmill/baidu/b;Lcom/windmill/sdk/custom/WMCustomNativeAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/baidu/BdExpressAdData$1;->b:Lcom/windmill/baidu/b;

    iput-object p2, p0, Lcom/windmill/baidu/BdExpressAdData$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClick()V
    .locals 3

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "----------onAdClicked-----------"

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/baidu/BdExpressAdData$1;->b:Lcom/windmill/baidu/b;

    invoke-static {v0}, Lcom/windmill/baidu/b;->a(Lcom/windmill/baidu/b;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/baidu/BdExpressAdData$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/baidu/BdExpressAdData$1;->b:Lcom/windmill/baidu/b;

    invoke-static {v0}, Lcom/windmill/baidu/b;->a(Lcom/windmill/baidu/b;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/windmill/baidu/BdExpressAdData$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    iget-object v2, p0, Lcom/windmill/baidu/BdExpressAdData$1;->b:Lcom/windmill/baidu/b;

    invoke-virtual {v1, v2}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->getAdInFo(Lcom/windmill/sdk/natives/WMNativeAdData;)Lcom/windmill/sdk/models/AdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;->onADClicked(Lcom/windmill/sdk/models/AdInfo;)V

    :cond_0
    iget-object v0, p0, Lcom/windmill/baidu/BdExpressAdData$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/windmill/baidu/BdExpressAdData$1;->b:Lcom/windmill/baidu/b;

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->callNativeAdClick(Lcom/windmill/sdk/natives/WMNativeAdData;)V

    :cond_1
    return-void
.end method

.method public onAdExposed()V
    .locals 3

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "---------------onAdExposed-----------"

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/baidu/BdExpressAdData$1;->b:Lcom/windmill/baidu/b;

    invoke-static {v0}, Lcom/windmill/baidu/b;->a(Lcom/windmill/baidu/b;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/baidu/BdExpressAdData$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/baidu/BdExpressAdData$1;->b:Lcom/windmill/baidu/b;

    invoke-static {v0}, Lcom/windmill/baidu/b;->a(Lcom/windmill/baidu/b;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/windmill/baidu/BdExpressAdData$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    iget-object v2, p0, Lcom/windmill/baidu/BdExpressAdData$1;->b:Lcom/windmill/baidu/b;

    invoke-virtual {v1, v2}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->getAdInFo(Lcom/windmill/sdk/natives/WMNativeAdData;)Lcom/windmill/sdk/models/AdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;->onADExposed(Lcom/windmill/sdk/models/AdInfo;)V

    :cond_0
    iget-object v0, p0, Lcom/windmill/baidu/BdExpressAdData$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/windmill/baidu/BdExpressAdData$1;->b:Lcom/windmill/baidu/b;

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->callNativeAdShow(Lcom/windmill/sdk/natives/WMNativeAdData;)V

    :cond_1
    return-void
.end method

.method public onAdRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    .locals 3

    sget-object p1, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-------------onAdRenderFail-----------:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/windmill/baidu/BdExpressAdData$1;->b:Lcom/windmill/baidu/b;

    invoke-static {p1}, Lcom/windmill/baidu/b;->a(Lcom/windmill/baidu/b;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/windmill/baidu/BdExpressAdData$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_PLAY:Lcom/windmill/sdk/WindMillError;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "code : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " msg : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/windmill/sdk/WindMillError;->setMessage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/baidu/BdExpressAdData$1;->b:Lcom/windmill/baidu/b;

    invoke-static {v0}, Lcom/windmill/baidu/b;->a(Lcom/windmill/baidu/b;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/windmill/baidu/BdExpressAdData$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    iget-object v2, p0, Lcom/windmill/baidu/BdExpressAdData$1;->b:Lcom/windmill/baidu/b;

    invoke-virtual {v1, v2}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->getAdInFo(Lcom/windmill/sdk/natives/WMNativeAdData;)Lcom/windmill/sdk/models/AdInfo;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;->onADError(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/WindMillError;)V

    :cond_0
    iget-object p1, p0, Lcom/windmill/baidu/BdExpressAdData$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/windmill/baidu/BdExpressAdData$1;->b:Lcom/windmill/baidu/b;

    new-instance v1, Lcom/windmill/sdk/base/WMAdapterError;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "bd onRenderFail:"

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p3, p2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->callNativeAdShowError(Lcom/windmill/sdk/natives/WMNativeAdData;Lcom/windmill/sdk/base/WMAdapterError;)V

    :cond_1
    return-void
.end method

.method public onAdRenderSuccess(Landroid/view/View;FF)V
    .locals 3

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-------------onRenderSuccess-----------:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/baidu/BdExpressAdData$1;->b:Lcom/windmill/baidu/b;

    invoke-static {v0}, Lcom/windmill/baidu/b;->a(Lcom/windmill/baidu/b;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/baidu/BdExpressAdData$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/baidu/BdExpressAdData$1;->b:Lcom/windmill/baidu/b;

    invoke-static {v0}, Lcom/windmill/baidu/b;->a(Lcom/windmill/baidu/b;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/windmill/baidu/BdExpressAdData$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    iget-object v2, p0, Lcom/windmill/baidu/BdExpressAdData$1;->b:Lcom/windmill/baidu/b;

    invoke-virtual {v1, v2}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->getAdInFo(Lcom/windmill/sdk/natives/WMNativeAdData;)Lcom/windmill/sdk/models/AdInfo;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;->onADRenderSuccess(Lcom/windmill/sdk/models/AdInfo;Landroid/view/View;FF)V

    :cond_0
    return-void
.end method

.method public onAdUnionClick()V
    .locals 2

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "---------------onAdUnionClick-----------"

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
