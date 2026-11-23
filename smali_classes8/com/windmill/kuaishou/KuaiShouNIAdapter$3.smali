.class final Lcom/windmill/kuaishou/KuaiShouNIAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/kuaishou/KuaiShouNIAdapter;->showAd(Landroid/app/Activity;Ljava/util/HashMap;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/kuaishou/KuaiShouNIAdapter;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/windmill/kuaishou/KuaiShouNIAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/kuaishou/KuaiShouNIAdapter$3;->a:Lcom/windmill/kuaishou/KuaiShouNIAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/windmill/kuaishou/KuaiShouNIAdapter$3;->b:Z

    return-void
.end method


# virtual methods
.method public final onDownloadActive(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-boolean p1, p0, Lcom/windmill/kuaishou/KuaiShouNIAdapter$3;->b:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/windmill/kuaishou/KuaiShouNIAdapter$3;->b:Z

    iget-object p1, p0, Lcom/windmill/kuaishou/KuaiShouNIAdapter$3;->a:Lcom/windmill/kuaishou/KuaiShouNIAdapter;

    invoke-virtual {p1}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callVideoAdClickDownload()V

    :cond_0
    return-void
.end method

.method public final onDownloadFailed(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onDownloadFinished(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onDownloadPaused(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onIdle()V
    .locals 0

    return-void
.end method

.method public final onInstalled(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
