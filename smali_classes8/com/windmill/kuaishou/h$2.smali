.class final Lcom/windmill/kuaishou/h$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/kuaishou/h;-><init>(Lcom/kwad/sdk/api/KsNativeAd;Lcom/windmill/sdk/custom/WMCustomNativeAdapter;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

.field final synthetic b:Lcom/windmill/kuaishou/h;


# direct methods
.method constructor <init>(Lcom/windmill/kuaishou/h;Lcom/windmill/sdk/custom/WMCustomNativeAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/kuaishou/h$2;->b:Lcom/windmill/kuaishou/h;

    iput-object p2, p0, Lcom/windmill/kuaishou/h$2;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleDownloadDialog(Landroid/content/DialogInterface$OnClickListener;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final onAdClicked(Landroid/view/View;Lcom/kwad/sdk/api/KsNativeAd;)V
    .locals 2

    if-eqz p2, :cond_0

    sget-object p1, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAdClicked:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/kwad/sdk/api/KsNativeAd;->getAppName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/windmill/kuaishou/h$2;->b:Lcom/windmill/kuaishou/h;

    invoke-static {p1}, Lcom/windmill/kuaishou/h;->a(Lcom/windmill/kuaishou/h;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/windmill/kuaishou/h$2;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/windmill/kuaishou/h$2;->b:Lcom/windmill/kuaishou/h;

    invoke-static {p1}, Lcom/windmill/kuaishou/h;->a(Lcom/windmill/kuaishou/h;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object p1

    iget-object p2, p0, Lcom/windmill/kuaishou/h$2;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    iget-object v0, p0, Lcom/windmill/kuaishou/h$2;->b:Lcom/windmill/kuaishou/h;

    invoke-virtual {p2, v0}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->getAdInFo(Lcom/windmill/sdk/natives/WMNativeAdData;)Lcom/windmill/sdk/models/AdInfo;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;->onADClicked(Lcom/windmill/sdk/models/AdInfo;)V

    :cond_1
    iget-object p1, p0, Lcom/windmill/kuaishou/h$2;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/windmill/kuaishou/h$2;->b:Lcom/windmill/kuaishou/h;

    invoke-virtual {p1, p2}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->callNativeAdClick(Lcom/windmill/sdk/natives/WMNativeAdData;)V

    :cond_2
    return-void
.end method

.method public final onAdShow(Lcom/kwad/sdk/api/KsNativeAd;)V
    .locals 3

    if-eqz p1, :cond_0

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAdShow:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/kwad/sdk/api/KsNativeAd;->getAppName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/windmill/kuaishou/h$2;->b:Lcom/windmill/kuaishou/h;

    invoke-static {p1}, Lcom/windmill/kuaishou/h;->a(Lcom/windmill/kuaishou/h;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/windmill/kuaishou/h$2;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/windmill/kuaishou/h$2;->b:Lcom/windmill/kuaishou/h;

    invoke-static {p1}, Lcom/windmill/kuaishou/h;->a(Lcom/windmill/kuaishou/h;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object p1

    iget-object v0, p0, Lcom/windmill/kuaishou/h$2;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    iget-object v1, p0, Lcom/windmill/kuaishou/h$2;->b:Lcom/windmill/kuaishou/h;

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->getAdInFo(Lcom/windmill/sdk/natives/WMNativeAdData;)Lcom/windmill/sdk/models/AdInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;->onADExposed(Lcom/windmill/sdk/models/AdInfo;)V

    :cond_1
    iget-object p1, p0, Lcom/windmill/kuaishou/h$2;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/windmill/kuaishou/h$2;->b:Lcom/windmill/kuaishou/h;

    invoke-virtual {p1, v0}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->callNativeAdShow(Lcom/windmill/sdk/natives/WMNativeAdData;)V

    :cond_2
    return-void
.end method

.method public final onDownloadTipsDialogDismiss()V
    .locals 0

    return-void
.end method

.method public final onDownloadTipsDialogShow()V
    .locals 0

    return-void
.end method
