.class final Lcom/windmill/toutiao/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/toutiao/a;-><init>(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;Lcom/windmill/sdk/custom/WMCustomNativeAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

.field final synthetic b:Lcom/windmill/toutiao/a;


# direct methods
.method constructor <init>(Lcom/windmill/toutiao/a;Lcom/windmill/sdk/custom/WMCustomNativeAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/toutiao/a$1;->b:Lcom/windmill/toutiao/a;

    iput-object p2, p0, Lcom/windmill/toutiao/a$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked(Landroid/view/View;I)V
    .locals 1

    sget-object p1, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v0, "----------onAdClicked-----------:"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/windmill/toutiao/a$1;->b:Lcom/windmill/toutiao/a;

    invoke-static {p1}, Lcom/windmill/toutiao/a;->a(Lcom/windmill/toutiao/a;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/windmill/toutiao/a$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/windmill/toutiao/a$1;->b:Lcom/windmill/toutiao/a;

    invoke-static {p1}, Lcom/windmill/toutiao/a;->a(Lcom/windmill/toutiao/a;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object p1

    iget-object p2, p0, Lcom/windmill/toutiao/a$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    iget-object v0, p0, Lcom/windmill/toutiao/a$1;->b:Lcom/windmill/toutiao/a;

    invoke-virtual {p2, v0}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->getAdInFo(Lcom/windmill/sdk/natives/WMNativeAdData;)Lcom/windmill/sdk/models/AdInfo;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;->onADClicked(Lcom/windmill/sdk/models/AdInfo;)V

    :cond_0
    iget-object p1, p0, Lcom/windmill/toutiao/a$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/windmill/toutiao/a$1;->b:Lcom/windmill/toutiao/a;

    invoke-virtual {p1, p2}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->callNativeAdClick(Lcom/windmill/sdk/natives/WMNativeAdData;)V

    :cond_1
    return-void
.end method

.method public final onAdShow(Landroid/view/View;I)V
    .locals 1

    sget-object p1, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v0, "---------------onAdShow-----------:"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/windmill/toutiao/a$1;->b:Lcom/windmill/toutiao/a;

    invoke-static {p1}, Lcom/windmill/toutiao/a;->a(Lcom/windmill/toutiao/a;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/windmill/toutiao/a$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/windmill/toutiao/a$1;->b:Lcom/windmill/toutiao/a;

    invoke-static {p1}, Lcom/windmill/toutiao/a;->a(Lcom/windmill/toutiao/a;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object p1

    iget-object p2, p0, Lcom/windmill/toutiao/a$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    iget-object v0, p0, Lcom/windmill/toutiao/a$1;->b:Lcom/windmill/toutiao/a;

    invoke-virtual {p2, v0}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->getAdInFo(Lcom/windmill/sdk/natives/WMNativeAdData;)Lcom/windmill/sdk/models/AdInfo;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;->onADExposed(Lcom/windmill/sdk/models/AdInfo;)V

    :cond_0
    iget-object p1, p0, Lcom/windmill/toutiao/a$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/windmill/toutiao/a$1;->b:Lcom/windmill/toutiao/a;

    invoke-virtual {p1, p2}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->callNativeAdShow(Lcom/windmill/sdk/natives/WMNativeAdData;)V

    :cond_1
    return-void
.end method

.method public final onRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    .locals 4

    sget-object p1, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-------------onRenderFail-----------:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/windmill/toutiao/a$1;->b:Lcom/windmill/toutiao/a;

    invoke-static {p1}, Lcom/windmill/toutiao/a;->a(Lcom/windmill/toutiao/a;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/windmill/toutiao/a$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

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

    iget-object v0, p0, Lcom/windmill/toutiao/a$1;->b:Lcom/windmill/toutiao/a;

    invoke-static {v0}, Lcom/windmill/toutiao/a;->a(Lcom/windmill/toutiao/a;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/windmill/toutiao/a$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    iget-object v2, p0, Lcom/windmill/toutiao/a$1;->b:Lcom/windmill/toutiao/a;

    invoke-virtual {v1, v2}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->getAdInFo(Lcom/windmill/sdk/natives/WMNativeAdData;)Lcom/windmill/sdk/models/AdInfo;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;->onADError(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/WindMillError;)V

    :cond_0
    iget-object p1, p0, Lcom/windmill/toutiao/a$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/windmill/toutiao/a$1;->b:Lcom/windmill/toutiao/a;

    new-instance v1, Lcom/windmill/sdk/base/WMAdapterError;

    invoke-static {p2}, Lcom/windmill/toutiao/TouTiaoAdapterProxy;->getReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "tt onRenderFail:"

    invoke-virtual {v3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p3, v2, p2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->callNativeAdShowError(Lcom/windmill/sdk/natives/WMNativeAdData;Lcom/windmill/sdk/base/WMAdapterError;)V

    :cond_1
    return-void
.end method

.method public final onRenderSuccess(Landroid/view/View;FF)V
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

    iget-object v0, p0, Lcom/windmill/toutiao/a$1;->b:Lcom/windmill/toutiao/a;

    invoke-static {v0}, Lcom/windmill/toutiao/a;->a(Lcom/windmill/toutiao/a;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/toutiao/a$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/toutiao/a$1;->b:Lcom/windmill/toutiao/a;

    invoke-static {v0}, Lcom/windmill/toutiao/a;->a(Lcom/windmill/toutiao/a;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/windmill/toutiao/a$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    iget-object v2, p0, Lcom/windmill/toutiao/a$1;->b:Lcom/windmill/toutiao/a;

    invoke-virtual {v1, v2}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->getAdInFo(Lcom/windmill/sdk/natives/WMNativeAdData;)Lcom/windmill/sdk/models/AdInfo;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;->onADRenderSuccess(Lcom/windmill/sdk/models/AdInfo;Landroid/view/View;FF)V

    :cond_0
    return-void
.end method
