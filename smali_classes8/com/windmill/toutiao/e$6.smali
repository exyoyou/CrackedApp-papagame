.class final Lcom/windmill/toutiao/e$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/toutiao/e;->setDownloadListener(Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

.field final synthetic b:Lcom/windmill/toutiao/e;


# direct methods
.method constructor <init>(Lcom/windmill/toutiao/e;Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/toutiao/e$6;->b:Lcom/windmill/toutiao/e;

    iput-object p2, p0, Lcom/windmill/toutiao/e$6;->a:Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Z
    .locals 2

    iget-object v0, p0, Lcom/windmill/toutiao/e$6;->b:Lcom/windmill/toutiao/e;

    invoke-static {v0}, Lcom/windmill/toutiao/e;->d(Lcom/windmill/toutiao/e;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/windmill/toutiao/e$6;->b:Lcom/windmill/toutiao/e;

    invoke-static {v1}, Lcom/windmill/toutiao/e;->c(Lcom/windmill/toutiao/e;)Lcom/bytedance/sdk/openadsdk/TTFeedAd;

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
    .locals 8

    invoke-direct {p0}, Lcom/windmill/toutiao/e$6;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/windmill/toutiao/e$6;->a:Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    if-eqz v1, :cond_1

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;->onDownloadActive(JJLjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onDownloadFailed(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-direct {p0}, Lcom/windmill/toutiao/e$6;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/windmill/toutiao/e$6;->a:Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    if-eqz v1, :cond_1

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;->onDownloadFailed(JJLjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onDownloadFinished(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/windmill/toutiao/e$6;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/windmill/toutiao/e$6;->a:Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;->onDownloadFinished(JLjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onDownloadPaused(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-direct {p0}, Lcom/windmill/toutiao/e$6;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/windmill/toutiao/e$6;->a:Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    if-eqz v1, :cond_1

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;->onDownloadPaused(JJLjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onIdle()V
    .locals 1

    invoke-direct {p0}, Lcom/windmill/toutiao/e$6;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/windmill/toutiao/e$6;->a:Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;->onIdle()V

    :cond_1
    return-void
.end method

.method public final onInstalled(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/windmill/toutiao/e$6;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/windmill/toutiao/e$6;->a:Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;->onInstalled(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
