.class final Lcom/windmill/toutiao/b$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/toutiao/b;->setDownloadListener(Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

.field final synthetic b:Lcom/windmill/toutiao/b;


# direct methods
.method constructor <init>(Lcom/windmill/toutiao/b;Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/toutiao/b$4;->b:Lcom/windmill/toutiao/b;

    iput-object p2, p0, Lcom/windmill/toutiao/b$4;->a:Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Z
    .locals 2

    iget-object v0, p0, Lcom/windmill/toutiao/b$4;->b:Lcom/windmill/toutiao/b;

    invoke-static {v0}, Lcom/windmill/toutiao/b;->d(Lcom/windmill/toutiao/b;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/windmill/toutiao/b$4;->b:Lcom/windmill/toutiao/b;

    invoke-static {v1}, Lcom/windmill/toutiao/b;->c(Lcom/windmill/toutiao/b;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final onDownloadActive(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 9

    invoke-direct {p0}, Lcom/windmill/toutiao/b$4;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "---------------onDownloadActive-----------"

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/windmill/toutiao/b$4;->a:Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    if-eqz v2, :cond_1

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    move-object v8, p6

    invoke-interface/range {v2 .. v8}, Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;->onDownloadActive(JJLjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onDownloadFailed(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 9

    invoke-direct {p0}, Lcom/windmill/toutiao/b$4;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "---------------onDownloadFailed-----------"

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/windmill/toutiao/b$4;->a:Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    if-eqz v2, :cond_1

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    move-object v8, p6

    invoke-interface/range {v2 .. v8}, Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;->onDownloadFailed(JJLjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onDownloadFinished(JLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/windmill/toutiao/b$4;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "---------------onDownloadFinished-----------"

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/toutiao/b$4;->a:Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;->onDownloadFinished(JLjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onDownloadPaused(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 9

    invoke-direct {p0}, Lcom/windmill/toutiao/b$4;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "---------------onDownloadPaused-----------"

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/windmill/toutiao/b$4;->a:Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    if-eqz v2, :cond_1

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    move-object v8, p6

    invoke-interface/range {v2 .. v8}, Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;->onDownloadPaused(JJLjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onIdle()V
    .locals 2

    invoke-direct {p0}, Lcom/windmill/toutiao/b$4;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "---------------onIdle-----------"

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/toutiao/b$4;->a:Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;->onIdle()V

    :cond_1
    return-void
.end method

.method public final onInstalled(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/windmill/toutiao/b$4;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "---------------onInstalled-----------"

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/toutiao/b$4;->a:Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;->onInstalled(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
