.class final Lcom/windmill/kuaishou/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/api/KsFeedAd$AdRenderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/kuaishou/a;->render()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/kuaishou/a;


# direct methods
.method constructor <init>(Lcom/windmill/kuaishou/a;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/kuaishou/a$2;->a:Lcom/windmill/kuaishou/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdRenderFailed(ILjava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/windmill/kuaishou/a$2;->a:Lcom/windmill/kuaishou/a;

    invoke-static {p1}, Lcom/windmill/kuaishou/a;->b(Lcom/windmill/kuaishou/a;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object p1

    iget-object p2, p0, Lcom/windmill/kuaishou/a$2;->a:Lcom/windmill/kuaishou/a;

    invoke-static {p2}, Lcom/windmill/kuaishou/a;->d(Lcom/windmill/kuaishou/a;)Lcom/windmill/sdk/models/AdInfo;

    move-result-object p2

    sget-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_PLAY:Lcom/windmill/sdk/WindMillError;

    invoke-interface {p1, p2, v0}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;->onADError(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/WindMillError;)V

    return-void
.end method

.method public final onAdRenderSuccess(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/windmill/kuaishou/a$2;->a:Lcom/windmill/kuaishou/a;

    invoke-static {v0}, Lcom/windmill/kuaishou/a;->b(Lcom/windmill/kuaishou/a;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/windmill/kuaishou/a$2;->a:Lcom/windmill/kuaishou/a;

    iget-object v0, v0, Lcom/windmill/kuaishou/a;->a:Lcom/kwad/sdk/api/KsFeedAd;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/kuaishou/a$2;->a:Lcom/windmill/kuaishou/a;

    invoke-static {v1}, Lcom/windmill/kuaishou/a;->a(Lcom/windmill/kuaishou/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "------onAdRenderSuccess----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/windmill/kuaishou/a$2;->a:Lcom/windmill/kuaishou/a;

    invoke-static {v0}, Lcom/windmill/kuaishou/a;->b(Lcom/windmill/kuaishou/a;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/windmill/kuaishou/a$2;->a:Lcom/windmill/kuaishou/a;

    invoke-static {v1}, Lcom/windmill/kuaishou/a;->d(Lcom/windmill/kuaishou/a;)Lcom/windmill/sdk/models/AdInfo;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;->onADRenderSuccess(Lcom/windmill/sdk/models/AdInfo;Landroid/view/View;FF)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/windmill/kuaishou/a$2;->a:Lcom/windmill/kuaishou/a;

    invoke-static {p1}, Lcom/windmill/kuaishou/a;->b(Lcom/windmill/kuaishou/a;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object p1

    iget-object v0, p0, Lcom/windmill/kuaishou/a$2;->a:Lcom/windmill/kuaishou/a;

    invoke-static {v0}, Lcom/windmill/kuaishou/a;->d(Lcom/windmill/kuaishou/a;)Lcom/windmill/sdk/models/AdInfo;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2, v2}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;->onADRenderSuccess(Lcom/windmill/sdk/models/AdInfo;Landroid/view/View;FF)V

    :cond_1
    return-void
.end method
