.class final Lcom/windmill/kuaishou/h$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/api/KsAppDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/kuaishou/h;->setDownloadListener(Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

.field final synthetic b:Lcom/windmill/kuaishou/h;


# direct methods
.method constructor <init>(Lcom/windmill/kuaishou/h;Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/kuaishou/h$6;->b:Lcom/windmill/kuaishou/h;

    iput-object p2, p0, Lcom/windmill/kuaishou/h$6;->a:Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Z
    .locals 3

    iget-object v0, p0, Lcom/windmill/kuaishou/h$6;->b:Lcom/windmill/kuaishou/h;

    invoke-static {v0}, Lcom/windmill/kuaishou/h;->d(Lcom/windmill/kuaishou/h;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/kuaishou/h$6;->b:Lcom/windmill/kuaishou/h;

    invoke-static {v0}, Lcom/windmill/kuaishou/h;->d(Lcom/windmill/kuaishou/h;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/windmill/kuaishou/h$6;->b:Lcom/windmill/kuaishou/h;

    iget-object v2, v2, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method


# virtual methods
.method public final onDownloadFailed()V
    .locals 8

    invoke-direct {p0}, Lcom/windmill/kuaishou/h$6;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/windmill/kuaishou/h$6;->a:Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    if-eqz v1, :cond_1

    const-wide/16 v2, 0x64

    const-wide/16 v4, 0x32

    const-string v6, ""

    const-string v7, ""

    invoke-interface/range {v1 .. v7}, Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;->onDownloadFailed(JJLjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onDownloadFinished()V
    .locals 4

    invoke-direct {p0}, Lcom/windmill/kuaishou/h$6;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/windmill/kuaishou/h$6;->a:Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    if-eqz v0, :cond_1

    const-wide/16 v1, 0x64

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3, v3}, Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;->onDownloadFinished(JLjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onDownloadStarted()V
    .locals 1

    invoke-direct {p0}, Lcom/windmill/kuaishou/h$6;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/windmill/kuaishou/h$6;->a:Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;->onIdle()V

    :cond_1
    return-void
.end method

.method public final onIdle()V
    .locals 1

    invoke-direct {p0}, Lcom/windmill/kuaishou/h$6;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/windmill/kuaishou/h$6;->a:Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;->onIdle()V

    :cond_1
    return-void
.end method

.method public final onInstalled()V
    .locals 2

    invoke-direct {p0}, Lcom/windmill/kuaishou/h$6;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/windmill/kuaishou/h$6;->a:Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-interface {v0, v1, v1}, Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;->onInstalled(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onProgressUpdate(I)V
    .locals 8

    invoke-direct {p0}, Lcom/windmill/kuaishou/h$6;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/windmill/kuaishou/h$6;->a:Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    if-eqz v1, :cond_1

    const-wide/16 v2, 0x64

    int-to-long v4, p1

    const-string v6, ""

    const-string v7, ""

    invoke-interface/range {v1 .. v7}, Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;->onDownloadActive(JJLjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
