.class final Lcom/windmill/kuaishou/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/api/KsFeedAd$AdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/kuaishou/a;-><init>(Lcom/kwad/sdk/api/KsFeedAd;Lcom/windmill/sdk/custom/WMCustomNativeAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

.field final synthetic b:Lcom/windmill/kuaishou/a;


# direct methods
.method constructor <init>(Lcom/windmill/kuaishou/a;Lcom/windmill/sdk/custom/WMCustomNativeAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/kuaishou/a$1;->b:Lcom/windmill/kuaishou/a;

    iput-object p2, p0, Lcom/windmill/kuaishou/a$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/kuaishou/a$1;->b:Lcom/windmill/kuaishou/a;

    invoke-static {v1}, Lcom/windmill/kuaishou/a;->a(Lcom/windmill/kuaishou/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "----------onAdClicked-----------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/kuaishou/a$1;->b:Lcom/windmill/kuaishou/a;

    invoke-static {v0}, Lcom/windmill/kuaishou/a;->b(Lcom/windmill/kuaishou/a;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/kuaishou/a$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/kuaishou/a$1;->b:Lcom/windmill/kuaishou/a;

    invoke-static {v0}, Lcom/windmill/kuaishou/a;->b(Lcom/windmill/kuaishou/a;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/windmill/kuaishou/a$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    iget-object v2, p0, Lcom/windmill/kuaishou/a$1;->b:Lcom/windmill/kuaishou/a;

    invoke-virtual {v1, v2}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->getAdInFo(Lcom/windmill/sdk/natives/WMNativeAdData;)Lcom/windmill/sdk/models/AdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;->onADClicked(Lcom/windmill/sdk/models/AdInfo;)V

    :cond_0
    iget-object v0, p0, Lcom/windmill/kuaishou/a$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/windmill/kuaishou/a$1;->b:Lcom/windmill/kuaishou/a;

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->callNativeAdClick(Lcom/windmill/sdk/natives/WMNativeAdData;)V

    :cond_1
    return-void
.end method

.method public final onAdShow()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/kuaishou/a$1;->b:Lcom/windmill/kuaishou/a;

    invoke-static {v1}, Lcom/windmill/kuaishou/a;->a(Lcom/windmill/kuaishou/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "------onAdShow-----------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/kuaishou/a$1;->b:Lcom/windmill/kuaishou/a;

    invoke-static {v0}, Lcom/windmill/kuaishou/a;->b(Lcom/windmill/kuaishou/a;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/kuaishou/a$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/kuaishou/a$1;->b:Lcom/windmill/kuaishou/a;

    invoke-static {v0}, Lcom/windmill/kuaishou/a;->b(Lcom/windmill/kuaishou/a;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/windmill/kuaishou/a$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    iget-object v2, p0, Lcom/windmill/kuaishou/a$1;->b:Lcom/windmill/kuaishou/a;

    invoke-virtual {v1, v2}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->getAdInFo(Lcom/windmill/sdk/natives/WMNativeAdData;)Lcom/windmill/sdk/models/AdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;->onADExposed(Lcom/windmill/sdk/models/AdInfo;)V

    :cond_0
    iget-object v0, p0, Lcom/windmill/kuaishou/a$1;->a:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/windmill/kuaishou/a$1;->b:Lcom/windmill/kuaishou/a;

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->callNativeAdShow(Lcom/windmill/sdk/natives/WMNativeAdData;)V

    :cond_1
    return-void
.end method

.method public final onDislikeClicked()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/kuaishou/a$1;->b:Lcom/windmill/kuaishou/a;

    invoke-static {v1}, Lcom/windmill/kuaishou/a;->a(Lcom/windmill/kuaishou/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "--------onDislikeClicked-----------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/kuaishou/a$1;->b:Lcom/windmill/kuaishou/a;

    invoke-static {v0}, Lcom/windmill/kuaishou/a;->c(Lcom/windmill/kuaishou/a;)Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/kuaishou/a$1;->b:Lcom/windmill/kuaishou/a;

    invoke-static {v0}, Lcom/windmill/kuaishou/a;->c(Lcom/windmill/kuaishou/a;)Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;

    move-result-object v0

    const-string v1, "ks"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;->onSelected(ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public final onDownloadTipsDialogDismiss()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/kuaishou/a$1;->b:Lcom/windmill/kuaishou/a;

    invoke-static {v1}, Lcom/windmill/kuaishou/a;->a(Lcom/windmill/kuaishou/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-------onDownloadTipsDialogDismiss-----------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final onDownloadTipsDialogShow()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/kuaishou/a$1;->b:Lcom/windmill/kuaishou/a;

    invoke-static {v1}, Lcom/windmill/kuaishou/a;->a(Lcom/windmill/kuaishou/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "------onDownloadTipsDialogShow-----------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    return-void
.end method
